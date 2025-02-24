///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-fsub.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.280704
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
fsub.h f30, f23, f15 # perform first operation
fsub.h f15, f30, f9 # perform second operation

# Testcase cmp_gpr_hazard raw test
fsub.h f5, f24, f19 # perform first operation
fsub.h f25, f12, f5 # perform second operation

# Testcase cmp_gpr_hazard waw test
fsub.h f9, f20, f12 # perform first operation
fsub.h f9, f14, f27 # perform second operation

# Testcase cmp_gpr_hazard waw test
fsub.h f1, f3, f10 # perform first operation
fsub.h f1, f28, f19 # perform second operation

# Testcase cmp_gpr_hazard war test
fsub.h f17, f26, f18 # perform first operation
fsub.h f26, f29, f26 # perform second operation

# Testcase cmp_gpr_hazard war test
fsub.h f12, f13, f31 # perform first operation
fsub.h f31, f3, f29 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x84a8a1353999af6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e4af7727b9c691e # load x3 with value 0x5e4af7727b9c691e
sw x3, 0(x2) # store 0x5e4af7727b9c691e in memory
flh f0, 0(x2) # load 0x5e4af7727b9c691e from memory into f0
li x3, 0xd67216eb510cc39 # load x3 with value 0xd67216eb510cc39
sw x3, 0(x2) # store 0xd67216eb510cc39 in memory
flh f17, 0(x2) # load 0xd67216eb510cc39 from memory into f17
fsub.h f0, f0, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0xe853b4ba8d8a1bdf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x961d54ac512440d # load x3 with value 0x961d54ac512440d
sw x3, 0(x2) # store 0x961d54ac512440d in memory
flh f1, 0(x2) # load 0x961d54ac512440d from memory into f1
li x3, 0x94611119f643772b # load x3 with value 0x94611119f643772b
sw x3, 0(x2) # store 0x94611119f643772b in memory
flh f13, 0(x2) # load 0x94611119f643772b from memory into f13
fsub.h f1, f1, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x7645216b860febef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4f03664e14a5f0f9 # load x3 with value 0x4f03664e14a5f0f9
sw x3, 0(x2) # store 0x4f03664e14a5f0f9 in memory
flh f2, 0(x2) # load 0x4f03664e14a5f0f9 from memory into f2
li x3, 0x34a423c8f1fd3d6e # load x3 with value 0x34a423c8f1fd3d6e
sw x3, 0(x2) # store 0x34a423c8f1fd3d6e in memory
flh f20, 0(x2) # load 0x34a423c8f1fd3d6e from memory into f20
fsub.h f2, f2, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0xdc011a5431affbe9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5186b62bdf00aa1f # load x3 with value 0x5186b62bdf00aa1f
sw x3, 0(x2) # store 0x5186b62bdf00aa1f in memory
flh f3, 0(x2) # load 0x5186b62bdf00aa1f from memory into f3
li x3, 0xca9733935a0cc283 # load x3 with value 0xca9733935a0cc283
sw x3, 0(x2) # store 0xca9733935a0cc283 in memory
flh f29, 0(x2) # load 0xca9733935a0cc283 from memory into f29
fsub.h f3, f3, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x0e52929e4da08866 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x63d8ed135e63b945 # load x3 with value 0x63d8ed135e63b945
sw x3, 0(x2) # store 0x63d8ed135e63b945 in memory
flh f4, 0(x2) # load 0x63d8ed135e63b945 from memory into f4
li x3, 0x9507250dfdc9b44b # load x3 with value 0x9507250dfdc9b44b
sw x3, 0(x2) # store 0x9507250dfdc9b44b in memory
flh f11, 0(x2) # load 0x9507250dfdc9b44b from memory into f11
fsub.h f4, f4, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0xca65504a8baa554f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc7232e08d299d514 # load x3 with value 0xc7232e08d299d514
sw x3, 0(x2) # store 0xc7232e08d299d514 in memory
flh f5, 0(x2) # load 0xc7232e08d299d514 from memory into f5
li x3, 0x25429c5ed5c4b036 # load x3 with value 0x25429c5ed5c4b036
sw x3, 0(x2) # store 0x25429c5ed5c4b036 in memory
flh f10, 0(x2) # load 0x25429c5ed5c4b036 from memory into f10
fsub.h f5, f5, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0xa40638632a4ab27b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9970f1a4eb59de # load x3 with value 0x9970f1a4eb59de
sw x3, 0(x2) # store 0x9970f1a4eb59de in memory
flh f6, 0(x2) # load 0x9970f1a4eb59de from memory into f6
li x3, 0xc9c1cef6d88d7766 # load x3 with value 0xc9c1cef6d88d7766
sw x3, 0(x2) # store 0xc9c1cef6d88d7766 in memory
flh f14, 0(x2) # load 0xc9c1cef6d88d7766 from memory into f14
fsub.h f6, f6, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x7f4980a329d9e575 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdffcbe31dd3884f7 # load x3 with value 0xdffcbe31dd3884f7
sw x3, 0(x2) # store 0xdffcbe31dd3884f7 in memory
flh f7, 0(x2) # load 0xdffcbe31dd3884f7 from memory into f7
li x3, 0xd9118dffec58d617 # load x3 with value 0xd9118dffec58d617
sw x3, 0(x2) # store 0xd9118dffec58d617 in memory
flh f24, 0(x2) # load 0xd9118dffec58d617 from memory into f24
fsub.h f7, f7, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x7c35c9f60bc2ee0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x279953df46b545a9 # load x3 with value 0x279953df46b545a9
sw x3, 0(x2) # store 0x279953df46b545a9 in memory
flh f8, 0(x2) # load 0x279953df46b545a9 from memory into f8
li x3, 0x48b4c592b5e48984 # load x3 with value 0x48b4c592b5e48984
sw x3, 0(x2) # store 0x48b4c592b5e48984 in memory
flh f16, 0(x2) # load 0x48b4c592b5e48984 from memory into f16
fsub.h f8, f8, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0x800358b21e3e4431 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7850c034d5e4cfd4 # load x3 with value 0x7850c034d5e4cfd4
sw x3, 0(x2) # store 0x7850c034d5e4cfd4 in memory
flh f9, 0(x2) # load 0x7850c034d5e4cfd4 from memory into f9
li x3, 0x3f764ca9b5498d63 # load x3 with value 0x3f764ca9b5498d63
sw x3, 0(x2) # store 0x3f764ca9b5498d63 in memory
flh f4, 0(x2) # load 0x3f764ca9b5498d63 from memory into f4
fsub.h f9, f9, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0xc1dfe93e77dc2f75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x85fd1bd183928c6d # load x3 with value 0x85fd1bd183928c6d
sw x3, 0(x2) # store 0x85fd1bd183928c6d in memory
flh f10, 0(x2) # load 0x85fd1bd183928c6d from memory into f10
li x3, 0xf85bc1028bb66d69 # load x3 with value 0xf85bc1028bb66d69
sw x3, 0(x2) # store 0xf85bc1028bb66d69 in memory
flh f12, 0(x2) # load 0xf85bc1028bb66d69 from memory into f12
fsub.h f10, f10, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x1d5d4fa93348c273 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3850862efbe4dd1f # load x3 with value 0x3850862efbe4dd1f
sw x3, 0(x2) # store 0x3850862efbe4dd1f in memory
flh f11, 0(x2) # load 0x3850862efbe4dd1f from memory into f11
li x3, 0x4131367be9e9966 # load x3 with value 0x4131367be9e9966
sw x3, 0(x2) # store 0x4131367be9e9966 in memory
flh f26, 0(x2) # load 0x4131367be9e9966 from memory into f26
fsub.h f11, f11, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x02f54e1b1a7547e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa7a32749a9dff38f # load x3 with value 0xa7a32749a9dff38f
sw x3, 0(x2) # store 0xa7a32749a9dff38f in memory
flh f12, 0(x2) # load 0xa7a32749a9dff38f from memory into f12
li x3, 0x7c250f988df6e022 # load x3 with value 0x7c250f988df6e022
sw x3, 0(x2) # store 0x7c250f988df6e022 in memory
flh f11, 0(x2) # load 0x7c250f988df6e022 from memory into f11
fsub.h f12, f12, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0x81c7e9f937c4c87e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6052f835f1cefccc # load x3 with value 0x6052f835f1cefccc
sw x3, 0(x2) # store 0x6052f835f1cefccc in memory
flh f13, 0(x2) # load 0x6052f835f1cefccc from memory into f13
li x3, 0xe257d3909a10495e # load x3 with value 0xe257d3909a10495e
sw x3, 0(x2) # store 0xe257d3909a10495e in memory
flh f5, 0(x2) # load 0xe257d3909a10495e from memory into f5
fsub.h f13, f13, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0xdad91012336f4dd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc63cce2c2c53c56c # load x3 with value 0xc63cce2c2c53c56c
sw x3, 0(x2) # store 0xc63cce2c2c53c56c in memory
flh f14, 0(x2) # load 0xc63cce2c2c53c56c from memory into f14
li x3, 0x3e43d6dc555e508d # load x3 with value 0x3e43d6dc555e508d
sw x3, 0(x2) # store 0x3e43d6dc555e508d in memory
flh f9, 0(x2) # load 0x3e43d6dc555e508d from memory into f9
fsub.h f14, f14, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x72c1955454d7cd8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1ab84697b39188e # load x3 with value 0xf1ab84697b39188e
sw x3, 0(x2) # store 0xf1ab84697b39188e in memory
flh f15, 0(x2) # load 0xf1ab84697b39188e from memory into f15
li x3, 0x369f193e4fb9d296 # load x3 with value 0x369f193e4fb9d296
sw x3, 0(x2) # store 0x369f193e4fb9d296 in memory
flh f28, 0(x2) # load 0x369f193e4fb9d296 from memory into f28
fsub.h f15, f15, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x864e6e2d60a881eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9631c2cdb8b7370c # load x3 with value 0x9631c2cdb8b7370c
sw x3, 0(x2) # store 0x9631c2cdb8b7370c in memory
flh f16, 0(x2) # load 0x9631c2cdb8b7370c from memory into f16
li x3, 0x777c789c6f921098 # load x3 with value 0x777c789c6f921098
sw x3, 0(x2) # store 0x777c789c6f921098 in memory
flh f7, 0(x2) # load 0x777c789c6f921098 from memory into f7
fsub.h f16, f16, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x79f77dc5bf627142 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x41dd46a8a132001f # load x3 with value 0x41dd46a8a132001f
sw x3, 0(x2) # store 0x41dd46a8a132001f in memory
flh f17, 0(x2) # load 0x41dd46a8a132001f from memory into f17
li x3, 0xbbf1b07ff251e0c8 # load x3 with value 0xbbf1b07ff251e0c8
sw x3, 0(x2) # store 0xbbf1b07ff251e0c8 in memory
flh f9, 0(x2) # load 0xbbf1b07ff251e0c8 from memory into f9
fsub.h f17, f17, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0xc435a04dfa13f85f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x46780c86e6ccf4cc # load x3 with value 0x46780c86e6ccf4cc
sw x3, 0(x2) # store 0x46780c86e6ccf4cc in memory
flh f18, 0(x2) # load 0x46780c86e6ccf4cc from memory into f18
li x3, 0x5c90cc35fc67b519 # load x3 with value 0x5c90cc35fc67b519
sw x3, 0(x2) # store 0x5c90cc35fc67b519 in memory
flh f27, 0(x2) # load 0x5c90cc35fc67b519 from memory into f27
fsub.h f18, f18, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0xbfdcba31d95dd851 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab1d7ad2782123e # load x3 with value 0xab1d7ad2782123e
sw x3, 0(x2) # store 0xab1d7ad2782123e in memory
flh f19, 0(x2) # load 0xab1d7ad2782123e from memory into f19
li x3, 0x3ad8192348870bd5 # load x3 with value 0x3ad8192348870bd5
sw x3, 0(x2) # store 0x3ad8192348870bd5 in memory
flh f11, 0(x2) # load 0x3ad8192348870bd5 from memory into f11
fsub.h f19, f19, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x2b287a450ab4f6ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x92f3d478b243947d # load x3 with value 0x92f3d478b243947d
sw x3, 0(x2) # store 0x92f3d478b243947d in memory
flh f20, 0(x2) # load 0x92f3d478b243947d from memory into f20
li x3, 0x70921ffecd2780f8 # load x3 with value 0x70921ffecd2780f8
sw x3, 0(x2) # store 0x70921ffecd2780f8 in memory
flh f11, 0(x2) # load 0x70921ffecd2780f8 from memory into f11
fsub.h f20, f20, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x62a1280c6e9fc125 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1cdbde8a9dc377d7 # load x3 with value 0x1cdbde8a9dc377d7
sw x3, 0(x2) # store 0x1cdbde8a9dc377d7 in memory
flh f21, 0(x2) # load 0x1cdbde8a9dc377d7 from memory into f21
li x3, 0x39d837d647ac2a9a # load x3 with value 0x39d837d647ac2a9a
sw x3, 0(x2) # store 0x39d837d647ac2a9a in memory
flh f7, 0(x2) # load 0x39d837d647ac2a9a from memory into f7
fsub.h f21, f21, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0x1aa851c7527a4440 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa64c86287d348c75 # load x3 with value 0xa64c86287d348c75
sw x3, 0(x2) # store 0xa64c86287d348c75 in memory
flh f22, 0(x2) # load 0xa64c86287d348c75 from memory into f22
li x3, 0x74b9b50b8e197302 # load x3 with value 0x74b9b50b8e197302
sw x3, 0(x2) # store 0x74b9b50b8e197302 in memory
flh f27, 0(x2) # load 0x74b9b50b8e197302 from memory into f27
fsub.h f22, f22, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0xaef3b5286dbade8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xade412767f5aed2c # load x3 with value 0xade412767f5aed2c
sw x3, 0(x2) # store 0xade412767f5aed2c in memory
flh f23, 0(x2) # load 0xade412767f5aed2c from memory into f23
li x3, 0x90b48bcfd84732f5 # load x3 with value 0x90b48bcfd84732f5
sw x3, 0(x2) # store 0x90b48bcfd84732f5 in memory
flh f15, 0(x2) # load 0x90b48bcfd84732f5 from memory into f15
fsub.h f23, f23, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x69ff9d9efe3833a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7690481b17359732 # load x3 with value 0x7690481b17359732
sw x3, 0(x2) # store 0x7690481b17359732 in memory
flh f24, 0(x2) # load 0x7690481b17359732 from memory into f24
li x3, 0xa52b987023c65116 # load x3 with value 0xa52b987023c65116
sw x3, 0(x2) # store 0xa52b987023c65116 in memory
flh f26, 0(x2) # load 0xa52b987023c65116 from memory into f26
fsub.h f24, f24, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x4275916c2aad74ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x406a69ae9cab1a14 # load x3 with value 0x406a69ae9cab1a14
sw x3, 0(x2) # store 0x406a69ae9cab1a14 in memory
flh f25, 0(x2) # load 0x406a69ae9cab1a14 from memory into f25
li x3, 0x41d18b16cdc027b2 # load x3 with value 0x41d18b16cdc027b2
sw x3, 0(x2) # store 0x41d18b16cdc027b2 in memory
flh f30, 0(x2) # load 0x41d18b16cdc027b2 from memory into f30
fsub.h f25, f25, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0xa8e3b64d5f4692b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb9c802b00959bb60 # load x3 with value 0xb9c802b00959bb60
sw x3, 0(x2) # store 0xb9c802b00959bb60 in memory
flh f26, 0(x2) # load 0xb9c802b00959bb60 from memory into f26
li x3, 0x39db2e33d60309ac # load x3 with value 0x39db2e33d60309ac
sw x3, 0(x2) # store 0x39db2e33d60309ac in memory
flh f10, 0(x2) # load 0x39db2e33d60309ac from memory into f10
fsub.h f26, f26, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x2a92bdc67fdc7289 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8148a3d58bd2f44c # load x3 with value 0x8148a3d58bd2f44c
sw x3, 0(x2) # store 0x8148a3d58bd2f44c in memory
flh f27, 0(x2) # load 0x8148a3d58bd2f44c from memory into f27
li x3, 0x2836c2107261e60f # load x3 with value 0x2836c2107261e60f
sw x3, 0(x2) # store 0x2836c2107261e60f in memory
flh f29, 0(x2) # load 0x2836c2107261e60f from memory into f29
fsub.h f27, f27, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x80bb44ec0b20b4c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb11a73c4a5367a62 # load x3 with value 0xb11a73c4a5367a62
sw x3, 0(x2) # store 0xb11a73c4a5367a62 in memory
flh f28, 0(x2) # load 0xb11a73c4a5367a62 from memory into f28
li x3, 0xad69d79bc03d21ed # load x3 with value 0xad69d79bc03d21ed
sw x3, 0(x2) # store 0xad69d79bc03d21ed in memory
flh f10, 0(x2) # load 0xad69d79bc03d21ed from memory into f10
fsub.h f28, f28, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0xdcad5c7dd5a8b9bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x45488f844905a0a5 # load x3 with value 0x45488f844905a0a5
sw x3, 0(x2) # store 0x45488f844905a0a5 in memory
flh f29, 0(x2) # load 0x45488f844905a0a5 from memory into f29
li x3, 0x82be7d9fd0fbc834 # load x3 with value 0x82be7d9fd0fbc834
sw x3, 0(x2) # store 0x82be7d9fd0fbc834 in memory
flh f28, 0(x2) # load 0x82be7d9fd0fbc834 from memory into f28
fsub.h f29, f29, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0xd47d325ebe9352c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1006e5c68e0196a7 # load x3 with value 0x1006e5c68e0196a7
sw x3, 0(x2) # store 0x1006e5c68e0196a7 in memory
flh f30, 0(x2) # load 0x1006e5c68e0196a7 from memory into f30
li x3, 0xedaadc57baf5f123 # load x3 with value 0xedaadc57baf5f123
sw x3, 0(x2) # store 0xedaadc57baf5f123 in memory
flh f10, 0(x2) # load 0xedaadc57baf5f123 from memory into f10
fsub.h f30, f30, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0xea7cd75bd73f24e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e80a9f97d488dea # load x3 with value 0x4e80a9f97d488dea
sw x3, 0(x2) # store 0x4e80a9f97d488dea in memory
flh f31, 0(x2) # load 0x4e80a9f97d488dea from memory into f31
li x3, 0x851e03c9b722362a # load x3 with value 0x851e03c9b722362a
sw x3, 0(x2) # store 0x851e03c9b722362a in memory
flh f30, 0(x2) # load 0x851e03c9b722362a from memory into f30
fsub.h f31, f31, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0xde2b06eceb78cbce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x41af36e1348f58a9 # load x3 with value 0x41af36e1348f58a9
sw x3, 0(x2) # store 0x41af36e1348f58a9 in memory
flh f25, 0(x2) # load 0x41af36e1348f58a9 from memory into f25
li x3, 0xd3441b602f36dea9 # load x3 with value 0xd3441b602f36dea9
sw x3, 0(x2) # store 0xd3441b602f36dea9 in memory
flh f0, 0(x2) # load 0xd3441b602f36dea9 from memory into f0
fsub.h f0, f25, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0xafe49ef57a547eef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe7a49681d4e61720 # load x3 with value 0xe7a49681d4e61720
sw x3, 0(x2) # store 0xe7a49681d4e61720 in memory
flh f4, 0(x2) # load 0xe7a49681d4e61720 from memory into f4
li x3, 0xf5ca9e70184d4dc8 # load x3 with value 0xf5ca9e70184d4dc8
sw x3, 0(x2) # store 0xf5ca9e70184d4dc8 in memory
flh f1, 0(x2) # load 0xf5ca9e70184d4dc8 from memory into f1
fsub.h f1, f4, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0xab6e2724d6c4e901 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1e2ecb7ef2678c2 # load x3 with value 0xb1e2ecb7ef2678c2
sw x3, 0(x2) # store 0xb1e2ecb7ef2678c2 in memory
flh f15, 0(x2) # load 0xb1e2ecb7ef2678c2 from memory into f15
li x3, 0xef35da06831da969 # load x3 with value 0xef35da06831da969
sw x3, 0(x2) # store 0xef35da06831da969 in memory
flh f2, 0(x2) # load 0xef35da06831da969 from memory into f2
fsub.h f2, f15, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0x4721877c8fcb89a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf69ba4d2e11dcc7 # load x3 with value 0xdf69ba4d2e11dcc7
sw x3, 0(x2) # store 0xdf69ba4d2e11dcc7 in memory
flh f31, 0(x2) # load 0xdf69ba4d2e11dcc7 from memory into f31
li x3, 0xf60c14d128dbd291 # load x3 with value 0xf60c14d128dbd291
sw x3, 0(x2) # store 0xf60c14d128dbd291 in memory
flh f3, 0(x2) # load 0xf60c14d128dbd291 from memory into f3
fsub.h f3, f31, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0xedff5d7427180523 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x34197514a4487a96 # load x3 with value 0x34197514a4487a96
sw x3, 0(x2) # store 0x34197514a4487a96 in memory
flh f8, 0(x2) # load 0x34197514a4487a96 from memory into f8
li x3, 0x6ab1e34110a419f8 # load x3 with value 0x6ab1e34110a419f8
sw x3, 0(x2) # store 0x6ab1e34110a419f8 in memory
flh f4, 0(x2) # load 0x6ab1e34110a419f8 from memory into f4
fsub.h f4, f8, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0xf5c2319d8bdfad91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x337d5787f319741b # load x3 with value 0x337d5787f319741b
sw x3, 0(x2) # store 0x337d5787f319741b in memory
flh f13, 0(x2) # load 0x337d5787f319741b from memory into f13
li x3, 0xabdb7fe1fef99083 # load x3 with value 0xabdb7fe1fef99083
sw x3, 0(x2) # store 0xabdb7fe1fef99083 in memory
flh f5, 0(x2) # load 0xabdb7fe1fef99083 from memory into f5
fsub.h f5, f13, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0xa9d0f8b2c24f3716 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8807f6ad82d680af # load x3 with value 0x8807f6ad82d680af
sw x3, 0(x2) # store 0x8807f6ad82d680af in memory
flh f14, 0(x2) # load 0x8807f6ad82d680af from memory into f14
li x3, 0x3a27ddb18797f7cf # load x3 with value 0x3a27ddb18797f7cf
sw x3, 0(x2) # store 0x3a27ddb18797f7cf in memory
flh f6, 0(x2) # load 0x3a27ddb18797f7cf from memory into f6
fsub.h f6, f14, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0x60336ad5b9f47f1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a84f84607f18f24 # load x3 with value 0x1a84f84607f18f24
sw x3, 0(x2) # store 0x1a84f84607f18f24 in memory
flh f10, 0(x2) # load 0x1a84f84607f18f24 from memory into f10
li x3, 0xe149dc34bd75a784 # load x3 with value 0xe149dc34bd75a784
sw x3, 0(x2) # store 0xe149dc34bd75a784 in memory
flh f7, 0(x2) # load 0xe149dc34bd75a784 from memory into f7
fsub.h f7, f10, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0xc48f592e138d6c95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb3f4f7e813ec3e7 # load x3 with value 0xdb3f4f7e813ec3e7
sw x3, 0(x2) # store 0xdb3f4f7e813ec3e7 in memory
flh f19, 0(x2) # load 0xdb3f4f7e813ec3e7 from memory into f19
li x3, 0xac0c7c0f24129a9e # load x3 with value 0xac0c7c0f24129a9e
sw x3, 0(x2) # store 0xac0c7c0f24129a9e in memory
flh f8, 0(x2) # load 0xac0c7c0f24129a9e from memory into f8
fsub.h f8, f19, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0xb8508be5bca5b664 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcbc44c32ce279d79 # load x3 with value 0xcbc44c32ce279d79
sw x3, 0(x2) # store 0xcbc44c32ce279d79 in memory
flh f19, 0(x2) # load 0xcbc44c32ce279d79 from memory into f19
li x3, 0xa553617abaa22148 # load x3 with value 0xa553617abaa22148
sw x3, 0(x2) # store 0xa553617abaa22148 in memory
flh f9, 0(x2) # load 0xa553617abaa22148 from memory into f9
fsub.h f9, f19, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0xabd8dc5dd808de47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x29799085aafc166c # load x3 with value 0x29799085aafc166c
sw x3, 0(x2) # store 0x29799085aafc166c in memory
flh f12, 0(x2) # load 0x29799085aafc166c from memory into f12
li x3, 0x8022de8b4374a21b # load x3 with value 0x8022de8b4374a21b
sw x3, 0(x2) # store 0x8022de8b4374a21b in memory
flh f10, 0(x2) # load 0x8022de8b4374a21b from memory into f10
fsub.h f10, f12, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x39c000ca1a515b57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb7096e2dc2b194d3 # load x3 with value 0xb7096e2dc2b194d3
sw x3, 0(x2) # store 0xb7096e2dc2b194d3 in memory
flh f14, 0(x2) # load 0xb7096e2dc2b194d3 from memory into f14
li x3, 0xac1105a2ef2a1851 # load x3 with value 0xac1105a2ef2a1851
sw x3, 0(x2) # store 0xac1105a2ef2a1851 in memory
flh f11, 0(x2) # load 0xac1105a2ef2a1851 from memory into f11
fsub.h f11, f14, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0xc2d33036c8e77e68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1ab69d4de6f7728 # load x3 with value 0xf1ab69d4de6f7728
sw x3, 0(x2) # store 0xf1ab69d4de6f7728 in memory
flh f11, 0(x2) # load 0xf1ab69d4de6f7728 from memory into f11
li x3, 0x5d22ea22a2960bd7 # load x3 with value 0x5d22ea22a2960bd7
sw x3, 0(x2) # store 0x5d22ea22a2960bd7 in memory
flh f12, 0(x2) # load 0x5d22ea22a2960bd7 from memory into f12
fsub.h f12, f11, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0xd9abe8321c03fc7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x406f0a405829f9bf # load x3 with value 0x406f0a405829f9bf
sw x3, 0(x2) # store 0x406f0a405829f9bf in memory
flh f9, 0(x2) # load 0x406f0a405829f9bf from memory into f9
li x3, 0xaea896ec68d60d36 # load x3 with value 0xaea896ec68d60d36
sw x3, 0(x2) # store 0xaea896ec68d60d36 in memory
flh f13, 0(x2) # load 0xaea896ec68d60d36 from memory into f13
fsub.h f13, f9, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0x1cdb79272354a6dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd300f171dc41ce8 # load x3 with value 0xdd300f171dc41ce8
sw x3, 0(x2) # store 0xdd300f171dc41ce8 in memory
flh f6, 0(x2) # load 0xdd300f171dc41ce8 from memory into f6
li x3, 0xc0879ea6c889c69c # load x3 with value 0xc0879ea6c889c69c
sw x3, 0(x2) # store 0xc0879ea6c889c69c in memory
flh f14, 0(x2) # load 0xc0879ea6c889c69c from memory into f14
fsub.h f14, f6, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x83f850d38f45c234 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b4ba291ee4508db # load x3 with value 0x4b4ba291ee4508db
sw x3, 0(x2) # store 0x4b4ba291ee4508db in memory
flh f20, 0(x2) # load 0x4b4ba291ee4508db from memory into f20
li x3, 0x2263be2a86892b78 # load x3 with value 0x2263be2a86892b78
sw x3, 0(x2) # store 0x2263be2a86892b78 in memory
flh f15, 0(x2) # load 0x2263be2a86892b78 from memory into f15
fsub.h f15, f20, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0xc5779edfaf05d19c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x535c751f2e81304d # load x3 with value 0x535c751f2e81304d
sw x3, 0(x2) # store 0x535c751f2e81304d in memory
flh f23, 0(x2) # load 0x535c751f2e81304d from memory into f23
li x3, 0xdbe386f26c1aa970 # load x3 with value 0xdbe386f26c1aa970
sw x3, 0(x2) # store 0xdbe386f26c1aa970 in memory
flh f16, 0(x2) # load 0xdbe386f26c1aa970 from memory into f16
fsub.h f16, f23, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0xc9d6fa70a92f424c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc16b844b5c941939 # load x3 with value 0xc16b844b5c941939
sw x3, 0(x2) # store 0xc16b844b5c941939 in memory
flh f10, 0(x2) # load 0xc16b844b5c941939 from memory into f10
li x3, 0x665bccf73d149745 # load x3 with value 0x665bccf73d149745
sw x3, 0(x2) # store 0x665bccf73d149745 in memory
flh f17, 0(x2) # load 0x665bccf73d149745 from memory into f17
fsub.h f17, f10, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0xccdf1b8e94287da2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe490f1ba181f5dc4 # load x3 with value 0xe490f1ba181f5dc4
sw x3, 0(x2) # store 0xe490f1ba181f5dc4 in memory
flh f19, 0(x2) # load 0xe490f1ba181f5dc4 from memory into f19
li x3, 0x210162c2011881e2 # load x3 with value 0x210162c2011881e2
sw x3, 0(x2) # store 0x210162c2011881e2 in memory
flh f18, 0(x2) # load 0x210162c2011881e2 from memory into f18
fsub.h f18, f19, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0xa6e2aa4d03b70430 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x433ac3d11dc874ff # load x3 with value 0x433ac3d11dc874ff
sw x3, 0(x2) # store 0x433ac3d11dc874ff in memory
flh f13, 0(x2) # load 0x433ac3d11dc874ff from memory into f13
li x3, 0xeb2d2465b1333231 # load x3 with value 0xeb2d2465b1333231
sw x3, 0(x2) # store 0xeb2d2465b1333231 in memory
flh f19, 0(x2) # load 0xeb2d2465b1333231 from memory into f19
fsub.h f19, f13, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0x052b2c043b3f2a2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa1b817d04e653b70 # load x3 with value 0xa1b817d04e653b70
sw x3, 0(x2) # store 0xa1b817d04e653b70 in memory
flh f19, 0(x2) # load 0xa1b817d04e653b70 from memory into f19
li x3, 0xc25688a82ecbb426 # load x3 with value 0xc25688a82ecbb426
sw x3, 0(x2) # store 0xc25688a82ecbb426 in memory
flh f20, 0(x2) # load 0xc25688a82ecbb426 from memory into f20
fsub.h f20, f19, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0xfba07c1ea90829eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d3ed7e87ea7591c # load x3 with value 0x1d3ed7e87ea7591c
sw x3, 0(x2) # store 0x1d3ed7e87ea7591c in memory
flh f29, 0(x2) # load 0x1d3ed7e87ea7591c from memory into f29
li x3, 0xf8cde281188b2cae # load x3 with value 0xf8cde281188b2cae
sw x3, 0(x2) # store 0xf8cde281188b2cae in memory
flh f21, 0(x2) # load 0xf8cde281188b2cae from memory into f21
fsub.h f21, f29, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0xb4cb967f4b65db0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x428396350ef3a494 # load x3 with value 0x428396350ef3a494
sw x3, 0(x2) # store 0x428396350ef3a494 in memory
flh f20, 0(x2) # load 0x428396350ef3a494 from memory into f20
li x3, 0xa963f9d44b14fcb2 # load x3 with value 0xa963f9d44b14fcb2
sw x3, 0(x2) # store 0xa963f9d44b14fcb2 in memory
flh f22, 0(x2) # load 0xa963f9d44b14fcb2 from memory into f22
fsub.h f22, f20, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0xb5e9654bf3195658 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe1d200e037232713 # load x3 with value 0xe1d200e037232713
sw x3, 0(x2) # store 0xe1d200e037232713 in memory
flh f3, 0(x2) # load 0xe1d200e037232713 from memory into f3
li x3, 0x11f90d5ec3cd0427 # load x3 with value 0x11f90d5ec3cd0427
sw x3, 0(x2) # store 0x11f90d5ec3cd0427 in memory
flh f23, 0(x2) # load 0x11f90d5ec3cd0427 from memory into f23
fsub.h f23, f3, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x8f9e15bccd6d71d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4c98430766a0454b # load x3 with value 0x4c98430766a0454b
sw x3, 0(x2) # store 0x4c98430766a0454b in memory
flh f2, 0(x2) # load 0x4c98430766a0454b from memory into f2
li x3, 0x902c566db5bb528c # load x3 with value 0x902c566db5bb528c
sw x3, 0(x2) # store 0x902c566db5bb528c in memory
flh f24, 0(x2) # load 0x902c566db5bb528c from memory into f24
fsub.h f24, f2, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0xc4c47fdf3fe8e98a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9331f631611565f4 # load x3 with value 0x9331f631611565f4
sw x3, 0(x2) # store 0x9331f631611565f4 in memory
flh f27, 0(x2) # load 0x9331f631611565f4 from memory into f27
li x3, 0xa52898f0e6155b6 # load x3 with value 0xa52898f0e6155b6
sw x3, 0(x2) # store 0xa52898f0e6155b6 in memory
flh f25, 0(x2) # load 0xa52898f0e6155b6 from memory into f25
fsub.h f25, f27, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x5611de791d39cd07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x348aff71b494b9a7 # load x3 with value 0x348aff71b494b9a7
sw x3, 0(x2) # store 0x348aff71b494b9a7 in memory
flh f1, 0(x2) # load 0x348aff71b494b9a7 from memory into f1
li x3, 0xbd877e3b9bc5bbe # load x3 with value 0xbd877e3b9bc5bbe
sw x3, 0(x2) # store 0xbd877e3b9bc5bbe in memory
flh f26, 0(x2) # load 0xbd877e3b9bc5bbe from memory into f26
fsub.h f26, f1, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0xd336ad6db077ab9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65b3b5a8d5faae8d # load x3 with value 0x65b3b5a8d5faae8d
sw x3, 0(x2) # store 0x65b3b5a8d5faae8d in memory
flh f5, 0(x2) # load 0x65b3b5a8d5faae8d from memory into f5
li x3, 0x6eefa1ab9d19a909 # load x3 with value 0x6eefa1ab9d19a909
sw x3, 0(x2) # store 0x6eefa1ab9d19a909 in memory
flh f27, 0(x2) # load 0x6eefa1ab9d19a909 from memory into f27
fsub.h f27, f5, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0xcdcf7fa0dde4a9cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7723e75f22d41fc7 # load x3 with value 0x7723e75f22d41fc7
sw x3, 0(x2) # store 0x7723e75f22d41fc7 in memory
flh f20, 0(x2) # load 0x7723e75f22d41fc7 from memory into f20
li x3, 0x4ff817c53e8ebbbc # load x3 with value 0x4ff817c53e8ebbbc
sw x3, 0(x2) # store 0x4ff817c53e8ebbbc in memory
flh f28, 0(x2) # load 0x4ff817c53e8ebbbc from memory into f28
fsub.h f28, f20, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x4cedbccad0a0b563 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1123eccfb1a7e842 # load x3 with value 0x1123eccfb1a7e842
sw x3, 0(x2) # store 0x1123eccfb1a7e842 in memory
flh f6, 0(x2) # load 0x1123eccfb1a7e842 from memory into f6
li x3, 0x76d6193b6d88f1a5 # load x3 with value 0x76d6193b6d88f1a5
sw x3, 0(x2) # store 0x76d6193b6d88f1a5 in memory
flh f29, 0(x2) # load 0x76d6193b6d88f1a5 from memory into f29
fsub.h f29, f6, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0x1a35a7c65f0243c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x635c017a18204d00 # load x3 with value 0x635c017a18204d00
sw x3, 0(x2) # store 0x635c017a18204d00 in memory
flh f23, 0(x2) # load 0x635c017a18204d00 from memory into f23
li x3, 0x47b2611c1411709c # load x3 with value 0x47b2611c1411709c
sw x3, 0(x2) # store 0x47b2611c1411709c in memory
flh f30, 0(x2) # load 0x47b2611c1411709c from memory into f30
fsub.h f30, f23, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0xe5e7005d10662f95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee1905b7ddef6a93 # load x3 with value 0xee1905b7ddef6a93
sw x3, 0(x2) # store 0xee1905b7ddef6a93 in memory
flh f26, 0(x2) # load 0xee1905b7ddef6a93 from memory into f26
li x3, 0x101f32dd22abeff8 # load x3 with value 0x101f32dd22abeff8
sw x3, 0(x2) # store 0x101f32dd22abeff8 in memory
flh f31, 0(x2) # load 0x101f32dd22abeff8 from memory into f31
fsub.h f31, f26, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x28, 0x162f2383586aeccb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
li x3, 0xfbf96940e1b1527a # load x3 with value 0xfbf96940e1b1527a
sw x3, 0(x2) # store 0xfbf96940e1b1527a in memory
flh f8, 0(x2) # load 0xfbf96940e1b1527a from memory into f8
fsub.h f28, f25, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x7, 0xba2a9b895f89a476 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
li x3, 0x47dd532757cf3075 # load x3 with value 0x47dd532757cf3075
sw x3, 0(x2) # store 0x47dd532757cf3075 in memory
flh f23, 0(x2) # load 0x47dd532757cf3075 from memory into f23
fsub.h f7, f10, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x7, 0x936fcc269148cedc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
li x3, 0x68d2f8d226779ca0 # load x3 with value 0x68d2f8d226779ca0
sw x3, 0(x2) # store 0x68d2f8d226779ca0 in memory
flh f27, 0(x2) # load 0x68d2f8d226779ca0 from memory into f27
fsub.h f7, f21, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x18, 0x13df9de14191118e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
li x3, 0xd850674bb28ee846 # load x3 with value 0xd850674bb28ee846
sw x3, 0(x2) # store 0xd850674bb28ee846 in memory
flh f22, 0(x2) # load 0xd850674bb28ee846 from memory into f22
fsub.h f18, f2, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x5, 0x6d5b99c7f8a132dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
li x3, 0x1507e6f081ee1764 # load x3 with value 0x1507e6f081ee1764
sw x3, 0(x2) # store 0x1507e6f081ee1764 in memory
flh f20, 0(x2) # load 0x1507e6f081ee1764 from memory into f20
fsub.h f5, f13, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x15, 0x4b61b32cdeea24f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
li x3, 0x834cb42be546d60d # load x3 with value 0x834cb42be546d60d
sw x3, 0(x2) # store 0x834cb42be546d60d in memory
flh f6, 0(x2) # load 0x834cb42be546d60d from memory into f6
fsub.h f15, f24, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x31, 0x0cd809c8cb32e9fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
li x3, 0xc152382db1c28417 # load x3 with value 0xc152382db1c28417
sw x3, 0(x2) # store 0xc152382db1c28417 in memory
flh f4, 0(x2) # load 0xc152382db1c28417 from memory into f4
fsub.h f31, f15, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x4, 0x7a5e25ea4e7796e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
li x3, 0x87021af28c179a04 # load x3 with value 0x87021af28c179a04
sw x3, 0(x2) # store 0x87021af28c179a04 in memory
flh f10, 0(x2) # load 0x87021af28c179a04 from memory into f10
fsub.h f4, f27, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x29, 0x11aa0c03b19a2a1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
li x3, 0x28bc0291ed7ff9f4 # load x3 with value 0x28bc0291ed7ff9f4
sw x3, 0(x2) # store 0x28bc0291ed7ff9f4 in memory
flh f26, 0(x2) # load 0x28bc0291ed7ff9f4 from memory into f26
fsub.h f29, f14, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x25, 0x4da39c1e8311ed61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f4, 0(x2) # load 0x00008400 from memory into f4
li x3, 0xc9c4bbe07928d56f # load x3 with value 0xc9c4bbe07928d56f
sw x3, 0(x2) # store 0xc9c4bbe07928d56f in memory
flh f23, 0(x2) # load 0xc9c4bbe07928d56f from memory into f23
fsub.h f25, f4, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x21, 0x5818186c85872554 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
li x3, 0x7753dcc17f4b683 # load x3 with value 0x7753dcc17f4b683
sw x3, 0(x2) # store 0x7753dcc17f4b683 in memory
flh f27, 0(x2) # load 0x7753dcc17f4b683 from memory into f27
fsub.h f21, f2, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x30, 0x5c5b5bf2b58ca136 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
li x3, 0x5a86125d14eabe0b # load x3 with value 0x5a86125d14eabe0b
sw x3, 0(x2) # store 0x5a86125d14eabe0b in memory
flh f16, 0(x2) # load 0x5a86125d14eabe0b from memory into f16
fsub.h f30, f27, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x13, 0xd920b70d25ab9e0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
li x3, 0xc095b734dcdcc482 # load x3 with value 0xc095b734dcdcc482
sw x3, 0(x2) # store 0xc095b734dcdcc482 in memory
flh f26, 0(x2) # load 0xc095b734dcdcc482 from memory into f26
fsub.h f13, f31, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x11, 0xfdc41cae1c3a16cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
li x3, 0xf40e1fdf4597abc7 # load x3 with value 0xf40e1fdf4597abc7
sw x3, 0(x2) # store 0xf40e1fdf4597abc7 in memory
flh f12, 0(x2) # load 0xf40e1fdf4597abc7 from memory into f12
fsub.h f11, f30, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x4, 0xb78dade049947fb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
li x3, 0x2d8f8b1bfee3ead9 # load x3 with value 0x2d8f8b1bfee3ead9
sw x3, 0(x2) # store 0x2d8f8b1bfee3ead9 in memory
flh f13, 0(x2) # load 0x2d8f8b1bfee3ead9 from memory into f13
fsub.h f4, f6, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x20, 0x677a6427122d46d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
li x3, 0x534b472b233470ba # load x3 with value 0x534b472b233470ba
sw x3, 0(x2) # store 0x534b472b233470ba in memory
flh f16, 0(x2) # load 0x534b472b233470ba from memory into f16
fsub.h f20, f22, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x18, 0x378ba29ce82a8fc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0xc640c0b7d3d4e34e # load x3 with value 0xc640c0b7d3d4e34e
sw x3, 0(x2) # store 0xc640c0b7d3d4e34e in memory
flh f26, 0(x2) # load 0xc640c0b7d3d4e34e from memory into f26
fsub.h f18, f30, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x15, 0xf81f9445a579b9ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
li x3, 0xf3864fcf2ea6511d # load x3 with value 0xf3864fcf2ea6511d
sw x3, 0(x2) # store 0xf3864fcf2ea6511d in memory
flh f6, 0(x2) # load 0xf3864fcf2ea6511d from memory into f6
fsub.h f15, f24, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x25, 0xfb94727b286a55aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
li x3, 0x8e170e196d2078e # load x3 with value 0x8e170e196d2078e
sw x3, 0(x2) # store 0x8e170e196d2078e in memory
flh f31, 0(x2) # load 0x8e170e196d2078e from memory into f31
fsub.h f25, f6, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x3, 0x212b3e7335874fcb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
li x3, 0x2888d1dc1faa054e # load x3 with value 0x2888d1dc1faa054e
sw x3, 0(x2) # store 0x2888d1dc1faa054e in memory
flh f23, 0(x2) # load 0x2888d1dc1faa054e from memory into f23
fsub.h f3, f6, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x27, 0x2a26b8c71a401eb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
li x3, 0x8ac05a3e142997d6 # load x3 with value 0x8ac05a3e142997d6
sw x3, 0(x2) # store 0x8ac05a3e142997d6 in memory
flh f25, 0(x2) # load 0x8ac05a3e142997d6 from memory into f25
fsub.h f27, f16, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x28, 0x1379def7825751c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
li x3, 0x36b7eab16868fa52 # load x3 with value 0x36b7eab16868fa52
sw x3, 0(x2) # store 0x36b7eab16868fa52 in memory
flh f10, 0(x2) # load 0x36b7eab16868fa52 from memory into f10
fsub.h f28, f2, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x30, 0x8db2b065faa33493 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
li x3, 0x41e010d6a49e5998 # load x3 with value 0x41e010d6a49e5998
sw x3, 0(x2) # store 0x41e010d6a49e5998 in memory
flh f24, 0(x2) # load 0x41e010d6a49e5998 from memory into f24
fsub.h f30, f26, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x24, 0xc264c53bc5a8fe88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
li x3, 0xca7755f4dc4405a0 # load x3 with value 0xca7755f4dc4405a0
sw x3, 0(x2) # store 0xca7755f4dc4405a0 in memory
flh f31, 0(x2) # load 0xca7755f4dc4405a0 from memory into f31
fsub.h f24, f9, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x13, 0x1c794bddebd68f08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
li x3, 0x74afdb708d5573ab # load x3 with value 0x74afdb708d5573ab
sw x3, 0(x2) # store 0x74afdb708d5573ab in memory
flh f12, 0(x2) # load 0x74afdb708d5573ab from memory into f12
fsub.h f13, f1, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x1, 0x1ad9132748332484 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
li x3, 0x76a4a18ae1972b75 # load x3 with value 0x76a4a18ae1972b75
sw x3, 0(x2) # store 0x76a4a18ae1972b75 in memory
flh f5, 0(x2) # load 0x76a4a18ae1972b75 from memory into f5
fsub.h f1, f29, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x19, 0x7b79560c0467aa7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x299f0a2b7fa38517 # load x3 with value 0x299f0a2b7fa38517
sw x3, 0(x2) # store 0x299f0a2b7fa38517 in memory
flh f27, 0(x2) # load 0x299f0a2b7fa38517 from memory into f27
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
fsub.h f19, f27, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
li x29, 0x183e6dd50cbe5730 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9fab5aa9fd0f6f21 # load x3 with value 0x9fab5aa9fd0f6f21
sw x3, 0(x2) # store 0x9fab5aa9fd0f6f21 in memory
flh f15, 0(x2) # load 0x9fab5aa9fd0f6f21 from memory into f15
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
fsub.h f29, f15, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
li x4, 0x5ce200653de6a642 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x66722c537fc16ffb # load x3 with value 0x66722c537fc16ffb
sw x3, 0(x2) # store 0x66722c537fc16ffb in memory
flh f28, 0(x2) # load 0x66722c537fc16ffb from memory into f28
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fsub.h f4, f28, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
li x17, 0xe6920cf4e5c37791 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6980c1049c9f5e1c # load x3 with value 0x6980c1049c9f5e1c
sw x3, 0(x2) # store 0x6980c1049c9f5e1c in memory
flh f28, 0(x2) # load 0x6980c1049c9f5e1c from memory into f28
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
fsub.h f17, f28, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
li x14, 0x2a13d55bdc3912b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa50a527d37a61fe3 # load x3 with value 0xa50a527d37a61fe3
sw x3, 0(x2) # store 0xa50a527d37a61fe3 in memory
flh f13, 0(x2) # load 0xa50a527d37a61fe3 from memory into f13
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
fsub.h f14, f13, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
li x21, 0xf1676efac38ebde5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x18b4b37ee1f2dff5 # load x3 with value 0x18b4b37ee1f2dff5
sw x3, 0(x2) # store 0x18b4b37ee1f2dff5 in memory
flh f27, 0(x2) # load 0x18b4b37ee1f2dff5 from memory into f27
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fsub.h f21, f27, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
li x20, 0xd0b47851a96fe115 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x783f9f46f601ca47 # load x3 with value 0x783f9f46f601ca47
sw x3, 0(x2) # store 0x783f9f46f601ca47 in memory
flh f8, 0(x2) # load 0x783f9f46f601ca47 from memory into f8
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
fsub.h f20, f8, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
li x23, 0x874ed12c319ae000 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5dcd20a12570093 # load x3 with value 0xc5dcd20a12570093
sw x3, 0(x2) # store 0xc5dcd20a12570093 in memory
flh f20, 0(x2) # load 0xc5dcd20a12570093 from memory into f20
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
fsub.h f23, f20, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
li x2, 0xc0656ae57ea06cfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0838377ebbc637c # load x3 with value 0xb0838377ebbc637c
sw x3, 0(x2) # store 0xb0838377ebbc637c in memory
flh f24, 0(x2) # load 0xb0838377ebbc637c from memory into f24
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
fsub.h f2, f24, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
li x7, 0x6bb56dc7de97e86b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfc56b683ead6331 # load x3 with value 0xfc56b683ead6331
sw x3, 0(x2) # store 0xfc56b683ead6331 in memory
flh f21, 0(x2) # load 0xfc56b683ead6331 from memory into f21
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
fsub.h f7, f21, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
li x12, 0x7b020e4c20bdc941 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfc1e96523a581214 # load x3 with value 0xfc1e96523a581214
sw x3, 0(x2) # store 0xfc1e96523a581214 in memory
flh f10, 0(x2) # load 0xfc1e96523a581214 from memory into f10
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
fsub.h f12, f10, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
li x13, 0xccb732474f46e7cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1ac9aaa9c7e8385 # load x3 with value 0xc1ac9aaa9c7e8385
sw x3, 0(x2) # store 0xc1ac9aaa9c7e8385 in memory
flh f2, 0(x2) # load 0xc1ac9aaa9c7e8385 from memory into f2
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
fsub.h f13, f2, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
li x8, 0x98c6e813afcb1275 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeaa098e28bc57008 # load x3 with value 0xeaa098e28bc57008
sw x3, 0(x2) # store 0xeaa098e28bc57008 in memory
flh f14, 0(x2) # load 0xeaa098e28bc57008 from memory into f14
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
fsub.h f8, f14, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
li x19, 0x18500b282d136eaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x89d4afab0f060756 # load x3 with value 0x89d4afab0f060756
sw x3, 0(x2) # store 0x89d4afab0f060756 in memory
flh f25, 0(x2) # load 0x89d4afab0f060756 from memory into f25
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fsub.h f19, f25, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
li x29, 0x94236d311b9b7d75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x88d76a79c044e8ec # load x3 with value 0x88d76a79c044e8ec
sw x3, 0(x2) # store 0x88d76a79c044e8ec in memory
flh f28, 0(x2) # load 0x88d76a79c044e8ec from memory into f28
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
fsub.h f29, f28, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
li x10, 0x58c85598bcc43e8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcc86f8330ffca068 # load x3 with value 0xcc86f8330ffca068
sw x3, 0(x2) # store 0xcc86f8330ffca068 in memory
flh f5, 0(x2) # load 0xcc86f8330ffca068 from memory into f5
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
fsub.h f10, f5, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x5, 0xd6762056cdc4cdd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1cc94b52ad77a2 # load x3 with value 0x1cc94b52ad77a2
sw x3, 0(x2) # store 0x1cc94b52ad77a2 in memory
flh f15, 0(x2) # load 0x1cc94b52ad77a2 from memory into f15
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
fsub.h f5, f15, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
li x15, 0x433d78e04578157a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x68d9b0b1ae0a190d # load x3 with value 0x68d9b0b1ae0a190d
sw x3, 0(x2) # store 0x68d9b0b1ae0a190d in memory
flh f5, 0(x2) # load 0x68d9b0b1ae0a190d from memory into f5
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
fsub.h f15, f5, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
li x25, 0xe8a47d2df7f5e7ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdece6a92369e5a73 # load x3 with value 0xdece6a92369e5a73
sw x3, 0(x2) # store 0xdece6a92369e5a73 in memory
flh f5, 0(x2) # load 0xdece6a92369e5a73 from memory into f5
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fsub.h f25, f5, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
li x7, 0x4fde33c5827de28a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x824cabfad2ad30dc # load x3 with value 0x824cabfad2ad30dc
sw x3, 0(x2) # store 0x824cabfad2ad30dc in memory
flh f21, 0(x2) # load 0x824cabfad2ad30dc from memory into f21
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
fsub.h f7, f21, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
li x16, 0xef2537e658cb2c8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8eefdf8ba7f0f053 # load x3 with value 0x8eefdf8ba7f0f053
sw x3, 0(x2) # store 0x8eefdf8ba7f0f053 in memory
flh f22, 0(x2) # load 0x8eefdf8ba7f0f053 from memory into f22
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
fsub.h f16, f22, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
li x3, 0x4abe50ba660444e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6cbceef564bba401 # load x3 with value 0x6cbceef564bba401
sw x3, 0(x2) # store 0x6cbceef564bba401 in memory
flh f7, 0(x2) # load 0x6cbceef564bba401 from memory into f7
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
fsub.h f3, f7, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
li x18, 0xedf58a86ae5c8f61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x229614329722ddd0 # load x3 with value 0x229614329722ddd0
sw x3, 0(x2) # store 0x229614329722ddd0 in memory
flh f16, 0(x2) # load 0x229614329722ddd0 from memory into f16
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
fsub.h f18, f16, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
li x16, 0xc200efba9b71f138 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5cd9f83f0dd91bac # load x3 with value 0x5cd9f83f0dd91bac
sw x3, 0(x2) # store 0x5cd9f83f0dd91bac in memory
flh f27, 0(x2) # load 0x5cd9f83f0dd91bac from memory into f27
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
fsub.h f16, f27, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
li x1, 0x3b29026e7a20e45d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd43ec6e64fa68944 # load x3 with value 0xd43ec6e64fa68944
sw x3, 0(x2) # store 0xd43ec6e64fa68944 in memory
flh f30, 0(x2) # load 0xd43ec6e64fa68944 from memory into f30
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
fsub.h f1, f30, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
li x26, 0x561d2f500271b650 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4fe41438e91fb625 # load x3 with value 0x4fe41438e91fb625
sw x3, 0(x2) # store 0x4fe41438e91fb625 in memory
flh f24, 0(x2) # load 0x4fe41438e91fb625 from memory into f24
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
fsub.h f26, f24, f12 # perform operation

# Testcase cp_frm
li x2, 0xa46a01bd3081f29a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x594969ddf2d3d9c9 # load x3 with value 0x594969ddf2d3d9c9
sw x3, 0(x2) # store 0x594969ddf2d3d9c9 in memory
flh f13, 0(x2) # load 0x594969ddf2d3d9c9 from memory into f13
li x3, 0x522e2e59d34b3749 # load x3 with value 0x522e2e59d34b3749
sw x3, 0(x2) # store 0x522e2e59d34b3749 in memory
flh f10, 0(x2) # load 0x522e2e59d34b3749 from memory into f10
fsub.h f2, f13, f10, dyn # perform operation
fsub.h f2, f13, f10, rdn # perform operation
fsub.h f2, f13, f10, rmm # perform operation
fsub.h f2, f13, f10, rne # perform operation
fsub.h f2, f13, f10, rtz # perform operation
fsub.h f2, f13, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f13, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f13, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f13, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f13, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x18, 0x083764e87bd7ed3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fsub.h f18, f21, f5, dyn # perform operation
fsub.h f18, f21, f5, rdn # perform operation
fsub.h f18, f21, f5, rmm # perform operation
fsub.h f18, f21, f5, rne # perform operation
fsub.h f18, f21, f5, rtz # perform operation
fsub.h f18, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000)
li x13, 0x84cbef9b128048be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
fsub.h f13, f19, f1, dyn # perform operation
fsub.h f13, f19, f1, rdn # perform operation
fsub.h f13, f19, f1, rmm # perform operation
fsub.h f13, f19, f1, rne # perform operation
fsub.h f13, f19, f1, rtz # perform operation
fsub.h f13, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f19, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3c00)
li x17, 0x471e00e1411d8d4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
fsub.h f17, f23, f25, dyn # perform operation
fsub.h f17, f23, f25, rdn # perform operation
fsub.h f17, f23, f25, rmm # perform operation
fsub.h f17, f23, f25, rne # perform operation
fsub.h f17, f23, f25, rtz # perform operation
fsub.h f17, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f23, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbc00)
li x25, 0xb2d1f0c05ce29d22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f4, 0(x2) # load 0x00000000 from memory into f4
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
fsub.h f25, f4, f29, dyn # perform operation
fsub.h f25, f4, f29, rdn # perform operation
fsub.h f25, f4, f29, rmm # perform operation
fsub.h f25, f4, f29, rne # perform operation
fsub.h f25, f4, f29, rtz # perform operation
fsub.h f25, f4, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f4, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f4, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f4, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f4, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f4, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3e00)
li x2, 0xa668ffce106abcbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fsub.h f2, f26, f1, dyn # perform operation
fsub.h f2, f26, f1, rdn # perform operation
fsub.h f2, f26, f1, rmm # perform operation
fsub.h f2, f26, f1, rne # perform operation
fsub.h f2, f26, f1, rtz # perform operation
fsub.h f2, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbe00)
li x20, 0x52cb323336844e3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fsub.h f20, f31, f8, dyn # perform operation
fsub.h f20, f31, f8, rdn # perform operation
fsub.h f20, f31, f8, rmm # perform operation
fsub.h f20, f31, f8, rne # perform operation
fsub.h f20, f31, f8, rtz # perform operation
fsub.h f20, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f31, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000)
li x28, 0x6e7f3c346ce355f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
fsub.h f28, f7, f19, dyn # perform operation
fsub.h f28, f7, f19, rdn # perform operation
fsub.h f28, f7, f19, rmm # perform operation
fsub.h f28, f7, f19, rne # perform operation
fsub.h f28, f7, f19, rtz # perform operation
fsub.h f28, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f7, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000)
li x10, 0xb8f7fdc329f3f6ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
fsub.h f10, f5, f24, dyn # perform operation
fsub.h f10, f5, f24, rdn # perform operation
fsub.h f10, f5, f24, rmm # perform operation
fsub.h f10, f5, f24, rne # perform operation
fsub.h f10, f5, f24, rtz # perform operation
fsub.h f10, f5, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f5, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f5, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f5, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f5, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400)
li x12, 0x590fb6176999c89a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
fsub.h f12, f18, f24, dyn # perform operation
fsub.h f12, f18, f24, rdn # perform operation
fsub.h f12, f18, f24, rmm # perform operation
fsub.h f12, f18, f24, rne # perform operation
fsub.h f12, f18, f24, rtz # perform operation
fsub.h f12, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f18, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8400)
li x30, 0x800261480bc12a73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
fsub.h f30, f10, f12, dyn # perform operation
fsub.h f30, f10, f12, rdn # perform operation
fsub.h f30, f10, f12, rmm # perform operation
fsub.h f30, f10, f12, rne # perform operation
fsub.h f30, f10, f12, rtz # perform operation
fsub.h f30, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7bff)
li x9, 0x01cf945b27dfad06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f4, 0(x2) # load 0x00000000 from memory into f4
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
fsub.h f9, f4, f3, dyn # perform operation
fsub.h f9, f4, f3, rdn # perform operation
fsub.h f9, f4, f3, rmm # perform operation
fsub.h f9, f4, f3, rne # perform operation
fsub.h f9, f4, f3, rtz # perform operation
fsub.h f9, f4, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f4, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f4, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f4, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f4, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f4, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfbff)
li x14, 0x8752b6df5ad271fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
fsub.h f14, f3, f20, dyn # perform operation
fsub.h f14, f3, f20, rdn # perform operation
fsub.h f14, f3, f20, rmm # perform operation
fsub.h f14, f3, f20, rne # perform operation
fsub.h f14, f3, f20, rtz # perform operation
fsub.h f14, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f3, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff)
li x27, 0xfa13f5a17319069a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
fsub.h f27, f7, f28, dyn # perform operation
fsub.h f27, f7, f28, rdn # perform operation
fsub.h f27, f7, f28, rmm # perform operation
fsub.h f27, f7, f28, rne # perform operation
fsub.h f27, f7, f28, rtz # perform operation
fsub.h f27, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x83ff)
li x4, 0x3a014a8e49bd4bfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
fsub.h f4, f19, f11, dyn # perform operation
fsub.h f4, f19, f11, rdn # perform operation
fsub.h f4, f19, f11, rmm # perform operation
fsub.h f4, f19, f11, rne # perform operation
fsub.h f4, f19, f11, rtz # perform operation
fsub.h f4, f19, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f19, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f19, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f19, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f19, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f19, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x200)
li x15, 0x7d90afa3035f2d51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
fsub.h f15, f20, f6, dyn # perform operation
fsub.h f15, f20, f6, rdn # perform operation
fsub.h f15, f20, f6, rmm # perform operation
fsub.h f15, f20, f6, rne # perform operation
fsub.h f15, f20, f6, rtz # perform operation
fsub.h f15, f20, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f20, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f20, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f20, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f20, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f20, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8200)
li x19, 0xf996609aa149d11b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
fsub.h f19, f31, f13, dyn # perform operation
fsub.h f19, f31, f13, rdn # perform operation
fsub.h f19, f31, f13, rmm # perform operation
fsub.h f19, f31, f13, rne # perform operation
fsub.h f19, f31, f13, rtz # perform operation
fsub.h f19, f31, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f31, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f31, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f31, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f31, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f31, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x17, 0x819eef5113137b54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
fsub.h f17, f11, f24, dyn # perform operation
fsub.h f17, f11, f24, rdn # perform operation
fsub.h f17, f11, f24, rmm # perform operation
fsub.h f17, f11, f24, rne # perform operation
fsub.h f17, f11, f24, rtz # perform operation
fsub.h f17, f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f11, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8001)
li x24, 0x159a09d56a1fe6de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
fsub.h f24, f19, f28, dyn # perform operation
fsub.h f24, f19, f28, rdn # perform operation
fsub.h f24, f19, f28, rmm # perform operation
fsub.h f24, f19, f28, rne # perform operation
fsub.h f24, f19, f28, rtz # perform operation
fsub.h f24, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f19, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c00)
li x26, 0x803c4a4887e60898 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
fsub.h f26, f31, f12, dyn # perform operation
fsub.h f26, f31, f12, rdn # perform operation
fsub.h f26, f31, f12, rmm # perform operation
fsub.h f26, f31, f12, rne # perform operation
fsub.h f26, f31, f12, rtz # perform operation
fsub.h f26, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f31, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc00)
li x17, 0xe2c3afe25c826fbe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
fsub.h f17, f25, f21, dyn # perform operation
fsub.h f17, f25, f21, rdn # perform operation
fsub.h f17, f25, f21, rmm # perform operation
fsub.h f17, f25, f21, rne # perform operation
fsub.h f17, f25, f21, rtz # perform operation
fsub.h f17, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f25, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7e00)
li x11, 0x799e7d71edb27bf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fsub.h f11, f5, f2, dyn # perform operation
fsub.h f11, f5, f2, rdn # perform operation
fsub.h f11, f5, f2, rmm # perform operation
fsub.h f11, f5, f2, rne # perform operation
fsub.h f11, f5, f2, rtz # perform operation
fsub.h f11, f5, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f5, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f5, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f5, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f5, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fff)
li x11, 0x27d080c0a8926b84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
fsub.h f11, f28, f1, dyn # perform operation
fsub.h f11, f28, f1, rdn # perform operation
fsub.h f11, f28, f1, rmm # perform operation
fsub.h f11, f28, f1, rne # perform operation
fsub.h f11, f28, f1, rtz # perform operation
fsub.h f11, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f28, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c01)
li x8, 0x5a95cafaf3858fef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
fsub.h f8, f10, f11, dyn # perform operation
fsub.h f8, f10, f11, rdn # perform operation
fsub.h f8, f10, f11, rmm # perform operation
fsub.h f8, f10, f11, rne # perform operation
fsub.h f8, f10, f11, rtz # perform operation
fsub.h f8, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f10, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7dff)
li x10, 0x494b6c91a981b738 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
fsub.h f10, f1, f21, dyn # perform operation
fsub.h f10, f1, f21, rdn # perform operation
fsub.h f10, f1, f21, rmm # perform operation
fsub.h f10, f1, f21, rne # perform operation
fsub.h f10, f1, f21, rtz # perform operation
fsub.h f10, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f1, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x58b4)
li x14, 0xf90fc87cf7cab9d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
fsub.h f14, f16, f27, dyn # perform operation
fsub.h f14, f16, f27, rdn # perform operation
fsub.h f14, f16, f27, rmm # perform operation
fsub.h f14, f16, f27, rne # perform operation
fsub.h f14, f16, f27, rtz # perform operation
fsub.h f14, f16, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f16, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f16, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f16, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f16, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f16, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc93a)
li x17, 0x665ae58f0228678e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
fsub.h f17, f2, f3, dyn # perform operation
fsub.h f17, f2, f3, rdn # perform operation
fsub.h f17, f2, f3, rmm # perform operation
fsub.h f17, f2, f3, rne # perform operation
fsub.h f17, f2, f3, rtz # perform operation
fsub.h f17, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f2, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x0)
li x22, 0x6cd0ab072cc8e179 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fsub.h f22, f19, f5, dyn # perform operation
fsub.h f22, f19, f5, rdn # perform operation
fsub.h f22, f19, f5, rmm # perform operation
fsub.h f22, f19, f5, rne # perform operation
fsub.h f22, f19, f5, rtz # perform operation
fsub.h f22, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8000)
li x26, 0x0b00bcdd1868811c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
fsub.h f26, f22, f16, dyn # perform operation
fsub.h f26, f22, f16, rdn # perform operation
fsub.h f26, f22, f16, rmm # perform operation
fsub.h f26, f22, f16, rne # perform operation
fsub.h f26, f22, f16, rtz # perform operation
fsub.h f26, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f22, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3c00)
li x28, 0x3a4e0df59310d8db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
fsub.h f28, f31, f24, dyn # perform operation
fsub.h f28, f31, f24, rdn # perform operation
fsub.h f28, f31, f24, rmm # perform operation
fsub.h f28, f31, f24, rne # perform operation
fsub.h f28, f31, f24, rtz # perform operation
fsub.h f28, f31, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f31, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f31, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f31, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f31, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f31, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbc00)
li x13, 0xd42820aa8215248b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fsub.h f13, f7, f26, dyn # perform operation
fsub.h f13, f7, f26, rdn # perform operation
fsub.h f13, f7, f26, rmm # perform operation
fsub.h f13, f7, f26, rne # perform operation
fsub.h f13, f7, f26, rtz # perform operation
fsub.h f13, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f7, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3e00)
li x30, 0x9278f63635a7c9f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
fsub.h f30, f10, f6, dyn # perform operation
fsub.h f30, f10, f6, rdn # perform operation
fsub.h f30, f10, f6, rmm # perform operation
fsub.h f30, f10, f6, rne # perform operation
fsub.h f30, f10, f6, rtz # perform operation
fsub.h f30, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbe00)
li x17, 0xe47eeebafca899a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
fsub.h f17, f30, f27, dyn # perform operation
fsub.h f17, f30, f27, rdn # perform operation
fsub.h f17, f30, f27, rmm # perform operation
fsub.h f17, f30, f27, rne # perform operation
fsub.h f17, f30, f27, rtz # perform operation
fsub.h f17, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f30, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x4000)
li x8, 0x608a35af420554b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
fsub.h f8, f13, f20, dyn # perform operation
fsub.h f8, f13, f20, rdn # perform operation
fsub.h f8, f13, f20, rmm # perform operation
fsub.h f8, f13, f20, rne # perform operation
fsub.h f8, f13, f20, rtz # perform operation
fsub.h f8, f13, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f13, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f13, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f13, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f13, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f13, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc000)
li x23, 0xfd8c13ea39ba1fe1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fsub.h f23, f14, f5, dyn # perform operation
fsub.h f23, f14, f5, rdn # perform operation
fsub.h f23, f14, f5, rmm # perform operation
fsub.h f23, f14, f5, rne # perform operation
fsub.h f23, f14, f5, rtz # perform operation
fsub.h f23, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x400)
li x8, 0xb964e94ca89270d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
fsub.h f8, f26, f1, dyn # perform operation
fsub.h f8, f26, f1, rdn # perform operation
fsub.h f8, f26, f1, rmm # perform operation
fsub.h f8, f26, f1, rne # perform operation
fsub.h f8, f26, f1, rtz # perform operation
fsub.h f8, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8400)
li x20, 0x0c653915d21046b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
fsub.h f20, f9, f22, dyn # perform operation
fsub.h f20, f9, f22, rdn # perform operation
fsub.h f20, f9, f22, rmm # perform operation
fsub.h f20, f9, f22, rne # perform operation
fsub.h f20, f9, f22, rtz # perform operation
fsub.h f20, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f9, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7bff)
li x19, 0xff486532f4f43ff3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fsub.h f19, f10, f8, dyn # perform operation
fsub.h f19, f10, f8, rdn # perform operation
fsub.h f19, f10, f8, rmm # perform operation
fsub.h f19, f10, f8, rne # perform operation
fsub.h f19, f10, f8, rtz # perform operation
fsub.h f19, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f10, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfbff)
li x6, 0xbbe569f0ae18f5a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
fsub.h f6, f20, f15, dyn # perform operation
fsub.h f6, f20, f15, rdn # perform operation
fsub.h f6, f20, f15, rmm # perform operation
fsub.h f6, f20, f15, rne # perform operation
fsub.h f6, f20, f15, rtz # perform operation
fsub.h f6, f20, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f20, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f20, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f20, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f20, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f20, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3ff)
li x9, 0xafaa34cfcb967cab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f22, 0(x2) # load 0x000003ff from memory into f22
fsub.h f9, f24, f22, dyn # perform operation
fsub.h f9, f24, f22, rdn # perform operation
fsub.h f9, f24, f22, rmm # perform operation
fsub.h f9, f24, f22, rne # perform operation
fsub.h f9, f24, f22, rtz # perform operation
fsub.h f9, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f24, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x83ff)
li x12, 0xabda61e494c7f0e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
fsub.h f12, f9, f15, dyn # perform operation
fsub.h f12, f9, f15, rdn # perform operation
fsub.h f12, f9, f15, rmm # perform operation
fsub.h f12, f9, f15, rne # perform operation
fsub.h f12, f9, f15, rtz # perform operation
fsub.h f12, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f9, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x200)
li x18, 0x614d1adcfbccea36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
fsub.h f18, f12, f20, dyn # perform operation
fsub.h f18, f12, f20, rdn # perform operation
fsub.h f18, f12, f20, rmm # perform operation
fsub.h f18, f12, f20, rne # perform operation
fsub.h f18, f12, f20, rtz # perform operation
fsub.h f18, f12, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f12, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f12, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f12, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f12, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f12, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8200)
li x31, 0x5c2c76d4743127a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fsub.h f31, f6, f20, dyn # perform operation
fsub.h f31, f6, f20, rdn # perform operation
fsub.h f31, f6, f20, rmm # perform operation
fsub.h f31, f6, f20, rne # perform operation
fsub.h f31, f6, f20, rtz # perform operation
fsub.h f31, f6, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f6, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f6, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f6, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f6, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f6, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x1)
li x2, 0xd592de880c7f2bad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
fsub.h f2, f8, f19, dyn # perform operation
fsub.h f2, f8, f19, rdn # perform operation
fsub.h f2, f8, f19, rmm # perform operation
fsub.h f2, f8, f19, rne # perform operation
fsub.h f2, f8, f19, rtz # perform operation
fsub.h f2, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8001)
li x27, 0xb3cabaa84176b1df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
fsub.h f27, f26, f7, dyn # perform operation
fsub.h f27, f26, f7, rdn # perform operation
fsub.h f27, f26, f7, rmm # perform operation
fsub.h f27, f26, f7, rne # perform operation
fsub.h f27, f26, f7, rtz # perform operation
fsub.h f27, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f26, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c00)
li x1, 0xcb61daa092b9a098 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
fsub.h f1, f2, f27, dyn # perform operation
fsub.h f1, f2, f27, rdn # perform operation
fsub.h f1, f2, f27, rmm # perform operation
fsub.h f1, f2, f27, rne # perform operation
fsub.h f1, f2, f27, rtz # perform operation
fsub.h f1, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc00)
li x6, 0x8e24560c5b853e14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
fsub.h f6, f14, f29, dyn # perform operation
fsub.h f6, f14, f29, rdn # perform operation
fsub.h f6, f14, f29, rmm # perform operation
fsub.h f6, f14, f29, rne # perform operation
fsub.h f6, f14, f29, rtz # perform operation
fsub.h f6, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7e00)
li x24, 0x87374ec08634f34f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
fsub.h f24, f1, f19, dyn # perform operation
fsub.h f24, f1, f19, rdn # perform operation
fsub.h f24, f1, f19, rmm # perform operation
fsub.h f24, f1, f19, rne # perform operation
fsub.h f24, f1, f19, rtz # perform operation
fsub.h f24, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f1, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7fff)
li x5, 0xaf26b02b45ae47e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
fsub.h f5, f30, f19, dyn # perform operation
fsub.h f5, f30, f19, rdn # perform operation
fsub.h f5, f30, f19, rmm # perform operation
fsub.h f5, f30, f19, rne # perform operation
fsub.h f5, f30, f19, rtz # perform operation
fsub.h f5, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f30, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c01)
li x11, 0xf98834b983da5cd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
fsub.h f11, f8, f17, dyn # perform operation
fsub.h f11, f8, f17, rdn # perform operation
fsub.h f11, f8, f17, rmm # perform operation
fsub.h f11, f8, f17, rne # perform operation
fsub.h f11, f8, f17, rtz # perform operation
fsub.h f11, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f8, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7dff)
li x26, 0x12b62400ad0ee514 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
fsub.h f26, f2, f27, dyn # perform operation
fsub.h f26, f2, f27, rdn # perform operation
fsub.h f26, f2, f27, rmm # perform operation
fsub.h f26, f2, f27, rne # perform operation
fsub.h f26, f2, f27, rtz # perform operation
fsub.h f26, f2, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f2, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f2, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f2, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f2, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x58b4)
li x24, 0x993f123247377e03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
fsub.h f24, f10, f1, dyn # perform operation
fsub.h f24, f10, f1, rdn # perform operation
fsub.h f24, f10, f1, rmm # perform operation
fsub.h f24, f10, f1, rne # perform operation
fsub.h f24, f10, f1, rtz # perform operation
fsub.h f24, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f10, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc93a)
li x2, 0x76101494a3d78913 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
fsub.h f2, f14, f7, dyn # perform operation
fsub.h f2, f14, f7, rdn # perform operation
fsub.h f2, f14, f7, rmm # perform operation
fsub.h f2, f14, f7, rne # perform operation
fsub.h f2, f14, f7, rtz # perform operation
fsub.h f2, f14, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f14, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f14, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f14, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f14, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x0)
li x3, 0xe44893d6de0de29e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f4, 0(x2) # load 0x00003c00 from memory into f4
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
fsub.h f3, f4, f19, dyn # perform operation
fsub.h f3, f4, f19, rdn # perform operation
fsub.h f3, f4, f19, rmm # perform operation
fsub.h f3, f4, f19, rne # perform operation
fsub.h f3, f4, f19, rtz # perform operation
fsub.h f3, f4, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f4, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f4, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f4, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f4, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8000)
li x28, 0xa8273cc5be75fab9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
fsub.h f28, f25, f22, dyn # perform operation
fsub.h f28, f25, f22, rdn # perform operation
fsub.h f28, f25, f22, rmm # perform operation
fsub.h f28, f25, f22, rne # perform operation
fsub.h f28, f25, f22, rtz # perform operation
fsub.h f28, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f25, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3c00)
li x18, 0x323f7794b3f4e1a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
fsub.h f18, f16, f26, dyn # perform operation
fsub.h f18, f16, f26, rdn # perform operation
fsub.h f18, f16, f26, rmm # perform operation
fsub.h f18, f16, f26, rne # perform operation
fsub.h f18, f16, f26, rtz # perform operation
fsub.h f18, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbc00)
li x8, 0xa10d4e0a02addf1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
fsub.h f8, f20, f23, dyn # perform operation
fsub.h f8, f20, f23, rdn # perform operation
fsub.h f8, f20, f23, rmm # perform operation
fsub.h f8, f20, f23, rne # perform operation
fsub.h f8, f20, f23, rtz # perform operation
fsub.h f8, f20, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f20, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f20, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f20, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f20, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f20, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3e00)
li x17, 0xff44389cbccee064 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
fsub.h f17, f3, f9, dyn # perform operation
fsub.h f17, f3, f9, rdn # perform operation
fsub.h f17, f3, f9, rmm # perform operation
fsub.h f17, f3, f9, rne # perform operation
fsub.h f17, f3, f9, rtz # perform operation
fsub.h f17, f3, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f3, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f3, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f3, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f3, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f3, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbe00)
li x16, 0x5bfca0a1b734a4e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
fsub.h f16, f23, f18, dyn # perform operation
fsub.h f16, f23, f18, rdn # perform operation
fsub.h f16, f23, f18, rmm # perform operation
fsub.h f16, f23, f18, rne # perform operation
fsub.h f16, f23, f18, rtz # perform operation
fsub.h f16, f23, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f23, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f23, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f23, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f23, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f23, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x4000)
li x6, 0x5fd8b313603b2e70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
fsub.h f6, f7, f14, dyn # perform operation
fsub.h f6, f7, f14, rdn # perform operation
fsub.h f6, f7, f14, rmm # perform operation
fsub.h f6, f7, f14, rne # perform operation
fsub.h f6, f7, f14, rtz # perform operation
fsub.h f6, f7, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f7, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f7, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f7, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f7, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f7, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc000)
li x15, 0x75cb66cf3b62632c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
fsub.h f15, f1, f12, dyn # perform operation
fsub.h f15, f1, f12, rdn # perform operation
fsub.h f15, f1, f12, rmm # perform operation
fsub.h f15, f1, f12, rne # perform operation
fsub.h f15, f1, f12, rtz # perform operation
fsub.h f15, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x400)
li x14, 0x237e4919ffcfd6b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
fsub.h f14, f5, f20, dyn # perform operation
fsub.h f14, f5, f20, rdn # perform operation
fsub.h f14, f5, f20, rmm # perform operation
fsub.h f14, f5, f20, rne # perform operation
fsub.h f14, f5, f20, rtz # perform operation
fsub.h f14, f5, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f5, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f5, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f5, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f5, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f5, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8400)
li x22, 0x1872e94ef75e01bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
fsub.h f22, f18, f14, dyn # perform operation
fsub.h f22, f18, f14, rdn # perform operation
fsub.h f22, f18, f14, rmm # perform operation
fsub.h f22, f18, f14, rne # perform operation
fsub.h f22, f18, f14, rtz # perform operation
fsub.h f22, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7bff)
li x22, 0x9d07857980863fbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
fsub.h f22, f2, f13, dyn # perform operation
fsub.h f22, f2, f13, rdn # perform operation
fsub.h f22, f2, f13, rmm # perform operation
fsub.h f22, f2, f13, rne # perform operation
fsub.h f22, f2, f13, rtz # perform operation
fsub.h f22, f2, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f2, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f2, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f2, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f2, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f2, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfbff)
li x22, 0xb061313dc9ac00bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
fsub.h f22, f5, f13, dyn # perform operation
fsub.h f22, f5, f13, rdn # perform operation
fsub.h f22, f5, f13, rmm # perform operation
fsub.h f22, f5, f13, rne # perform operation
fsub.h f22, f5, f13, rtz # perform operation
fsub.h f22, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f5, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3ff)
li x13, 0x1b83ca8cca802283 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
fsub.h f13, f30, f28, dyn # perform operation
fsub.h f13, f30, f28, rdn # perform operation
fsub.h f13, f30, f28, rmm # perform operation
fsub.h f13, f30, f28, rne # perform operation
fsub.h f13, f30, f28, rtz # perform operation
fsub.h f13, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f30, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x83ff)
li x4, 0x44682157c29bd859 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fsub.h f4, f27, f17, dyn # perform operation
fsub.h f4, f27, f17, rdn # perform operation
fsub.h f4, f27, f17, rmm # perform operation
fsub.h f4, f27, f17, rne # perform operation
fsub.h f4, f27, f17, rtz # perform operation
fsub.h f4, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f27, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x200)
li x14, 0xfc4046b42d1d67b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
fsub.h f14, f23, f7, dyn # perform operation
fsub.h f14, f23, f7, rdn # perform operation
fsub.h f14, f23, f7, rmm # perform operation
fsub.h f14, f23, f7, rne # perform operation
fsub.h f14, f23, f7, rtz # perform operation
fsub.h f14, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f23, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8200)
li x7, 0x2c78bd47369870ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
fsub.h f7, f20, f28, dyn # perform operation
fsub.h f7, f20, f28, rdn # perform operation
fsub.h f7, f20, f28, rmm # perform operation
fsub.h f7, f20, f28, rne # perform operation
fsub.h f7, f20, f28, rtz # perform operation
fsub.h f7, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x1)
li x19, 0xc6d117668057b284 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
fsub.h f19, f5, f8, dyn # perform operation
fsub.h f19, f5, f8, rdn # perform operation
fsub.h f19, f5, f8, rmm # perform operation
fsub.h f19, f5, f8, rne # perform operation
fsub.h f19, f5, f8, rtz # perform operation
fsub.h f19, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f5, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8001)
li x28, 0xd7b599f71f2596e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fsub.h f28, f15, f21, dyn # perform operation
fsub.h f28, f15, f21, rdn # perform operation
fsub.h f28, f15, f21, rmm # perform operation
fsub.h f28, f15, f21, rne # perform operation
fsub.h f28, f15, f21, rtz # perform operation
fsub.h f28, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c00)
li x5, 0xfcb896d669e20d27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fsub.h f5, f25, f20, dyn # perform operation
fsub.h f5, f25, f20, rdn # perform operation
fsub.h f5, f25, f20, rmm # perform operation
fsub.h f5, f25, f20, rne # perform operation
fsub.h f5, f25, f20, rtz # perform operation
fsub.h f5, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f25, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc00)
li x8, 0x6430022915ef5565 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
fsub.h f8, f15, f2, dyn # perform operation
fsub.h f8, f15, f2, rdn # perform operation
fsub.h f8, f15, f2, rmm # perform operation
fsub.h f8, f15, f2, rne # perform operation
fsub.h f8, f15, f2, rtz # perform operation
fsub.h f8, f15, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f15, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f15, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f15, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f15, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f15, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7e00)
li x23, 0xf53b6c69dc7887d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f4, 0(x2) # load 0x00003c00 from memory into f4
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fsub.h f23, f4, f21, dyn # perform operation
fsub.h f23, f4, f21, rdn # perform operation
fsub.h f23, f4, f21, rmm # perform operation
fsub.h f23, f4, f21, rne # perform operation
fsub.h f23, f4, f21, rtz # perform operation
fsub.h f23, f4, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f4, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f4, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f4, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f4, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f4, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7fff)
li x2, 0xe2cf7baf1f8f53d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
fsub.h f2, f31, f15, dyn # perform operation
fsub.h f2, f31, f15, rdn # perform operation
fsub.h f2, f31, f15, rmm # perform operation
fsub.h f2, f31, f15, rne # perform operation
fsub.h f2, f31, f15, rtz # perform operation
fsub.h f2, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c01)
li x8, 0x3cc3cea56d40cae8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
fsub.h f8, f30, f6, dyn # perform operation
fsub.h f8, f30, f6, rdn # perform operation
fsub.h f8, f30, f6, rmm # perform operation
fsub.h f8, f30, f6, rne # perform operation
fsub.h f8, f30, f6, rtz # perform operation
fsub.h f8, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7dff)
li x7, 0xef81336d9eb23a5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f4, 0(x2) # load 0x00007dff from memory into f4
fsub.h f7, f20, f4, dyn # perform operation
fsub.h f7, f20, f4, rdn # perform operation
fsub.h f7, f20, f4, rmm # perform operation
fsub.h f7, f20, f4, rne # perform operation
fsub.h f7, f20, f4, rtz # perform operation
fsub.h f7, f20, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f20, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f20, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f20, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f20, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f20, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x58b4)
li x22, 0x14db0f5a018ea3e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
fsub.h f22, f2, f21, dyn # perform operation
fsub.h f22, f2, f21, rdn # perform operation
fsub.h f22, f2, f21, rmm # perform operation
fsub.h f22, f2, f21, rne # perform operation
fsub.h f22, f2, f21, rtz # perform operation
fsub.h f22, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc93a)
li x23, 0xbfed20a9892f5f87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
fsub.h f23, f1, f17, dyn # perform operation
fsub.h f23, f1, f17, rdn # perform operation
fsub.h f23, f1, f17, rmm # perform operation
fsub.h f23, f1, f17, rne # perform operation
fsub.h f23, f1, f17, rtz # perform operation
fsub.h f23, f1, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f1, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f1, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f1, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f1, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f1, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x0)
li x31, 0x18cda3d423aae69e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
fsub.h f31, f1, f13, dyn # perform operation
fsub.h f31, f1, f13, rdn # perform operation
fsub.h f31, f1, f13, rmm # perform operation
fsub.h f31, f1, f13, rne # perform operation
fsub.h f31, f1, f13, rtz # perform operation
fsub.h f31, f1, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f1, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f1, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f1, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f1, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f1, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8000)
li x10, 0xb3f9605192a74e76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
fsub.h f10, f31, f26, dyn # perform operation
fsub.h f10, f31, f26, rdn # perform operation
fsub.h f10, f31, f26, rmm # perform operation
fsub.h f10, f31, f26, rne # perform operation
fsub.h f10, f31, f26, rtz # perform operation
fsub.h f10, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f31, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3c00)
li x11, 0x854d1ae0c6236b22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
fsub.h f11, f24, f17, dyn # perform operation
fsub.h f11, f24, f17, rdn # perform operation
fsub.h f11, f24, f17, rmm # perform operation
fsub.h f11, f24, f17, rne # perform operation
fsub.h f11, f24, f17, rtz # perform operation
fsub.h f11, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f24, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbc00)
li x8, 0xe4337f585b3f76ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
fsub.h f8, f9, f14, dyn # perform operation
fsub.h f8, f9, f14, rdn # perform operation
fsub.h f8, f9, f14, rmm # perform operation
fsub.h f8, f9, f14, rne # perform operation
fsub.h f8, f9, f14, rtz # perform operation
fsub.h f8, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f9, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3e00)
li x11, 0xa19d9a5ad7ebeae0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
fsub.h f11, f17, f23, dyn # perform operation
fsub.h f11, f17, f23, rdn # perform operation
fsub.h f11, f17, f23, rmm # perform operation
fsub.h f11, f17, f23, rne # perform operation
fsub.h f11, f17, f23, rtz # perform operation
fsub.h f11, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f17, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbe00)
li x22, 0x244101f4620bb984 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
fsub.h f22, f8, f18, dyn # perform operation
fsub.h f22, f8, f18, rdn # perform operation
fsub.h f22, f8, f18, rmm # perform operation
fsub.h f22, f8, f18, rne # perform operation
fsub.h f22, f8, f18, rtz # perform operation
fsub.h f22, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f8, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x4000)
li x4, 0xcb0821e52a81603f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
fsub.h f4, f22, f19, dyn # perform operation
fsub.h f4, f22, f19, rdn # perform operation
fsub.h f4, f22, f19, rmm # perform operation
fsub.h f4, f22, f19, rne # perform operation
fsub.h f4, f22, f19, rtz # perform operation
fsub.h f4, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc000)
li x18, 0x80b3edfa2003c37d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
fsub.h f18, f21, f7, dyn # perform operation
fsub.h f18, f21, f7, rdn # perform operation
fsub.h f18, f21, f7, rmm # perform operation
fsub.h f18, f21, f7, rne # perform operation
fsub.h f18, f21, f7, rtz # perform operation
fsub.h f18, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f21, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x400)
li x6, 0x84daac070b57ff8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fsub.h f6, f18, f15, dyn # perform operation
fsub.h f6, f18, f15, rdn # perform operation
fsub.h f6, f18, f15, rmm # perform operation
fsub.h f6, f18, f15, rne # perform operation
fsub.h f6, f18, f15, rtz # perform operation
fsub.h f6, f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f18, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8400)
li x20, 0x0e65fa78c855a097 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
fsub.h f20, f7, f13, dyn # perform operation
fsub.h f20, f7, f13, rdn # perform operation
fsub.h f20, f7, f13, rmm # perform operation
fsub.h f20, f7, f13, rne # perform operation
fsub.h f20, f7, f13, rtz # perform operation
fsub.h f20, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7bff)
li x29, 0xfd04add87dd8f3a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
fsub.h f29, f27, f10, dyn # perform operation
fsub.h f29, f27, f10, rdn # perform operation
fsub.h f29, f27, f10, rmm # perform operation
fsub.h f29, f27, f10, rne # perform operation
fsub.h f29, f27, f10, rtz # perform operation
fsub.h f29, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfbff)
li x31, 0x72db065476c16520 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
fsub.h f31, f18, f14, dyn # perform operation
fsub.h f31, f18, f14, rdn # perform operation
fsub.h f31, f18, f14, rmm # perform operation
fsub.h f31, f18, f14, rne # perform operation
fsub.h f31, f18, f14, rtz # perform operation
fsub.h f31, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3ff)
li x27, 0x7985b769726a5658 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
fsub.h f27, f18, f3, dyn # perform operation
fsub.h f27, f18, f3, rdn # perform operation
fsub.h f27, f18, f3, rmm # perform operation
fsub.h f27, f18, f3, rne # perform operation
fsub.h f27, f18, f3, rtz # perform operation
fsub.h f27, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f18, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x83ff)
li x12, 0x8f62bf2d076955f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
fsub.h f12, f27, f3, dyn # perform operation
fsub.h f12, f27, f3, rdn # perform operation
fsub.h f12, f27, f3, rmm # perform operation
fsub.h f12, f27, f3, rne # perform operation
fsub.h f12, f27, f3, rtz # perform operation
fsub.h f12, f27, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f27, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f27, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f27, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f27, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f27, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x200)
li x16, 0x084b9824f3eba1f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
fsub.h f16, f22, f14, dyn # perform operation
fsub.h f16, f22, f14, rdn # perform operation
fsub.h f16, f22, f14, rmm # perform operation
fsub.h f16, f22, f14, rne # perform operation
fsub.h f16, f22, f14, rtz # perform operation
fsub.h f16, f22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f22, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f22, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f22, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f22, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f22, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8200)
li x21, 0x9a58e3eb20d0f872 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
fsub.h f21, f18, f16, dyn # perform operation
fsub.h f21, f18, f16, rdn # perform operation
fsub.h f21, f18, f16, rmm # perform operation
fsub.h f21, f18, f16, rne # perform operation
fsub.h f21, f18, f16, rtz # perform operation
fsub.h f21, f18, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f18, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f18, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f18, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f18, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f18, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x1)
li x5, 0xd9912d1260713748 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
fsub.h f5, f15, f20, dyn # perform operation
fsub.h f5, f15, f20, rdn # perform operation
fsub.h f5, f15, f20, rmm # perform operation
fsub.h f5, f15, f20, rne # perform operation
fsub.h f5, f15, f20, rtz # perform operation
fsub.h f5, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f15, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8001)
li x28, 0x93eff1ff106d72ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
fsub.h f28, f11, f18, dyn # perform operation
fsub.h f28, f11, f18, rdn # perform operation
fsub.h f28, f11, f18, rmm # perform operation
fsub.h f28, f11, f18, rne # perform operation
fsub.h f28, f11, f18, rtz # perform operation
fsub.h f28, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f11, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c00)
li x24, 0x1ae062e0c0a1fbc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
fsub.h f24, f26, f12, dyn # perform operation
fsub.h f24, f26, f12, rdn # perform operation
fsub.h f24, f26, f12, rmm # perform operation
fsub.h f24, f26, f12, rne # perform operation
fsub.h f24, f26, f12, rtz # perform operation
fsub.h f24, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc00)
li x15, 0x872a9a4206cb46f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
fsub.h f15, f5, f14, dyn # perform operation
fsub.h f15, f5, f14, rdn # perform operation
fsub.h f15, f5, f14, rmm # perform operation
fsub.h f15, f5, f14, rne # perform operation
fsub.h f15, f5, f14, rtz # perform operation
fsub.h f15, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f5, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7e00)
li x11, 0xfff2333985a0be0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
fsub.h f11, f1, f15, dyn # perform operation
fsub.h f11, f1, f15, rdn # perform operation
fsub.h f11, f1, f15, rmm # perform operation
fsub.h f11, f1, f15, rne # perform operation
fsub.h f11, f1, f15, rtz # perform operation
fsub.h f11, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f1, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7fff)
li x9, 0x6d8e84fc5cd0d172 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
fsub.h f9, f29, f5, dyn # perform operation
fsub.h f9, f29, f5, rdn # perform operation
fsub.h f9, f29, f5, rmm # perform operation
fsub.h f9, f29, f5, rne # perform operation
fsub.h f9, f29, f5, rtz # perform operation
fsub.h f9, f29, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f29, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f29, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f29, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f29, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f29, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c01)
li x20, 0x7d7fe54b785b68ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
fsub.h f20, f22, f3, dyn # perform operation
fsub.h f20, f22, f3, rdn # perform operation
fsub.h f20, f22, f3, rmm # perform operation
fsub.h f20, f22, f3, rne # perform operation
fsub.h f20, f22, f3, rtz # perform operation
fsub.h f20, f22, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f22, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f22, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f22, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f22, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f22, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7dff)
li x10, 0x3d68ca3ac51f3857 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fsub.h f10, f20, f7, dyn # perform operation
fsub.h f10, f20, f7, rdn # perform operation
fsub.h f10, f20, f7, rmm # perform operation
fsub.h f10, f20, f7, rne # perform operation
fsub.h f10, f20, f7, rtz # perform operation
fsub.h f10, f20, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f20, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f20, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f20, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f20, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f20, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x58b4)
li x21, 0xf17dbab9f9cde0d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fsub.h f21, f9, f11, dyn # perform operation
fsub.h f21, f9, f11, rdn # perform operation
fsub.h f21, f9, f11, rmm # perform operation
fsub.h f21, f9, f11, rne # perform operation
fsub.h f21, f9, f11, rtz # perform operation
fsub.h f21, f9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f9, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f9, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f9, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f9, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f9, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc93a)
li x4, 0x559f627b81d2f7ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
fsub.h f4, f7, f26, dyn # perform operation
fsub.h f4, f7, f26, rdn # perform operation
fsub.h f4, f7, f26, rmm # perform operation
fsub.h f4, f7, f26, rne # perform operation
fsub.h f4, f7, f26, rtz # perform operation
fsub.h f4, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f7, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x0)
li x22, 0x456323493f0f2f30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f4, 0(x2) # load 0x00000000 from memory into f4
fsub.h f22, f13, f4, dyn # perform operation
fsub.h f22, f13, f4, rdn # perform operation
fsub.h f22, f13, f4, rmm # perform operation
fsub.h f22, f13, f4, rne # perform operation
fsub.h f22, f13, f4, rtz # perform operation
fsub.h f22, f13, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f13, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f13, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f13, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f13, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f13, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8000)
li x19, 0x5fe22b10da677cf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
fsub.h f19, f16, f25, dyn # perform operation
fsub.h f19, f16, f25, rdn # perform operation
fsub.h f19, f16, f25, rmm # perform operation
fsub.h f19, f16, f25, rne # perform operation
fsub.h f19, f16, f25, rtz # perform operation
fsub.h f19, f16, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f16, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f16, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f16, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f16, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f16, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3c00)
li x27, 0xc199f67922b43e91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
fsub.h f27, f20, f1, dyn # perform operation
fsub.h f27, f20, f1, rdn # perform operation
fsub.h f27, f20, f1, rmm # perform operation
fsub.h f27, f20, f1, rne # perform operation
fsub.h f27, f20, f1, rtz # perform operation
fsub.h f27, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f20, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbc00)
li x12, 0x1813eaa172340eb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
fsub.h f12, f10, f9, dyn # perform operation
fsub.h f12, f10, f9, rdn # perform operation
fsub.h f12, f10, f9, rmm # perform operation
fsub.h f12, f10, f9, rne # perform operation
fsub.h f12, f10, f9, rtz # perform operation
fsub.h f12, f10, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f10, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f10, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f10, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f10, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f10, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3e00)
li x23, 0x06658531af77eee9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
fsub.h f23, f16, f4, dyn # perform operation
fsub.h f23, f16, f4, rdn # perform operation
fsub.h f23, f16, f4, rmm # perform operation
fsub.h f23, f16, f4, rne # perform operation
fsub.h f23, f16, f4, rtz # perform operation
fsub.h f23, f16, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f16, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f16, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f16, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f16, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f16, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbe00)
li x26, 0xbed4c634c0c88e76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fsub.h f26, f17, f31, dyn # perform operation
fsub.h f26, f17, f31, rdn # perform operation
fsub.h f26, f17, f31, rmm # perform operation
fsub.h f26, f17, f31, rne # perform operation
fsub.h f26, f17, f31, rtz # perform operation
fsub.h f26, f17, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f17, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f17, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f17, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f17, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x4000)
li x27, 0x28c65c9a8ce0bea6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
fsub.h f27, f12, f14, dyn # perform operation
fsub.h f27, f12, f14, rdn # perform operation
fsub.h f27, f12, f14, rmm # perform operation
fsub.h f27, f12, f14, rne # perform operation
fsub.h f27, f12, f14, rtz # perform operation
fsub.h f27, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f12, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc000)
li x3, 0x21be89b19e2899f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
fsub.h f3, f22, f29, dyn # perform operation
fsub.h f3, f22, f29, rdn # perform operation
fsub.h f3, f22, f29, rmm # perform operation
fsub.h f3, f22, f29, rne # perform operation
fsub.h f3, f22, f29, rtz # perform operation
fsub.h f3, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f22, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x400)
li x11, 0x3fd40b103cb7495f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
fsub.h f11, f16, f28, dyn # perform operation
fsub.h f11, f16, f28, rdn # perform operation
fsub.h f11, f16, f28, rmm # perform operation
fsub.h f11, f16, f28, rne # perform operation
fsub.h f11, f16, f28, rtz # perform operation
fsub.h f11, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f16, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8400)
li x30, 0xc2668c1a1f3b12bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
fsub.h f30, f11, f19, dyn # perform operation
fsub.h f30, f11, f19, rdn # perform operation
fsub.h f30, f11, f19, rmm # perform operation
fsub.h f30, f11, f19, rne # perform operation
fsub.h f30, f11, f19, rtz # perform operation
fsub.h f30, f11, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f11, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f11, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f11, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f11, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f11, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7bff)
li x24, 0x54f103a2b4bdc44c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
fsub.h f24, f18, f1, dyn # perform operation
fsub.h f24, f18, f1, rdn # perform operation
fsub.h f24, f18, f1, rmm # perform operation
fsub.h f24, f18, f1, rne # perform operation
fsub.h f24, f18, f1, rtz # perform operation
fsub.h f24, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfbff)
li x18, 0x24614f731961aa5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
fsub.h f18, f12, f3, dyn # perform operation
fsub.h f18, f12, f3, rdn # perform operation
fsub.h f18, f12, f3, rmm # perform operation
fsub.h f18, f12, f3, rne # perform operation
fsub.h f18, f12, f3, rtz # perform operation
fsub.h f18, f12, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f12, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f12, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f12, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f12, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f12, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3ff)
li x17, 0x007b791f840a8c73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
fsub.h f17, f10, f26, dyn # perform operation
fsub.h f17, f10, f26, rdn # perform operation
fsub.h f17, f10, f26, rmm # perform operation
fsub.h f17, f10, f26, rne # perform operation
fsub.h f17, f10, f26, rtz # perform operation
fsub.h f17, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x83ff)
li x23, 0xdca15d61a79337d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
fsub.h f23, f13, f12, dyn # perform operation
fsub.h f23, f13, f12, rdn # perform operation
fsub.h f23, f13, f12, rmm # perform operation
fsub.h f23, f13, f12, rne # perform operation
fsub.h f23, f13, f12, rtz # perform operation
fsub.h f23, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x200)
li x26, 0xf737fa3adb8464c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
fsub.h f26, f31, f30, dyn # perform operation
fsub.h f26, f31, f30, rdn # perform operation
fsub.h f26, f31, f30, rmm # perform operation
fsub.h f26, f31, f30, rne # perform operation
fsub.h f26, f31, f30, rtz # perform operation
fsub.h f26, f31, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f31, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f31, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f31, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f31, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f31, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8200)
li x23, 0xb82b575f56d99e4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
fsub.h f23, f15, f13, dyn # perform operation
fsub.h f23, f15, f13, rdn # perform operation
fsub.h f23, f15, f13, rmm # perform operation
fsub.h f23, f15, f13, rne # perform operation
fsub.h f23, f15, f13, rtz # perform operation
fsub.h f23, f15, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f15, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f15, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f15, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f15, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f15, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x1)
li x14, 0x77d3231e36f6ca47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
fsub.h f14, f17, f24, dyn # perform operation
fsub.h f14, f17, f24, rdn # perform operation
fsub.h f14, f17, f24, rmm # perform operation
fsub.h f14, f17, f24, rne # perform operation
fsub.h f14, f17, f24, rtz # perform operation
fsub.h f14, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f17, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8001)
li x5, 0xc40a9ed4d43b9bed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
fsub.h f5, f16, f30, dyn # perform operation
fsub.h f5, f16, f30, rdn # perform operation
fsub.h f5, f16, f30, rmm # perform operation
fsub.h f5, f16, f30, rne # perform operation
fsub.h f5, f16, f30, rtz # perform operation
fsub.h f5, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f16, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c00)
li x13, 0x8e068a27ebbe575f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fsub.h f13, f18, f17, dyn # perform operation
fsub.h f13, f18, f17, rdn # perform operation
fsub.h f13, f18, f17, rmm # perform operation
fsub.h f13, f18, f17, rne # perform operation
fsub.h f13, f18, f17, rtz # perform operation
fsub.h f13, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f18, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc00)
li x21, 0xa52ffa068f5ee6ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fsub.h f21, f6, f28, dyn # perform operation
fsub.h f21, f6, f28, rdn # perform operation
fsub.h f21, f6, f28, rmm # perform operation
fsub.h f21, f6, f28, rne # perform operation
fsub.h f21, f6, f28, rtz # perform operation
fsub.h f21, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7e00)
li x5, 0xe5af44d06cce037c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fsub.h f5, f10, f21, dyn # perform operation
fsub.h f5, f10, f21, rdn # perform operation
fsub.h f5, f10, f21, rmm # perform operation
fsub.h f5, f10, f21, rne # perform operation
fsub.h f5, f10, f21, rtz # perform operation
fsub.h f5, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7fff)
li x3, 0x095bdf595debf9a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fsub.h f3, f10, f12, dyn # perform operation
fsub.h f3, f10, f12, rdn # perform operation
fsub.h f3, f10, f12, rmm # perform operation
fsub.h f3, f10, f12, rne # perform operation
fsub.h f3, f10, f12, rtz # perform operation
fsub.h f3, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c01)
li x10, 0x9ee8786b5a879b9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
fsub.h f10, f22, f18, dyn # perform operation
fsub.h f10, f22, f18, rdn # perform operation
fsub.h f10, f22, f18, rmm # perform operation
fsub.h f10, f22, f18, rne # perform operation
fsub.h f10, f22, f18, rtz # perform operation
fsub.h f10, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f22, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7dff)
li x24, 0x077b119519be5219 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
fsub.h f24, f18, f14, dyn # perform operation
fsub.h f24, f18, f14, rdn # perform operation
fsub.h f24, f18, f14, rmm # perform operation
fsub.h f24, f18, f14, rne # perform operation
fsub.h f24, f18, f14, rtz # perform operation
fsub.h f24, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x58b4)
li x24, 0x57acff5182207e7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
fsub.h f24, f2, f29, dyn # perform operation
fsub.h f24, f2, f29, rdn # perform operation
fsub.h f24, f2, f29, rmm # perform operation
fsub.h f24, f2, f29, rne # perform operation
fsub.h f24, f2, f29, rtz # perform operation
fsub.h f24, f2, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f2, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f2, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f2, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f2, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f2, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc93a)
li x21, 0x536f1d67bf1e33f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
fsub.h f21, f24, f17, dyn # perform operation
fsub.h f21, f24, f17, rdn # perform operation
fsub.h f21, f24, f17, rmm # perform operation
fsub.h f21, f24, f17, rne # perform operation
fsub.h f21, f24, f17, rtz # perform operation
fsub.h f21, f24, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f24, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f24, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f24, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f24, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f24, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x0)
li x3, 0x55fcb3750224bda8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
fsub.h f3, f8, f29, dyn # perform operation
fsub.h f3, f8, f29, rdn # perform operation
fsub.h f3, f8, f29, rmm # perform operation
fsub.h f3, f8, f29, rne # perform operation
fsub.h f3, f8, f29, rtz # perform operation
fsub.h f3, f8, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f8, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f8, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f8, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f8, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8000)
li x11, 0x27cb3799795ebc09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
fsub.h f11, f21, f22, dyn # perform operation
fsub.h f11, f21, f22, rdn # perform operation
fsub.h f11, f21, f22, rmm # perform operation
fsub.h f11, f21, f22, rne # perform operation
fsub.h f11, f21, f22, rtz # perform operation
fsub.h f11, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f21, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3c00)
li x14, 0xfafe889b94283d9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
fsub.h f14, f25, f21, dyn # perform operation
fsub.h f14, f25, f21, rdn # perform operation
fsub.h f14, f25, f21, rmm # perform operation
fsub.h f14, f25, f21, rne # perform operation
fsub.h f14, f25, f21, rtz # perform operation
fsub.h f14, f25, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f25, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f25, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f25, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f25, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f25, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbc00)
li x15, 0x17acb85dc595d512 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
fsub.h f15, f28, f16, dyn # perform operation
fsub.h f15, f28, f16, rdn # perform operation
fsub.h f15, f28, f16, rmm # perform operation
fsub.h f15, f28, f16, rne # perform operation
fsub.h f15, f28, f16, rtz # perform operation
fsub.h f15, f28, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f28, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f28, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f28, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f28, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f28, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3e00)
li x5, 0x33c0c8274b3079ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fsub.h f5, f28, f10, dyn # perform operation
fsub.h f5, f28, f10, rdn # perform operation
fsub.h f5, f28, f10, rmm # perform operation
fsub.h f5, f28, f10, rne # perform operation
fsub.h f5, f28, f10, rtz # perform operation
fsub.h f5, f28, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f28, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f28, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f28, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f28, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f28, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbe00)
li x8, 0x0bda5a7793295754 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fsub.h f8, f18, f3, dyn # perform operation
fsub.h f8, f18, f3, rdn # perform operation
fsub.h f8, f18, f3, rmm # perform operation
fsub.h f8, f18, f3, rne # perform operation
fsub.h f8, f18, f3, rtz # perform operation
fsub.h f8, f18, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f18, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f18, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f18, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f18, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f18, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x4000)
li x18, 0x8394c426396ef011 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
fsub.h f18, f25, f26, dyn # perform operation
fsub.h f18, f25, f26, rdn # perform operation
fsub.h f18, f25, f26, rmm # perform operation
fsub.h f18, f25, f26, rne # perform operation
fsub.h f18, f25, f26, rtz # perform operation
fsub.h f18, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc000)
li x2, 0x265f63848db16452 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fsub.h f2, f17, f21, dyn # perform operation
fsub.h f2, f17, f21, rdn # perform operation
fsub.h f2, f17, f21, rmm # perform operation
fsub.h f2, f17, f21, rne # perform operation
fsub.h f2, f17, f21, rtz # perform operation
fsub.h f2, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f17, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x400)
li x21, 0x21068d338da7e788 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f4, 0(x2) # load 0x0000be00 from memory into f4
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
fsub.h f21, f4, f3, dyn # perform operation
fsub.h f21, f4, f3, rdn # perform operation
fsub.h f21, f4, f3, rmm # perform operation
fsub.h f21, f4, f3, rne # perform operation
fsub.h f21, f4, f3, rtz # perform operation
fsub.h f21, f4, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f4, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f4, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f4, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f4, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f4, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8400)
li x15, 0x926cc9bd6dd4c903 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f4, 0(x2) # load 0x0000be00 from memory into f4
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
fsub.h f15, f4, f1, dyn # perform operation
fsub.h f15, f4, f1, rdn # perform operation
fsub.h f15, f4, f1, rmm # perform operation
fsub.h f15, f4, f1, rne # perform operation
fsub.h f15, f4, f1, rtz # perform operation
fsub.h f15, f4, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f4, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f4, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f4, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f4, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f4, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7bff)
li x14, 0x7865205cb69f765f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
fsub.h f14, f31, f10, dyn # perform operation
fsub.h f14, f31, f10, rdn # perform operation
fsub.h f14, f31, f10, rmm # perform operation
fsub.h f14, f31, f10, rne # perform operation
fsub.h f14, f31, f10, rtz # perform operation
fsub.h f14, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f31, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfbff)
li x31, 0xc63fd38795e93f9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
fsub.h f31, f14, f26, dyn # perform operation
fsub.h f31, f14, f26, rdn # perform operation
fsub.h f31, f14, f26, rmm # perform operation
fsub.h f31, f14, f26, rne # perform operation
fsub.h f31, f14, f26, rtz # perform operation
fsub.h f31, f14, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f14, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f14, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f14, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f14, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f14, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3ff)
li x29, 0x503788f4e4f3e40c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
fsub.h f29, f8, f24, dyn # perform operation
fsub.h f29, f8, f24, rdn # perform operation
fsub.h f29, f8, f24, rmm # perform operation
fsub.h f29, f8, f24, rne # perform operation
fsub.h f29, f8, f24, rtz # perform operation
fsub.h f29, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x83ff)
li x17, 0x3b89d89a6b0e6923 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fsub.h f17, f1, f10, dyn # perform operation
fsub.h f17, f1, f10, rdn # perform operation
fsub.h f17, f1, f10, rmm # perform operation
fsub.h f17, f1, f10, rne # perform operation
fsub.h f17, f1, f10, rtz # perform operation
fsub.h f17, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f1, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x200)
li x18, 0xf00c8ecab91fb291 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
fsub.h f18, f26, f17, dyn # perform operation
fsub.h f18, f26, f17, rdn # perform operation
fsub.h f18, f26, f17, rmm # perform operation
fsub.h f18, f26, f17, rne # perform operation
fsub.h f18, f26, f17, rtz # perform operation
fsub.h f18, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f26, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8200)
li x18, 0x9642c3fcc5529259 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
fsub.h f18, f11, f1, dyn # perform operation
fsub.h f18, f11, f1, rdn # perform operation
fsub.h f18, f11, f1, rmm # perform operation
fsub.h f18, f11, f1, rne # perform operation
fsub.h f18, f11, f1, rtz # perform operation
fsub.h f18, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f11, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x1)
li x29, 0x0abf9ca1930203dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
fsub.h f29, f8, f25, dyn # perform operation
fsub.h f29, f8, f25, rdn # perform operation
fsub.h f29, f8, f25, rmm # perform operation
fsub.h f29, f8, f25, rne # perform operation
fsub.h f29, f8, f25, rtz # perform operation
fsub.h f29, f8, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f8, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f8, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f8, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f8, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f8, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8001)
li x18, 0xbe072c5ccdd138c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
fsub.h f18, f27, f8, dyn # perform operation
fsub.h f18, f27, f8, rdn # perform operation
fsub.h f18, f27, f8, rmm # perform operation
fsub.h f18, f27, f8, rne # perform operation
fsub.h f18, f27, f8, rtz # perform operation
fsub.h f18, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c00)
li x25, 0x065a7f174999a91b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
fsub.h f25, f26, f28, dyn # perform operation
fsub.h f25, f26, f28, rdn # perform operation
fsub.h f25, f26, f28, rmm # perform operation
fsub.h f25, f26, f28, rne # perform operation
fsub.h f25, f26, f28, rtz # perform operation
fsub.h f25, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f26, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc00)
li x16, 0x115a11d7e43dc33c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
fsub.h f16, f29, f27, dyn # perform operation
fsub.h f16, f29, f27, rdn # perform operation
fsub.h f16, f29, f27, rmm # perform operation
fsub.h f16, f29, f27, rne # perform operation
fsub.h f16, f29, f27, rtz # perform operation
fsub.h f16, f29, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f29, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f29, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f29, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f29, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f29, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7e00)
li x31, 0x9d6ce3ecb007d637 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
fsub.h f31, f17, f7, dyn # perform operation
fsub.h f31, f17, f7, rdn # perform operation
fsub.h f31, f17, f7, rmm # perform operation
fsub.h f31, f17, f7, rne # perform operation
fsub.h f31, f17, f7, rtz # perform operation
fsub.h f31, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7fff)
li x10, 0x727ce08ff560dfaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f17, 0(x2) # load 0x00007fff from memory into f17
fsub.h f10, f13, f17, dyn # perform operation
fsub.h f10, f13, f17, rdn # perform operation
fsub.h f10, f13, f17, rmm # perform operation
fsub.h f10, f13, f17, rne # perform operation
fsub.h f10, f13, f17, rtz # perform operation
fsub.h f10, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c01)
li x12, 0x28911c0feb6f344b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
fsub.h f12, f15, f18, dyn # perform operation
fsub.h f12, f15, f18, rdn # perform operation
fsub.h f12, f15, f18, rmm # perform operation
fsub.h f12, f15, f18, rne # perform operation
fsub.h f12, f15, f18, rtz # perform operation
fsub.h f12, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7dff)
li x18, 0x1178c2486d8193d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fsub.h f18, f26, f30, dyn # perform operation
fsub.h f18, f26, f30, rdn # perform operation
fsub.h f18, f26, f30, rmm # perform operation
fsub.h f18, f26, f30, rne # perform operation
fsub.h f18, f26, f30, rtz # perform operation
fsub.h f18, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x58b4)
li x21, 0x8b0545874bc34bab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
fsub.h f21, f27, f1, dyn # perform operation
fsub.h f21, f27, f1, rdn # perform operation
fsub.h f21, f27, f1, rmm # perform operation
fsub.h f21, f27, f1, rne # perform operation
fsub.h f21, f27, f1, rtz # perform operation
fsub.h f21, f27, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f27, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f27, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f27, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f27, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f27, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc93a)
li x15, 0xe10af1715452737f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fsub.h f15, f10, f21, dyn # perform operation
fsub.h f15, f10, f21, rdn # perform operation
fsub.h f15, f10, f21, rmm # perform operation
fsub.h f15, f10, f21, rne # perform operation
fsub.h f15, f10, f21, rtz # perform operation
fsub.h f15, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x0)
li x31, 0xe411b6ff7ae9b223 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
fsub.h f31, f22, f1, dyn # perform operation
fsub.h f31, f22, f1, rdn # perform operation
fsub.h f31, f22, f1, rmm # perform operation
fsub.h f31, f22, f1, rne # perform operation
fsub.h f31, f22, f1, rtz # perform operation
fsub.h f31, f22, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f22, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f22, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f22, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f22, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f22, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8000)
li x26, 0x8eb734e427ebcedc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
fsub.h f26, f29, f30, dyn # perform operation
fsub.h f26, f29, f30, rdn # perform operation
fsub.h f26, f29, f30, rmm # perform operation
fsub.h f26, f29, f30, rne # perform operation
fsub.h f26, f29, f30, rtz # perform operation
fsub.h f26, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f29, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3c00)
li x25, 0x927af4619a3e7e89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
fsub.h f25, f19, f6, dyn # perform operation
fsub.h f25, f19, f6, rdn # perform operation
fsub.h f25, f19, f6, rmm # perform operation
fsub.h f25, f19, f6, rne # perform operation
fsub.h f25, f19, f6, rtz # perform operation
fsub.h f25, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbc00)
li x5, 0x8b04db6661545d49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
fsub.h f5, f22, f27, dyn # perform operation
fsub.h f5, f22, f27, rdn # perform operation
fsub.h f5, f22, f27, rmm # perform operation
fsub.h f5, f22, f27, rne # perform operation
fsub.h f5, f22, f27, rtz # perform operation
fsub.h f5, f22, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f22, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f22, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f22, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f22, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f22, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3e00)
li x2, 0x2779a578f43b79aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
fsub.h f2, f30, f19, dyn # perform operation
fsub.h f2, f30, f19, rdn # perform operation
fsub.h f2, f30, f19, rmm # perform operation
fsub.h f2, f30, f19, rne # perform operation
fsub.h f2, f30, f19, rtz # perform operation
fsub.h f2, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f30, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbe00)
li x19, 0x39fe70d15802cf32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
fsub.h f19, f13, f2, dyn # perform operation
fsub.h f19, f13, f2, rdn # perform operation
fsub.h f19, f13, f2, rmm # perform operation
fsub.h f19, f13, f2, rne # perform operation
fsub.h f19, f13, f2, rtz # perform operation
fsub.h f19, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x4000)
li x25, 0x555d12b4e6ada8a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
fsub.h f25, f22, f24, dyn # perform operation
fsub.h f25, f22, f24, rdn # perform operation
fsub.h f25, f22, f24, rmm # perform operation
fsub.h f25, f22, f24, rne # perform operation
fsub.h f25, f22, f24, rtz # perform operation
fsub.h f25, f22, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f22, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f22, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f22, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f22, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f22, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc000)
li x1, 0x9476c986fe501304 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
fsub.h f1, f17, f24, dyn # perform operation
fsub.h f1, f17, f24, rdn # perform operation
fsub.h f1, f17, f24, rmm # perform operation
fsub.h f1, f17, f24, rne # perform operation
fsub.h f1, f17, f24, rtz # perform operation
fsub.h f1, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f17, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x400)
li x15, 0x884aff53d347760d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
fsub.h f15, f31, f17, dyn # perform operation
fsub.h f15, f31, f17, rdn # perform operation
fsub.h f15, f31, f17, rmm # perform operation
fsub.h f15, f31, f17, rne # perform operation
fsub.h f15, f31, f17, rtz # perform operation
fsub.h f15, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8400)
li x17, 0x5a43ba4ab05cb62f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
fsub.h f17, f27, f31, dyn # perform operation
fsub.h f17, f27, f31, rdn # perform operation
fsub.h f17, f27, f31, rmm # perform operation
fsub.h f17, f27, f31, rne # perform operation
fsub.h f17, f27, f31, rtz # perform operation
fsub.h f17, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f27, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7bff)
li x13, 0xb5a3bee73d3f0f1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
fsub.h f13, f8, f1, dyn # perform operation
fsub.h f13, f8, f1, rdn # perform operation
fsub.h f13, f8, f1, rmm # perform operation
fsub.h f13, f8, f1, rne # perform operation
fsub.h f13, f8, f1, rtz # perform operation
fsub.h f13, f8, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f8, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f8, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f8, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f8, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f8, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfbff)
li x9, 0x35a77182459c7450 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
fsub.h f9, f12, f26, dyn # perform operation
fsub.h f9, f12, f26, rdn # perform operation
fsub.h f9, f12, f26, rmm # perform operation
fsub.h f9, f12, f26, rne # perform operation
fsub.h f9, f12, f26, rtz # perform operation
fsub.h f9, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3ff)
li x21, 0x6fc076f3b72d0002 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
fsub.h f21, f7, f10, dyn # perform operation
fsub.h f21, f7, f10, rdn # perform operation
fsub.h f21, f7, f10, rmm # perform operation
fsub.h f21, f7, f10, rne # perform operation
fsub.h f21, f7, f10, rtz # perform operation
fsub.h f21, f7, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f7, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f7, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f7, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f7, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f7, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x83ff)
li x2, 0x96a4805bcc7ae6bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
fsub.h f2, f29, f21, dyn # perform operation
fsub.h f2, f29, f21, rdn # perform operation
fsub.h f2, f29, f21, rmm # perform operation
fsub.h f2, f29, f21, rne # perform operation
fsub.h f2, f29, f21, rtz # perform operation
fsub.h f2, f29, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f29, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f29, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f29, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f29, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f29, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x200)
li x9, 0x597d5fed04b65160 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
fsub.h f9, f10, f8, dyn # perform operation
fsub.h f9, f10, f8, rdn # perform operation
fsub.h f9, f10, f8, rmm # perform operation
fsub.h f9, f10, f8, rne # perform operation
fsub.h f9, f10, f8, rtz # perform operation
fsub.h f9, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f10, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8200)
li x2, 0x7074f955320f3030 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
fsub.h f2, f21, f30, dyn # perform operation
fsub.h f2, f21, f30, rdn # perform operation
fsub.h f2, f21, f30, rmm # perform operation
fsub.h f2, f21, f30, rne # perform operation
fsub.h f2, f21, f30, rtz # perform operation
fsub.h f2, f21, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f21, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f21, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f21, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f21, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f21, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x1)
li x20, 0xb3b222b80c447ff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
fsub.h f20, f26, f18, dyn # perform operation
fsub.h f20, f26, f18, rdn # perform operation
fsub.h f20, f26, f18, rmm # perform operation
fsub.h f20, f26, f18, rne # perform operation
fsub.h f20, f26, f18, rtz # perform operation
fsub.h f20, f26, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f26, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f26, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f26, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f26, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f26, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8001)
li x2, 0x953c89a10f52212b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
fsub.h f2, f10, f30, dyn # perform operation
fsub.h f2, f10, f30, rdn # perform operation
fsub.h f2, f10, f30, rmm # perform operation
fsub.h f2, f10, f30, rne # perform operation
fsub.h f2, f10, f30, rtz # perform operation
fsub.h f2, f10, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f10, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f10, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f10, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f10, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f10, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c00)
li x21, 0x60396857c5e70ba9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
fsub.h f21, f6, f26, dyn # perform operation
fsub.h f21, f6, f26, rdn # perform operation
fsub.h f21, f6, f26, rmm # perform operation
fsub.h f21, f6, f26, rne # perform operation
fsub.h f21, f6, f26, rtz # perform operation
fsub.h f21, f6, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f6, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f6, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f6, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f6, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f6, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc00)
li x2, 0xfe46ae8567550dda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
fsub.h f2, f28, f3, dyn # perform operation
fsub.h f2, f28, f3, rdn # perform operation
fsub.h f2, f28, f3, rmm # perform operation
fsub.h f2, f28, f3, rne # perform operation
fsub.h f2, f28, f3, rtz # perform operation
fsub.h f2, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7e00)
li x3, 0x30dd69f0f5b2a4c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
fsub.h f3, f5, f22, dyn # perform operation
fsub.h f3, f5, f22, rdn # perform operation
fsub.h f3, f5, f22, rmm # perform operation
fsub.h f3, f5, f22, rne # perform operation
fsub.h f3, f5, f22, rtz # perform operation
fsub.h f3, f5, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f5, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f5, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f5, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f5, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7fff)
li x13, 0x23c1225a78d414cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
fsub.h f13, f2, f20, dyn # perform operation
fsub.h f13, f2, f20, rdn # perform operation
fsub.h f13, f2, f20, rmm # perform operation
fsub.h f13, f2, f20, rne # perform operation
fsub.h f13, f2, f20, rtz # perform operation
fsub.h f13, f2, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f2, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f2, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f2, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f2, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c01)
li x17, 0xfb413eeabca98b48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
fsub.h f17, f7, f1, dyn # perform operation
fsub.h f17, f7, f1, rdn # perform operation
fsub.h f17, f7, f1, rmm # perform operation
fsub.h f17, f7, f1, rne # perform operation
fsub.h f17, f7, f1, rtz # perform operation
fsub.h f17, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7dff)
li x19, 0x4c1b41bfd7fc58c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fsub.h f19, f16, f23, dyn # perform operation
fsub.h f19, f16, f23, rdn # perform operation
fsub.h f19, f16, f23, rmm # perform operation
fsub.h f19, f16, f23, rne # perform operation
fsub.h f19, f16, f23, rtz # perform operation
fsub.h f19, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x58b4)
li x4, 0x44c747b8b892b4b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
fsub.h f4, f2, f1, dyn # perform operation
fsub.h f4, f2, f1, rdn # perform operation
fsub.h f4, f2, f1, rmm # perform operation
fsub.h f4, f2, f1, rne # perform operation
fsub.h f4, f2, f1, rtz # perform operation
fsub.h f4, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f2, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc93a)
li x8, 0x9813a5ceef4925ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
fsub.h f8, f2, f1, dyn # perform operation
fsub.h f8, f2, f1, rdn # perform operation
fsub.h f8, f2, f1, rmm # perform operation
fsub.h f8, f2, f1, rne # perform operation
fsub.h f8, f2, f1, rtz # perform operation
fsub.h f8, f2, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f2, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f2, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f2, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f2, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f2, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x0)
li x5, 0x1521ffc318f5ede3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
fsub.h f5, f22, f12, dyn # perform operation
fsub.h f5, f22, f12, rdn # perform operation
fsub.h f5, f22, f12, rmm # perform operation
fsub.h f5, f22, f12, rne # perform operation
fsub.h f5, f22, f12, rtz # perform operation
fsub.h f5, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f22, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8000)
li x22, 0xab630ca11ba5a711 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fsub.h f22, f8, f6, dyn # perform operation
fsub.h f22, f8, f6, rdn # perform operation
fsub.h f22, f8, f6, rmm # perform operation
fsub.h f22, f8, f6, rne # perform operation
fsub.h f22, f8, f6, rtz # perform operation
fsub.h f22, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f8, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3c00)
li x6, 0xc4b40133774fdd7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fsub.h f6, f28, f30, dyn # perform operation
fsub.h f6, f28, f30, rdn # perform operation
fsub.h f6, f28, f30, rmm # perform operation
fsub.h f6, f28, f30, rne # perform operation
fsub.h f6, f28, f30, rtz # perform operation
fsub.h f6, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f28, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbc00)
li x24, 0x048bb9fa8f5036f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
fsub.h f24, f1, f14, dyn # perform operation
fsub.h f24, f1, f14, rdn # perform operation
fsub.h f24, f1, f14, rmm # perform operation
fsub.h f24, f1, f14, rne # perform operation
fsub.h f24, f1, f14, rtz # perform operation
fsub.h f24, f1, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f1, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f1, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f1, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f1, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3e00)
li x26, 0x125c50f7375542f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
fsub.h f26, f1, f19, dyn # perform operation
fsub.h f26, f1, f19, rdn # perform operation
fsub.h f26, f1, f19, rmm # perform operation
fsub.h f26, f1, f19, rne # perform operation
fsub.h f26, f1, f19, rtz # perform operation
fsub.h f26, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f1, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbe00)
li x14, 0x0529146268ddcf02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
fsub.h f14, f21, f9, dyn # perform operation
fsub.h f14, f21, f9, rdn # perform operation
fsub.h f14, f21, f9, rmm # perform operation
fsub.h f14, f21, f9, rne # perform operation
fsub.h f14, f21, f9, rtz # perform operation
fsub.h f14, f21, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f21, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f21, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f21, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f21, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f21, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x4000)
li x22, 0xe590dd53f6c01397 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fsub.h f22, f18, f6, dyn # perform operation
fsub.h f22, f18, f6, rdn # perform operation
fsub.h f22, f18, f6, rmm # perform operation
fsub.h f22, f18, f6, rne # perform operation
fsub.h f22, f18, f6, rtz # perform operation
fsub.h f22, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f18, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc000)
li x18, 0x3e8c5f9926be5100 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
fsub.h f18, f29, f22, dyn # perform operation
fsub.h f18, f29, f22, rdn # perform operation
fsub.h f18, f29, f22, rmm # perform operation
fsub.h f18, f29, f22, rne # perform operation
fsub.h f18, f29, f22, rtz # perform operation
fsub.h f18, f29, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f29, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f29, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f29, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f29, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f29, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x400)
li x1, 0x85e0561f76462631 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
fsub.h f1, f9, f31, dyn # perform operation
fsub.h f1, f9, f31, rdn # perform operation
fsub.h f1, f9, f31, rmm # perform operation
fsub.h f1, f9, f31, rne # perform operation
fsub.h f1, f9, f31, rtz # perform operation
fsub.h f1, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f9, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8400)
li x16, 0x513acc776a53b3a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
fsub.h f16, f22, f27, dyn # perform operation
fsub.h f16, f22, f27, rdn # perform operation
fsub.h f16, f22, f27, rmm # perform operation
fsub.h f16, f22, f27, rne # perform operation
fsub.h f16, f22, f27, rtz # perform operation
fsub.h f16, f22, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f22, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f22, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f22, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f22, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f22, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7bff)
li x19, 0x5f534f57b5df56b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fsub.h f19, f28, f17, dyn # perform operation
fsub.h f19, f28, f17, rdn # perform operation
fsub.h f19, f28, f17, rmm # perform operation
fsub.h f19, f28, f17, rne # perform operation
fsub.h f19, f28, f17, rtz # perform operation
fsub.h f19, f28, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f28, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f28, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f28, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f28, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f28, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfbff)
li x14, 0x32b8432c615ff2d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
fsub.h f14, f18, f28, dyn # perform operation
fsub.h f14, f18, f28, rdn # perform operation
fsub.h f14, f18, f28, rmm # perform operation
fsub.h f14, f18, f28, rne # perform operation
fsub.h f14, f18, f28, rtz # perform operation
fsub.h f14, f18, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f18, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f18, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f18, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f18, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3ff)
li x1, 0x9fb8a4956fcc07f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
fsub.h f1, f11, f12, dyn # perform operation
fsub.h f1, f11, f12, rdn # perform operation
fsub.h f1, f11, f12, rmm # perform operation
fsub.h f1, f11, f12, rne # perform operation
fsub.h f1, f11, f12, rtz # perform operation
fsub.h f1, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x83ff)
li x12, 0x626d312f53b12127 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
fsub.h f12, f27, f22, dyn # perform operation
fsub.h f12, f27, f22, rdn # perform operation
fsub.h f12, f27, f22, rmm # perform operation
fsub.h f12, f27, f22, rne # perform operation
fsub.h f12, f27, f22, rtz # perform operation
fsub.h f12, f27, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f27, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f27, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f27, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f27, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f27, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x200)
li x26, 0x3f0e88ae055e52a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fsub.h f26, f16, f9, dyn # perform operation
fsub.h f26, f16, f9, rdn # perform operation
fsub.h f26, f16, f9, rmm # perform operation
fsub.h f26, f16, f9, rne # perform operation
fsub.h f26, f16, f9, rtz # perform operation
fsub.h f26, f16, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f16, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f16, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f16, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f16, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f16, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8200)
li x24, 0x44f4fa61b3c86f8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
fsub.h f24, f15, f17, dyn # perform operation
fsub.h f24, f15, f17, rdn # perform operation
fsub.h f24, f15, f17, rmm # perform operation
fsub.h f24, f15, f17, rne # perform operation
fsub.h f24, f15, f17, rtz # perform operation
fsub.h f24, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f15, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x1)
li x24, 0xb0b86db1d92ac0e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
fsub.h f24, f14, f20, dyn # perform operation
fsub.h f24, f14, f20, rdn # perform operation
fsub.h f24, f14, f20, rmm # perform operation
fsub.h f24, f14, f20, rne # perform operation
fsub.h f24, f14, f20, rtz # perform operation
fsub.h f24, f14, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f14, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f14, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f14, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f14, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f14, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8001)
li x4, 0x59b3a48eea79d255 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
fsub.h f4, f26, f27, dyn # perform operation
fsub.h f4, f26, f27, rdn # perform operation
fsub.h f4, f26, f27, rmm # perform operation
fsub.h f4, f26, f27, rne # perform operation
fsub.h f4, f26, f27, rtz # perform operation
fsub.h f4, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f26, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c00)
li x13, 0x833dd5b2346ee9e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fsub.h f13, f25, f20, dyn # perform operation
fsub.h f13, f25, f20, rdn # perform operation
fsub.h f13, f25, f20, rmm # perform operation
fsub.h f13, f25, f20, rne # perform operation
fsub.h f13, f25, f20, rtz # perform operation
fsub.h f13, f25, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f25, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f25, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f25, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f25, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f25, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc00)
li x26, 0x7c7d3430ffaa2373 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fsub.h f26, f31, f9, dyn # perform operation
fsub.h f26, f31, f9, rdn # perform operation
fsub.h f26, f31, f9, rmm # perform operation
fsub.h f26, f31, f9, rne # perform operation
fsub.h f26, f31, f9, rtz # perform operation
fsub.h f26, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7e00)
li x1, 0xbee20bc6501a59f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
fsub.h f1, f5, f30, dyn # perform operation
fsub.h f1, f5, f30, rdn # perform operation
fsub.h f1, f5, f30, rmm # perform operation
fsub.h f1, f5, f30, rne # perform operation
fsub.h f1, f5, f30, rtz # perform operation
fsub.h f1, f5, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f5, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f5, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f5, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f5, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f5, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7fff)
li x3, 0xa6d6e1c75490c05a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
fsub.h f3, f25, f30, dyn # perform operation
fsub.h f3, f25, f30, rdn # perform operation
fsub.h f3, f25, f30, rmm # perform operation
fsub.h f3, f25, f30, rne # perform operation
fsub.h f3, f25, f30, rtz # perform operation
fsub.h f3, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f25, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c01)
li x14, 0xfd872dd676e83c3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
fsub.h f14, f18, f2, dyn # perform operation
fsub.h f14, f18, f2, rdn # perform operation
fsub.h f14, f18, f2, rmm # perform operation
fsub.h f14, f18, f2, rne # perform operation
fsub.h f14, f18, f2, rtz # perform operation
fsub.h f14, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7dff)
li x15, 0x15c3d5cd8e6b2875 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
fsub.h f15, f26, f5, dyn # perform operation
fsub.h f15, f26, f5, rdn # perform operation
fsub.h f15, f26, f5, rmm # perform operation
fsub.h f15, f26, f5, rne # perform operation
fsub.h f15, f26, f5, rtz # perform operation
fsub.h f15, f26, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f26, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f26, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f26, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f26, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f26, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x58b4)
li x23, 0xd3e981b7c4b6c7f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
fsub.h f23, f9, f24, dyn # perform operation
fsub.h f23, f9, f24, rdn # perform operation
fsub.h f23, f9, f24, rmm # perform operation
fsub.h f23, f9, f24, rne # perform operation
fsub.h f23, f9, f24, rtz # perform operation
fsub.h f23, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f9, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc93a)
li x9, 0x595564ecb4122848 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
fsub.h f9, f1, f17, dyn # perform operation
fsub.h f9, f1, f17, rdn # perform operation
fsub.h f9, f1, f17, rmm # perform operation
fsub.h f9, f1, f17, rne # perform operation
fsub.h f9, f1, f17, rtz # perform operation
fsub.h f9, f1, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f1, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f1, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f1, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f1, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f1, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x0)
li x21, 0xa9197ec2e7f0a835 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fsub.h f21, f22, f6, dyn # perform operation
fsub.h f21, f22, f6, rdn # perform operation
fsub.h f21, f22, f6, rmm # perform operation
fsub.h f21, f22, f6, rne # perform operation
fsub.h f21, f22, f6, rtz # perform operation
fsub.h f21, f22, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f22, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f22, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f22, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f22, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f22, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8000)
li x7, 0x57a0e30387c63770 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
fsub.h f7, f26, f28, dyn # perform operation
fsub.h f7, f26, f28, rdn # perform operation
fsub.h f7, f26, f28, rmm # perform operation
fsub.h f7, f26, f28, rne # perform operation
fsub.h f7, f26, f28, rtz # perform operation
fsub.h f7, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f26, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3c00)
li x20, 0x28476f6841cb0eda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
fsub.h f20, f14, f31, dyn # perform operation
fsub.h f20, f14, f31, rdn # perform operation
fsub.h f20, f14, f31, rmm # perform operation
fsub.h f20, f14, f31, rne # perform operation
fsub.h f20, f14, f31, rtz # perform operation
fsub.h f20, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f14, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbc00)
li x4, 0xf6ef60663c09cb42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
fsub.h f4, f6, f11, dyn # perform operation
fsub.h f4, f6, f11, rdn # perform operation
fsub.h f4, f6, f11, rmm # perform operation
fsub.h f4, f6, f11, rne # perform operation
fsub.h f4, f6, f11, rtz # perform operation
fsub.h f4, f6, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f6, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f6, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f6, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f6, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f6, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3e00)
li x27, 0xc967d6a8b21cc569 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
fsub.h f27, f12, f16, dyn # perform operation
fsub.h f27, f12, f16, rdn # perform operation
fsub.h f27, f12, f16, rmm # perform operation
fsub.h f27, f12, f16, rne # perform operation
fsub.h f27, f12, f16, rtz # perform operation
fsub.h f27, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbe00)
li x14, 0x27c728dae4ec5016 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fsub.h f14, f9, f15, dyn # perform operation
fsub.h f14, f9, f15, rdn # perform operation
fsub.h f14, f9, f15, rmm # perform operation
fsub.h f14, f9, f15, rne # perform operation
fsub.h f14, f9, f15, rtz # perform operation
fsub.h f14, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f9, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x4000)
li x13, 0x34d1e95b76af77b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
fsub.h f13, f12, f26, dyn # perform operation
fsub.h f13, f12, f26, rdn # perform operation
fsub.h f13, f12, f26, rmm # perform operation
fsub.h f13, f12, f26, rne # perform operation
fsub.h f13, f12, f26, rtz # perform operation
fsub.h f13, f12, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f12, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f12, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f12, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f12, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc000)
li x5, 0xe0e89ceb949dcf65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fsub.h f5, f20, f1, dyn # perform operation
fsub.h f5, f20, f1, rdn # perform operation
fsub.h f5, f20, f1, rmm # perform operation
fsub.h f5, f20, f1, rne # perform operation
fsub.h f5, f20, f1, rtz # perform operation
fsub.h f5, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f20, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x400)
li x18, 0x7c00ef1f4a81c688 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
fsub.h f18, f27, f23, dyn # perform operation
fsub.h f18, f27, f23, rdn # perform operation
fsub.h f18, f27, f23, rmm # perform operation
fsub.h f18, f27, f23, rne # perform operation
fsub.h f18, f27, f23, rtz # perform operation
fsub.h f18, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f27, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8400)
li x13, 0x5ae34930fa251e5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
fsub.h f13, f22, f11, dyn # perform operation
fsub.h f13, f22, f11, rdn # perform operation
fsub.h f13, f22, f11, rmm # perform operation
fsub.h f13, f22, f11, rne # perform operation
fsub.h f13, f22, f11, rtz # perform operation
fsub.h f13, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7bff)
li x31, 0x002e74cc5c34ce84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
fsub.h f31, f17, f20, dyn # perform operation
fsub.h f31, f17, f20, rdn # perform operation
fsub.h f31, f17, f20, rmm # perform operation
fsub.h f31, f17, f20, rne # perform operation
fsub.h f31, f17, f20, rtz # perform operation
fsub.h f31, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f17, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfbff)
li x3, 0x357de63bb23d9eca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
fsub.h f3, f18, f9, dyn # perform operation
fsub.h f3, f18, f9, rdn # perform operation
fsub.h f3, f18, f9, rmm # perform operation
fsub.h f3, f18, f9, rne # perform operation
fsub.h f3, f18, f9, rtz # perform operation
fsub.h f3, f18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f18, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f18, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f18, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f18, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f18, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3ff)
li x27, 0x6ac2805764e412ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
fsub.h f27, f31, f8, dyn # perform operation
fsub.h f27, f31, f8, rdn # perform operation
fsub.h f27, f31, f8, rmm # perform operation
fsub.h f27, f31, f8, rne # perform operation
fsub.h f27, f31, f8, rtz # perform operation
fsub.h f27, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f31, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x83ff)
li x2, 0xf3cd073b9b8d2860 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
fsub.h f2, f27, f13, dyn # perform operation
fsub.h f2, f27, f13, rdn # perform operation
fsub.h f2, f27, f13, rmm # perform operation
fsub.h f2, f27, f13, rne # perform operation
fsub.h f2, f27, f13, rtz # perform operation
fsub.h f2, f27, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f27, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f27, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f27, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f27, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f27, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x200)
li x14, 0x8a335c011a7a08e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fsub.h f14, f2, f24, dyn # perform operation
fsub.h f14, f2, f24, rdn # perform operation
fsub.h f14, f2, f24, rmm # perform operation
fsub.h f14, f2, f24, rne # perform operation
fsub.h f14, f2, f24, rtz # perform operation
fsub.h f14, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f2, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8200)
li x31, 0xb20e9fffc265fdec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
fsub.h f31, f3, f27, dyn # perform operation
fsub.h f31, f3, f27, rdn # perform operation
fsub.h f31, f3, f27, rmm # perform operation
fsub.h f31, f3, f27, rne # perform operation
fsub.h f31, f3, f27, rtz # perform operation
fsub.h f31, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x1)
li x2, 0x9a5725120f1586c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
fsub.h f2, f13, f6, dyn # perform operation
fsub.h f2, f13, f6, rdn # perform operation
fsub.h f2, f13, f6, rmm # perform operation
fsub.h f2, f13, f6, rne # perform operation
fsub.h f2, f13, f6, rtz # perform operation
fsub.h f2, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8001)
li x14, 0x7125129be2adf2db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
fsub.h f14, f3, f27, dyn # perform operation
fsub.h f14, f3, f27, rdn # perform operation
fsub.h f14, f3, f27, rmm # perform operation
fsub.h f14, f3, f27, rne # perform operation
fsub.h f14, f3, f27, rtz # perform operation
fsub.h f14, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c00)
li x11, 0xae40c8fc364880ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f17, 0(x2) # load 0x00000400 from memory into f17
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
fsub.h f11, f17, f9, dyn # perform operation
fsub.h f11, f17, f9, rdn # perform operation
fsub.h f11, f17, f9, rmm # perform operation
fsub.h f11, f17, f9, rne # perform operation
fsub.h f11, f17, f9, rtz # perform operation
fsub.h f11, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f17, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc00)
li x17, 0x7429ec06005cda79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f4, 0(x2) # load 0x00000400 from memory into f4
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fsub.h f17, f4, f26, dyn # perform operation
fsub.h f17, f4, f26, rdn # perform operation
fsub.h f17, f4, f26, rmm # perform operation
fsub.h f17, f4, f26, rne # perform operation
fsub.h f17, f4, f26, rtz # perform operation
fsub.h f17, f4, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f4, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f4, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f4, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f4, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f4, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7e00)
li x18, 0xd41c8ed62210af8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fsub.h f18, f8, f3, dyn # perform operation
fsub.h f18, f8, f3, rdn # perform operation
fsub.h f18, f8, f3, rmm # perform operation
fsub.h f18, f8, f3, rne # perform operation
fsub.h f18, f8, f3, rtz # perform operation
fsub.h f18, f8, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f8, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f8, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f8, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f8, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f8, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7fff)
li x3, 0x46cf0410f696a787 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
fsub.h f3, f10, f6, dyn # perform operation
fsub.h f3, f10, f6, rdn # perform operation
fsub.h f3, f10, f6, rmm # perform operation
fsub.h f3, f10, f6, rne # perform operation
fsub.h f3, f10, f6, rtz # perform operation
fsub.h f3, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c01)
li x30, 0xe5637d003f7bddab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
fsub.h f30, f10, f4, dyn # perform operation
fsub.h f30, f10, f4, rdn # perform operation
fsub.h f30, f10, f4, rmm # perform operation
fsub.h f30, f10, f4, rne # perform operation
fsub.h f30, f10, f4, rtz # perform operation
fsub.h f30, f10, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f10, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f10, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f10, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f10, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f10, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7dff)
li x29, 0x4c5cb5795b71f233 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
fsub.h f29, f31, f19, dyn # perform operation
fsub.h f29, f31, f19, rdn # perform operation
fsub.h f29, f31, f19, rmm # perform operation
fsub.h f29, f31, f19, rne # perform operation
fsub.h f29, f31, f19, rtz # perform operation
fsub.h f29, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f31, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x58b4)
li x7, 0xc50d70ff99a8fc31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fsub.h f7, f2, f3, dyn # perform operation
fsub.h f7, f2, f3, rdn # perform operation
fsub.h f7, f2, f3, rmm # perform operation
fsub.h f7, f2, f3, rne # perform operation
fsub.h f7, f2, f3, rtz # perform operation
fsub.h f7, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f2, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc93a)
li x13, 0x116643090061dfae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
fsub.h f13, f30, f19, dyn # perform operation
fsub.h f13, f30, f19, rdn # perform operation
fsub.h f13, f30, f19, rmm # perform operation
fsub.h f13, f30, f19, rne # perform operation
fsub.h f13, f30, f19, rtz # perform operation
fsub.h f13, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f30, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x0)
li x27, 0xa556b4c83a85ce52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
fsub.h f27, f28, f30, dyn # perform operation
fsub.h f27, f28, f30, rdn # perform operation
fsub.h f27, f28, f30, rmm # perform operation
fsub.h f27, f28, f30, rne # perform operation
fsub.h f27, f28, f30, rtz # perform operation
fsub.h f27, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f28, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8000)
li x27, 0xbdfb0b4864c4617e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
fsub.h f27, f19, f8, dyn # perform operation
fsub.h f27, f19, f8, rdn # perform operation
fsub.h f27, f19, f8, rmm # perform operation
fsub.h f27, f19, f8, rne # perform operation
fsub.h f27, f19, f8, rtz # perform operation
fsub.h f27, f19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f19, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f19, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f19, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f19, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f19, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3c00)
li x4, 0xa33e3c90a683cfc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fsub.h f4, f21, f22, dyn # perform operation
fsub.h f4, f21, f22, rdn # perform operation
fsub.h f4, f21, f22, rmm # perform operation
fsub.h f4, f21, f22, rne # perform operation
fsub.h f4, f21, f22, rtz # perform operation
fsub.h f4, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f21, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbc00)
li x30, 0x6f8fb058f2b5a0dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fsub.h f30, f27, f5, dyn # perform operation
fsub.h f30, f27, f5, rdn # perform operation
fsub.h f30, f27, f5, rmm # perform operation
fsub.h f30, f27, f5, rne # perform operation
fsub.h f30, f27, f5, rtz # perform operation
fsub.h f30, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f27, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3e00)
li x24, 0x734a5cde1f74a6ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
fsub.h f24, f29, f2, dyn # perform operation
fsub.h f24, f29, f2, rdn # perform operation
fsub.h f24, f29, f2, rmm # perform operation
fsub.h f24, f29, f2, rne # perform operation
fsub.h f24, f29, f2, rtz # perform operation
fsub.h f24, f29, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f29, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f29, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f29, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f29, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f29, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbe00)
li x29, 0xb3b918f627b23812 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fsub.h f29, f11, f15, dyn # perform operation
fsub.h f29, f11, f15, rdn # perform operation
fsub.h f29, f11, f15, rmm # perform operation
fsub.h f29, f11, f15, rne # perform operation
fsub.h f29, f11, f15, rtz # perform operation
fsub.h f29, f11, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f11, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f11, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f11, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f11, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f11, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x4000)
li x19, 0x41a0c774389fd72b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
fsub.h f19, f13, f30, dyn # perform operation
fsub.h f19, f13, f30, rdn # perform operation
fsub.h f19, f13, f30, rmm # perform operation
fsub.h f19, f13, f30, rne # perform operation
fsub.h f19, f13, f30, rtz # perform operation
fsub.h f19, f13, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f13, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f13, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f13, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f13, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f13, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc000)
li x9, 0xdbcee10cb23bd4ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
fsub.h f9, f23, f12, dyn # perform operation
fsub.h f9, f23, f12, rdn # perform operation
fsub.h f9, f23, f12, rmm # perform operation
fsub.h f9, f23, f12, rne # perform operation
fsub.h f9, f23, f12, rtz # perform operation
fsub.h f9, f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x400)
li x7, 0x7a7e52e65bd88c6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
fsub.h f7, f3, f23, dyn # perform operation
fsub.h f7, f3, f23, rdn # perform operation
fsub.h f7, f3, f23, rmm # perform operation
fsub.h f7, f3, f23, rne # perform operation
fsub.h f7, f3, f23, rtz # perform operation
fsub.h f7, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f3, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8400)
li x5, 0x42fd8509efaa2a0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
fsub.h f5, f8, f31, dyn # perform operation
fsub.h f5, f8, f31, rdn # perform operation
fsub.h f5, f8, f31, rmm # perform operation
fsub.h f5, f8, f31, rne # perform operation
fsub.h f5, f8, f31, rtz # perform operation
fsub.h f5, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f8, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7bff)
li x12, 0x30d7d4fb6009d47b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
fsub.h f12, f5, f16, dyn # perform operation
fsub.h f12, f5, f16, rdn # perform operation
fsub.h f12, f5, f16, rmm # perform operation
fsub.h f12, f5, f16, rne # perform operation
fsub.h f12, f5, f16, rtz # perform operation
fsub.h f12, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f5, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfbff)
li x11, 0xe9de4a3217daa0d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
fsub.h f11, f15, f26, dyn # perform operation
fsub.h f11, f15, f26, rdn # perform operation
fsub.h f11, f15, f26, rmm # perform operation
fsub.h f11, f15, f26, rne # perform operation
fsub.h f11, f15, f26, rtz # perform operation
fsub.h f11, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3ff)
li x18, 0xa23a5cd8c547058e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
fsub.h f18, f14, f17, dyn # perform operation
fsub.h f18, f14, f17, rdn # perform operation
fsub.h f18, f14, f17, rmm # perform operation
fsub.h f18, f14, f17, rne # perform operation
fsub.h f18, f14, f17, rtz # perform operation
fsub.h f18, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f14, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x83ff)
li x25, 0xd95775b5b80a6933 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
fsub.h f25, f16, f1, dyn # perform operation
fsub.h f25, f16, f1, rdn # perform operation
fsub.h f25, f16, f1, rmm # perform operation
fsub.h f25, f16, f1, rne # perform operation
fsub.h f25, f16, f1, rtz # perform operation
fsub.h f25, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x200)
li x30, 0x0c59bc0b84bb62f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
fsub.h f30, f11, f20, dyn # perform operation
fsub.h f30, f11, f20, rdn # perform operation
fsub.h f30, f11, f20, rmm # perform operation
fsub.h f30, f11, f20, rne # perform operation
fsub.h f30, f11, f20, rtz # perform operation
fsub.h f30, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8200)
li x17, 0xa3f4b1103644d764 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
fsub.h f17, f7, f15, dyn # perform operation
fsub.h f17, f7, f15, rdn # perform operation
fsub.h f17, f7, f15, rmm # perform operation
fsub.h f17, f7, f15, rne # perform operation
fsub.h f17, f7, f15, rtz # perform operation
fsub.h f17, f7, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f7, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f7, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f7, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f7, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x1)
li x7, 0xf6fe7a8a609bffa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
fsub.h f7, f27, f26, dyn # perform operation
fsub.h f7, f27, f26, rdn # perform operation
fsub.h f7, f27, f26, rmm # perform operation
fsub.h f7, f27, f26, rne # perform operation
fsub.h f7, f27, f26, rtz # perform operation
fsub.h f7, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8001)
li x30, 0x1a6b122bf8d97327 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
fsub.h f30, f7, f11, dyn # perform operation
fsub.h f30, f7, f11, rdn # perform operation
fsub.h f30, f7, f11, rmm # perform operation
fsub.h f30, f7, f11, rne # perform operation
fsub.h f30, f7, f11, rtz # perform operation
fsub.h f30, f7, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f7, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f7, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f7, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f7, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f7, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c00)
li x13, 0xea7af631fa534158 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
fsub.h f13, f9, f19, dyn # perform operation
fsub.h f13, f9, f19, rdn # perform operation
fsub.h f13, f9, f19, rmm # perform operation
fsub.h f13, f9, f19, rne # perform operation
fsub.h f13, f9, f19, rtz # perform operation
fsub.h f13, f9, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f9, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f9, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f9, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f9, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f9, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc00)
li x26, 0xd71e4be16a134aa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fsub.h f26, f23, f28, dyn # perform operation
fsub.h f26, f23, f28, rdn # perform operation
fsub.h f26, f23, f28, rmm # perform operation
fsub.h f26, f23, f28, rne # perform operation
fsub.h f26, f23, f28, rtz # perform operation
fsub.h f26, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7e00)
li x16, 0x2f0fc43d1c6e762c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
fsub.h f16, f18, f24, dyn # perform operation
fsub.h f16, f18, f24, rdn # perform operation
fsub.h f16, f18, f24, rmm # perform operation
fsub.h f16, f18, f24, rne # perform operation
fsub.h f16, f18, f24, rtz # perform operation
fsub.h f16, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f18, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7fff)
li x15, 0x5f84680dd8cafd81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fsub.h f15, f9, f25, dyn # perform operation
fsub.h f15, f9, f25, rdn # perform operation
fsub.h f15, f9, f25, rmm # perform operation
fsub.h f15, f9, f25, rne # perform operation
fsub.h f15, f9, f25, rtz # perform operation
fsub.h f15, f9, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f9, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f9, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f9, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f9, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f9, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c01)
li x21, 0xad3ab6c31f7644d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
fsub.h f21, f18, f1, dyn # perform operation
fsub.h f21, f18, f1, rdn # perform operation
fsub.h f21, f18, f1, rmm # perform operation
fsub.h f21, f18, f1, rne # perform operation
fsub.h f21, f18, f1, rtz # perform operation
fsub.h f21, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7dff)
li x25, 0x9494f2e96758a11b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
fsub.h f25, f20, f18, dyn # perform operation
fsub.h f25, f20, f18, rdn # perform operation
fsub.h f25, f20, f18, rmm # perform operation
fsub.h f25, f20, f18, rne # perform operation
fsub.h f25, f20, f18, rtz # perform operation
fsub.h f25, f20, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f20, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f20, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f20, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f20, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f20, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x58b4)
li x12, 0x33b7dce70789aaf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f4, 0(x2) # load 0x00008400 from memory into f4
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
fsub.h f12, f4, f20, dyn # perform operation
fsub.h f12, f4, f20, rdn # perform operation
fsub.h f12, f4, f20, rmm # perform operation
fsub.h f12, f4, f20, rne # perform operation
fsub.h f12, f4, f20, rtz # perform operation
fsub.h f12, f4, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f4, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f4, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f4, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f4, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f4, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc93a)
li x2, 0x83a654ac0c2e60fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fsub.h f2, f6, f9, dyn # perform operation
fsub.h f2, f6, f9, rdn # perform operation
fsub.h f2, f6, f9, rmm # perform operation
fsub.h f2, f6, f9, rne # perform operation
fsub.h f2, f6, f9, rtz # perform operation
fsub.h f2, f6, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f6, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f6, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f6, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f6, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f6, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x0)
li x31, 0xd56cb36540277804 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
fsub.h f31, f11, f23, dyn # perform operation
fsub.h f31, f11, f23, rdn # perform operation
fsub.h f31, f11, f23, rmm # perform operation
fsub.h f31, f11, f23, rne # perform operation
fsub.h f31, f11, f23, rtz # perform operation
fsub.h f31, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8000)
li x15, 0xd4569f3754ac5ec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
fsub.h f15, f13, f2, dyn # perform operation
fsub.h f15, f13, f2, rdn # perform operation
fsub.h f15, f13, f2, rmm # perform operation
fsub.h f15, f13, f2, rne # perform operation
fsub.h f15, f13, f2, rtz # perform operation
fsub.h f15, f13, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f13, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f13, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f13, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f13, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3c00)
li x24, 0x23b3d7d5cf35a816 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
fsub.h f24, f21, f19, dyn # perform operation
fsub.h f24, f21, f19, rdn # perform operation
fsub.h f24, f21, f19, rmm # perform operation
fsub.h f24, f21, f19, rne # perform operation
fsub.h f24, f21, f19, rtz # perform operation
fsub.h f24, f21, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f21, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f21, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f21, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f21, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbc00)
li x10, 0xabde922263ffa9fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
fsub.h f10, f25, f30, dyn # perform operation
fsub.h f10, f25, f30, rdn # perform operation
fsub.h f10, f25, f30, rmm # perform operation
fsub.h f10, f25, f30, rne # perform operation
fsub.h f10, f25, f30, rtz # perform operation
fsub.h f10, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f25, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3e00)
li x21, 0xfa01c6b56b16abad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fsub.h f21, f24, f28, dyn # perform operation
fsub.h f21, f24, f28, rdn # perform operation
fsub.h f21, f24, f28, rmm # perform operation
fsub.h f21, f24, f28, rne # perform operation
fsub.h f21, f24, f28, rtz # perform operation
fsub.h f21, f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f24, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbe00)
li x17, 0x871a701571ceaace # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fsub.h f17, f28, f15, dyn # perform operation
fsub.h f17, f28, f15, rdn # perform operation
fsub.h f17, f28, f15, rmm # perform operation
fsub.h f17, f28, f15, rne # perform operation
fsub.h f17, f28, f15, rtz # perform operation
fsub.h f17, f28, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f28, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f28, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f28, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f28, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f28, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x4000)
li x28, 0x1f22a85c07bb3332 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
fsub.h f28, f1, f5, dyn # perform operation
fsub.h f28, f1, f5, rdn # perform operation
fsub.h f28, f1, f5, rmm # perform operation
fsub.h f28, f1, f5, rne # perform operation
fsub.h f28, f1, f5, rtz # perform operation
fsub.h f28, f1, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f1, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f1, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f1, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f1, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f1, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc000)
li x22, 0xb4d0c1f8bd237e8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f4, 0(x2) # load 0x0000c000 from memory into f4
fsub.h f22, f8, f4, dyn # perform operation
fsub.h f22, f8, f4, rdn # perform operation
fsub.h f22, f8, f4, rmm # perform operation
fsub.h f22, f8, f4, rne # perform operation
fsub.h f22, f8, f4, rtz # perform operation
fsub.h f22, f8, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f8, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f8, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f8, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f8, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f8, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x400)
li x7, 0x092a7d8a6fb68f8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
fsub.h f7, f19, f1, dyn # perform operation
fsub.h f7, f19, f1, rdn # perform operation
fsub.h f7, f19, f1, rmm # perform operation
fsub.h f7, f19, f1, rne # perform operation
fsub.h f7, f19, f1, rtz # perform operation
fsub.h f7, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f19, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8400)
li x17, 0x13f15b3dd09b935f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
fsub.h f17, f25, f29, dyn # perform operation
fsub.h f17, f25, f29, rdn # perform operation
fsub.h f17, f25, f29, rmm # perform operation
fsub.h f17, f25, f29, rne # perform operation
fsub.h f17, f25, f29, rtz # perform operation
fsub.h f17, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f25, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7bff)
li x13, 0x4cd8821f6853e9b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
fsub.h f13, f6, f25, dyn # perform operation
fsub.h f13, f6, f25, rdn # perform operation
fsub.h f13, f6, f25, rmm # perform operation
fsub.h f13, f6, f25, rne # perform operation
fsub.h f13, f6, f25, rtz # perform operation
fsub.h f13, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f6, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfbff)
li x22, 0xd0b4f61f30719543 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
fsub.h f22, f5, f11, dyn # perform operation
fsub.h f22, f5, f11, rdn # perform operation
fsub.h f22, f5, f11, rmm # perform operation
fsub.h f22, f5, f11, rne # perform operation
fsub.h f22, f5, f11, rtz # perform operation
fsub.h f22, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f5, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3ff)
li x21, 0x1a40da51540bdebc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
fsub.h f21, f17, f16, dyn # perform operation
fsub.h f21, f17, f16, rdn # perform operation
fsub.h f21, f17, f16, rmm # perform operation
fsub.h f21, f17, f16, rne # perform operation
fsub.h f21, f17, f16, rtz # perform operation
fsub.h f21, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f17, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x83ff)
li x16, 0x99896c0dc352bc74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
fsub.h f16, f15, f26, dyn # perform operation
fsub.h f16, f15, f26, rdn # perform operation
fsub.h f16, f15, f26, rmm # perform operation
fsub.h f16, f15, f26, rne # perform operation
fsub.h f16, f15, f26, rtz # perform operation
fsub.h f16, f15, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f15, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f15, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f15, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f15, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x200)
li x20, 0x37de29d0c2068a15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
fsub.h f20, f16, f13, dyn # perform operation
fsub.h f20, f16, f13, rdn # perform operation
fsub.h f20, f16, f13, rmm # perform operation
fsub.h f20, f16, f13, rne # perform operation
fsub.h f20, f16, f13, rtz # perform operation
fsub.h f20, f16, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f16, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f16, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f16, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f16, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f16, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8200)
li x4, 0x1bb8c0dc4d1a4a1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
fsub.h f4, f27, f6, dyn # perform operation
fsub.h f4, f27, f6, rdn # perform operation
fsub.h f4, f27, f6, rmm # perform operation
fsub.h f4, f27, f6, rne # perform operation
fsub.h f4, f27, f6, rtz # perform operation
fsub.h f4, f27, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f27, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f27, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f27, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f27, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f27, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x1)
li x9, 0xdc7f629dec47e40c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
fsub.h f9, f26, f31, dyn # perform operation
fsub.h f9, f26, f31, rdn # perform operation
fsub.h f9, f26, f31, rmm # perform operation
fsub.h f9, f26, f31, rne # perform operation
fsub.h f9, f26, f31, rtz # perform operation
fsub.h f9, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8001)
li x19, 0x43766259add2c088 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fsub.h f19, f20, f16, dyn # perform operation
fsub.h f19, f20, f16, rdn # perform operation
fsub.h f19, f20, f16, rmm # perform operation
fsub.h f19, f20, f16, rne # perform operation
fsub.h f19, f20, f16, rtz # perform operation
fsub.h f19, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f20, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c00)
li x19, 0x0aa91d6cdce555e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
fsub.h f19, f21, f24, dyn # perform operation
fsub.h f19, f21, f24, rdn # perform operation
fsub.h f19, f21, f24, rmm # perform operation
fsub.h f19, f21, f24, rne # perform operation
fsub.h f19, f21, f24, rtz # perform operation
fsub.h f19, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc00)
li x22, 0xdd6d6c8278ead4c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
fsub.h f22, f18, f23, dyn # perform operation
fsub.h f22, f18, f23, rdn # perform operation
fsub.h f22, f18, f23, rmm # perform operation
fsub.h f22, f18, f23, rne # perform operation
fsub.h f22, f18, f23, rtz # perform operation
fsub.h f22, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7e00)
li x29, 0x79f9c2d72c627c88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fsub.h f29, f27, f31, dyn # perform operation
fsub.h f29, f27, f31, rdn # perform operation
fsub.h f29, f27, f31, rmm # perform operation
fsub.h f29, f27, f31, rne # perform operation
fsub.h f29, f27, f31, rtz # perform operation
fsub.h f29, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f27, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7fff)
li x14, 0x21e107301e90bf04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fsub.h f14, f28, f27, dyn # perform operation
fsub.h f14, f28, f27, rdn # perform operation
fsub.h f14, f28, f27, rmm # perform operation
fsub.h f14, f28, f27, rne # perform operation
fsub.h f14, f28, f27, rtz # perform operation
fsub.h f14, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f28, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c01)
li x1, 0xa74137a244400caa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
fsub.h f1, f13, f28, dyn # perform operation
fsub.h f1, f13, f28, rdn # perform operation
fsub.h f1, f13, f28, rmm # perform operation
fsub.h f1, f13, f28, rne # perform operation
fsub.h f1, f13, f28, rtz # perform operation
fsub.h f1, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7dff)
li x4, 0x6c9a1e2ca72c14d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
fsub.h f4, f27, f11, dyn # perform operation
fsub.h f4, f27, f11, rdn # perform operation
fsub.h f4, f27, f11, rmm # perform operation
fsub.h f4, f27, f11, rne # perform operation
fsub.h f4, f27, f11, rtz # perform operation
fsub.h f4, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x58b4)
li x20, 0xb35d42e5a6fcdd42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
fsub.h f20, f11, f17, dyn # perform operation
fsub.h f20, f11, f17, rdn # perform operation
fsub.h f20, f11, f17, rmm # perform operation
fsub.h f20, f11, f17, rne # perform operation
fsub.h f20, f11, f17, rtz # perform operation
fsub.h f20, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f11, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc93a)
li x29, 0x3ae71c3c0628f874 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
fsub.h f29, f7, f22, dyn # perform operation
fsub.h f29, f7, f22, rdn # perform operation
fsub.h f29, f7, f22, rmm # perform operation
fsub.h f29, f7, f22, rne # perform operation
fsub.h f29, f7, f22, rtz # perform operation
fsub.h f29, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x0)
li x2, 0x5162993899f2345e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
fsub.h f2, f27, f30, dyn # perform operation
fsub.h f2, f27, f30, rdn # perform operation
fsub.h f2, f27, f30, rmm # perform operation
fsub.h f2, f27, f30, rne # perform operation
fsub.h f2, f27, f30, rtz # perform operation
fsub.h f2, f27, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f27, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f27, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f27, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f27, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f27, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8000)
li x1, 0x4ff6047ee910b663 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
fsub.h f1, f29, f20, dyn # perform operation
fsub.h f1, f29, f20, rdn # perform operation
fsub.h f1, f29, f20, rmm # perform operation
fsub.h f1, f29, f20, rne # perform operation
fsub.h f1, f29, f20, rtz # perform operation
fsub.h f1, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f29, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3c00)
li x7, 0xaf4e66d3ff57fa7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
fsub.h f7, f8, f5, dyn # perform operation
fsub.h f7, f8, f5, rdn # perform operation
fsub.h f7, f8, f5, rmm # perform operation
fsub.h f7, f8, f5, rne # perform operation
fsub.h f7, f8, f5, rtz # perform operation
fsub.h f7, f8, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f8, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f8, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f8, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f8, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f8, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbc00)
li x30, 0x35433bb5685c957a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fsub.h f30, f22, f26, dyn # perform operation
fsub.h f30, f22, f26, rdn # perform operation
fsub.h f30, f22, f26, rmm # perform operation
fsub.h f30, f22, f26, rne # perform operation
fsub.h f30, f22, f26, rtz # perform operation
fsub.h f30, f22, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f22, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f22, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f22, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f22, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f22, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3e00)
li x27, 0xd85695dd2f5e01bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
fsub.h f27, f17, f15, dyn # perform operation
fsub.h f27, f17, f15, rdn # perform operation
fsub.h f27, f17, f15, rmm # perform operation
fsub.h f27, f17, f15, rne # perform operation
fsub.h f27, f17, f15, rtz # perform operation
fsub.h f27, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f17, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbe00)
li x29, 0xe5dfe48972007f57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
fsub.h f29, f17, f27, dyn # perform operation
fsub.h f29, f17, f27, rdn # perform operation
fsub.h f29, f17, f27, rmm # perform operation
fsub.h f29, f17, f27, rne # perform operation
fsub.h f29, f17, f27, rtz # perform operation
fsub.h f29, f17, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f17, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f17, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f17, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f17, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f17, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x4000)
li x23, 0xe47bde47b1a9c226 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
fsub.h f23, f11, f25, dyn # perform operation
fsub.h f23, f11, f25, rdn # perform operation
fsub.h f23, f11, f25, rmm # perform operation
fsub.h f23, f11, f25, rne # perform operation
fsub.h f23, f11, f25, rtz # perform operation
fsub.h f23, f11, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f11, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f11, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f11, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f11, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f11, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc000)
li x15, 0x04f3a401703a4e5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
fsub.h f15, f14, f8, dyn # perform operation
fsub.h f15, f14, f8, rdn # perform operation
fsub.h f15, f14, f8, rmm # perform operation
fsub.h f15, f14, f8, rne # perform operation
fsub.h f15, f14, f8, rtz # perform operation
fsub.h f15, f14, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f14, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f14, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f14, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f14, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f14, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x400)
li x12, 0x3d4cc341e36d7770 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fsub.h f12, f13, f15, dyn # perform operation
fsub.h f12, f13, f15, rdn # perform operation
fsub.h f12, f13, f15, rmm # perform operation
fsub.h f12, f13, f15, rne # perform operation
fsub.h f12, f13, f15, rtz # perform operation
fsub.h f12, f13, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f13, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f13, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f13, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f13, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f13, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8400)
li x17, 0x63ae5344fdf8e52a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
fsub.h f17, f15, f13, dyn # perform operation
fsub.h f17, f15, f13, rdn # perform operation
fsub.h f17, f15, f13, rmm # perform operation
fsub.h f17, f15, f13, rne # perform operation
fsub.h f17, f15, f13, rtz # perform operation
fsub.h f17, f15, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f15, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f15, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f15, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f15, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f15, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7bff)
li x15, 0x25e49e5e478a6bf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
fsub.h f15, f20, f5, dyn # perform operation
fsub.h f15, f20, f5, rdn # perform operation
fsub.h f15, f20, f5, rmm # perform operation
fsub.h f15, f20, f5, rne # perform operation
fsub.h f15, f20, f5, rtz # perform operation
fsub.h f15, f20, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f20, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f20, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f20, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f20, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f20, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfbff)
li x16, 0x4dfa7123dea4188b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
fsub.h f16, f17, f1, dyn # perform operation
fsub.h f16, f17, f1, rdn # perform operation
fsub.h f16, f17, f1, rmm # perform operation
fsub.h f16, f17, f1, rne # perform operation
fsub.h f16, f17, f1, rtz # perform operation
fsub.h f16, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3ff)
li x20, 0x2f76888efcb06e73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fsub.h f20, f22, f19, dyn # perform operation
fsub.h f20, f22, f19, rdn # perform operation
fsub.h f20, f22, f19, rmm # perform operation
fsub.h f20, f22, f19, rne # perform operation
fsub.h f20, f22, f19, rtz # perform operation
fsub.h f20, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x83ff)
li x6, 0x49c9a0bda3bceebf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fsub.h f6, f19, f16, dyn # perform operation
fsub.h f6, f19, f16, rdn # perform operation
fsub.h f6, f19, f16, rmm # perform operation
fsub.h f6, f19, f16, rne # perform operation
fsub.h f6, f19, f16, rtz # perform operation
fsub.h f6, f19, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f19, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f19, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f19, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f19, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f19, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x200)
li x27, 0xce2e9e78e683e026 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fsub.h f27, f2, f24, dyn # perform operation
fsub.h f27, f2, f24, rdn # perform operation
fsub.h f27, f2, f24, rmm # perform operation
fsub.h f27, f2, f24, rne # perform operation
fsub.h f27, f2, f24, rtz # perform operation
fsub.h f27, f2, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f2, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f2, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f2, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f2, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f2, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8200)
li x11, 0xcad01fe6466cadad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
fsub.h f11, f25, f17, dyn # perform operation
fsub.h f11, f25, f17, rdn # perform operation
fsub.h f11, f25, f17, rmm # perform operation
fsub.h f11, f25, f17, rne # perform operation
fsub.h f11, f25, f17, rtz # perform operation
fsub.h f11, f25, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f25, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f25, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f25, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f25, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x1)
li x21, 0xd6d62af13f3f4704 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f4, 0(x2) # load 0x0000fbff from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
fsub.h f21, f4, f14, dyn # perform operation
fsub.h f21, f4, f14, rdn # perform operation
fsub.h f21, f4, f14, rmm # perform operation
fsub.h f21, f4, f14, rne # perform operation
fsub.h f21, f4, f14, rtz # perform operation
fsub.h f21, f4, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f4, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f4, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f4, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f4, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8001)
li x4, 0xb85a760d5a462ea2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
fsub.h f4, f25, f22, dyn # perform operation
fsub.h f4, f25, f22, rdn # perform operation
fsub.h f4, f25, f22, rmm # perform operation
fsub.h f4, f25, f22, rne # perform operation
fsub.h f4, f25, f22, rtz # perform operation
fsub.h f4, f25, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f25, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f25, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f25, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f25, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f25, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c00)
li x18, 0x9b2dca28b6ccdadc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f29, 0(x2) # load 0x0000fbff from memory into f29
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fsub.h f18, f29, f23, dyn # perform operation
fsub.h f18, f29, f23, rdn # perform operation
fsub.h f18, f29, f23, rmm # perform operation
fsub.h f18, f29, f23, rne # perform operation
fsub.h f18, f29, f23, rtz # perform operation
fsub.h f18, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc00)
li x14, 0x183464fa65d0a046 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
fsub.h f14, f6, f16, dyn # perform operation
fsub.h f14, f6, f16, rdn # perform operation
fsub.h f14, f6, f16, rmm # perform operation
fsub.h f14, f6, f16, rne # perform operation
fsub.h f14, f6, f16, rtz # perform operation
fsub.h f14, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f6, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7e00)
li x29, 0x7a6d1b1f92ab0f48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
fsub.h f29, f11, f26, dyn # perform operation
fsub.h f29, f11, f26, rdn # perform operation
fsub.h f29, f11, f26, rmm # perform operation
fsub.h f29, f11, f26, rne # perform operation
fsub.h f29, f11, f26, rtz # perform operation
fsub.h f29, f11, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f11, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f11, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f11, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f11, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f11, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7fff)
li x17, 0x36bcfb804bf3a6c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
fsub.h f17, f1, f10, dyn # perform operation
fsub.h f17, f1, f10, rdn # perform operation
fsub.h f17, f1, f10, rmm # perform operation
fsub.h f17, f1, f10, rne # perform operation
fsub.h f17, f1, f10, rtz # perform operation
fsub.h f17, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f1, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c01)
li x18, 0x693f15c823a406fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
fsub.h f18, f13, f28, dyn # perform operation
fsub.h f18, f13, f28, rdn # perform operation
fsub.h f18, f13, f28, rmm # perform operation
fsub.h f18, f13, f28, rne # perform operation
fsub.h f18, f13, f28, rtz # perform operation
fsub.h f18, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7dff)
li x12, 0xb64865df7269c4cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fsub.h f12, f25, f7, dyn # perform operation
fsub.h f12, f25, f7, rdn # perform operation
fsub.h f12, f25, f7, rmm # perform operation
fsub.h f12, f25, f7, rne # perform operation
fsub.h f12, f25, f7, rtz # perform operation
fsub.h f12, f25, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f25, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f25, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f25, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f25, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f25, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x58b4)
li x30, 0x6baf0413b6e14910 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fsub.h f30, f3, f10, dyn # perform operation
fsub.h f30, f3, f10, rdn # perform operation
fsub.h f30, f3, f10, rmm # perform operation
fsub.h f30, f3, f10, rne # perform operation
fsub.h f30, f3, f10, rtz # perform operation
fsub.h f30, f3, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f3, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f3, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f3, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f3, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc93a)
li x21, 0x9c717c3046531436 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
fsub.h f21, f27, f1, dyn # perform operation
fsub.h f21, f27, f1, rdn # perform operation
fsub.h f21, f27, f1, rmm # perform operation
fsub.h f21, f27, f1, rne # perform operation
fsub.h f21, f27, f1, rtz # perform operation
fsub.h f21, f27, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f27, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f27, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f27, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f27, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f27, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x0)
li x15, 0x494876dbde3b7d0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
fsub.h f15, f6, f27, dyn # perform operation
fsub.h f15, f6, f27, rdn # perform operation
fsub.h f15, f6, f27, rmm # perform operation
fsub.h f15, f6, f27, rne # perform operation
fsub.h f15, f6, f27, rtz # perform operation
fsub.h f15, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8000)
li x25, 0x97982bdb7060e18b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fsub.h f25, f5, f10, dyn # perform operation
fsub.h f25, f5, f10, rdn # perform operation
fsub.h f25, f5, f10, rmm # perform operation
fsub.h f25, f5, f10, rne # perform operation
fsub.h f25, f5, f10, rtz # perform operation
fsub.h f25, f5, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f5, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f5, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f5, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f5, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f5, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3c00)
li x7, 0xa0e52cd5a9895fe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
fsub.h f7, f27, f31, dyn # perform operation
fsub.h f7, f27, f31, rdn # perform operation
fsub.h f7, f27, f31, rmm # perform operation
fsub.h f7, f27, f31, rne # perform operation
fsub.h f7, f27, f31, rtz # perform operation
fsub.h f7, f27, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f27, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f27, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f27, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f27, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f27, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbc00)
li x30, 0xc21010b0cd2b586c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
fsub.h f30, f12, f11, dyn # perform operation
fsub.h f30, f12, f11, rdn # perform operation
fsub.h f30, f12, f11, rmm # perform operation
fsub.h f30, f12, f11, rne # perform operation
fsub.h f30, f12, f11, rtz # perform operation
fsub.h f30, f12, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f12, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f12, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f12, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f12, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3e00)
li x7, 0x6ff0d483b857a636 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
fsub.h f7, f21, f31, dyn # perform operation
fsub.h f7, f21, f31, rdn # perform operation
fsub.h f7, f21, f31, rmm # perform operation
fsub.h f7, f21, f31, rne # perform operation
fsub.h f7, f21, f31, rtz # perform operation
fsub.h f7, f21, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f21, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f21, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f21, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f21, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f21, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbe00)
li x29, 0xc819289797c46a77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
fsub.h f29, f10, f8, dyn # perform operation
fsub.h f29, f10, f8, rdn # perform operation
fsub.h f29, f10, f8, rmm # perform operation
fsub.h f29, f10, f8, rne # perform operation
fsub.h f29, f10, f8, rtz # perform operation
fsub.h f29, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f10, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x4000)
li x3, 0x71341983d8a4d00e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fsub.h f3, f8, f27, dyn # perform operation
fsub.h f3, f8, f27, rdn # perform operation
fsub.h f3, f8, f27, rmm # perform operation
fsub.h f3, f8, f27, rne # perform operation
fsub.h f3, f8, f27, rtz # perform operation
fsub.h f3, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f8, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc000)
li x16, 0x15147a6f060daa54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fsub.h f16, f21, f25, dyn # perform operation
fsub.h f16, f21, f25, rdn # perform operation
fsub.h f16, f21, f25, rmm # perform operation
fsub.h f16, f21, f25, rne # perform operation
fsub.h f16, f21, f25, rtz # perform operation
fsub.h f16, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f21, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x400)
li x8, 0xb5658e35accbb6bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
fsub.h f8, f28, f24, dyn # perform operation
fsub.h f8, f28, f24, rdn # perform operation
fsub.h f8, f28, f24, rmm # perform operation
fsub.h f8, f28, f24, rne # perform operation
fsub.h f8, f28, f24, rtz # perform operation
fsub.h f8, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f28, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8400)
li x25, 0xc056ae0dac1f28a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
fsub.h f25, f9, f18, dyn # perform operation
fsub.h f25, f9, f18, rdn # perform operation
fsub.h f25, f9, f18, rmm # perform operation
fsub.h f25, f9, f18, rne # perform operation
fsub.h f25, f9, f18, rtz # perform operation
fsub.h f25, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f9, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7bff)
li x29, 0x951ac41068619212 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fsub.h f29, f17, f6, dyn # perform operation
fsub.h f29, f17, f6, rdn # perform operation
fsub.h f29, f17, f6, rmm # perform operation
fsub.h f29, f17, f6, rne # perform operation
fsub.h f29, f17, f6, rtz # perform operation
fsub.h f29, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f17, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfbff)
li x12, 0xa76f6e02355d8ba4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fsub.h f12, f26, f18, dyn # perform operation
fsub.h f12, f26, f18, rdn # perform operation
fsub.h f12, f26, f18, rmm # perform operation
fsub.h f12, f26, f18, rne # perform operation
fsub.h f12, f26, f18, rtz # perform operation
fsub.h f12, f26, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f26, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f26, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f26, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f26, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f26, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3ff)
li x21, 0x9f21cdb81b270001 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
fsub.h f21, f18, f1, dyn # perform operation
fsub.h f21, f18, f1, rdn # perform operation
fsub.h f21, f18, f1, rmm # perform operation
fsub.h f21, f18, f1, rne # perform operation
fsub.h f21, f18, f1, rtz # perform operation
fsub.h f21, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x83ff)
li x2, 0xd760af075dc1b1ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f4, 0(x2) # load 0x000003ff from memory into f4
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
fsub.h f2, f4, f1, dyn # perform operation
fsub.h f2, f4, f1, rdn # perform operation
fsub.h f2, f4, f1, rmm # perform operation
fsub.h f2, f4, f1, rne # perform operation
fsub.h f2, f4, f1, rtz # perform operation
fsub.h f2, f4, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f4, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f4, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f4, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f4, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f4, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x200)
li x12, 0x7861f0b6586ecf69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fsub.h f12, f5, f25, dyn # perform operation
fsub.h f12, f5, f25, rdn # perform operation
fsub.h f12, f5, f25, rmm # perform operation
fsub.h f12, f5, f25, rne # perform operation
fsub.h f12, f5, f25, rtz # perform operation
fsub.h f12, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8200)
li x8, 0xa4297e5190af891c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f4, 0(x2) # load 0x00008200 from memory into f4
fsub.h f8, f13, f4, dyn # perform operation
fsub.h f8, f13, f4, rdn # perform operation
fsub.h f8, f13, f4, rmm # perform operation
fsub.h f8, f13, f4, rne # perform operation
fsub.h f8, f13, f4, rtz # perform operation
fsub.h f8, f13, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f13, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f13, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f13, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f13, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f13, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x1)
li x1, 0x50d406fb50a14bf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
fsub.h f1, f7, f13, dyn # perform operation
fsub.h f1, f7, f13, rdn # perform operation
fsub.h f1, f7, f13, rmm # perform operation
fsub.h f1, f7, f13, rne # perform operation
fsub.h f1, f7, f13, rtz # perform operation
fsub.h f1, f7, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f7, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f7, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f7, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f7, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8001)
li x9, 0x592ee8e3d90ac5a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
fsub.h f9, f2, f19, dyn # perform operation
fsub.h f9, f2, f19, rdn # perform operation
fsub.h f9, f2, f19, rmm # perform operation
fsub.h f9, f2, f19, rne # perform operation
fsub.h f9, f2, f19, rtz # perform operation
fsub.h f9, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f2, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c00)
li x9, 0xdbd972154392138d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
fsub.h f9, f14, f15, dyn # perform operation
fsub.h f9, f14, f15, rdn # perform operation
fsub.h f9, f14, f15, rmm # perform operation
fsub.h f9, f14, f15, rne # perform operation
fsub.h f9, f14, f15, rtz # perform operation
fsub.h f9, f14, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f14, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f14, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f14, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f14, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f14, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc00)
li x8, 0xf8539a299dd17a1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
fsub.h f8, f28, f30, dyn # perform operation
fsub.h f8, f28, f30, rdn # perform operation
fsub.h f8, f28, f30, rmm # perform operation
fsub.h f8, f28, f30, rne # perform operation
fsub.h f8, f28, f30, rtz # perform operation
fsub.h f8, f28, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f28, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f28, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f28, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f28, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f28, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7e00)
li x9, 0x95d30f50bd3ed476 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
fsub.h f9, f17, f16, dyn # perform operation
fsub.h f9, f17, f16, rdn # perform operation
fsub.h f9, f17, f16, rmm # perform operation
fsub.h f9, f17, f16, rne # perform operation
fsub.h f9, f17, f16, rtz # perform operation
fsub.h f9, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f17, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7fff)
li x12, 0x8251af11099edeef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fsub.h f12, f18, f25, dyn # perform operation
fsub.h f12, f18, f25, rdn # perform operation
fsub.h f12, f18, f25, rmm # perform operation
fsub.h f12, f18, f25, rne # perform operation
fsub.h f12, f18, f25, rtz # perform operation
fsub.h f12, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f18, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c01)
li x26, 0x61c0f488c87590d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
fsub.h f26, f3, f6, dyn # perform operation
fsub.h f26, f3, f6, rdn # perform operation
fsub.h f26, f3, f6, rmm # perform operation
fsub.h f26, f3, f6, rne # perform operation
fsub.h f26, f3, f6, rtz # perform operation
fsub.h f26, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7dff)
li x24, 0x7fa93b31baa45fb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
fsub.h f24, f20, f21, dyn # perform operation
fsub.h f24, f20, f21, rdn # perform operation
fsub.h f24, f20, f21, rmm # perform operation
fsub.h f24, f20, f21, rne # perform operation
fsub.h f24, f20, f21, rtz # perform operation
fsub.h f24, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f20, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x58b4)
li x3, 0x730ef5b5cf72f319 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
fsub.h f3, f30, f31, dyn # perform operation
fsub.h f3, f30, f31, rdn # perform operation
fsub.h f3, f30, f31, rmm # perform operation
fsub.h f3, f30, f31, rne # perform operation
fsub.h f3, f30, f31, rtz # perform operation
fsub.h f3, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f30, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc93a)
li x29, 0x2378e76aa666a6a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fsub.h f29, f13, f21, dyn # perform operation
fsub.h f29, f13, f21, rdn # perform operation
fsub.h f29, f13, f21, rmm # perform operation
fsub.h f29, f13, f21, rne # perform operation
fsub.h f29, f13, f21, rtz # perform operation
fsub.h f29, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x0)
li x14, 0x96f7a10991efea50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
fsub.h f14, f15, f13, dyn # perform operation
fsub.h f14, f15, f13, rdn # perform operation
fsub.h f14, f15, f13, rmm # perform operation
fsub.h f14, f15, f13, rne # perform operation
fsub.h f14, f15, f13, rtz # perform operation
fsub.h f14, f15, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f15, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f15, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f15, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f15, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f15, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8000)
li x6, 0xd8d18f5a65f72a83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
fsub.h f6, f21, f26, dyn # perform operation
fsub.h f6, f21, f26, rdn # perform operation
fsub.h f6, f21, f26, rmm # perform operation
fsub.h f6, f21, f26, rne # perform operation
fsub.h f6, f21, f26, rtz # perform operation
fsub.h f6, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3c00)
li x28, 0x7b9b9b255cb6fa71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fsub.h f28, f23, f16, dyn # perform operation
fsub.h f28, f23, f16, rdn # perform operation
fsub.h f28, f23, f16, rmm # perform operation
fsub.h f28, f23, f16, rne # perform operation
fsub.h f28, f23, f16, rtz # perform operation
fsub.h f28, f23, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f23, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f23, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f23, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f23, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f23, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbc00)
li x24, 0x1287c85c8727c3e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
fsub.h f24, f8, f15, dyn # perform operation
fsub.h f24, f8, f15, rdn # perform operation
fsub.h f24, f8, f15, rmm # perform operation
fsub.h f24, f8, f15, rne # perform operation
fsub.h f24, f8, f15, rtz # perform operation
fsub.h f24, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3e00)
li x4, 0x74a94a07c0d26925 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fsub.h f4, f14, f12, dyn # perform operation
fsub.h f4, f14, f12, rdn # perform operation
fsub.h f4, f14, f12, rmm # perform operation
fsub.h f4, f14, f12, rne # perform operation
fsub.h f4, f14, f12, rtz # perform operation
fsub.h f4, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f14, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbe00)
li x27, 0xe5b0c8d605e2b243 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fsub.h f27, f29, f3, dyn # perform operation
fsub.h f27, f29, f3, rdn # perform operation
fsub.h f27, f29, f3, rmm # perform operation
fsub.h f27, f29, f3, rne # perform operation
fsub.h f27, f29, f3, rtz # perform operation
fsub.h f27, f29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f29, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f29, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f29, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f29, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f29, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x4000)
li x22, 0x78459f738487776f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fsub.h f22, f17, f23, dyn # perform operation
fsub.h f22, f17, f23, rdn # perform operation
fsub.h f22, f17, f23, rmm # perform operation
fsub.h f22, f17, f23, rne # perform operation
fsub.h f22, f17, f23, rtz # perform operation
fsub.h f22, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f17, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc000)
li x17, 0xc9e75cea02c26bc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f4, 0(x2) # load 0x0000c000 from memory into f4
fsub.h f17, f22, f4, dyn # perform operation
fsub.h f17, f22, f4, rdn # perform operation
fsub.h f17, f22, f4, rmm # perform operation
fsub.h f17, f22, f4, rne # perform operation
fsub.h f17, f22, f4, rtz # perform operation
fsub.h f17, f22, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f22, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f22, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f22, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f22, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f22, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x400)
li x17, 0xb741a0d8152202ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
fsub.h f17, f14, f9, dyn # perform operation
fsub.h f17, f14, f9, rdn # perform operation
fsub.h f17, f14, f9, rmm # perform operation
fsub.h f17, f14, f9, rne # perform operation
fsub.h f17, f14, f9, rtz # perform operation
fsub.h f17, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8400)
li x25, 0x5b822c1a8bae9d92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
fsub.h f25, f8, f19, dyn # perform operation
fsub.h f25, f8, f19, rdn # perform operation
fsub.h f25, f8, f19, rmm # perform operation
fsub.h f25, f8, f19, rne # perform operation
fsub.h f25, f8, f19, rtz # perform operation
fsub.h f25, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7bff)
li x21, 0x0999995c38b827cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
fsub.h f21, f31, f10, dyn # perform operation
fsub.h f21, f31, f10, rdn # perform operation
fsub.h f21, f31, f10, rmm # perform operation
fsub.h f21, f31, f10, rne # perform operation
fsub.h f21, f31, f10, rtz # perform operation
fsub.h f21, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f31, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfbff)
li x19, 0x58a9ada1055143c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
fsub.h f19, f14, f12, dyn # perform operation
fsub.h f19, f14, f12, rdn # perform operation
fsub.h f19, f14, f12, rmm # perform operation
fsub.h f19, f14, f12, rne # perform operation
fsub.h f19, f14, f12, rtz # perform operation
fsub.h f19, f14, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f14, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f14, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f14, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f14, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f14, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3ff)
li x2, 0xf03e178d44445e79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fsub.h f2, f12, f19, dyn # perform operation
fsub.h f2, f12, f19, rdn # perform operation
fsub.h f2, f12, f19, rmm # perform operation
fsub.h f2, f12, f19, rne # perform operation
fsub.h f2, f12, f19, rtz # perform operation
fsub.h f2, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x83ff)
li x23, 0x780e0c05ad2ec2b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fsub.h f23, f21, f16, dyn # perform operation
fsub.h f23, f21, f16, rdn # perform operation
fsub.h f23, f21, f16, rmm # perform operation
fsub.h f23, f21, f16, rne # perform operation
fsub.h f23, f21, f16, rtz # perform operation
fsub.h f23, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f21, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x200)
li x2, 0x68c31c0a9850244f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
fsub.h f2, f8, f28, dyn # perform operation
fsub.h f2, f8, f28, rdn # perform operation
fsub.h f2, f8, f28, rmm # perform operation
fsub.h f2, f8, f28, rne # perform operation
fsub.h f2, f8, f28, rtz # perform operation
fsub.h f2, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8200)
li x20, 0x3fe8350796991f13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
fsub.h f20, f8, f17, dyn # perform operation
fsub.h f20, f8, f17, rdn # perform operation
fsub.h f20, f8, f17, rmm # perform operation
fsub.h f20, f8, f17, rne # perform operation
fsub.h f20, f8, f17, rtz # perform operation
fsub.h f20, f8, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f8, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f8, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f8, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f8, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f8, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x1)
li x31, 0x1a78b8ba07818966 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
fsub.h f31, f14, f6, dyn # perform operation
fsub.h f31, f14, f6, rdn # perform operation
fsub.h f31, f14, f6, rmm # perform operation
fsub.h f31, f14, f6, rne # perform operation
fsub.h f31, f14, f6, rtz # perform operation
fsub.h f31, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f14, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8001)
li x29, 0xf3ac5ccd84ece4c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
fsub.h f29, f31, f26, dyn # perform operation
fsub.h f29, f31, f26, rdn # perform operation
fsub.h f29, f31, f26, rmm # perform operation
fsub.h f29, f31, f26, rne # perform operation
fsub.h f29, f31, f26, rtz # perform operation
fsub.h f29, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f31, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c00)
li x9, 0x7d487a390f458d22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
fsub.h f9, f14, f6, dyn # perform operation
fsub.h f9, f14, f6, rdn # perform operation
fsub.h f9, f14, f6, rmm # perform operation
fsub.h f9, f14, f6, rne # perform operation
fsub.h f9, f14, f6, rtz # perform operation
fsub.h f9, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f14, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc00)
li x16, 0xc8139b5f358c7771 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
fsub.h f16, f12, f10, dyn # perform operation
fsub.h f16, f12, f10, rdn # perform operation
fsub.h f16, f12, f10, rmm # perform operation
fsub.h f16, f12, f10, rne # perform operation
fsub.h f16, f12, f10, rtz # perform operation
fsub.h f16, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7e00)
li x6, 0x20f8e4b49531079c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
fsub.h f6, f15, f11, dyn # perform operation
fsub.h f6, f15, f11, rdn # perform operation
fsub.h f6, f15, f11, rmm # perform operation
fsub.h f6, f15, f11, rne # perform operation
fsub.h f6, f15, f11, rtz # perform operation
fsub.h f6, f15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f15, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f15, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f15, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f15, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f15, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7fff)
li x13, 0x632e9f4392958255 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
fsub.h f13, f30, f6, dyn # perform operation
fsub.h f13, f30, f6, rdn # perform operation
fsub.h f13, f30, f6, rmm # perform operation
fsub.h f13, f30, f6, rne # perform operation
fsub.h f13, f30, f6, rtz # perform operation
fsub.h f13, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c01)
li x9, 0x1e0c479f8e966b21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
fsub.h f9, f21, f6, dyn # perform operation
fsub.h f9, f21, f6, rdn # perform operation
fsub.h f9, f21, f6, rmm # perform operation
fsub.h f9, f21, f6, rne # perform operation
fsub.h f9, f21, f6, rtz # perform operation
fsub.h f9, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7dff)
li x14, 0x8de532cef180436e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fsub.h f14, f1, f23, dyn # perform operation
fsub.h f14, f1, f23, rdn # perform operation
fsub.h f14, f1, f23, rmm # perform operation
fsub.h f14, f1, f23, rne # perform operation
fsub.h f14, f1, f23, rtz # perform operation
fsub.h f14, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x58b4)
li x30, 0xab3feef4aca6461a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
fsub.h f30, f8, f19, dyn # perform operation
fsub.h f30, f8, f19, rdn # perform operation
fsub.h f30, f8, f19, rmm # perform operation
fsub.h f30, f8, f19, rne # perform operation
fsub.h f30, f8, f19, rtz # perform operation
fsub.h f30, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc93a)
li x3, 0xfc6dc346168e9741 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fsub.h f3, f8, f21, dyn # perform operation
fsub.h f3, f8, f21, rdn # perform operation
fsub.h f3, f8, f21, rmm # perform operation
fsub.h f3, f8, f21, rne # perform operation
fsub.h f3, f8, f21, rtz # perform operation
fsub.h f3, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x0)
li x2, 0x173ffdf228108866 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
fsub.h f2, f11, f16, dyn # perform operation
fsub.h f2, f11, f16, rdn # perform operation
fsub.h f2, f11, f16, rmm # perform operation
fsub.h f2, f11, f16, rne # perform operation
fsub.h f2, f11, f16, rtz # perform operation
fsub.h f2, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f11, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8000)
li x22, 0xd652a13c20ffb2d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
fsub.h f22, f19, f6, dyn # perform operation
fsub.h f22, f19, f6, rdn # perform operation
fsub.h f22, f19, f6, rmm # perform operation
fsub.h f22, f19, f6, rne # perform operation
fsub.h f22, f19, f6, rtz # perform operation
fsub.h f22, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3c00)
li x13, 0x55309f81cb34f940 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
fsub.h f13, f30, f20, dyn # perform operation
fsub.h f13, f30, f20, rdn # perform operation
fsub.h f13, f30, f20, rmm # perform operation
fsub.h f13, f30, f20, rne # perform operation
fsub.h f13, f30, f20, rtz # perform operation
fsub.h f13, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f30, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbc00)
li x16, 0xa6fdf64149df80c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
fsub.h f16, f9, f24, dyn # perform operation
fsub.h f16, f9, f24, rdn # perform operation
fsub.h f16, f9, f24, rmm # perform operation
fsub.h f16, f9, f24, rne # perform operation
fsub.h f16, f9, f24, rtz # perform operation
fsub.h f16, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f9, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3e00)
li x26, 0xf56824af31a99a08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
fsub.h f26, f23, f4, dyn # perform operation
fsub.h f26, f23, f4, rdn # perform operation
fsub.h f26, f23, f4, rmm # perform operation
fsub.h f26, f23, f4, rne # perform operation
fsub.h f26, f23, f4, rtz # perform operation
fsub.h f26, f23, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f23, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f23, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f23, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f23, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f23, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbe00)
li x23, 0xa524ac087e6c94e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
fsub.h f23, f21, f27, dyn # perform operation
fsub.h f23, f21, f27, rdn # perform operation
fsub.h f23, f21, f27, rmm # perform operation
fsub.h f23, f21, f27, rne # perform operation
fsub.h f23, f21, f27, rtz # perform operation
fsub.h f23, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x4000)
li x28, 0x3ae111f337eed279 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
fsub.h f28, f20, f21, dyn # perform operation
fsub.h f28, f20, f21, rdn # perform operation
fsub.h f28, f20, f21, rmm # perform operation
fsub.h f28, f20, f21, rne # perform operation
fsub.h f28, f20, f21, rtz # perform operation
fsub.h f28, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f20, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc000)
li x31, 0xb7e1192719526098 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f6, 0(x2) # load 0x0000c000 from memory into f6
fsub.h f31, f13, f6, dyn # perform operation
fsub.h f31, f13, f6, rdn # perform operation
fsub.h f31, f13, f6, rmm # perform operation
fsub.h f31, f13, f6, rne # perform operation
fsub.h f31, f13, f6, rtz # perform operation
fsub.h f31, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x400)
li x22, 0x270611f449904c50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
fsub.h f22, f7, f27, dyn # perform operation
fsub.h f22, f7, f27, rdn # perform operation
fsub.h f22, f7, f27, rmm # perform operation
fsub.h f22, f7, f27, rne # perform operation
fsub.h f22, f7, f27, rtz # perform operation
fsub.h f22, f7, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f7, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f7, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f7, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f7, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f7, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8400)
li x14, 0x25396c6671b1215e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
fsub.h f14, f8, f11, dyn # perform operation
fsub.h f14, f8, f11, rdn # perform operation
fsub.h f14, f8, f11, rmm # perform operation
fsub.h f14, f8, f11, rne # perform operation
fsub.h f14, f8, f11, rtz # perform operation
fsub.h f14, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7bff)
li x26, 0x474bf748b4b13744 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fsub.h f26, f20, f17, dyn # perform operation
fsub.h f26, f20, f17, rdn # perform operation
fsub.h f26, f20, f17, rmm # perform operation
fsub.h f26, f20, f17, rne # perform operation
fsub.h f26, f20, f17, rtz # perform operation
fsub.h f26, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f20, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfbff)
li x22, 0x56fed1867d67297c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
fsub.h f22, f16, f14, dyn # perform operation
fsub.h f22, f16, f14, rdn # perform operation
fsub.h f22, f16, f14, rmm # perform operation
fsub.h f22, f16, f14, rne # perform operation
fsub.h f22, f16, f14, rtz # perform operation
fsub.h f22, f16, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f16, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f16, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f16, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f16, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f16, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3ff)
li x29, 0xab6c031d119719a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
fsub.h f29, f10, f31, dyn # perform operation
fsub.h f29, f10, f31, rdn # perform operation
fsub.h f29, f10, f31, rmm # perform operation
fsub.h f29, f10, f31, rne # perform operation
fsub.h f29, f10, f31, rtz # perform operation
fsub.h f29, f10, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f10, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f10, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f10, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f10, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f10, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x83ff)
li x16, 0xff8cdc959273d01a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
fsub.h f16, f30, f9, dyn # perform operation
fsub.h f16, f30, f9, rdn # perform operation
fsub.h f16, f30, f9, rmm # perform operation
fsub.h f16, f30, f9, rne # perform operation
fsub.h f16, f30, f9, rtz # perform operation
fsub.h f16, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f30, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x200)
li x13, 0x39411282bf019bd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fsub.h f13, f22, f25, dyn # perform operation
fsub.h f13, f22, f25, rdn # perform operation
fsub.h f13, f22, f25, rmm # perform operation
fsub.h f13, f22, f25, rne # perform operation
fsub.h f13, f22, f25, rtz # perform operation
fsub.h f13, f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8200)
li x6, 0xa7a460b4595f9f6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
fsub.h f6, f22, f12, dyn # perform operation
fsub.h f6, f22, f12, rdn # perform operation
fsub.h f6, f22, f12, rmm # perform operation
fsub.h f6, f22, f12, rne # perform operation
fsub.h f6, f22, f12, rtz # perform operation
fsub.h f6, f22, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f22, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f22, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f22, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f22, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f22, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x1)
li x8, 0x75071585c667fb3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f27, 0(x2) # load 0x00000200 from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
fsub.h f8, f27, f1, dyn # perform operation
fsub.h f8, f27, f1, rdn # perform operation
fsub.h f8, f27, f1, rmm # perform operation
fsub.h f8, f27, f1, rne # perform operation
fsub.h f8, f27, f1, rtz # perform operation
fsub.h f8, f27, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f27, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f27, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f27, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f27, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f27, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8001)
li x11, 0x38382569b17187a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
fsub.h f11, f16, f23, dyn # perform operation
fsub.h f11, f16, f23, rdn # perform operation
fsub.h f11, f16, f23, rmm # perform operation
fsub.h f11, f16, f23, rne # perform operation
fsub.h f11, f16, f23, rtz # perform operation
fsub.h f11, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c00)
li x27, 0xbba9ac6f4be7995b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fsub.h f27, f16, f23, dyn # perform operation
fsub.h f27, f16, f23, rdn # perform operation
fsub.h f27, f16, f23, rmm # perform operation
fsub.h f27, f16, f23, rne # perform operation
fsub.h f27, f16, f23, rtz # perform operation
fsub.h f27, f16, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f16, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f16, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f16, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f16, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc00)
li x17, 0x4409afcbaa8dfa5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
fsub.h f17, f6, f25, dyn # perform operation
fsub.h f17, f6, f25, rdn # perform operation
fsub.h f17, f6, f25, rmm # perform operation
fsub.h f17, f6, f25, rne # perform operation
fsub.h f17, f6, f25, rtz # perform operation
fsub.h f17, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f6, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7e00)
li x11, 0x6b1aa1cba4f2eda9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fsub.h f11, f3, f31, dyn # perform operation
fsub.h f11, f3, f31, rdn # perform operation
fsub.h f11, f3, f31, rmm # perform operation
fsub.h f11, f3, f31, rne # perform operation
fsub.h f11, f3, f31, rtz # perform operation
fsub.h f11, f3, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f3, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f3, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f3, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f3, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f3, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7fff)
li x2, 0xdedbd3f67f19a178 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
fsub.h f2, f23, f15, dyn # perform operation
fsub.h f2, f23, f15, rdn # perform operation
fsub.h f2, f23, f15, rmm # perform operation
fsub.h f2, f23, f15, rne # perform operation
fsub.h f2, f23, f15, rtz # perform operation
fsub.h f2, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f23, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c01)
li x13, 0x915630dc37d93229 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
fsub.h f13, f19, f27, dyn # perform operation
fsub.h f13, f19, f27, rdn # perform operation
fsub.h f13, f19, f27, rmm # perform operation
fsub.h f13, f19, f27, rne # perform operation
fsub.h f13, f19, f27, rtz # perform operation
fsub.h f13, f19, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f19, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f19, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f19, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f19, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7dff)
li x8, 0x2860bdff618747f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
fsub.h f8, f21, f18, dyn # perform operation
fsub.h f8, f21, f18, rdn # perform operation
fsub.h f8, f21, f18, rmm # perform operation
fsub.h f8, f21, f18, rne # perform operation
fsub.h f8, f21, f18, rtz # perform operation
fsub.h f8, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f21, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x58b4)
li x9, 0xa17096f50b270e0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
fsub.h f9, f12, f14, dyn # perform operation
fsub.h f9, f12, f14, rdn # perform operation
fsub.h f9, f12, f14, rmm # perform operation
fsub.h f9, f12, f14, rne # perform operation
fsub.h f9, f12, f14, rtz # perform operation
fsub.h f9, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f12, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc93a)
li x30, 0x6a0d464fc1e8f6a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
fsub.h f30, f16, f7, dyn # perform operation
fsub.h f30, f16, f7, rdn # perform operation
fsub.h f30, f16, f7, rmm # perform operation
fsub.h f30, f16, f7, rne # perform operation
fsub.h f30, f16, f7, rtz # perform operation
fsub.h f30, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f16, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x0)
li x2, 0x7019ca26c193df08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
fsub.h f2, f26, f20, dyn # perform operation
fsub.h f2, f26, f20, rdn # perform operation
fsub.h f2, f26, f20, rmm # perform operation
fsub.h f2, f26, f20, rne # perform operation
fsub.h f2, f26, f20, rtz # perform operation
fsub.h f2, f26, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f26, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f26, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f26, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f26, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f26, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8000)
li x22, 0x6114a2ba01acdd1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
fsub.h f22, f3, f8, dyn # perform operation
fsub.h f22, f3, f8, rdn # perform operation
fsub.h f22, f3, f8, rmm # perform operation
fsub.h f22, f3, f8, rne # perform operation
fsub.h f22, f3, f8, rtz # perform operation
fsub.h f22, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3c00)
li x6, 0x3d3a0b8516103bb2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fsub.h f6, f24, f30, dyn # perform operation
fsub.h f6, f24, f30, rdn # perform operation
fsub.h f6, f24, f30, rmm # perform operation
fsub.h f6, f24, f30, rne # perform operation
fsub.h f6, f24, f30, rtz # perform operation
fsub.h f6, f24, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f24, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f24, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f24, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f24, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f24, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbc00)
li x20, 0x8fd96341ab6b852f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
fsub.h f20, f17, f22, dyn # perform operation
fsub.h f20, f17, f22, rdn # perform operation
fsub.h f20, f17, f22, rmm # perform operation
fsub.h f20, f17, f22, rne # perform operation
fsub.h f20, f17, f22, rtz # perform operation
fsub.h f20, f17, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f17, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f17, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f17, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f17, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3e00)
li x16, 0x918deee6dcdf77a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f10, 0(x2) # load 0x00008200 from memory into f10
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fsub.h f16, f10, f1, dyn # perform operation
fsub.h f16, f10, f1, rdn # perform operation
fsub.h f16, f10, f1, rmm # perform operation
fsub.h f16, f10, f1, rne # perform operation
fsub.h f16, f10, f1, rtz # perform operation
fsub.h f16, f10, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f10, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f10, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f10, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f10, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f10, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbe00)
li x5, 0x086905071172d5da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
fsub.h f5, f9, f18, dyn # perform operation
fsub.h f5, f9, f18, rdn # perform operation
fsub.h f5, f9, f18, rmm # perform operation
fsub.h f5, f9, f18, rne # perform operation
fsub.h f5, f9, f18, rtz # perform operation
fsub.h f5, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f9, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x4000)
li x18, 0x381af186e07d3ee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
fsub.h f18, f26, f11, dyn # perform operation
fsub.h f18, f26, f11, rdn # perform operation
fsub.h f18, f26, f11, rmm # perform operation
fsub.h f18, f26, f11, rne # perform operation
fsub.h f18, f26, f11, rtz # perform operation
fsub.h f18, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f26, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc000)
li x22, 0xcfdaa052f37224c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fsub.h f22, f1, f21, dyn # perform operation
fsub.h f22, f1, f21, rdn # perform operation
fsub.h f22, f1, f21, rmm # perform operation
fsub.h f22, f1, f21, rne # perform operation
fsub.h f22, f1, f21, rtz # perform operation
fsub.h f22, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f1, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x400)
li x19, 0xa528eb275b0324f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
fsub.h f19, f25, f7, dyn # perform operation
fsub.h f19, f25, f7, rdn # perform operation
fsub.h f19, f25, f7, rmm # perform operation
fsub.h f19, f25, f7, rne # perform operation
fsub.h f19, f25, f7, rtz # perform operation
fsub.h f19, f25, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f25, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f25, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f25, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f25, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f25, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8400)
li x7, 0xbb193a3001764cdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
fsub.h f7, f12, f1, dyn # perform operation
fsub.h f7, f12, f1, rdn # perform operation
fsub.h f7, f12, f1, rmm # perform operation
fsub.h f7, f12, f1, rne # perform operation
fsub.h f7, f12, f1, rtz # perform operation
fsub.h f7, f12, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f12, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f12, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f12, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f12, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7bff)
li x31, 0xb522ed89cb69f247 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f11, 0(x2) # load 0x00007bff from memory into f11
fsub.h f31, f2, f11, dyn # perform operation
fsub.h f31, f2, f11, rdn # perform operation
fsub.h f31, f2, f11, rmm # perform operation
fsub.h f31, f2, f11, rne # perform operation
fsub.h f31, f2, f11, rtz # perform operation
fsub.h f31, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f2, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfbff)
li x25, 0xda511e4116af1b86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
fsub.h f25, f31, f21, dyn # perform operation
fsub.h f25, f31, f21, rdn # perform operation
fsub.h f25, f31, f21, rmm # perform operation
fsub.h f25, f31, f21, rne # perform operation
fsub.h f25, f31, f21, rtz # perform operation
fsub.h f25, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f31, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3ff)
li x18, 0x562fd36acf116e74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
fsub.h f18, f14, f1, dyn # perform operation
fsub.h f18, f14, f1, rdn # perform operation
fsub.h f18, f14, f1, rmm # perform operation
fsub.h f18, f14, f1, rne # perform operation
fsub.h f18, f14, f1, rtz # perform operation
fsub.h f18, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x83ff)
li x27, 0xf5889c30deb9f4d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
fsub.h f27, f17, f31, dyn # perform operation
fsub.h f27, f17, f31, rdn # perform operation
fsub.h f27, f17, f31, rmm # perform operation
fsub.h f27, f17, f31, rne # perform operation
fsub.h f27, f17, f31, rtz # perform operation
fsub.h f27, f17, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f17, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f17, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f17, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f17, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x200)
li x24, 0x019d8dad5a0bca4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
fsub.h f24, f13, f23, dyn # perform operation
fsub.h f24, f13, f23, rdn # perform operation
fsub.h f24, f13, f23, rmm # perform operation
fsub.h f24, f13, f23, rne # perform operation
fsub.h f24, f13, f23, rtz # perform operation
fsub.h f24, f13, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f13, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f13, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f13, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f13, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f13, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8200)
li x27, 0x632bd58a5d15138b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
fsub.h f27, f13, f26, dyn # perform operation
fsub.h f27, f13, f26, rdn # perform operation
fsub.h f27, f13, f26, rmm # perform operation
fsub.h f27, f13, f26, rne # perform operation
fsub.h f27, f13, f26, rtz # perform operation
fsub.h f27, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f13, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x1)
li x8, 0x22705774e64362f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fsub.h f8, f31, f21, dyn # perform operation
fsub.h f8, f31, f21, rdn # perform operation
fsub.h f8, f31, f21, rmm # perform operation
fsub.h f8, f31, f21, rne # perform operation
fsub.h f8, f31, f21, rtz # perform operation
fsub.h f8, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f31, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8001)
li x29, 0xbe5332a941f947e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
fsub.h f29, f27, f11, dyn # perform operation
fsub.h f29, f27, f11, rdn # perform operation
fsub.h f29, f27, f11, rmm # perform operation
fsub.h f29, f27, f11, rne # perform operation
fsub.h f29, f27, f11, rtz # perform operation
fsub.h f29, f27, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f27, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f27, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f27, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f27, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c00)
li x21, 0x078894b4a46c1ce9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
fsub.h f21, f15, f11, dyn # perform operation
fsub.h f21, f15, f11, rdn # perform operation
fsub.h f21, f15, f11, rmm # perform operation
fsub.h f21, f15, f11, rne # perform operation
fsub.h f21, f15, f11, rtz # perform operation
fsub.h f21, f15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f15, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f15, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f15, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f15, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f15, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc00)
li x8, 0x24e231762d0f1ab6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fsub.h f8, f3, f9, dyn # perform operation
fsub.h f8, f3, f9, rdn # perform operation
fsub.h f8, f3, f9, rmm # perform operation
fsub.h f8, f3, f9, rne # perform operation
fsub.h f8, f3, f9, rtz # perform operation
fsub.h f8, f3, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f3, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f3, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f3, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f3, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f3, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7e00)
li x8, 0xebc6fd2911ef5d65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f4, 0(x2) # load 0x00008200 from memory into f4
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
fsub.h f8, f4, f19, dyn # perform operation
fsub.h f8, f4, f19, rdn # perform operation
fsub.h f8, f4, f19, rmm # perform operation
fsub.h f8, f4, f19, rne # perform operation
fsub.h f8, f4, f19, rtz # perform operation
fsub.h f8, f4, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f4, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f4, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f4, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f4, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f4, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7fff)
li x1, 0x022cc0924c7bdfeb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fsub.h f1, f7, f25, dyn # perform operation
fsub.h f1, f7, f25, rdn # perform operation
fsub.h f1, f7, f25, rmm # perform operation
fsub.h f1, f7, f25, rne # perform operation
fsub.h f1, f7, f25, rtz # perform operation
fsub.h f1, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f7, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c01)
li x14, 0x3bd4f7da2ac07a02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
fsub.h f14, f13, f1, dyn # perform operation
fsub.h f14, f13, f1, rdn # perform operation
fsub.h f14, f13, f1, rmm # perform operation
fsub.h f14, f13, f1, rne # perform operation
fsub.h f14, f13, f1, rtz # perform operation
fsub.h f14, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7dff)
li x5, 0x5b0aaece22c7da0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fsub.h f5, f17, f30, dyn # perform operation
fsub.h f5, f17, f30, rdn # perform operation
fsub.h f5, f17, f30, rmm # perform operation
fsub.h f5, f17, f30, rne # perform operation
fsub.h f5, f17, f30, rtz # perform operation
fsub.h f5, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f17, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x58b4)
li x4, 0x4f11d4badb4c845a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
fsub.h f4, f1, f29, dyn # perform operation
fsub.h f4, f1, f29, rdn # perform operation
fsub.h f4, f1, f29, rmm # perform operation
fsub.h f4, f1, f29, rne # perform operation
fsub.h f4, f1, f29, rtz # perform operation
fsub.h f4, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f1, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc93a)
li x24, 0x0218ff7d3fff6c2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
fsub.h f24, f26, f18, dyn # perform operation
fsub.h f24, f26, f18, rdn # perform operation
fsub.h f24, f26, f18, rmm # perform operation
fsub.h f24, f26, f18, rne # perform operation
fsub.h f24, f26, f18, rtz # perform operation
fsub.h f24, f26, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f26, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f26, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f26, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f26, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f26, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x1, 0x328a3b99d3872072 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
fsub.h f1, f30, f7, dyn # perform operation
fsub.h f1, f30, f7, rdn # perform operation
fsub.h f1, f30, f7, rmm # perform operation
fsub.h f1, f30, f7, rne # perform operation
fsub.h f1, f30, f7, rtz # perform operation
fsub.h f1, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000)
li x26, 0x9ac3aa52659add96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f4, 0(x2) # load 0x00000001 from memory into f4
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
fsub.h f26, f4, f12, dyn # perform operation
fsub.h f26, f4, f12, rdn # perform operation
fsub.h f26, f4, f12, rmm # perform operation
fsub.h f26, f4, f12, rne # perform operation
fsub.h f26, f4, f12, rtz # perform operation
fsub.h f26, f4, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f4, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f4, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f4, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f4, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f4, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3c00)
li x27, 0x4636e1dddaae96a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f9, 0(x2) # load 0x00003c00 from memory into f9
fsub.h f27, f31, f9, dyn # perform operation
fsub.h f27, f31, f9, rdn # perform operation
fsub.h f27, f31, f9, rmm # perform operation
fsub.h f27, f31, f9, rne # perform operation
fsub.h f27, f31, f9, rtz # perform operation
fsub.h f27, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbc00)
li x7, 0x5c2cb0c8aac13028 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
fsub.h f7, f21, f3, dyn # perform operation
fsub.h f7, f21, f3, rdn # perform operation
fsub.h f7, f21, f3, rmm # perform operation
fsub.h f7, f21, f3, rne # perform operation
fsub.h f7, f21, f3, rtz # perform operation
fsub.h f7, f21, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f21, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f21, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f21, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f21, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f21, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3e00)
li x18, 0x67afa684d291e0f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
fsub.h f18, f31, f25, dyn # perform operation
fsub.h f18, f31, f25, rdn # perform operation
fsub.h f18, f31, f25, rmm # perform operation
fsub.h f18, f31, f25, rne # perform operation
fsub.h f18, f31, f25, rtz # perform operation
fsub.h f18, f31, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f31, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f31, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f31, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f31, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f31, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbe00)
li x8, 0x27573ed7b6bf6db4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
fsub.h f8, f10, f13, dyn # perform operation
fsub.h f8, f10, f13, rdn # perform operation
fsub.h f8, f10, f13, rmm # perform operation
fsub.h f8, f10, f13, rne # perform operation
fsub.h f8, f10, f13, rtz # perform operation
fsub.h f8, f10, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f10, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f10, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f10, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f10, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f10, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000)
li x8, 0x0c83df12a543c14c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
fsub.h f8, f30, f20, dyn # perform operation
fsub.h f8, f30, f20, rdn # perform operation
fsub.h f8, f30, f20, rmm # perform operation
fsub.h f8, f30, f20, rne # perform operation
fsub.h f8, f30, f20, rtz # perform operation
fsub.h f8, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f30, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000)
li x9, 0xc38f369f0c9caba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
fsub.h f9, f19, f14, dyn # perform operation
fsub.h f9, f19, f14, rdn # perform operation
fsub.h f9, f19, f14, rmm # perform operation
fsub.h f9, f19, f14, rne # perform operation
fsub.h f9, f19, f14, rtz # perform operation
fsub.h f9, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400)
li x6, 0xa966078301e59921 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f4, 0(x2) # load 0x00000001 from memory into f4
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
fsub.h f6, f4, f3, dyn # perform operation
fsub.h f6, f4, f3, rdn # perform operation
fsub.h f6, f4, f3, rmm # perform operation
fsub.h f6, f4, f3, rne # perform operation
fsub.h f6, f4, f3, rtz # perform operation
fsub.h f6, f4, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f4, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f4, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f4, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f4, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f4, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8400)
li x16, 0xf50a69b81ef139aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
fsub.h f16, f11, f17, dyn # perform operation
fsub.h f16, f11, f17, rdn # perform operation
fsub.h f16, f11, f17, rmm # perform operation
fsub.h f16, f11, f17, rne # perform operation
fsub.h f16, f11, f17, rtz # perform operation
fsub.h f16, f11, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f11, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f11, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f11, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f11, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f11, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7bff)
li x24, 0x053f8468a9dcf151 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
fsub.h f24, f1, f3, dyn # perform operation
fsub.h f24, f1, f3, rdn # perform operation
fsub.h f24, f1, f3, rmm # perform operation
fsub.h f24, f1, f3, rne # perform operation
fsub.h f24, f1, f3, rtz # perform operation
fsub.h f24, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfbff)
li x31, 0xc543f72b6f57712c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
fsub.h f31, f30, f19, dyn # perform operation
fsub.h f31, f30, f19, rdn # perform operation
fsub.h f31, f30, f19, rmm # perform operation
fsub.h f31, f30, f19, rne # perform operation
fsub.h f31, f30, f19, rtz # perform operation
fsub.h f31, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f30, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff)
li x1, 0x4c8d36942c75778a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
fsub.h f1, f26, f12, dyn # perform operation
fsub.h f1, f26, f12, rdn # perform operation
fsub.h f1, f26, f12, rmm # perform operation
fsub.h f1, f26, f12, rne # perform operation
fsub.h f1, f26, f12, rtz # perform operation
fsub.h f1, f26, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f26, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f26, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f26, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f26, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x83ff)
li x25, 0xd8c677662859f68a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
fsub.h f25, f19, f14, dyn # perform operation
fsub.h f25, f19, f14, rdn # perform operation
fsub.h f25, f19, f14, rmm # perform operation
fsub.h f25, f19, f14, rne # perform operation
fsub.h f25, f19, f14, rtz # perform operation
fsub.h f25, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x200)
li x17, 0xbdc116a709d217d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
fsub.h f17, f26, f16, dyn # perform operation
fsub.h f17, f26, f16, rdn # perform operation
fsub.h f17, f26, f16, rmm # perform operation
fsub.h f17, f26, f16, rne # perform operation
fsub.h f17, f26, f16, rtz # perform operation
fsub.h f17, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8200)
li x28, 0x17e89578ca30b840 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
fsub.h f28, f26, f7, dyn # perform operation
fsub.h f28, f26, f7, rdn # perform operation
fsub.h f28, f26, f7, rmm # perform operation
fsub.h f28, f26, f7, rne # perform operation
fsub.h f28, f26, f7, rtz # perform operation
fsub.h f28, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f26, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x23, 0xc8f9c6efc4026fbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
fsub.h f23, f15, f10, dyn # perform operation
fsub.h f23, f15, f10, rdn # perform operation
fsub.h f23, f15, f10, rmm # perform operation
fsub.h f23, f15, f10, rne # perform operation
fsub.h f23, f15, f10, rtz # perform operation
fsub.h f23, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f15, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8001)
li x28, 0x218e27a4343dc66a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
fsub.h f28, f21, f29, dyn # perform operation
fsub.h f28, f21, f29, rdn # perform operation
fsub.h f28, f21, f29, rmm # perform operation
fsub.h f28, f21, f29, rne # perform operation
fsub.h f28, f21, f29, rtz # perform operation
fsub.h f28, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f21, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c00)
li x11, 0x4c29ccbc92cf4adc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
fsub.h f11, f6, f15, dyn # perform operation
fsub.h f11, f6, f15, rdn # perform operation
fsub.h f11, f6, f15, rmm # perform operation
fsub.h f11, f6, f15, rne # perform operation
fsub.h f11, f6, f15, rtz # perform operation
fsub.h f11, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc00)
li x12, 0x6d4e9b170760186a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
fsub.h f12, f6, f27, dyn # perform operation
fsub.h f12, f6, f27, rdn # perform operation
fsub.h f12, f6, f27, rmm # perform operation
fsub.h f12, f6, f27, rne # perform operation
fsub.h f12, f6, f27, rtz # perform operation
fsub.h f12, f6, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f6, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f6, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f6, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f6, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7e00)
li x28, 0xaae92370e7d5a3ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
fsub.h f28, f23, f25, dyn # perform operation
fsub.h f28, f23, f25, rdn # perform operation
fsub.h f28, f23, f25, rmm # perform operation
fsub.h f28, f23, f25, rne # perform operation
fsub.h f28, f23, f25, rtz # perform operation
fsub.h f28, f23, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f23, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f23, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f23, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f23, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f23, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fff)
li x3, 0xc8c978117ebfcae4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fsub.h f3, f27, f8, dyn # perform operation
fsub.h f3, f27, f8, rdn # perform operation
fsub.h f3, f27, f8, rmm # perform operation
fsub.h f3, f27, f8, rne # perform operation
fsub.h f3, f27, f8, rtz # perform operation
fsub.h f3, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c01)
li x31, 0xce5af1e1a0d259d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fsub.h f31, f30, f12, dyn # perform operation
fsub.h f31, f30, f12, rdn # perform operation
fsub.h f31, f30, f12, rmm # perform operation
fsub.h f31, f30, f12, rne # perform operation
fsub.h f31, f30, f12, rtz # perform operation
fsub.h f31, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f30, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7dff)
li x26, 0xdcf40de2072fc199 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
fsub.h f26, f18, f19, dyn # perform operation
fsub.h f26, f18, f19, rdn # perform operation
fsub.h f26, f18, f19, rmm # perform operation
fsub.h f26, f18, f19, rne # perform operation
fsub.h f26, f18, f19, rtz # perform operation
fsub.h f26, f18, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f18, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f18, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f18, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f18, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f18, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x58b4)
li x18, 0xe945c4bde1962ddb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
fsub.h f18, f16, f26, dyn # perform operation
fsub.h f18, f16, f26, rdn # perform operation
fsub.h f18, f16, f26, rmm # perform operation
fsub.h f18, f16, f26, rne # perform operation
fsub.h f18, f16, f26, rtz # perform operation
fsub.h f18, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc93a)
li x22, 0xef37b604a17e73aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
fsub.h f22, f25, f2, dyn # perform operation
fsub.h f22, f25, f2, rdn # perform operation
fsub.h f22, f25, f2, rmm # perform operation
fsub.h f22, f25, f2, rne # perform operation
fsub.h f22, f25, f2, rtz # perform operation
fsub.h f22, f25, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f25, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f25, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f25, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f25, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x0)
li x9, 0x3c0b1381e0be8ff8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
fsub.h f9, f12, f25, dyn # perform operation
fsub.h f9, f12, f25, rdn # perform operation
fsub.h f9, f12, f25, rmm # perform operation
fsub.h f9, f12, f25, rne # perform operation
fsub.h f9, f12, f25, rtz # perform operation
fsub.h f9, f12, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f12, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f12, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f12, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f12, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f12, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8000)
li x12, 0x3b7586432537cfe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f13, 0(x2) # load 0x00008000 from memory into f13
fsub.h f12, f5, f13, dyn # perform operation
fsub.h f12, f5, f13, rdn # perform operation
fsub.h f12, f5, f13, rmm # perform operation
fsub.h f12, f5, f13, rne # perform operation
fsub.h f12, f5, f13, rtz # perform operation
fsub.h f12, f5, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f5, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f5, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f5, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f5, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f5, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3c00)
li x11, 0x39a1d15d4bb32020 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
fsub.h f11, f27, f23, dyn # perform operation
fsub.h f11, f27, f23, rdn # perform operation
fsub.h f11, f27, f23, rmm # perform operation
fsub.h f11, f27, f23, rne # perform operation
fsub.h f11, f27, f23, rtz # perform operation
fsub.h f11, f27, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f27, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f27, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f27, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f27, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f27, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbc00)
li x27, 0xf215972fcbaedb2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
fsub.h f27, f31, f21, dyn # perform operation
fsub.h f27, f31, f21, rdn # perform operation
fsub.h f27, f31, f21, rmm # perform operation
fsub.h f27, f31, f21, rne # perform operation
fsub.h f27, f31, f21, rtz # perform operation
fsub.h f27, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f31, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3e00)
li x24, 0x3f18515bcf6519b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
fsub.h f24, f22, f11, dyn # perform operation
fsub.h f24, f22, f11, rdn # perform operation
fsub.h f24, f22, f11, rmm # perform operation
fsub.h f24, f22, f11, rne # perform operation
fsub.h f24, f22, f11, rtz # perform operation
fsub.h f24, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbe00)
li x23, 0x212ba632b8bb20e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
fsub.h f23, f31, f17, dyn # perform operation
fsub.h f23, f31, f17, rdn # perform operation
fsub.h f23, f31, f17, rmm # perform operation
fsub.h f23, f31, f17, rne # perform operation
fsub.h f23, f31, f17, rtz # perform operation
fsub.h f23, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x4000)
li x14, 0xd6f08832d324b6f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
fsub.h f14, f16, f10, dyn # perform operation
fsub.h f14, f16, f10, rdn # perform operation
fsub.h f14, f16, f10, rmm # perform operation
fsub.h f14, f16, f10, rne # perform operation
fsub.h f14, f16, f10, rtz # perform operation
fsub.h f14, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f16, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc000)
li x17, 0xdfa8e88a58a897f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fsub.h f17, f13, f23, dyn # perform operation
fsub.h f17, f13, f23, rdn # perform operation
fsub.h f17, f13, f23, rmm # perform operation
fsub.h f17, f13, f23, rne # perform operation
fsub.h f17, f13, f23, rtz # perform operation
fsub.h f17, f13, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f13, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f13, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f13, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f13, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f13, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x400)
li x23, 0xe20566b7aafd9aea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
fsub.h f23, f28, f11, dyn # perform operation
fsub.h f23, f28, f11, rdn # perform operation
fsub.h f23, f28, f11, rmm # perform operation
fsub.h f23, f28, f11, rne # perform operation
fsub.h f23, f28, f11, rtz # perform operation
fsub.h f23, f28, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f28, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f28, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f28, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f28, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f28, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8400)
li x25, 0xd71c4e3081e4fca4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
fsub.h f25, f2, f21, dyn # perform operation
fsub.h f25, f2, f21, rdn # perform operation
fsub.h f25, f2, f21, rmm # perform operation
fsub.h f25, f2, f21, rne # perform operation
fsub.h f25, f2, f21, rtz # perform operation
fsub.h f25, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7bff)
li x12, 0xc228d0d0f5e5db54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
fsub.h f12, f27, f21, dyn # perform operation
fsub.h f12, f27, f21, rdn # perform operation
fsub.h f12, f27, f21, rmm # perform operation
fsub.h f12, f27, f21, rne # perform operation
fsub.h f12, f27, f21, rtz # perform operation
fsub.h f12, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f27, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfbff)
li x15, 0xf8e2ef654442253f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
fsub.h f15, f11, f7, dyn # perform operation
fsub.h f15, f11, f7, rdn # perform operation
fsub.h f15, f11, f7, rmm # perform operation
fsub.h f15, f11, f7, rne # perform operation
fsub.h f15, f11, f7, rtz # perform operation
fsub.h f15, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f11, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3ff)
li x9, 0xc969ff2e15bd5e55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
fsub.h f9, f24, f27, dyn # perform operation
fsub.h f9, f24, f27, rdn # perform operation
fsub.h f9, f24, f27, rmm # perform operation
fsub.h f9, f24, f27, rne # perform operation
fsub.h f9, f24, f27, rtz # perform operation
fsub.h f9, f24, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f24, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f24, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f24, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f24, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f24, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x83ff)
li x24, 0xe4a59b3e25e32b2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
fsub.h f24, f17, f4, dyn # perform operation
fsub.h f24, f17, f4, rdn # perform operation
fsub.h f24, f17, f4, rmm # perform operation
fsub.h f24, f17, f4, rne # perform operation
fsub.h f24, f17, f4, rtz # perform operation
fsub.h f24, f17, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f17, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f17, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f17, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f17, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f17, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x200)
li x14, 0x4e9bd16785111461 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
fsub.h f14, f20, f16, dyn # perform operation
fsub.h f14, f20, f16, rdn # perform operation
fsub.h f14, f20, f16, rmm # perform operation
fsub.h f14, f20, f16, rne # perform operation
fsub.h f14, f20, f16, rtz # perform operation
fsub.h f14, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f20, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8200)
li x15, 0x4838741a9595d640 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fsub.h f15, f5, f20, dyn # perform operation
fsub.h f15, f5, f20, rdn # perform operation
fsub.h f15, f5, f20, rmm # perform operation
fsub.h f15, f5, f20, rne # perform operation
fsub.h f15, f5, f20, rtz # perform operation
fsub.h f15, f5, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f5, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f5, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f5, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f5, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f5, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x1)
li x15, 0x562986b6b6f5aee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
fsub.h f15, f18, f27, dyn # perform operation
fsub.h f15, f18, f27, rdn # perform operation
fsub.h f15, f18, f27, rmm # perform operation
fsub.h f15, f18, f27, rne # perform operation
fsub.h f15, f18, f27, rtz # perform operation
fsub.h f15, f18, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f18, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f18, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f18, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f18, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f18, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8001)
li x30, 0xe495080936237ea3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
fsub.h f30, f21, f27, dyn # perform operation
fsub.h f30, f21, f27, rdn # perform operation
fsub.h f30, f21, f27, rmm # perform operation
fsub.h f30, f21, f27, rne # perform operation
fsub.h f30, f21, f27, rtz # perform operation
fsub.h f30, f21, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f21, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f21, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f21, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f21, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c00)
li x2, 0xa24646414712e4e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
fsub.h f2, f20, f8, dyn # perform operation
fsub.h f2, f20, f8, rdn # perform operation
fsub.h f2, f20, f8, rmm # perform operation
fsub.h f2, f20, f8, rne # perform operation
fsub.h f2, f20, f8, rtz # perform operation
fsub.h f2, f20, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f20, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f20, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f20, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f20, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f20, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc00)
li x5, 0x3dbcb48fa2aeb67c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fsub.h f5, f7, f9, dyn # perform operation
fsub.h f5, f7, f9, rdn # perform operation
fsub.h f5, f7, f9, rmm # perform operation
fsub.h f5, f7, f9, rne # perform operation
fsub.h f5, f7, f9, rtz # perform operation
fsub.h f5, f7, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f7, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f7, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f7, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f7, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f7, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7e00)
li x13, 0x8439258c63f6cd3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fsub.h f13, f10, f3, dyn # perform operation
fsub.h f13, f10, f3, rdn # perform operation
fsub.h f13, f10, f3, rmm # perform operation
fsub.h f13, f10, f3, rne # perform operation
fsub.h f13, f10, f3, rtz # perform operation
fsub.h f13, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f10, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7fff)
li x1, 0xc0c4a3cf98a7fe39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
fsub.h f1, f6, f10, dyn # perform operation
fsub.h f1, f6, f10, rdn # perform operation
fsub.h f1, f6, f10, rmm # perform operation
fsub.h f1, f6, f10, rne # perform operation
fsub.h f1, f6, f10, rtz # perform operation
fsub.h f1, f6, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f6, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f6, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f6, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f6, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c01)
li x3, 0x779707f1993fd707 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
fsub.h f3, f19, f14, dyn # perform operation
fsub.h f3, f19, f14, rdn # perform operation
fsub.h f3, f19, f14, rmm # perform operation
fsub.h f3, f19, f14, rne # perform operation
fsub.h f3, f19, f14, rtz # perform operation
fsub.h f3, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7dff)
li x10, 0x565fc524571a4651 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
fsub.h f10, f14, f9, dyn # perform operation
fsub.h f10, f14, f9, rdn # perform operation
fsub.h f10, f14, f9, rmm # perform operation
fsub.h f10, f14, f9, rne # perform operation
fsub.h f10, f14, f9, rtz # perform operation
fsub.h f10, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x58b4)
li x9, 0xda64168cd6c5fefe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
fsub.h f9, f23, f31, dyn # perform operation
fsub.h f9, f23, f31, rdn # perform operation
fsub.h f9, f23, f31, rmm # perform operation
fsub.h f9, f23, f31, rne # perform operation
fsub.h f9, f23, f31, rtz # perform operation
fsub.h f9, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f23, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc93a)
li x21, 0x18b734c837571410 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
fsub.h f21, f29, f30, dyn # perform operation
fsub.h f21, f29, f30, rdn # perform operation
fsub.h f21, f29, f30, rmm # perform operation
fsub.h f21, f29, f30, rne # perform operation
fsub.h f21, f29, f30, rtz # perform operation
fsub.h f21, f29, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f29, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f29, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f29, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f29, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f29, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x0)
li x11, 0xec1128dbbf954f39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
fsub.h f11, f3, f17, dyn # perform operation
fsub.h f11, f3, f17, rdn # perform operation
fsub.h f11, f3, f17, rmm # perform operation
fsub.h f11, f3, f17, rne # perform operation
fsub.h f11, f3, f17, rtz # perform operation
fsub.h f11, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8000)
li x24, 0x434112b6eda0a3d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
fsub.h f24, f23, f5, dyn # perform operation
fsub.h f24, f23, f5, rdn # perform operation
fsub.h f24, f23, f5, rmm # perform operation
fsub.h f24, f23, f5, rne # perform operation
fsub.h f24, f23, f5, rtz # perform operation
fsub.h f24, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f23, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3c00)
li x15, 0x0d900d044c578703 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
fsub.h f15, f19, f17, dyn # perform operation
fsub.h f15, f19, f17, rdn # perform operation
fsub.h f15, f19, f17, rmm # perform operation
fsub.h f15, f19, f17, rne # perform operation
fsub.h f15, f19, f17, rtz # perform operation
fsub.h f15, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbc00)
li x5, 0xfa073cd2d5762462 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fsub.h f5, f10, f28, dyn # perform operation
fsub.h f5, f10, f28, rdn # perform operation
fsub.h f5, f10, f28, rmm # perform operation
fsub.h f5, f10, f28, rne # perform operation
fsub.h f5, f10, f28, rtz # perform operation
fsub.h f5, f10, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f10, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f10, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f10, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f10, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3e00)
li x13, 0x88ef1d11a4457a42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
fsub.h f13, f12, f16, dyn # perform operation
fsub.h f13, f12, f16, rdn # perform operation
fsub.h f13, f12, f16, rmm # perform operation
fsub.h f13, f12, f16, rne # perform operation
fsub.h f13, f12, f16, rtz # perform operation
fsub.h f13, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbe00)
li x28, 0x0b32cc7c521e91a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
fsub.h f28, f31, f23, dyn # perform operation
fsub.h f28, f31, f23, rdn # perform operation
fsub.h f28, f31, f23, rmm # perform operation
fsub.h f28, f31, f23, rne # perform operation
fsub.h f28, f31, f23, rtz # perform operation
fsub.h f28, f31, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f31, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f31, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f31, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f31, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x4000)
li x16, 0x5cf6070078376e41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
fsub.h f16, f19, f25, dyn # perform operation
fsub.h f16, f19, f25, rdn # perform operation
fsub.h f16, f19, f25, rmm # perform operation
fsub.h f16, f19, f25, rne # perform operation
fsub.h f16, f19, f25, rtz # perform operation
fsub.h f16, f19, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f19, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f19, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f19, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f19, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f19, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc000)
li x19, 0x7f0dacddcd6afca5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
fsub.h f19, f20, f26, dyn # perform operation
fsub.h f19, f20, f26, rdn # perform operation
fsub.h f19, f20, f26, rmm # perform operation
fsub.h f19, f20, f26, rne # perform operation
fsub.h f19, f20, f26, rtz # perform operation
fsub.h f19, f20, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f20, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f20, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f20, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f20, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x400)
li x19, 0x981420931958203d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
fsub.h f19, f20, f21, dyn # perform operation
fsub.h f19, f20, f21, rdn # perform operation
fsub.h f19, f20, f21, rmm # perform operation
fsub.h f19, f20, f21, rne # perform operation
fsub.h f19, f20, f21, rtz # perform operation
fsub.h f19, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f20, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8400)
li x14, 0x2c65ffdf681f4a6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
fsub.h f14, f8, f6, dyn # perform operation
fsub.h f14, f8, f6, rdn # perform operation
fsub.h f14, f8, f6, rmm # perform operation
fsub.h f14, f8, f6, rne # perform operation
fsub.h f14, f8, f6, rtz # perform operation
fsub.h f14, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f8, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7bff)
li x12, 0x45a40e4c63e09361 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
fsub.h f12, f17, f29, dyn # perform operation
fsub.h f12, f17, f29, rdn # perform operation
fsub.h f12, f17, f29, rmm # perform operation
fsub.h f12, f17, f29, rne # perform operation
fsub.h f12, f17, f29, rtz # perform operation
fsub.h f12, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f17, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfbff)
li x25, 0x8d743c635b855537 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f4, 0(x2) # load 0x00007c00 from memory into f4
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
fsub.h f25, f4, f10, dyn # perform operation
fsub.h f25, f4, f10, rdn # perform operation
fsub.h f25, f4, f10, rmm # perform operation
fsub.h f25, f4, f10, rne # perform operation
fsub.h f25, f4, f10, rtz # perform operation
fsub.h f25, f4, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f4, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f4, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f4, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f4, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f4, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3ff)
li x14, 0x0b78cf88d196b2c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
fsub.h f14, f7, f26, dyn # perform operation
fsub.h f14, f7, f26, rdn # perform operation
fsub.h f14, f7, f26, rmm # perform operation
fsub.h f14, f7, f26, rne # perform operation
fsub.h f14, f7, f26, rtz # perform operation
fsub.h f14, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f7, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x83ff)
li x17, 0xeb5dd07121461b8e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
fsub.h f17, f2, f15, dyn # perform operation
fsub.h f17, f2, f15, rdn # perform operation
fsub.h f17, f2, f15, rmm # perform operation
fsub.h f17, f2, f15, rne # perform operation
fsub.h f17, f2, f15, rtz # perform operation
fsub.h f17, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f2, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x200)
li x5, 0x269db7d1b70ae725 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
fsub.h f5, f6, f15, dyn # perform operation
fsub.h f5, f6, f15, rdn # perform operation
fsub.h f5, f6, f15, rmm # perform operation
fsub.h f5, f6, f15, rne # perform operation
fsub.h f5, f6, f15, rtz # perform operation
fsub.h f5, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8200)
li x21, 0x6077d84c16e0cae1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
fsub.h f21, f24, f28, dyn # perform operation
fsub.h f21, f24, f28, rdn # perform operation
fsub.h f21, f24, f28, rmm # perform operation
fsub.h f21, f24, f28, rne # perform operation
fsub.h f21, f24, f28, rtz # perform operation
fsub.h f21, f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f24, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x1)
li x19, 0x5e4f954ef678638c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
fsub.h f19, f30, f3, dyn # perform operation
fsub.h f19, f30, f3, rdn # perform operation
fsub.h f19, f30, f3, rmm # perform operation
fsub.h f19, f30, f3, rne # perform operation
fsub.h f19, f30, f3, rtz # perform operation
fsub.h f19, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8001)
li x24, 0x445e5f229f4d1d8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
fsub.h f24, f1, f17, dyn # perform operation
fsub.h f24, f1, f17, rdn # perform operation
fsub.h f24, f1, f17, rmm # perform operation
fsub.h f24, f1, f17, rne # perform operation
fsub.h f24, f1, f17, rtz # perform operation
fsub.h f24, f1, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f1, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f1, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f1, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f1, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f1, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c00)
li x12, 0xca25c71bb0d0a039 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f3, 0(x2) # load 0x00007c00 from memory into f3
fsub.h f12, f11, f3, dyn # perform operation
fsub.h f12, f11, f3, rdn # perform operation
fsub.h f12, f11, f3, rmm # perform operation
fsub.h f12, f11, f3, rne # perform operation
fsub.h f12, f11, f3, rtz # perform operation
fsub.h f12, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f11, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc00)
li x27, 0xb0dfc802f6811514 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
fsub.h f27, f7, f12, dyn # perform operation
fsub.h f27, f7, f12, rdn # perform operation
fsub.h f27, f7, f12, rmm # perform operation
fsub.h f27, f7, f12, rne # perform operation
fsub.h f27, f7, f12, rtz # perform operation
fsub.h f27, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f7, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7e00)
li x8, 0x976e268c713bf4fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
fsub.h f8, f26, f1, dyn # perform operation
fsub.h f8, f26, f1, rdn # perform operation
fsub.h f8, f26, f1, rmm # perform operation
fsub.h f8, f26, f1, rne # perform operation
fsub.h f8, f26, f1, rtz # perform operation
fsub.h f8, f26, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f26, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f26, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f26, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f26, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7fff)
li x18, 0xb48f6948e37960d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
fsub.h f18, f9, f22, dyn # perform operation
fsub.h f18, f9, f22, rdn # perform operation
fsub.h f18, f9, f22, rmm # perform operation
fsub.h f18, f9, f22, rne # perform operation
fsub.h f18, f9, f22, rtz # perform operation
fsub.h f18, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f9, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c01)
li x28, 0xe2b3540cc8f06a3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
fsub.h f28, f8, f21, dyn # perform operation
fsub.h f28, f8, f21, rdn # perform operation
fsub.h f28, f8, f21, rmm # perform operation
fsub.h f28, f8, f21, rne # perform operation
fsub.h f28, f8, f21, rtz # perform operation
fsub.h f28, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7dff)
li x22, 0xda01149852dad041 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
fsub.h f22, f2, f21, dyn # perform operation
fsub.h f22, f2, f21, rdn # perform operation
fsub.h f22, f2, f21, rmm # perform operation
fsub.h f22, f2, f21, rne # perform operation
fsub.h f22, f2, f21, rtz # perform operation
fsub.h f22, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x58b4)
li x21, 0x054707190abd3cf3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
fsub.h f21, f9, f18, dyn # perform operation
fsub.h f21, f9, f18, rdn # perform operation
fsub.h f21, f9, f18, rmm # perform operation
fsub.h f21, f9, f18, rne # perform operation
fsub.h f21, f9, f18, rtz # perform operation
fsub.h f21, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f9, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc93a)
li x15, 0xc7ff5ce93af0e06e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
fsub.h f15, f20, f24, dyn # perform operation
fsub.h f15, f20, f24, rdn # perform operation
fsub.h f15, f20, f24, rmm # perform operation
fsub.h f15, f20, f24, rne # perform operation
fsub.h f15, f20, f24, rtz # perform operation
fsub.h f15, f20, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f20, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f20, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f20, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f20, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f20, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x0)
li x4, 0xe5cfe155c05a7265 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
fsub.h f4, f14, f31, dyn # perform operation
fsub.h f4, f14, f31, rdn # perform operation
fsub.h f4, f14, f31, rmm # perform operation
fsub.h f4, f14, f31, rne # perform operation
fsub.h f4, f14, f31, rtz # perform operation
fsub.h f4, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f14, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8000)
li x8, 0x135124a4ad122faa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
fsub.h f8, f12, f24, dyn # perform operation
fsub.h f8, f12, f24, rdn # perform operation
fsub.h f8, f12, f24, rmm # perform operation
fsub.h f8, f12, f24, rne # perform operation
fsub.h f8, f12, f24, rtz # perform operation
fsub.h f8, f12, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f12, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f12, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f12, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f12, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f12, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3c00)
li x20, 0x470138e6fb16c47e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
fsub.h f20, f3, f6, dyn # perform operation
fsub.h f20, f3, f6, rdn # perform operation
fsub.h f20, f3, f6, rmm # perform operation
fsub.h f20, f3, f6, rne # perform operation
fsub.h f20, f3, f6, rtz # perform operation
fsub.h f20, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbc00)
li x17, 0xe3777ef8eff95b11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
fsub.h f17, f28, f9, dyn # perform operation
fsub.h f17, f28, f9, rdn # perform operation
fsub.h f17, f28, f9, rmm # perform operation
fsub.h f17, f28, f9, rne # perform operation
fsub.h f17, f28, f9, rtz # perform operation
fsub.h f17, f28, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f28, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f28, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f28, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f28, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f28, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3e00)
li x24, 0xa908d92d7c342a2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fsub.h f24, f22, f17, dyn # perform operation
fsub.h f24, f22, f17, rdn # perform operation
fsub.h f24, f22, f17, rmm # perform operation
fsub.h f24, f22, f17, rne # perform operation
fsub.h f24, f22, f17, rtz # perform operation
fsub.h f24, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f22, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbe00)
li x25, 0x1e8be9206c70c008 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fsub.h f25, f10, f26, dyn # perform operation
fsub.h f25, f10, f26, rdn # perform operation
fsub.h f25, f10, f26, rmm # perform operation
fsub.h f25, f10, f26, rne # perform operation
fsub.h f25, f10, f26, rtz # perform operation
fsub.h f25, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x4000)
li x8, 0x66d6c8cc7c511227 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fsub.h f8, f7, f23, dyn # perform operation
fsub.h f8, f7, f23, rdn # perform operation
fsub.h f8, f7, f23, rmm # perform operation
fsub.h f8, f7, f23, rne # perform operation
fsub.h f8, f7, f23, rtz # perform operation
fsub.h f8, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc000)
li x22, 0xcac6f3151c1f4e58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
fsub.h f22, f29, f12, dyn # perform operation
fsub.h f22, f29, f12, rdn # perform operation
fsub.h f22, f29, f12, rmm # perform operation
fsub.h f22, f29, f12, rne # perform operation
fsub.h f22, f29, f12, rtz # perform operation
fsub.h f22, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f29, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x400)
li x22, 0x49740f9f918cc4eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
fsub.h f22, f31, f14, dyn # perform operation
fsub.h f22, f31, f14, rdn # perform operation
fsub.h f22, f31, f14, rmm # perform operation
fsub.h f22, f31, f14, rne # perform operation
fsub.h f22, f31, f14, rtz # perform operation
fsub.h f22, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f31, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8400)
li x18, 0x7d1975a1b0ecaf46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
fsub.h f18, f8, f2, dyn # perform operation
fsub.h f18, f8, f2, rdn # perform operation
fsub.h f18, f8, f2, rmm # perform operation
fsub.h f18, f8, f2, rne # perform operation
fsub.h f18, f8, f2, rtz # perform operation
fsub.h f18, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7bff)
li x16, 0x7df6485780594f34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
fsub.h f16, f24, f31, dyn # perform operation
fsub.h f16, f24, f31, rdn # perform operation
fsub.h f16, f24, f31, rmm # perform operation
fsub.h f16, f24, f31, rne # perform operation
fsub.h f16, f24, f31, rtz # perform operation
fsub.h f16, f24, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f24, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f24, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f24, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f24, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfbff)
li x19, 0xcc0311398575d2ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
fsub.h f19, f3, f21, dyn # perform operation
fsub.h f19, f3, f21, rdn # perform operation
fsub.h f19, f3, f21, rmm # perform operation
fsub.h f19, f3, f21, rne # perform operation
fsub.h f19, f3, f21, rtz # perform operation
fsub.h f19, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3ff)
li x10, 0xfff56a8d2d03e2b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
fsub.h f10, f5, f8, dyn # perform operation
fsub.h f10, f5, f8, rdn # perform operation
fsub.h f10, f5, f8, rmm # perform operation
fsub.h f10, f5, f8, rne # perform operation
fsub.h f10, f5, f8, rtz # perform operation
fsub.h f10, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f5, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x83ff)
li x18, 0x99df2850b31341d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fsub.h f18, f4, f10, dyn # perform operation
fsub.h f18, f4, f10, rdn # perform operation
fsub.h f18, f4, f10, rmm # perform operation
fsub.h f18, f4, f10, rne # perform operation
fsub.h f18, f4, f10, rtz # perform operation
fsub.h f18, f4, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f4, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f4, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f4, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f4, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f4, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x200)
li x3, 0xa7e73163cfec8f61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
fsub.h f3, f27, f8, dyn # perform operation
fsub.h f3, f27, f8, rdn # perform operation
fsub.h f3, f27, f8, rmm # perform operation
fsub.h f3, f27, f8, rne # perform operation
fsub.h f3, f27, f8, rtz # perform operation
fsub.h f3, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8200)
li x5, 0xf210ddfdbfe68ab8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
fsub.h f5, f14, f30, dyn # perform operation
fsub.h f5, f14, f30, rdn # perform operation
fsub.h f5, f14, f30, rmm # perform operation
fsub.h f5, f14, f30, rne # perform operation
fsub.h f5, f14, f30, rtz # perform operation
fsub.h f5, f14, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f14, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f14, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f14, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f14, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f14, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x1)
li x25, 0xfb3863150becc965 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
fsub.h f25, f26, f13, dyn # perform operation
fsub.h f25, f26, f13, rdn # perform operation
fsub.h f25, f26, f13, rmm # perform operation
fsub.h f25, f26, f13, rne # perform operation
fsub.h f25, f26, f13, rtz # perform operation
fsub.h f25, f26, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f26, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f26, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f26, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f26, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f26, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8001)
li x24, 0x82961e3df60e2f3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fsub.h f24, f3, f16, dyn # perform operation
fsub.h f24, f3, f16, rdn # perform operation
fsub.h f24, f3, f16, rmm # perform operation
fsub.h f24, f3, f16, rne # perform operation
fsub.h f24, f3, f16, rtz # perform operation
fsub.h f24, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c00)
li x11, 0x74e998132318c15f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
fsub.h f11, f27, f8, dyn # perform operation
fsub.h f11, f27, f8, rdn # perform operation
fsub.h f11, f27, f8, rmm # perform operation
fsub.h f11, f27, f8, rne # perform operation
fsub.h f11, f27, f8, rtz # perform operation
fsub.h f11, f27, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f27, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f27, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f27, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f27, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc00)
li x18, 0x7935d9efcf55f0cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
fsub.h f18, f4, f7, dyn # perform operation
fsub.h f18, f4, f7, rdn # perform operation
fsub.h f18, f4, f7, rmm # perform operation
fsub.h f18, f4, f7, rne # perform operation
fsub.h f18, f4, f7, rtz # perform operation
fsub.h f18, f4, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f4, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f4, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f4, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f4, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7e00)
li x23, 0xb28b9b9133b951f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
fsub.h f23, f4, f20, dyn # perform operation
fsub.h f23, f4, f20, rdn # perform operation
fsub.h f23, f4, f20, rmm # perform operation
fsub.h f23, f4, f20, rne # perform operation
fsub.h f23, f4, f20, rtz # perform operation
fsub.h f23, f4, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f4, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f4, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f4, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f4, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f4, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7fff)
li x2, 0x45205b03580393e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fsub.h f2, f24, f23, dyn # perform operation
fsub.h f2, f24, f23, rdn # perform operation
fsub.h f2, f24, f23, rmm # perform operation
fsub.h f2, f24, f23, rne # perform operation
fsub.h f2, f24, f23, rtz # perform operation
fsub.h f2, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f24, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c01)
li x13, 0x64a4b1f25e910380 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
fsub.h f13, f1, f3, dyn # perform operation
fsub.h f13, f1, f3, rdn # perform operation
fsub.h f13, f1, f3, rmm # perform operation
fsub.h f13, f1, f3, rne # perform operation
fsub.h f13, f1, f3, rtz # perform operation
fsub.h f13, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7dff)
li x3, 0x71ef5b159c48067f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
fsub.h f3, f16, f12, dyn # perform operation
fsub.h f3, f16, f12, rdn # perform operation
fsub.h f3, f16, f12, rmm # perform operation
fsub.h f3, f16, f12, rne # perform operation
fsub.h f3, f16, f12, rtz # perform operation
fsub.h f3, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x58b4)
li x27, 0x5baddfca50e90b1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
fsub.h f27, f3, f14, dyn # perform operation
fsub.h f27, f3, f14, rdn # perform operation
fsub.h f27, f3, f14, rmm # perform operation
fsub.h f27, f3, f14, rne # perform operation
fsub.h f27, f3, f14, rtz # perform operation
fsub.h f27, f3, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f3, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f3, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f3, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f3, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f3, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc93a)
li x17, 0xa224e139aa46b7e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
fsub.h f17, f16, f3, dyn # perform operation
fsub.h f17, f16, f3, rdn # perform operation
fsub.h f17, f16, f3, rmm # perform operation
fsub.h f17, f16, f3, rne # perform operation
fsub.h f17, f16, f3, rtz # perform operation
fsub.h f17, f16, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f16, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f16, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f16, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f16, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f16, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x0)
li x27, 0x522205d41a868724 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f4, 0(x2) # load 0x00000000 from memory into f4
fsub.h f27, f29, f4, dyn # perform operation
fsub.h f27, f29, f4, rdn # perform operation
fsub.h f27, f29, f4, rmm # perform operation
fsub.h f27, f29, f4, rne # perform operation
fsub.h f27, f29, f4, rtz # perform operation
fsub.h f27, f29, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f29, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f29, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f29, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f29, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f29, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8000)
li x29, 0x610fe2e84a23994e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
fsub.h f29, f16, f2, dyn # perform operation
fsub.h f29, f16, f2, rdn # perform operation
fsub.h f29, f16, f2, rmm # perform operation
fsub.h f29, f16, f2, rne # perform operation
fsub.h f29, f16, f2, rtz # perform operation
fsub.h f29, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f16, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3c00)
li x23, 0x4436c705b4fda4b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
fsub.h f23, f16, f11, dyn # perform operation
fsub.h f23, f16, f11, rdn # perform operation
fsub.h f23, f16, f11, rmm # perform operation
fsub.h f23, f16, f11, rne # perform operation
fsub.h f23, f16, f11, rtz # perform operation
fsub.h f23, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f16, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbc00)
li x25, 0xab58ad43ad79807b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
fsub.h f25, f31, f9, dyn # perform operation
fsub.h f25, f31, f9, rdn # perform operation
fsub.h f25, f31, f9, rmm # perform operation
fsub.h f25, f31, f9, rne # perform operation
fsub.h f25, f31, f9, rtz # perform operation
fsub.h f25, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3e00)
li x7, 0x42f920fb730744c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
fsub.h f7, f31, f6, dyn # perform operation
fsub.h f7, f31, f6, rdn # perform operation
fsub.h f7, f31, f6, rmm # perform operation
fsub.h f7, f31, f6, rne # perform operation
fsub.h f7, f31, f6, rtz # perform operation
fsub.h f7, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f31, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbe00)
li x6, 0x02fb2b872be8df7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
fsub.h f6, f17, f23, dyn # perform operation
fsub.h f6, f17, f23, rdn # perform operation
fsub.h f6, f17, f23, rmm # perform operation
fsub.h f6, f17, f23, rne # perform operation
fsub.h f6, f17, f23, rtz # perform operation
fsub.h f6, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f17, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x4000)
li x10, 0x39422b24eda72105 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
fsub.h f10, f11, f16, dyn # perform operation
fsub.h f10, f11, f16, rdn # perform operation
fsub.h f10, f11, f16, rmm # perform operation
fsub.h f10, f11, f16, rne # perform operation
fsub.h f10, f11, f16, rtz # perform operation
fsub.h f10, f11, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f11, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f11, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f11, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f11, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f11, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc000)
li x18, 0x28f9202f2e7595fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
fsub.h f18, f9, f11, dyn # perform operation
fsub.h f18, f9, f11, rdn # perform operation
fsub.h f18, f9, f11, rmm # perform operation
fsub.h f18, f9, f11, rne # perform operation
fsub.h f18, f9, f11, rtz # perform operation
fsub.h f18, f9, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f9, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f9, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f9, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f9, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f9, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x400)
li x27, 0x54ec0e8f262fd117 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
fsub.h f27, f19, f9, dyn # perform operation
fsub.h f27, f19, f9, rdn # perform operation
fsub.h f27, f19, f9, rmm # perform operation
fsub.h f27, f19, f9, rne # perform operation
fsub.h f27, f19, f9, rtz # perform operation
fsub.h f27, f19, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f19, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f19, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f19, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f19, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8400)
li x6, 0x719f7e7f7eff9bb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
fsub.h f6, f10, f8, dyn # perform operation
fsub.h f6, f10, f8, rdn # perform operation
fsub.h f6, f10, f8, rmm # perform operation
fsub.h f6, f10, f8, rne # perform operation
fsub.h f6, f10, f8, rtz # perform operation
fsub.h f6, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f10, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7bff)
li x26, 0xa78d83ff7b7bd093 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
fsub.h f26, f3, f29, dyn # perform operation
fsub.h f26, f3, f29, rdn # perform operation
fsub.h f26, f3, f29, rmm # perform operation
fsub.h f26, f3, f29, rne # perform operation
fsub.h f26, f3, f29, rtz # perform operation
fsub.h f26, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfbff)
li x29, 0xac7f3c2db51cd925 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
fsub.h f29, f3, f26, dyn # perform operation
fsub.h f29, f3, f26, rdn # perform operation
fsub.h f29, f3, f26, rmm # perform operation
fsub.h f29, f3, f26, rne # perform operation
fsub.h f29, f3, f26, rtz # perform operation
fsub.h f29, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f3, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3ff)
li x19, 0xfc4666ee8f01f036 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
fsub.h f19, f10, f29, dyn # perform operation
fsub.h f19, f10, f29, rdn # perform operation
fsub.h f19, f10, f29, rmm # perform operation
fsub.h f19, f10, f29, rne # perform operation
fsub.h f19, f10, f29, rtz # perform operation
fsub.h f19, f10, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f10, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f10, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f10, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f10, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f10, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x83ff)
li x28, 0xd1b6fce7783053ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
fsub.h f28, f27, f20, dyn # perform operation
fsub.h f28, f27, f20, rdn # perform operation
fsub.h f28, f27, f20, rmm # perform operation
fsub.h f28, f27, f20, rne # perform operation
fsub.h f28, f27, f20, rtz # perform operation
fsub.h f28, f27, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f27, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f27, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f27, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f27, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f27, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x200)
li x1, 0xef44c4e3d40f2ecd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
fsub.h f1, f8, f31, dyn # perform operation
fsub.h f1, f8, f31, rdn # perform operation
fsub.h f1, f8, f31, rmm # perform operation
fsub.h f1, f8, f31, rne # perform operation
fsub.h f1, f8, f31, rtz # perform operation
fsub.h f1, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f8, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8200)
li x30, 0x3bd2a4f1491fb7e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
fsub.h f30, f31, f12, dyn # perform operation
fsub.h f30, f31, f12, rdn # perform operation
fsub.h f30, f31, f12, rmm # perform operation
fsub.h f30, f31, f12, rne # perform operation
fsub.h f30, f31, f12, rtz # perform operation
fsub.h f30, f31, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f31, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f31, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f31, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f31, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f31, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x1)
li x17, 0x8642e7ef45715d63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
fsub.h f17, f23, f8, dyn # perform operation
fsub.h f17, f23, f8, rdn # perform operation
fsub.h f17, f23, f8, rmm # perform operation
fsub.h f17, f23, f8, rne # perform operation
fsub.h f17, f23, f8, rtz # perform operation
fsub.h f17, f23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f23, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f23, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f23, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f23, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f23, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8001)
li x25, 0xeaa715ede155d545 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
fsub.h f25, f31, f15, dyn # perform operation
fsub.h f25, f31, f15, rdn # perform operation
fsub.h f25, f31, f15, rmm # perform operation
fsub.h f25, f31, f15, rne # perform operation
fsub.h f25, f31, f15, rtz # perform operation
fsub.h f25, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c00)
li x24, 0xfc1f15a20b036caa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
fsub.h f24, f28, f7, dyn # perform operation
fsub.h f24, f28, f7, rdn # perform operation
fsub.h f24, f28, f7, rmm # perform operation
fsub.h f24, f28, f7, rne # perform operation
fsub.h f24, f28, f7, rtz # perform operation
fsub.h f24, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f28, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc00)
li x6, 0xea5679b94e8ce5ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
fsub.h f6, f26, f4, dyn # perform operation
fsub.h f6, f26, f4, rdn # perform operation
fsub.h f6, f26, f4, rmm # perform operation
fsub.h f6, f26, f4, rne # perform operation
fsub.h f6, f26, f4, rtz # perform operation
fsub.h f6, f26, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f26, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f26, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f26, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f26, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f26, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7e00)
li x10, 0xf47556721abe10c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
fsub.h f10, f6, f19, dyn # perform operation
fsub.h f10, f6, f19, rdn # perform operation
fsub.h f10, f6, f19, rmm # perform operation
fsub.h f10, f6, f19, rne # perform operation
fsub.h f10, f6, f19, rtz # perform operation
fsub.h f10, f6, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f6, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f6, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f6, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f6, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7fff)
li x12, 0xbef3b76476247041 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
fsub.h f12, f26, f21, dyn # perform operation
fsub.h f12, f26, f21, rdn # perform operation
fsub.h f12, f26, f21, rmm # perform operation
fsub.h f12, f26, f21, rne # perform operation
fsub.h f12, f26, f21, rtz # perform operation
fsub.h f12, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c01)
li x1, 0xa945ef22bc81e39c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
fsub.h f1, f31, f21, dyn # perform operation
fsub.h f1, f31, f21, rdn # perform operation
fsub.h f1, f31, f21, rmm # perform operation
fsub.h f1, f31, f21, rne # perform operation
fsub.h f1, f31, f21, rtz # perform operation
fsub.h f1, f31, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f31, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f31, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f31, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f31, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f31, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7dff)
li x23, 0x020bf98fd7b67938 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
fsub.h f23, f15, f10, dyn # perform operation
fsub.h f23, f15, f10, rdn # perform operation
fsub.h f23, f15, f10, rmm # perform operation
fsub.h f23, f15, f10, rne # perform operation
fsub.h f23, f15, f10, rtz # perform operation
fsub.h f23, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f15, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x58b4)
li x8, 0x2a01f53d1b97c300 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
fsub.h f8, f19, f1, dyn # perform operation
fsub.h f8, f19, f1, rdn # perform operation
fsub.h f8, f19, f1, rmm # perform operation
fsub.h f8, f19, f1, rne # perform operation
fsub.h f8, f19, f1, rtz # perform operation
fsub.h f8, f19, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f19, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f19, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f19, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f19, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f19, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc93a)
li x25, 0xe9943329ec1c359f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
fsub.h f25, f11, f23, dyn # perform operation
fsub.h f25, f11, f23, rdn # perform operation
fsub.h f25, f11, f23, rmm # perform operation
fsub.h f25, f11, f23, rne # perform operation
fsub.h f25, f11, f23, rtz # perform operation
fsub.h f25, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x0)
li x12, 0x41fc20bf378b6344 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
fsub.h f12, f30, f21, dyn # perform operation
fsub.h f12, f30, f21, rdn # perform operation
fsub.h f12, f30, f21, rmm # perform operation
fsub.h f12, f30, f21, rne # perform operation
fsub.h f12, f30, f21, rtz # perform operation
fsub.h f12, f30, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f30, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f30, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f30, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f30, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8000)
li x9, 0x1ab919aa8f155313 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
fsub.h f9, f23, f3, dyn # perform operation
fsub.h f9, f23, f3, rdn # perform operation
fsub.h f9, f23, f3, rmm # perform operation
fsub.h f9, f23, f3, rne # perform operation
fsub.h f9, f23, f3, rtz # perform operation
fsub.h f9, f23, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f23, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f23, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f23, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f23, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3c00)
li x31, 0xfecbbb5c8cbaca25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fsub.h f31, f25, f16, dyn # perform operation
fsub.h f31, f25, f16, rdn # perform operation
fsub.h f31, f25, f16, rmm # perform operation
fsub.h f31, f25, f16, rne # perform operation
fsub.h f31, f25, f16, rtz # perform operation
fsub.h f31, f25, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f25, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f25, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f25, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f25, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f25, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbc00)
li x30, 0xeeb45a62b7732b66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f27, 0(x2) # load 0x0000bc00 from memory into f27
fsub.h f30, f29, f27, dyn # perform operation
fsub.h f30, f29, f27, rdn # perform operation
fsub.h f30, f29, f27, rmm # perform operation
fsub.h f30, f29, f27, rne # perform operation
fsub.h f30, f29, f27, rtz # perform operation
fsub.h f30, f29, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f29, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f29, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f29, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f29, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f29, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3e00)
li x18, 0xe5612d02aea80fee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f3, 0(x2) # load 0x00003e00 from memory into f3
fsub.h f18, f29, f3, dyn # perform operation
fsub.h f18, f29, f3, rdn # perform operation
fsub.h f18, f29, f3, rmm # perform operation
fsub.h f18, f29, f3, rne # perform operation
fsub.h f18, f29, f3, rtz # perform operation
fsub.h f18, f29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f29, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f29, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f29, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f29, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f29, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbe00)
li x11, 0x4ceb14dae3216071 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
fsub.h f11, f15, f9, dyn # perform operation
fsub.h f11, f15, f9, rdn # perform operation
fsub.h f11, f15, f9, rmm # perform operation
fsub.h f11, f15, f9, rne # perform operation
fsub.h f11, f15, f9, rtz # perform operation
fsub.h f11, f15, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f15, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f15, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f15, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f15, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f15, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x4000)
li x25, 0x891e49911824f38e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
fsub.h f25, f29, f18, dyn # perform operation
fsub.h f25, f29, f18, rdn # perform operation
fsub.h f25, f29, f18, rmm # perform operation
fsub.h f25, f29, f18, rne # perform operation
fsub.h f25, f29, f18, rtz # perform operation
fsub.h f25, f29, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f29, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f29, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f29, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f29, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f29, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc000)
li x27, 0x3b83882e93125bae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f8, 0(x2) # load 0x0000c000 from memory into f8
fsub.h f27, f9, f8, dyn # perform operation
fsub.h f27, f9, f8, rdn # perform operation
fsub.h f27, f9, f8, rmm # perform operation
fsub.h f27, f9, f8, rne # perform operation
fsub.h f27, f9, f8, rtz # perform operation
fsub.h f27, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f9, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x400)
li x19, 0x33064dc857732a53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fsub.h f19, f18, f15, dyn # perform operation
fsub.h f19, f18, f15, rdn # perform operation
fsub.h f19, f18, f15, rmm # perform operation
fsub.h f19, f18, f15, rne # perform operation
fsub.h f19, f18, f15, rtz # perform operation
fsub.h f19, f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f18, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8400)
li x24, 0x62d0d1f1a21124f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
fsub.h f24, f18, f8, dyn # perform operation
fsub.h f24, f18, f8, rdn # perform operation
fsub.h f24, f18, f8, rmm # perform operation
fsub.h f24, f18, f8, rne # perform operation
fsub.h f24, f18, f8, rtz # perform operation
fsub.h f24, f18, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f18, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f18, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f18, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f18, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f18, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7bff)
li x12, 0x72f813665e9a6ac6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
fsub.h f12, f9, f21, dyn # perform operation
fsub.h f12, f9, f21, rdn # perform operation
fsub.h f12, f9, f21, rmm # perform operation
fsub.h f12, f9, f21, rne # perform operation
fsub.h f12, f9, f21, rtz # perform operation
fsub.h f12, f9, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f9, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f9, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f9, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f9, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f9, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfbff)
li x10, 0xa0253ec07f326b7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
fsub.h f10, f1, f19, dyn # perform operation
fsub.h f10, f1, f19, rdn # perform operation
fsub.h f10, f1, f19, rmm # perform operation
fsub.h f10, f1, f19, rne # perform operation
fsub.h f10, f1, f19, rtz # perform operation
fsub.h f10, f1, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f1, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f1, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f1, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f1, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f1, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3ff)
li x14, 0x30719117833594b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
fsub.h f14, f30, f10, dyn # perform operation
fsub.h f14, f30, f10, rdn # perform operation
fsub.h f14, f30, f10, rmm # perform operation
fsub.h f14, f30, f10, rne # perform operation
fsub.h f14, f30, f10, rtz # perform operation
fsub.h f14, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x83ff)
li x14, 0x709a85ce57b9442b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
fsub.h f14, f2, f7, dyn # perform operation
fsub.h f14, f2, f7, rdn # perform operation
fsub.h f14, f2, f7, rmm # perform operation
fsub.h f14, f2, f7, rne # perform operation
fsub.h f14, f2, f7, rtz # perform operation
fsub.h f14, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f2, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x200)
li x17, 0xd23728dfe8cc369f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
fsub.h f17, f2, f10, dyn # perform operation
fsub.h f17, f2, f10, rdn # perform operation
fsub.h f17, f2, f10, rmm # perform operation
fsub.h f17, f2, f10, rne # perform operation
fsub.h f17, f2, f10, rtz # perform operation
fsub.h f17, f2, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f2, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f2, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f2, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f2, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f2, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8200)
li x12, 0x1d1c89b9bee79c9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
fsub.h f12, f9, f14, dyn # perform operation
fsub.h f12, f9, f14, rdn # perform operation
fsub.h f12, f9, f14, rmm # perform operation
fsub.h f12, f9, f14, rne # perform operation
fsub.h f12, f9, f14, rtz # perform operation
fsub.h f12, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f9, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x1)
li x31, 0x6bb917f7c6e283ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
fsub.h f31, f15, f11, dyn # perform operation
fsub.h f31, f15, f11, rdn # perform operation
fsub.h f31, f15, f11, rmm # perform operation
fsub.h f31, f15, f11, rne # perform operation
fsub.h f31, f15, f11, rtz # perform operation
fsub.h f31, f15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f15, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f15, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f15, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f15, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f15, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8001)
li x10, 0xd38e6dc22a3daece # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fsub.h f10, f7, f21, dyn # perform operation
fsub.h f10, f7, f21, rdn # perform operation
fsub.h f10, f7, f21, rmm # perform operation
fsub.h f10, f7, f21, rne # perform operation
fsub.h f10, f7, f21, rtz # perform operation
fsub.h f10, f7, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f7, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f7, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f7, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f7, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c00)
li x7, 0x873af761de708141 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
fsub.h f7, f21, f24, dyn # perform operation
fsub.h f7, f21, f24, rdn # perform operation
fsub.h f7, f21, f24, rmm # perform operation
fsub.h f7, f21, f24, rne # perform operation
fsub.h f7, f21, f24, rtz # perform operation
fsub.h f7, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc00)
li x28, 0x184e664c30d4bd30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
fsub.h f28, f22, f2, dyn # perform operation
fsub.h f28, f22, f2, rdn # perform operation
fsub.h f28, f22, f2, rmm # perform operation
fsub.h f28, f22, f2, rne # perform operation
fsub.h f28, f22, f2, rtz # perform operation
fsub.h f28, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7e00)
li x26, 0x93fef99ec0fe21b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f4, 0(x2) # load 0x00007e00 from memory into f4
fsub.h f26, f27, f4, dyn # perform operation
fsub.h f26, f27, f4, rdn # perform operation
fsub.h f26, f27, f4, rmm # perform operation
fsub.h f26, f27, f4, rne # perform operation
fsub.h f26, f27, f4, rtz # perform operation
fsub.h f26, f27, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f27, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f27, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f27, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f27, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f27, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7fff)
li x22, 0xdd31d6e4bf9a40fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
fsub.h f22, f1, f15, dyn # perform operation
fsub.h f22, f1, f15, rdn # perform operation
fsub.h f22, f1, f15, rmm # perform operation
fsub.h f22, f1, f15, rne # perform operation
fsub.h f22, f1, f15, rtz # perform operation
fsub.h f22, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f1, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c01)
li x2, 0xd0ecb92e8b213736 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
fsub.h f2, f18, f9, dyn # perform operation
fsub.h f2, f18, f9, rdn # perform operation
fsub.h f2, f18, f9, rmm # perform operation
fsub.h f2, f18, f9, rne # perform operation
fsub.h f2, f18, f9, rtz # perform operation
fsub.h f2, f18, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f18, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f18, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f18, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f18, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f18, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7dff)
li x29, 0xa65535e36c99939f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fsub.h f29, f8, f7, dyn # perform operation
fsub.h f29, f8, f7, rdn # perform operation
fsub.h f29, f8, f7, rmm # perform operation
fsub.h f29, f8, f7, rne # perform operation
fsub.h f29, f8, f7, rtz # perform operation
fsub.h f29, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f29, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f29, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f29, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f29, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f29, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x58b4)
li x5, 0xc6304236298a6ba6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
fsub.h f5, f2, f19, dyn # perform operation
fsub.h f5, f2, f19, rdn # perform operation
fsub.h f5, f2, f19, rmm # perform operation
fsub.h f5, f2, f19, rne # perform operation
fsub.h f5, f2, f19, rtz # perform operation
fsub.h f5, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f2, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc93a)
li x6, 0x4b9982e84bbc2bf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fsub.h f6, f27, f9, dyn # perform operation
fsub.h f6, f27, f9, rdn # perform operation
fsub.h f6, f27, f9, rmm # perform operation
fsub.h f6, f27, f9, rne # perform operation
fsub.h f6, f27, f9, rtz # perform operation
fsub.h f6, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f27, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x0)
li x3, 0xe79fb1b25f5ef1a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
fsub.h f3, f12, f19, dyn # perform operation
fsub.h f3, f12, f19, rdn # perform operation
fsub.h f3, f12, f19, rmm # perform operation
fsub.h f3, f12, f19, rne # perform operation
fsub.h f3, f12, f19, rtz # perform operation
fsub.h f3, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8000)
li x1, 0xa2141ba4f9866a32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
fsub.h f1, f13, f3, dyn # perform operation
fsub.h f1, f13, f3, rdn # perform operation
fsub.h f1, f13, f3, rmm # perform operation
fsub.h f1, f13, f3, rne # perform operation
fsub.h f1, f13, f3, rtz # perform operation
fsub.h f1, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f13, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3c00)
li x11, 0xd783d44c31e0e80d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
fsub.h f11, f3, f8, dyn # perform operation
fsub.h f11, f3, f8, rdn # perform operation
fsub.h f11, f3, f8, rmm # perform operation
fsub.h f11, f3, f8, rne # perform operation
fsub.h f11, f3, f8, rtz # perform operation
fsub.h f11, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbc00)
li x14, 0x77116df26046c972 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
fsub.h f14, f22, f17, dyn # perform operation
fsub.h f14, f22, f17, rdn # perform operation
fsub.h f14, f22, f17, rmm # perform operation
fsub.h f14, f22, f17, rne # perform operation
fsub.h f14, f22, f17, rtz # perform operation
fsub.h f14, f22, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f14, f22, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f14, f22, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f14, f22, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f14, f22, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f14, f22, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3e00)
li x16, 0x925443951cfbd1b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fsub.h f16, f22, f10, dyn # perform operation
fsub.h f16, f22, f10, rdn # perform operation
fsub.h f16, f22, f10, rmm # perform operation
fsub.h f16, f22, f10, rne # perform operation
fsub.h f16, f22, f10, rtz # perform operation
fsub.h f16, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f22, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbe00)
li x7, 0x7faef8eb5f89ab77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
fsub.h f7, f17, f10, dyn # perform operation
fsub.h f7, f17, f10, rdn # perform operation
fsub.h f7, f17, f10, rmm # perform operation
fsub.h f7, f17, f10, rne # perform operation
fsub.h f7, f17, f10, rtz # perform operation
fsub.h f7, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x4000)
li x12, 0x440348e4c47c9965 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
fsub.h f12, f30, f28, dyn # perform operation
fsub.h f12, f30, f28, rdn # perform operation
fsub.h f12, f30, f28, rmm # perform operation
fsub.h f12, f30, f28, rne # perform operation
fsub.h f12, f30, f28, rtz # perform operation
fsub.h f12, f30, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f30, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f30, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f30, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f30, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f30, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc000)
li x2, 0x713613074cc00097 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
fsub.h f2, f5, f18, dyn # perform operation
fsub.h f2, f5, f18, rdn # perform operation
fsub.h f2, f5, f18, rmm # perform operation
fsub.h f2, f5, f18, rne # perform operation
fsub.h f2, f5, f18, rtz # perform operation
fsub.h f2, f5, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f5, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f5, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f5, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f5, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f5, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x400)
li x5, 0x9ad335caa430206a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
fsub.h f5, f3, f23, dyn # perform operation
fsub.h f5, f3, f23, rdn # perform operation
fsub.h f5, f3, f23, rmm # perform operation
fsub.h f5, f3, f23, rne # perform operation
fsub.h f5, f3, f23, rtz # perform operation
fsub.h f5, f3, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f5, f3, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f5, f3, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f5, f3, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f5, f3, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f5, f3, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8400)
li x10, 0x207313982beeb2d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
fsub.h f10, f5, f15, dyn # perform operation
fsub.h f10, f5, f15, rdn # perform operation
fsub.h f10, f5, f15, rmm # perform operation
fsub.h f10, f5, f15, rne # perform operation
fsub.h f10, f5, f15, rtz # perform operation
fsub.h f10, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7bff)
li x28, 0x1d4c9daf42c8540a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f25, 0(x2) # load 0x00007bff from memory into f25
fsub.h f28, f17, f25, dyn # perform operation
fsub.h f28, f17, f25, rdn # perform operation
fsub.h f28, f17, f25, rmm # perform operation
fsub.h f28, f17, f25, rne # perform operation
fsub.h f28, f17, f25, rtz # perform operation
fsub.h f28, f17, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f17, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f17, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f17, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f17, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f17, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfbff)
li x2, 0x65d055ca1240da06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
fsub.h f2, f7, f19, dyn # perform operation
fsub.h f2, f7, f19, rdn # perform operation
fsub.h f2, f7, f19, rmm # perform operation
fsub.h f2, f7, f19, rne # perform operation
fsub.h f2, f7, f19, rtz # perform operation
fsub.h f2, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f7, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3ff)
li x12, 0xdde57fc6a433da1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f2, 0(x2) # load 0x000003ff from memory into f2
fsub.h f12, f28, f2, dyn # perform operation
fsub.h f12, f28, f2, rdn # perform operation
fsub.h f12, f28, f2, rmm # perform operation
fsub.h f12, f28, f2, rne # perform operation
fsub.h f12, f28, f2, rtz # perform operation
fsub.h f12, f28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f28, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f28, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f28, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f28, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f28, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x83ff)
li x24, 0x8fe650cd4e946fc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
fsub.h f24, f27, f15, dyn # perform operation
fsub.h f24, f27, f15, rdn # perform operation
fsub.h f24, f27, f15, rmm # perform operation
fsub.h f24, f27, f15, rne # perform operation
fsub.h f24, f27, f15, rtz # perform operation
fsub.h f24, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f27, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x200)
li x21, 0x86210d50b1a28bb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
fsub.h f21, f16, f19, dyn # perform operation
fsub.h f21, f16, f19, rdn # perform operation
fsub.h f21, f16, f19, rmm # perform operation
fsub.h f21, f16, f19, rne # perform operation
fsub.h f21, f16, f19, rtz # perform operation
fsub.h f21, f16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f16, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f16, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f16, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f16, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f16, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8200)
li x7, 0x0905a7a13ae03b96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
fsub.h f7, f31, f27, dyn # perform operation
fsub.h f7, f31, f27, rdn # perform operation
fsub.h f7, f31, f27, rmm # perform operation
fsub.h f7, f31, f27, rne # perform operation
fsub.h f7, f31, f27, rtz # perform operation
fsub.h f7, f31, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f31, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f31, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f31, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f31, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x1)
li x19, 0xa018b71ed829b314 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f4, 0(x2) # load 0x00000001 from memory into f4
fsub.h f19, f30, f4, dyn # perform operation
fsub.h f19, f30, f4, rdn # perform operation
fsub.h f19, f30, f4, rmm # perform operation
fsub.h f19, f30, f4, rne # perform operation
fsub.h f19, f30, f4, rtz # perform operation
fsub.h f19, f30, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f30, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f30, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f30, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f30, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f30, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8001)
li x20, 0xa81a9944a9e8655c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f25, 0(x2) # load 0x00008001 from memory into f25
fsub.h f20, f26, f25, dyn # perform operation
fsub.h f20, f26, f25, rdn # perform operation
fsub.h f20, f26, f25, rmm # perform operation
fsub.h f20, f26, f25, rne # perform operation
fsub.h f20, f26, f25, rtz # perform operation
fsub.h f20, f26, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f26, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f26, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f26, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f26, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f26, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c00)
li x1, 0x7dba3bbec4cd6733 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
fsub.h f1, f30, f7, dyn # perform operation
fsub.h f1, f30, f7, rdn # perform operation
fsub.h f1, f30, f7, rmm # perform operation
fsub.h f1, f30, f7, rne # perform operation
fsub.h f1, f30, f7, rtz # perform operation
fsub.h f1, f30, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f30, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f30, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f30, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f30, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc00)
li x11, 0x688a493f3160b052 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
fsub.h f11, f7, f2, dyn # perform operation
fsub.h f11, f7, f2, rdn # perform operation
fsub.h f11, f7, f2, rmm # perform operation
fsub.h f11, f7, f2, rne # perform operation
fsub.h f11, f7, f2, rtz # perform operation
fsub.h f11, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7e00)
li x15, 0x4f5e6a5d7548f3d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f4, 0(x2) # load 0x00007e00 from memory into f4
fsub.h f15, f9, f4, dyn # perform operation
fsub.h f15, f9, f4, rdn # perform operation
fsub.h f15, f9, f4, rmm # perform operation
fsub.h f15, f9, f4, rne # perform operation
fsub.h f15, f9, f4, rtz # perform operation
fsub.h f15, f9, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f9, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f9, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f9, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f9, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f9, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7fff)
li x30, 0x7fc5e8be3791c1fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
fsub.h f30, f11, f9, dyn # perform operation
fsub.h f30, f11, f9, rdn # perform operation
fsub.h f30, f11, f9, rmm # perform operation
fsub.h f30, f11, f9, rne # perform operation
fsub.h f30, f11, f9, rtz # perform operation
fsub.h f30, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c01)
li x15, 0x55be9cc5700e1aed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
fsub.h f15, f10, f29, dyn # perform operation
fsub.h f15, f10, f29, rdn # perform operation
fsub.h f15, f10, f29, rmm # perform operation
fsub.h f15, f10, f29, rne # perform operation
fsub.h f15, f10, f29, rtz # perform operation
fsub.h f15, f10, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f10, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f10, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f10, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f10, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f10, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7dff)
li x21, 0xb641c527819a694c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
fsub.h f21, f22, f29, dyn # perform operation
fsub.h f21, f22, f29, rdn # perform operation
fsub.h f21, f22, f29, rmm # perform operation
fsub.h f21, f22, f29, rne # perform operation
fsub.h f21, f22, f29, rtz # perform operation
fsub.h f21, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f22, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x58b4)
li x15, 0xe73c6cd59109998d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fsub.h f15, f12, f10, dyn # perform operation
fsub.h f15, f12, f10, rdn # perform operation
fsub.h f15, f12, f10, rmm # perform operation
fsub.h f15, f12, f10, rne # perform operation
fsub.h f15, f12, f10, rtz # perform operation
fsub.h f15, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc93a)
li x22, 0x799906573b3af46e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fsub.h f22, f3, f21, dyn # perform operation
fsub.h f22, f3, f21, rdn # perform operation
fsub.h f22, f3, f21, rmm # perform operation
fsub.h f22, f3, f21, rne # perform operation
fsub.h f22, f3, f21, rtz # perform operation
fsub.h f22, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x0)
li x19, 0x75e12fde949e3b80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
fsub.h f19, f5, f25, dyn # perform operation
fsub.h f19, f5, f25, rdn # perform operation
fsub.h f19, f5, f25, rmm # perform operation
fsub.h f19, f5, f25, rne # perform operation
fsub.h f19, f5, f25, rtz # perform operation
fsub.h f19, f5, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f5, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f5, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f5, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f5, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8000)
li x26, 0x209abf9a89ee6842 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fsub.h f26, f18, f19, dyn # perform operation
fsub.h f26, f18, f19, rdn # perform operation
fsub.h f26, f18, f19, rmm # perform operation
fsub.h f26, f18, f19, rne # perform operation
fsub.h f26, f18, f19, rtz # perform operation
fsub.h f26, f18, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f18, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f18, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f18, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f18, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f18, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3c00)
li x10, 0x19b494e54cf19194 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
fsub.h f10, f29, f23, dyn # perform operation
fsub.h f10, f29, f23, rdn # perform operation
fsub.h f10, f29, f23, rmm # perform operation
fsub.h f10, f29, f23, rne # perform operation
fsub.h f10, f29, f23, rtz # perform operation
fsub.h f10, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbc00)
li x8, 0xbb9e1887f4a8aa64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
fsub.h f8, f15, f16, dyn # perform operation
fsub.h f8, f15, f16, rdn # perform operation
fsub.h f8, f15, f16, rmm # perform operation
fsub.h f8, f15, f16, rne # perform operation
fsub.h f8, f15, f16, rtz # perform operation
fsub.h f8, f15, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f15, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f15, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f15, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f15, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3e00)
li x3, 0xc139d22f994c9360 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fsub.h f3, f13, f1, dyn # perform operation
fsub.h f3, f13, f1, rdn # perform operation
fsub.h f3, f13, f1, rmm # perform operation
fsub.h f3, f13, f1, rne # perform operation
fsub.h f3, f13, f1, rtz # perform operation
fsub.h f3, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbe00)
li x18, 0x27507ccdf12ad70f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
fsub.h f18, f11, f9, dyn # perform operation
fsub.h f18, f11, f9, rdn # perform operation
fsub.h f18, f11, f9, rmm # perform operation
fsub.h f18, f11, f9, rne # perform operation
fsub.h f18, f11, f9, rtz # perform operation
fsub.h f18, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x4000)
li x13, 0x348feae44bc43948 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
fsub.h f13, f30, f9, dyn # perform operation
fsub.h f13, f30, f9, rdn # perform operation
fsub.h f13, f30, f9, rmm # perform operation
fsub.h f13, f30, f9, rne # perform operation
fsub.h f13, f30, f9, rtz # perform operation
fsub.h f13, f30, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f30, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f30, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f30, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f30, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f30, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc000)
li x21, 0x7c20e675653cd380 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
fsub.h f21, f25, f14, dyn # perform operation
fsub.h f21, f25, f14, rdn # perform operation
fsub.h f21, f25, f14, rmm # perform operation
fsub.h f21, f25, f14, rne # perform operation
fsub.h f21, f25, f14, rtz # perform operation
fsub.h f21, f25, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f25, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f25, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f25, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f25, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f25, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x400)
li x13, 0xf5997211671b0ed4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
fsub.h f13, f22, f7, dyn # perform operation
fsub.h f13, f22, f7, rdn # perform operation
fsub.h f13, f22, f7, rmm # perform operation
fsub.h f13, f22, f7, rne # perform operation
fsub.h f13, f22, f7, rtz # perform operation
fsub.h f13, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8400)
li x22, 0x2f3a981bd29f2d21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
fsub.h f22, f18, f23, dyn # perform operation
fsub.h f22, f18, f23, rdn # perform operation
fsub.h f22, f18, f23, rmm # perform operation
fsub.h f22, f18, f23, rne # perform operation
fsub.h f22, f18, f23, rtz # perform operation
fsub.h f22, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7bff)
li x3, 0x3c4380fdf17d0077 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f4, 0(x2) # load 0x00007dff from memory into f4
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
fsub.h f3, f4, f24, dyn # perform operation
fsub.h f3, f4, f24, rdn # perform operation
fsub.h f3, f4, f24, rmm # perform operation
fsub.h f3, f4, f24, rne # perform operation
fsub.h f3, f4, f24, rtz # perform operation
fsub.h f3, f4, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f4, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f4, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f4, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f4, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfbff)
li x27, 0xd0b1587f5f384c64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
fsub.h f27, f13, f12, dyn # perform operation
fsub.h f27, f13, f12, rdn # perform operation
fsub.h f27, f13, f12, rmm # perform operation
fsub.h f27, f13, f12, rne # perform operation
fsub.h f27, f13, f12, rtz # perform operation
fsub.h f27, f13, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f27, f13, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f27, f13, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f27, f13, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f27, f13, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f27, f13, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3ff)
li x31, 0x767b1f1f3ddf9c54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
fsub.h f31, f6, f3, dyn # perform operation
fsub.h f31, f6, f3, rdn # perform operation
fsub.h f31, f6, f3, rmm # perform operation
fsub.h f31, f6, f3, rne # perform operation
fsub.h f31, f6, f3, rtz # perform operation
fsub.h f31, f6, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f6, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f6, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f6, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f6, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f6, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x83ff)
li x10, 0x43d8ac38eb3a0528 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
fsub.h f10, f20, f11, dyn # perform operation
fsub.h f10, f20, f11, rdn # perform operation
fsub.h f10, f20, f11, rmm # perform operation
fsub.h f10, f20, f11, rne # perform operation
fsub.h f10, f20, f11, rtz # perform operation
fsub.h f10, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f20, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x200)
li x10, 0xa7ae8cdba5e27d90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
fsub.h f10, f30, f22, dyn # perform operation
fsub.h f10, f30, f22, rdn # perform operation
fsub.h f10, f30, f22, rmm # perform operation
fsub.h f10, f30, f22, rne # perform operation
fsub.h f10, f30, f22, rtz # perform operation
fsub.h f10, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f10, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f10, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f10, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f10, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f10, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8200)
li x13, 0x9933637cc0874b37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
fsub.h f13, f8, f7, dyn # perform operation
fsub.h f13, f8, f7, rdn # perform operation
fsub.h f13, f8, f7, rmm # perform operation
fsub.h f13, f8, f7, rne # perform operation
fsub.h f13, f8, f7, rtz # perform operation
fsub.h f13, f8, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f8, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f8, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f8, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f8, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x1)
li x21, 0x2923bee27335c00e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
fsub.h f21, f11, f5, dyn # perform operation
fsub.h f21, f11, f5, rdn # perform operation
fsub.h f21, f11, f5, rmm # perform operation
fsub.h f21, f11, f5, rne # perform operation
fsub.h f21, f11, f5, rtz # perform operation
fsub.h f21, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8001)
li x18, 0x53b6470cd076ad19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
fsub.h f18, f30, f22, dyn # perform operation
fsub.h f18, f30, f22, rdn # perform operation
fsub.h f18, f30, f22, rmm # perform operation
fsub.h f18, f30, f22, rne # perform operation
fsub.h f18, f30, f22, rtz # perform operation
fsub.h f18, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c00)
li x15, 0xbecdeb202551d59e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
fsub.h f15, f23, f28, dyn # perform operation
fsub.h f15, f23, f28, rdn # perform operation
fsub.h f15, f23, f28, rmm # perform operation
fsub.h f15, f23, f28, rne # perform operation
fsub.h f15, f23, f28, rtz # perform operation
fsub.h f15, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc00)
li x23, 0xcf2eab3e9ed4cf76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
fsub.h f23, f22, f31, dyn # perform operation
fsub.h f23, f22, f31, rdn # perform operation
fsub.h f23, f22, f31, rmm # perform operation
fsub.h f23, f22, f31, rne # perform operation
fsub.h f23, f22, f31, rtz # perform operation
fsub.h f23, f22, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f22, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f22, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f22, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f22, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f22, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7e00)
li x6, 0x5bbbb168edd80870 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f25, 0(x2) # load 0x00007dff from memory into f25
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
fsub.h f6, f25, f26, dyn # perform operation
fsub.h f6, f25, f26, rdn # perform operation
fsub.h f6, f25, f26, rmm # perform operation
fsub.h f6, f25, f26, rne # perform operation
fsub.h f6, f25, f26, rtz # perform operation
fsub.h f6, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7fff)
li x26, 0x09200d3316db7614 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fsub.h f26, f3, f8, dyn # perform operation
fsub.h f26, f3, f8, rdn # perform operation
fsub.h f26, f3, f8, rmm # perform operation
fsub.h f26, f3, f8, rne # perform operation
fsub.h f26, f3, f8, rtz # perform operation
fsub.h f26, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c01)
li x21, 0x35d43df4a86445cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
fsub.h f21, f17, f30, dyn # perform operation
fsub.h f21, f17, f30, rdn # perform operation
fsub.h f21, f17, f30, rmm # perform operation
fsub.h f21, f17, f30, rne # perform operation
fsub.h f21, f17, f30, rtz # perform operation
fsub.h f21, f17, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f17, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f17, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f17, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f17, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f17, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7dff)
li x23, 0x0d63911edb522928 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
fsub.h f23, f14, f22, dyn # perform operation
fsub.h f23, f14, f22, rdn # perform operation
fsub.h f23, f14, f22, rmm # perform operation
fsub.h f23, f14, f22, rne # perform operation
fsub.h f23, f14, f22, rtz # perform operation
fsub.h f23, f14, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f14, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f14, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f14, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f14, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f14, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x58b4)
li x18, 0x9399731ffaa81ae5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
fsub.h f18, f20, f17, dyn # perform operation
fsub.h f18, f20, f17, rdn # perform operation
fsub.h f18, f20, f17, rmm # perform operation
fsub.h f18, f20, f17, rne # perform operation
fsub.h f18, f20, f17, rtz # perform operation
fsub.h f18, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f20, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc93a)
li x30, 0xffcfd16f57d2cf3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
fsub.h f30, f15, f25, dyn # perform operation
fsub.h f30, f15, f25, rdn # perform operation
fsub.h f30, f15, f25, rmm # perform operation
fsub.h f30, f15, f25, rne # perform operation
fsub.h f30, f15, f25, rtz # perform operation
fsub.h f30, f15, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f15, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f15, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f15, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f15, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f15, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x0)
li x25, 0xb3a43036a1f1693c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
fsub.h f25, f3, f7, dyn # perform operation
fsub.h f25, f3, f7, rdn # perform operation
fsub.h f25, f3, f7, rmm # perform operation
fsub.h f25, f3, f7, rne # perform operation
fsub.h f25, f3, f7, rtz # perform operation
fsub.h f25, f3, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f3, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f3, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f3, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f3, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8000)
li x2, 0xe4872327c90b12f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fsub.h f2, f21, f7, dyn # perform operation
fsub.h f2, f21, f7, rdn # perform operation
fsub.h f2, f21, f7, rmm # perform operation
fsub.h f2, f21, f7, rne # perform operation
fsub.h f2, f21, f7, rtz # perform operation
fsub.h f2, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f2, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f2, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f2, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f2, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f2, f21, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3c00)
li x9, 0x2e1908ce5af5ef83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
fsub.h f9, f3, f11, dyn # perform operation
fsub.h f9, f3, f11, rdn # perform operation
fsub.h f9, f3, f11, rmm # perform operation
fsub.h f9, f3, f11, rne # perform operation
fsub.h f9, f3, f11, rtz # perform operation
fsub.h f9, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbc00)
li x21, 0x6609c17b6577f9a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
fsub.h f21, f30, f10, dyn # perform operation
fsub.h f21, f30, f10, rdn # perform operation
fsub.h f21, f30, f10, rmm # perform operation
fsub.h f21, f30, f10, rne # perform operation
fsub.h f21, f30, f10, rtz # perform operation
fsub.h f21, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3e00)
li x4, 0xd2c409b5d5a3e3cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
fsub.h f4, f13, f31, dyn # perform operation
fsub.h f4, f13, f31, rdn # perform operation
fsub.h f4, f13, f31, rmm # perform operation
fsub.h f4, f13, f31, rne # perform operation
fsub.h f4, f13, f31, rtz # perform operation
fsub.h f4, f13, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f13, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f13, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f13, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f13, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f13, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbe00)
li x15, 0xb950d81c427a0b79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
fsub.h f15, f25, f1, dyn # perform operation
fsub.h f15, f25, f1, rdn # perform operation
fsub.h f15, f25, f1, rmm # perform operation
fsub.h f15, f25, f1, rne # perform operation
fsub.h f15, f25, f1, rtz # perform operation
fsub.h f15, f25, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f25, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f25, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f25, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f25, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f25, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x4000)
li x28, 0x2e814b91719edc73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fsub.h f28, f19, f23, dyn # perform operation
fsub.h f28, f19, f23, rdn # perform operation
fsub.h f28, f19, f23, rmm # perform operation
fsub.h f28, f19, f23, rne # perform operation
fsub.h f28, f19, f23, rtz # perform operation
fsub.h f28, f19, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f28, f19, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f28, f19, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f28, f19, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f28, f19, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f28, f19, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc000)
li x19, 0x5a733a2d01593f7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
fsub.h f19, f22, f14, dyn # perform operation
fsub.h f19, f22, f14, rdn # perform operation
fsub.h f19, f22, f14, rmm # perform operation
fsub.h f19, f22, f14, rne # perform operation
fsub.h f19, f22, f14, rtz # perform operation
fsub.h f19, f22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f22, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f22, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f22, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f22, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f22, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x400)
li x30, 0x26b382d59f8fe025 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
fsub.h f30, f29, f14, dyn # perform operation
fsub.h f30, f29, f14, rdn # perform operation
fsub.h f30, f29, f14, rmm # perform operation
fsub.h f30, f29, f14, rne # perform operation
fsub.h f30, f29, f14, rtz # perform operation
fsub.h f30, f29, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f29, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f29, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f29, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f29, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f29, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8400)
li x30, 0xff9fd22e3f7a6217 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
fsub.h f30, f18, f25, dyn # perform operation
fsub.h f30, f18, f25, rdn # perform operation
fsub.h f30, f18, f25, rmm # perform operation
fsub.h f30, f18, f25, rne # perform operation
fsub.h f30, f18, f25, rtz # perform operation
fsub.h f30, f18, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f18, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f18, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f18, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f18, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f18, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7bff)
li x20, 0x150f09205c152a76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
fsub.h f20, f5, f14, dyn # perform operation
fsub.h f20, f5, f14, rdn # perform operation
fsub.h f20, f5, f14, rmm # perform operation
fsub.h f20, f5, f14, rne # perform operation
fsub.h f20, f5, f14, rtz # perform operation
fsub.h f20, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f20, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f20, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f20, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f20, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f20, f5, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfbff)
li x18, 0xea1d9095a77c62a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
fsub.h f18, f22, f2, dyn # perform operation
fsub.h f18, f22, f2, rdn # perform operation
fsub.h f18, f22, f2, rmm # perform operation
fsub.h f18, f22, f2, rne # perform operation
fsub.h f18, f22, f2, rtz # perform operation
fsub.h f18, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3ff)
li x9, 0xc979221311cb2813 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
fsub.h f9, f3, f20, dyn # perform operation
fsub.h f9, f3, f20, rdn # perform operation
fsub.h f9, f3, f20, rmm # perform operation
fsub.h f9, f3, f20, rne # perform operation
fsub.h f9, f3, f20, rtz # perform operation
fsub.h f9, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f3, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x83ff)
li x11, 0xb625542b75ba9eec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
fsub.h f11, f30, f13, dyn # perform operation
fsub.h f11, f30, f13, rdn # perform operation
fsub.h f11, f30, f13, rmm # perform operation
fsub.h f11, f30, f13, rne # perform operation
fsub.h f11, f30, f13, rtz # perform operation
fsub.h f11, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x200)
li x26, 0x08c69f20d3f7d69d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fsub.h f26, f19, f25, dyn # perform operation
fsub.h f26, f19, f25, rdn # perform operation
fsub.h f26, f19, f25, rmm # perform operation
fsub.h f26, f19, f25, rne # perform operation
fsub.h f26, f19, f25, rtz # perform operation
fsub.h f26, f19, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f19, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f19, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f19, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f19, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f19, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8200)
li x12, 0x5013826cba0e743f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
fsub.h f12, f21, f8, dyn # perform operation
fsub.h f12, f21, f8, rdn # perform operation
fsub.h f12, f21, f8, rmm # perform operation
fsub.h f12, f21, f8, rne # perform operation
fsub.h f12, f21, f8, rtz # perform operation
fsub.h f12, f21, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f21, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f21, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f21, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f21, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f21, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x1)
li x12, 0x611749f671829a09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
fsub.h f12, f10, f7, dyn # perform operation
fsub.h f12, f10, f7, rdn # perform operation
fsub.h f12, f10, f7, rmm # perform operation
fsub.h f12, f10, f7, rne # perform operation
fsub.h f12, f10, f7, rtz # perform operation
fsub.h f12, f10, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f12, f10, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f12, f10, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f12, f10, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f12, f10, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f12, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8001)
li x26, 0xdc9170af2ddc1bc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f6, 0(x2) # load 0x000058b4 from memory into f6
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
fsub.h f26, f6, f28, dyn # perform operation
fsub.h f26, f6, f28, rdn # perform operation
fsub.h f26, f6, f28, rmm # perform operation
fsub.h f26, f6, f28, rne # perform operation
fsub.h f26, f6, f28, rtz # perform operation
fsub.h f26, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f26, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f26, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f26, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f26, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f26, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c00)
li x22, 0x3777cdcacc4a0d4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
fsub.h f22, f17, f10, dyn # perform operation
fsub.h f22, f17, f10, rdn # perform operation
fsub.h f22, f17, f10, rmm # perform operation
fsub.h f22, f17, f10, rne # perform operation
fsub.h f22, f17, f10, rtz # perform operation
fsub.h f22, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc00)
li x25, 0x7c41a498f2f4035b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fsub.h f25, f20, f17, dyn # perform operation
fsub.h f25, f20, f17, rdn # perform operation
fsub.h f25, f20, f17, rmm # perform operation
fsub.h f25, f20, f17, rne # perform operation
fsub.h f25, f20, f17, rtz # perform operation
fsub.h f25, f20, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f20, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f20, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f20, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f20, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f20, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7e00)
li x6, 0xc911873316de8ca8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fsub.h f6, f14, f3, dyn # perform operation
fsub.h f6, f14, f3, rdn # perform operation
fsub.h f6, f14, f3, rmm # perform operation
fsub.h f6, f14, f3, rne # perform operation
fsub.h f6, f14, f3, rtz # perform operation
fsub.h f6, f14, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f14, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f14, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f14, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f14, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7fff)
li x7, 0x88197d5d37fca18e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
fsub.h f7, f30, f6, dyn # perform operation
fsub.h f7, f30, f6, rdn # perform operation
fsub.h f7, f30, f6, rmm # perform operation
fsub.h f7, f30, f6, rne # perform operation
fsub.h f7, f30, f6, rtz # perform operation
fsub.h f7, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c01)
li x16, 0x80e40169bf33ffef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
fsub.h f16, f14, f4, dyn # perform operation
fsub.h f16, f14, f4, rdn # perform operation
fsub.h f16, f14, f4, rmm # perform operation
fsub.h f16, f14, f4, rne # perform operation
fsub.h f16, f14, f4, rtz # perform operation
fsub.h f16, f14, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f16, f14, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f16, f14, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f16, f14, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f16, f14, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f16, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7dff)
li x3, 0xa10e4b2fa5d8eb72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f24, 0(x2) # load 0x000058b4 from memory into f24
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
fsub.h f3, f24, f13, dyn # perform operation
fsub.h f3, f24, f13, rdn # perform operation
fsub.h f3, f24, f13, rmm # perform operation
fsub.h f3, f24, f13, rne # perform operation
fsub.h f3, f24, f13, rtz # perform operation
fsub.h f3, f24, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f24, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f24, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f24, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f24, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f24, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x58b4)
li x22, 0xdcfea0189f1fc9b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
fsub.h f22, f12, f9, dyn # perform operation
fsub.h f22, f12, f9, rdn # perform operation
fsub.h f22, f12, f9, rmm # perform operation
fsub.h f22, f12, f9, rne # perform operation
fsub.h f22, f12, f9, rtz # perform operation
fsub.h f22, f12, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f12, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f12, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f12, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f12, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f12, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc93a)
li x1, 0xd69a65536209069a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
fsub.h f1, f3, f17, dyn # perform operation
fsub.h f1, f3, f17, rdn # perform operation
fsub.h f1, f3, f17, rmm # perform operation
fsub.h f1, f3, f17, rne # perform operation
fsub.h f1, f3, f17, rtz # perform operation
fsub.h f1, f3, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f3, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f3, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f3, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f3, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x0)
li x22, 0x1a38fc65ec1c1a6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
fsub.h f22, f26, f27, dyn # perform operation
fsub.h f22, f26, f27, rdn # perform operation
fsub.h f22, f26, f27, rmm # perform operation
fsub.h f22, f26, f27, rne # perform operation
fsub.h f22, f26, f27, rtz # perform operation
fsub.h f22, f26, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f26, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f26, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f26, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f26, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f26, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8000)
li x11, 0xc42940b892b8ce03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
fsub.h f11, f17, f20, dyn # perform operation
fsub.h f11, f17, f20, rdn # perform operation
fsub.h f11, f17, f20, rmm # perform operation
fsub.h f11, f17, f20, rne # perform operation
fsub.h f11, f17, f20, rtz # perform operation
fsub.h f11, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f11, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f11, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f11, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f11, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f11, f17, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3c00)
li x22, 0xe0b8b15fcd29328b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
fsub.h f22, f16, f11, dyn # perform operation
fsub.h f22, f16, f11, rdn # perform operation
fsub.h f22, f16, f11, rmm # perform operation
fsub.h f22, f16, f11, rne # perform operation
fsub.h f22, f16, f11, rtz # perform operation
fsub.h f22, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f22, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f22, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f22, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f22, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f22, f16, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbc00)
li x13, 0x0a5dbe007f4cf55d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
fsub.h f13, f20, f30, dyn # perform operation
fsub.h f13, f20, f30, rdn # perform operation
fsub.h f13, f20, f30, rmm # perform operation
fsub.h f13, f20, f30, rne # perform operation
fsub.h f13, f20, f30, rtz # perform operation
fsub.h f13, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f20, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3e00)
li x18, 0x16bd0d97c11349d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
fsub.h f18, f1, f27, dyn # perform operation
fsub.h f18, f1, f27, rdn # perform operation
fsub.h f18, f1, f27, rmm # perform operation
fsub.h f18, f1, f27, rne # perform operation
fsub.h f18, f1, f27, rtz # perform operation
fsub.h f18, f1, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f18, f1, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f18, f1, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f18, f1, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f18, f1, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f18, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbe00)
li x3, 0xee2bd19a781235b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fsub.h f3, f12, f31, dyn # perform operation
fsub.h f3, f12, f31, rdn # perform operation
fsub.h f3, f12, f31, rmm # perform operation
fsub.h f3, f12, f31, rne # perform operation
fsub.h f3, f12, f31, rtz # perform operation
fsub.h f3, f12, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f3, f12, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f3, f12, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f3, f12, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f3, f12, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f3, f12, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x4000)
li x21, 0x0814be594bf28751 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
fsub.h f21, f16, f10, dyn # perform operation
fsub.h f21, f16, f10, rdn # perform operation
fsub.h f21, f16, f10, rmm # perform operation
fsub.h f21, f16, f10, rne # perform operation
fsub.h f21, f16, f10, rtz # perform operation
fsub.h f21, f16, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f16, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f16, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f16, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f16, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f16, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc000)
li x19, 0x909372ac342ab29d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
fsub.h f19, f30, f18, dyn # perform operation
fsub.h f19, f30, f18, rdn # perform operation
fsub.h f19, f30, f18, rmm # perform operation
fsub.h f19, f30, f18, rne # perform operation
fsub.h f19, f30, f18, rtz # perform operation
fsub.h f19, f30, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f30, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f30, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f30, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f30, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f30, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x400)
li x21, 0x2d20df9350bbc27c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
fsub.h f21, f13, f23, dyn # perform operation
fsub.h f21, f13, f23, rdn # perform operation
fsub.h f21, f13, f23, rmm # perform operation
fsub.h f21, f13, f23, rne # perform operation
fsub.h f21, f13, f23, rtz # perform operation
fsub.h f21, f13, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f21, f13, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f21, f13, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f21, f13, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f21, f13, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f21, f13, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8400)
li x6, 0x50a42c965d78ee85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
fsub.h f6, f1, f21, dyn # perform operation
fsub.h f6, f1, f21, rdn # perform operation
fsub.h f6, f1, f21, rmm # perform operation
fsub.h f6, f1, f21, rne # perform operation
fsub.h f6, f1, f21, rtz # perform operation
fsub.h f6, f1, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f6, f1, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f6, f1, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f6, f1, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f6, f1, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f6, f1, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7bff)
li x24, 0x96e19add0f19659a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fsub.h f24, f12, f6, dyn # perform operation
fsub.h f24, f12, f6, rdn # perform operation
fsub.h f24, f12, f6, rmm # perform operation
fsub.h f24, f12, f6, rne # perform operation
fsub.h f24, f12, f6, rtz # perform operation
fsub.h f24, f12, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f24, f12, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f24, f12, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f24, f12, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f24, f12, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f24, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfbff)
li x7, 0x7b62ec40a22eadc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
fsub.h f7, f20, f14, dyn # perform operation
fsub.h f7, f20, f14, rdn # perform operation
fsub.h f7, f20, f14, rmm # perform operation
fsub.h f7, f20, f14, rne # perform operation
fsub.h f7, f20, f14, rtz # perform operation
fsub.h f7, f20, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f7, f20, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f7, f20, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f7, f20, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f7, f20, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f7, f20, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3ff)
li x23, 0x3c6f16ada26f0730 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
fsub.h f23, f24, f7, dyn # perform operation
fsub.h f23, f24, f7, rdn # perform operation
fsub.h f23, f24, f7, rmm # perform operation
fsub.h f23, f24, f7, rne # perform operation
fsub.h f23, f24, f7, rtz # perform operation
fsub.h f23, f24, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f23, f24, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f23, f24, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f23, f24, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f23, f24, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f23, f24, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x83ff)
li x15, 0xafdab0f1dc24f42e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fsub.h f15, f27, f17, dyn # perform operation
fsub.h f15, f27, f17, rdn # perform operation
fsub.h f15, f27, f17, rmm # perform operation
fsub.h f15, f27, f17, rne # perform operation
fsub.h f15, f27, f17, rtz # perform operation
fsub.h f15, f27, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f15, f27, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f15, f27, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f15, f27, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f15, f27, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f15, f27, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x200)
li x19, 0xf77b0bf6b4a9f5e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fsub.h f19, f12, f24, dyn # perform operation
fsub.h f19, f12, f24, rdn # perform operation
fsub.h f19, f12, f24, rmm # perform operation
fsub.h f19, f12, f24, rne # perform operation
fsub.h f19, f12, f24, rtz # perform operation
fsub.h f19, f12, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f19, f12, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f19, f12, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f19, f12, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f19, f12, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f19, f12, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8200)
li x4, 0x270da2084b199c06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
fsub.h f4, f19, f24, dyn # perform operation
fsub.h f4, f19, f24, rdn # perform operation
fsub.h f4, f19, f24, rmm # perform operation
fsub.h f4, f19, f24, rne # perform operation
fsub.h f4, f19, f24, rtz # perform operation
fsub.h f4, f19, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f4, f19, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f4, f19, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f4, f19, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f4, f19, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f4, f19, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x1)
li x30, 0x861dc38d5a78bdb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
fsub.h f30, f9, f13, dyn # perform operation
fsub.h f30, f9, f13, rdn # perform operation
fsub.h f30, f9, f13, rmm # perform operation
fsub.h f30, f9, f13, rne # perform operation
fsub.h f30, f9, f13, rtz # perform operation
fsub.h f30, f9, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f9, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f9, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f9, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f9, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f9, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8001)
li x9, 0x1fa16688731b1b92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
fsub.h f9, f27, f5, dyn # perform operation
fsub.h f9, f27, f5, rdn # perform operation
fsub.h f9, f27, f5, rmm # perform operation
fsub.h f9, f27, f5, rne # perform operation
fsub.h f9, f27, f5, rtz # perform operation
fsub.h f9, f27, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f9, f27, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f9, f27, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f9, f27, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f9, f27, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f9, f27, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c00)
li x8, 0x5c130bab6651a4c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fsub.h f8, f26, f14, dyn # perform operation
fsub.h f8, f26, f14, rdn # perform operation
fsub.h f8, f26, f14, rmm # perform operation
fsub.h f8, f26, f14, rne # perform operation
fsub.h f8, f26, f14, rtz # perform operation
fsub.h f8, f26, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f26, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f26, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f26, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f26, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f26, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc00)
li x17, 0x6576f15bdc1bb433 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f27, 0(x2) # load 0x0000c93a from memory into f27
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
fsub.h f17, f27, f21, dyn # perform operation
fsub.h f17, f27, f21, rdn # perform operation
fsub.h f17, f27, f21, rmm # perform operation
fsub.h f17, f27, f21, rne # perform operation
fsub.h f17, f27, f21, rtz # perform operation
fsub.h f17, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f17, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f17, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f17, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f17, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f17, f27, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7e00)
li x8, 0x58e6eecea7b24ed1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
fsub.h f8, f31, f28, dyn # perform operation
fsub.h f8, f31, f28, rdn # perform operation
fsub.h f8, f31, f28, rmm # perform operation
fsub.h f8, f31, f28, rne # perform operation
fsub.h f8, f31, f28, rtz # perform operation
fsub.h f8, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f8, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f8, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f8, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f8, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f8, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7fff)
li x30, 0x236fdbf811d39b59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
fsub.h f30, f31, f9, dyn # perform operation
fsub.h f30, f31, f9, rdn # perform operation
fsub.h f30, f31, f9, rmm # perform operation
fsub.h f30, f31, f9, rne # perform operation
fsub.h f30, f31, f9, rtz # perform operation
fsub.h f30, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f30, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f30, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f30, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f30, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f30, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c01)
li x25, 0x2a585ec4160ba410 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
fsub.h f25, f28, f1, dyn # perform operation
fsub.h f25, f28, f1, rdn # perform operation
fsub.h f25, f28, f1, rmm # perform operation
fsub.h f25, f28, f1, rne # perform operation
fsub.h f25, f28, f1, rtz # perform operation
fsub.h f25, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f25, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f25, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f25, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f25, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f25, f28, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7dff)
li x31, 0x6ccf02b27d055779 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
fsub.h f31, f1, f29, dyn # perform operation
fsub.h f31, f1, f29, rdn # perform operation
fsub.h f31, f1, f29, rmm # perform operation
fsub.h f31, f1, f29, rne # perform operation
fsub.h f31, f1, f29, rtz # perform operation
fsub.h f31, f1, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f31, f1, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f31, f1, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f31, f1, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f31, f1, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f31, f1, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x58b4)
li x13, 0x195a5913aa6b8e49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
fsub.h f13, f17, f4, dyn # perform operation
fsub.h f13, f17, f4, rdn # perform operation
fsub.h f13, f17, f4, rmm # perform operation
fsub.h f13, f17, f4, rne # perform operation
fsub.h f13, f17, f4, rtz # perform operation
fsub.h f13, f17, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f13, f17, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f13, f17, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f13, f17, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f13, f17, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f13, f17, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc93a)
li x1, 0xb0210b8a39bb0164 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f14, 0(x2) # load 0x0000c93a from memory into f14
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
fsub.h f1, f14, f29, dyn # perform operation
fsub.h f1, f14, f29, rdn # perform operation
fsub.h f1, f14, f29, rmm # perform operation
fsub.h f1, f14, f29, rne # perform operation
fsub.h f1, f14, f29, rtz # perform operation
fsub.h f1, f14, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsub.h f1, f14, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsub.h f1, f14, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsub.h f1, f14, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsub.h f1, f14, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsub.h f1, f14, f29 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x6b124874d6e7dcea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbd5eb7d15e86fc1 # load x3 with value 0xdbd5eb7d15e86fc1
sw x3, 0(x2) # store 0xdbd5eb7d15e86fc1 in memory
flh f21, 0(x2) # load 0xdbd5eb7d15e86fc1 from memory into f21
li x3, 0x59cdae348080fa37 # load x3 with value 0x59cdae348080fa37
sw x3, 0(x2) # store 0x59cdae348080fa37 in memory
flh f26, 0(x2) # load 0x59cdae348080fa37 from memory into f26
fsub.h f0, f21, f26 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xf7d34e71858b2ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x54fed1913e285532 # load x3 with value 0x54fed1913e285532
sw x3, 0(x2) # store 0x54fed1913e285532 in memory
flh f30, 0(x2) # load 0x54fed1913e285532 from memory into f30
li x3, 0xdde8fff46ca18b6c # load x3 with value 0xdde8fff46ca18b6c
sw x3, 0(x2) # store 0xdde8fff46ca18b6c in memory
flh f4, 0(x2) # load 0xdde8fff46ca18b6c from memory into f4
fsub.h f1, f30, f4 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xe0f0f8f24c84ea7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9ad9f7470bc45d5d # load x3 with value 0x9ad9f7470bc45d5d
sw x3, 0(x2) # store 0x9ad9f7470bc45d5d in memory
flh f29, 0(x2) # load 0x9ad9f7470bc45d5d from memory into f29
li x3, 0x15fdef16b786372e # load x3 with value 0x15fdef16b786372e
sw x3, 0(x2) # store 0x15fdef16b786372e in memory
flh f8, 0(x2) # load 0x15fdef16b786372e from memory into f8
fsub.h f2, f29, f8 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x192673e626a17602 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e78f89e6b80e03f # load x3 with value 0x9e78f89e6b80e03f
sw x3, 0(x2) # store 0x9e78f89e6b80e03f in memory
flh f21, 0(x2) # load 0x9e78f89e6b80e03f from memory into f21
li x3, 0x7ce72863fba30b68 # load x3 with value 0x7ce72863fba30b68
sw x3, 0(x2) # store 0x7ce72863fba30b68 in memory
flh f8, 0(x2) # load 0x7ce72863fba30b68 from memory into f8
fsub.h f3, f21, f8 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x6163e5fe1ced32eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeb408f0336123a73 # load x3 with value 0xeb408f0336123a73
sw x3, 0(x2) # store 0xeb408f0336123a73 in memory
flh f27, 0(x2) # load 0xeb408f0336123a73 from memory into f27
li x3, 0x2dc158506b9e03cd # load x3 with value 0x2dc158506b9e03cd
sw x3, 0(x2) # store 0x2dc158506b9e03cd in memory
flh f19, 0(x2) # load 0x2dc158506b9e03cd from memory into f19
fsub.h f4, f27, f19 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x8fd3f91c3fc7e081 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5487afc6d2844eb6 # load x3 with value 0x5487afc6d2844eb6
sw x3, 0(x2) # store 0x5487afc6d2844eb6 in memory
flh f22, 0(x2) # load 0x5487afc6d2844eb6 from memory into f22
li x3, 0x5327fe9386c0d737 # load x3 with value 0x5327fe9386c0d737
sw x3, 0(x2) # store 0x5327fe9386c0d737 in memory
flh f11, 0(x2) # load 0x5327fe9386c0d737 from memory into f11
fsub.h f5, f22, f11 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x005f4af49d3d70e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe1359ed16c30dc03 # load x3 with value 0xe1359ed16c30dc03
sw x3, 0(x2) # store 0xe1359ed16c30dc03 in memory
flh f4, 0(x2) # load 0xe1359ed16c30dc03 from memory into f4
li x3, 0xbdbb9c5b7ee10e3d # load x3 with value 0xbdbb9c5b7ee10e3d
sw x3, 0(x2) # store 0xbdbb9c5b7ee10e3d in memory
flh f14, 0(x2) # load 0xbdbb9c5b7ee10e3d from memory into f14
fsub.h f6, f4, f14 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x850106d049aff30c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe57c9ee7081ad214 # load x3 with value 0xe57c9ee7081ad214
sw x3, 0(x2) # store 0xe57c9ee7081ad214 in memory
flh f21, 0(x2) # load 0xe57c9ee7081ad214 from memory into f21
li x3, 0x9dc54c03fa260dda # load x3 with value 0x9dc54c03fa260dda
sw x3, 0(x2) # store 0x9dc54c03fa260dda in memory
flh f16, 0(x2) # load 0x9dc54c03fa260dda from memory into f16
fsub.h f7, f21, f16 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xebb899b6904b1d01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeb79458b5206e689 # load x3 with value 0xeb79458b5206e689
sw x3, 0(x2) # store 0xeb79458b5206e689 in memory
flh f25, 0(x2) # load 0xeb79458b5206e689 from memory into f25
li x3, 0x77ecddb2bcd3a371 # load x3 with value 0x77ecddb2bcd3a371
sw x3, 0(x2) # store 0x77ecddb2bcd3a371 in memory
flh f10, 0(x2) # load 0x77ecddb2bcd3a371 from memory into f10
fsub.h f8, f25, f10 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x1f925b21e93bcc28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf8c27ca137ef559 # load x3 with value 0xf8c27ca137ef559
sw x3, 0(x2) # store 0xf8c27ca137ef559 in memory
flh f1, 0(x2) # load 0xf8c27ca137ef559 from memory into f1
li x3, 0x7de019b8b2b76afa # load x3 with value 0x7de019b8b2b76afa
sw x3, 0(x2) # store 0x7de019b8b2b76afa in memory
flh f29, 0(x2) # load 0x7de019b8b2b76afa from memory into f29
fsub.h f9, f1, f29 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xc96916c64bb946ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x411dda5f55c82f63 # load x3 with value 0x411dda5f55c82f63
sw x3, 0(x2) # store 0x411dda5f55c82f63 in memory
flh f19, 0(x2) # load 0x411dda5f55c82f63 from memory into f19
li x3, 0xb7763f40a4067448 # load x3 with value 0xb7763f40a4067448
sw x3, 0(x2) # store 0xb7763f40a4067448 in memory
flh f13, 0(x2) # load 0xb7763f40a4067448 from memory into f13
fsub.h f10, f19, f13 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xeacc5cb068727a8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc663040dca1fc673 # load x3 with value 0xc663040dca1fc673
sw x3, 0(x2) # store 0xc663040dca1fc673 in memory
flh f1, 0(x2) # load 0xc663040dca1fc673 from memory into f1
li x3, 0xd6076f891c14e66e # load x3 with value 0xd6076f891c14e66e
sw x3, 0(x2) # store 0xd6076f891c14e66e in memory
flh f7, 0(x2) # load 0xd6076f891c14e66e from memory into f7
fsub.h f11, f1, f7 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x66112dfa94d9faf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd71f15909981799 # load x3 with value 0xd71f15909981799
sw x3, 0(x2) # store 0xd71f15909981799 in memory
flh f12, 0(x2) # load 0xd71f15909981799 from memory into f12
li x3, 0xa1635cd09beaadaa # load x3 with value 0xa1635cd09beaadaa
sw x3, 0(x2) # store 0xa1635cd09beaadaa in memory
flh f29, 0(x2) # load 0xa1635cd09beaadaa from memory into f29
fsub.h f12, f12, f29 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xbc1ee2befe818f60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc6320c0826cc49 # load x3 with value 0x3fc6320c0826cc49
sw x3, 0(x2) # store 0x3fc6320c0826cc49 in memory
flh f14, 0(x2) # load 0x3fc6320c0826cc49 from memory into f14
li x3, 0x88ef76597742b948 # load x3 with value 0x88ef76597742b948
sw x3, 0(x2) # store 0x88ef76597742b948 in memory
flh f26, 0(x2) # load 0x88ef76597742b948 from memory into f26
fsub.h f13, f14, f26 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x629af5ca3f9827ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14a3e972da63df20 # load x3 with value 0x14a3e972da63df20
sw x3, 0(x2) # store 0x14a3e972da63df20 in memory
flh f19, 0(x2) # load 0x14a3e972da63df20 from memory into f19
li x3, 0xe8b2d729c2dfd336 # load x3 with value 0xe8b2d729c2dfd336
sw x3, 0(x2) # store 0xe8b2d729c2dfd336 in memory
flh f12, 0(x2) # load 0xe8b2d729c2dfd336 from memory into f12
fsub.h f14, f19, f12 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xe420006a6b971f60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe591875c8e2a76a5 # load x3 with value 0xe591875c8e2a76a5
sw x3, 0(x2) # store 0xe591875c8e2a76a5 in memory
flh f17, 0(x2) # load 0xe591875c8e2a76a5 from memory into f17
li x3, 0x2a003d55b3176f7c # load x3 with value 0x2a003d55b3176f7c
sw x3, 0(x2) # store 0x2a003d55b3176f7c in memory
flh f23, 0(x2) # load 0x2a003d55b3176f7c from memory into f23
fsub.h f15, f17, f23 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x33a6d3bb849162ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4dfbc99d89d8dae # load x3 with value 0xb4dfbc99d89d8dae
sw x3, 0(x2) # store 0xb4dfbc99d89d8dae in memory
flh f19, 0(x2) # load 0xb4dfbc99d89d8dae from memory into f19
li x3, 0x800198a921306058 # load x3 with value 0x800198a921306058
sw x3, 0(x2) # store 0x800198a921306058 in memory
flh f4, 0(x2) # load 0x800198a921306058 from memory into f4
fsub.h f16, f19, f4 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x94a4db80f32673c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaeddefc1465170a9 # load x3 with value 0xaeddefc1465170a9
sw x3, 0(x2) # store 0xaeddefc1465170a9 in memory
flh f16, 0(x2) # load 0xaeddefc1465170a9 from memory into f16
li x3, 0x4f3ea5ef7d07cfd4 # load x3 with value 0x4f3ea5ef7d07cfd4
sw x3, 0(x2) # store 0x4f3ea5ef7d07cfd4 in memory
flh f6, 0(x2) # load 0x4f3ea5ef7d07cfd4 from memory into f6
fsub.h f17, f16, f6 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x09ff3c58860c37f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf7d90767fc3ecde # load x3 with value 0xdf7d90767fc3ecde
sw x3, 0(x2) # store 0xdf7d90767fc3ecde in memory
flh f20, 0(x2) # load 0xdf7d90767fc3ecde from memory into f20
li x3, 0xcc5c523fbd2752de # load x3 with value 0xcc5c523fbd2752de
sw x3, 0(x2) # store 0xcc5c523fbd2752de in memory
flh f23, 0(x2) # load 0xcc5c523fbd2752de from memory into f23
fsub.h f18, f20, f23 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x14bdd2e1f5a303b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7daba776ad15820c # load x3 with value 0x7daba776ad15820c
sw x3, 0(x2) # store 0x7daba776ad15820c in memory
flh f28, 0(x2) # load 0x7daba776ad15820c from memory into f28
li x3, 0x6aa54c61a8cf0602 # load x3 with value 0x6aa54c61a8cf0602
sw x3, 0(x2) # store 0x6aa54c61a8cf0602 in memory
flh f29, 0(x2) # load 0x6aa54c61a8cf0602 from memory into f29
fsub.h f19, f28, f29 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x1c72f8a2951f13b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa90683c91d122b26 # load x3 with value 0xa90683c91d122b26
sw x3, 0(x2) # store 0xa90683c91d122b26 in memory
flh f15, 0(x2) # load 0xa90683c91d122b26 from memory into f15
li x3, 0xd75b767a3f44f22a # load x3 with value 0xd75b767a3f44f22a
sw x3, 0(x2) # store 0xd75b767a3f44f22a in memory
flh f12, 0(x2) # load 0xd75b767a3f44f22a from memory into f12
fsub.h f20, f15, f12 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x59b400df1ae7700e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x73e4a12b48983332 # load x3 with value 0x73e4a12b48983332
sw x3, 0(x2) # store 0x73e4a12b48983332 in memory
flh f24, 0(x2) # load 0x73e4a12b48983332 from memory into f24
li x3, 0x5743268b0f6286fb # load x3 with value 0x5743268b0f6286fb
sw x3, 0(x2) # store 0x5743268b0f6286fb in memory
flh f11, 0(x2) # load 0x5743268b0f6286fb from memory into f11
fsub.h f21, f24, f11 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x2eaf44325ab2f72a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f628616fca07d34 # load x3 with value 0x1f628616fca07d34
sw x3, 0(x2) # store 0x1f628616fca07d34 in memory
flh f14, 0(x2) # load 0x1f628616fca07d34 from memory into f14
li x3, 0x32b5f9a515632407 # load x3 with value 0x32b5f9a515632407
sw x3, 0(x2) # store 0x32b5f9a515632407 in memory
flh f18, 0(x2) # load 0x32b5f9a515632407 from memory into f18
fsub.h f22, f14, f18 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x985b2af5740d2804 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5cc650acd1ec04b6 # load x3 with value 0x5cc650acd1ec04b6
sw x3, 0(x2) # store 0x5cc650acd1ec04b6 in memory
flh f9, 0(x2) # load 0x5cc650acd1ec04b6 from memory into f9
li x3, 0x910e1e0daa1aa6bb # load x3 with value 0x910e1e0daa1aa6bb
sw x3, 0(x2) # store 0x910e1e0daa1aa6bb in memory
flh f27, 0(x2) # load 0x910e1e0daa1aa6bb from memory into f27
fsub.h f23, f9, f27 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xf3eb5a313c3c2e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9c4cfd80a4d888b0 # load x3 with value 0x9c4cfd80a4d888b0
sw x3, 0(x2) # store 0x9c4cfd80a4d888b0 in memory
flh f27, 0(x2) # load 0x9c4cfd80a4d888b0 from memory into f27
li x3, 0x59cbebbc004da569 # load x3 with value 0x59cbebbc004da569
sw x3, 0(x2) # store 0x59cbebbc004da569 in memory
flh f24, 0(x2) # load 0x59cbebbc004da569 from memory into f24
fsub.h f24, f27, f24 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xbac4b1fabac5f5de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9ef9737134f528a0 # load x3 with value 0x9ef9737134f528a0
sw x3, 0(x2) # store 0x9ef9737134f528a0 in memory
flh f27, 0(x2) # load 0x9ef9737134f528a0 from memory into f27
li x3, 0xaa3d36bdf82dad96 # load x3 with value 0xaa3d36bdf82dad96
sw x3, 0(x2) # store 0xaa3d36bdf82dad96 in memory
flh f29, 0(x2) # load 0xaa3d36bdf82dad96 from memory into f29
fsub.h f25, f27, f29 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x49809aefa8f3853a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa227916eaff5601 # load x3 with value 0xfa227916eaff5601
sw x3, 0(x2) # store 0xfa227916eaff5601 in memory
flh f15, 0(x2) # load 0xfa227916eaff5601 from memory into f15
li x3, 0xd3bbe9a2fa430536 # load x3 with value 0xd3bbe9a2fa430536
sw x3, 0(x2) # store 0xd3bbe9a2fa430536 in memory
flh f31, 0(x2) # load 0xd3bbe9a2fa430536 from memory into f31
fsub.h f26, f15, f31 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xfc9895b8e523cb59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2518ca0147e314c3 # load x3 with value 0x2518ca0147e314c3
sw x3, 0(x2) # store 0x2518ca0147e314c3 in memory
flh f30, 0(x2) # load 0x2518ca0147e314c3 from memory into f30
li x3, 0x11b334e004d473a1 # load x3 with value 0x11b334e004d473a1
sw x3, 0(x2) # store 0x11b334e004d473a1 in memory
flh f12, 0(x2) # load 0x11b334e004d473a1 from memory into f12
fsub.h f27, f30, f12 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xffa83275dbf92740 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb33292c738f88bf4 # load x3 with value 0xb33292c738f88bf4
sw x3, 0(x2) # store 0xb33292c738f88bf4 in memory
flh f4, 0(x2) # load 0xb33292c738f88bf4 from memory into f4
li x3, 0xb54eb48272b4e97d # load x3 with value 0xb54eb48272b4e97d
sw x3, 0(x2) # store 0xb54eb48272b4e97d in memory
flh f31, 0(x2) # load 0xb54eb48272b4e97d from memory into f31
fsub.h f28, f4, f31 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x5f26e01b76ce0518 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x262596457813cb5c # load x3 with value 0x262596457813cb5c
sw x3, 0(x2) # store 0x262596457813cb5c in memory
flh f12, 0(x2) # load 0x262596457813cb5c from memory into f12
li x3, 0x615070e7314ffc80 # load x3 with value 0x615070e7314ffc80
sw x3, 0(x2) # store 0x615070e7314ffc80 in memory
flh f30, 0(x2) # load 0x615070e7314ffc80 from memory into f30
fsub.h f29, f12, f30 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xbdda5ae867a9709e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfbbd0331dea2d057 # load x3 with value 0xfbbd0331dea2d057
sw x3, 0(x2) # store 0xfbbd0331dea2d057 in memory
flh f21, 0(x2) # load 0xfbbd0331dea2d057 from memory into f21
li x3, 0x408c93726bfde9c5 # load x3 with value 0x408c93726bfde9c5
sw x3, 0(x2) # store 0x408c93726bfde9c5 in memory
flh f13, 0(x2) # load 0x408c93726bfde9c5 from memory into f13
fsub.h f30, f21, f13 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x55f0a689caaa190a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x686691cf978a77d9 # load x3 with value 0x686691cf978a77d9
sw x3, 0(x2) # store 0x686691cf978a77d9 in memory
flh f13, 0(x2) # load 0x686691cf978a77d9 from memory into f13
li x3, 0xfcf7269743868ac5 # load x3 with value 0xfcf7269743868ac5
sw x3, 0(x2) # store 0xfcf7269743868ac5 in memory
flh f9, 0(x2) # load 0xfcf7269743868ac5 from memory into f9
fsub.h f31, f13, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x4, 0x6a0bb524edd15462 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb8aef8724f1fd222 # load x3 with value 0xb8aef8724f1fd222
sw x3, 0(x2) # store 0xb8aef8724f1fd222 in memory
flh f0, 0(x2) # load 0xb8aef8724f1fd222 from memory into f0
li x3, 0xd53e22cb8824b36f # load x3 with value 0xd53e22cb8824b36f
sw x3, 0(x2) # store 0xd53e22cb8824b36f in memory
flh f19, 0(x2) # load 0xd53e22cb8824b36f from memory into f19
fsub.h f4, f0, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x28, 0x8731579e16c9b903 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x844bd9ec1966dcc0 # load x3 with value 0x844bd9ec1966dcc0
sw x3, 0(x2) # store 0x844bd9ec1966dcc0 in memory
flh f1, 0(x2) # load 0x844bd9ec1966dcc0 from memory into f1
li x3, 0x447492db44eb87a8 # load x3 with value 0x447492db44eb87a8
sw x3, 0(x2) # store 0x447492db44eb87a8 in memory
flh f13, 0(x2) # load 0x447492db44eb87a8 from memory into f13
fsub.h f28, f1, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x3, 0xf5f616a1e20163ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d32e09577f7a02d # load x3 with value 0x9d32e09577f7a02d
sw x3, 0(x2) # store 0x9d32e09577f7a02d in memory
flh f2, 0(x2) # load 0x9d32e09577f7a02d from memory into f2
li x3, 0x509669ff2c2d373d # load x3 with value 0x509669ff2c2d373d
sw x3, 0(x2) # store 0x509669ff2c2d373d in memory
flh f24, 0(x2) # load 0x509669ff2c2d373d from memory into f24
fsub.h f3, f2, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x29, 0x65df18c5a57874f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6035792b415d0c8 # load x3 with value 0xd6035792b415d0c8
sw x3, 0(x2) # store 0xd6035792b415d0c8 in memory
flh f3, 0(x2) # load 0xd6035792b415d0c8 from memory into f3
li x3, 0x6f2cd9622ceebeef # load x3 with value 0x6f2cd9622ceebeef
sw x3, 0(x2) # store 0x6f2cd9622ceebeef in memory
flh f25, 0(x2) # load 0x6f2cd9622ceebeef from memory into f25
fsub.h f29, f3, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x6, 0x33c4e98cf85fe3f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x10b002f30bd65139 # load x3 with value 0x10b002f30bd65139
sw x3, 0(x2) # store 0x10b002f30bd65139 in memory
flh f4, 0(x2) # load 0x10b002f30bd65139 from memory into f4
li x3, 0xd2e82224f7a446a8 # load x3 with value 0xd2e82224f7a446a8
sw x3, 0(x2) # store 0xd2e82224f7a446a8 in memory
flh f11, 0(x2) # load 0xd2e82224f7a446a8 from memory into f11
fsub.h f6, f4, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x30, 0x6c0a20dd64255e89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb417e0cbd9e47174 # load x3 with value 0xb417e0cbd9e47174
sw x3, 0(x2) # store 0xb417e0cbd9e47174 in memory
flh f5, 0(x2) # load 0xb417e0cbd9e47174 from memory into f5
li x3, 0xfcb0faa5319a1561 # load x3 with value 0xfcb0faa5319a1561
sw x3, 0(x2) # store 0xfcb0faa5319a1561 in memory
flh f20, 0(x2) # load 0xfcb0faa5319a1561 from memory into f20
fsub.h f30, f5, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x29, 0x14e15be33993e685 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f1a4c24567023d3 # load x3 with value 0x2f1a4c24567023d3
sw x3, 0(x2) # store 0x2f1a4c24567023d3 in memory
flh f6, 0(x2) # load 0x2f1a4c24567023d3 from memory into f6
li x3, 0xdc57a52c202789b2 # load x3 with value 0xdc57a52c202789b2
sw x3, 0(x2) # store 0xdc57a52c202789b2 in memory
flh f18, 0(x2) # load 0xdc57a52c202789b2 from memory into f18
fsub.h f29, f6, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x25, 0x67024da3cd27aaef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f5c65a7d49592a0 # load x3 with value 0x2f5c65a7d49592a0
sw x3, 0(x2) # store 0x2f5c65a7d49592a0 in memory
flh f7, 0(x2) # load 0x2f5c65a7d49592a0 from memory into f7
li x3, 0x9d4b31765b0aa06d # load x3 with value 0x9d4b31765b0aa06d
sw x3, 0(x2) # store 0x9d4b31765b0aa06d in memory
flh f20, 0(x2) # load 0x9d4b31765b0aa06d from memory into f20
fsub.h f25, f7, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x27, 0xdaa0ca70f1c86f5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x703d6da214a6fe5e # load x3 with value 0x703d6da214a6fe5e
sw x3, 0(x2) # store 0x703d6da214a6fe5e in memory
flh f8, 0(x2) # load 0x703d6da214a6fe5e from memory into f8
li x3, 0x24a0a9ea42dea42 # load x3 with value 0x24a0a9ea42dea42
sw x3, 0(x2) # store 0x24a0a9ea42dea42 in memory
flh f7, 0(x2) # load 0x24a0a9ea42dea42 from memory into f7
fsub.h f27, f8, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x11, 0xf5840bbe2329da69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x197ea2dba2a86fbe # load x3 with value 0x197ea2dba2a86fbe
sw x3, 0(x2) # store 0x197ea2dba2a86fbe in memory
flh f9, 0(x2) # load 0x197ea2dba2a86fbe from memory into f9
li x3, 0xb2b84bf1756efb37 # load x3 with value 0xb2b84bf1756efb37
sw x3, 0(x2) # store 0xb2b84bf1756efb37 in memory
flh f24, 0(x2) # load 0xb2b84bf1756efb37 from memory into f24
fsub.h f11, f9, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x9, 0x355585986e0fec05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf11e695dcb1a8c9a # load x3 with value 0xf11e695dcb1a8c9a
sw x3, 0(x2) # store 0xf11e695dcb1a8c9a in memory
flh f10, 0(x2) # load 0xf11e695dcb1a8c9a from memory into f10
li x3, 0x5e2de572fd492a52 # load x3 with value 0x5e2de572fd492a52
sw x3, 0(x2) # store 0x5e2de572fd492a52 in memory
flh f18, 0(x2) # load 0x5e2de572fd492a52 from memory into f18
fsub.h f9, f10, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x10, 0x7fdd674442d4cec4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d8691a404698fb # load x3 with value 0x3d8691a404698fb
sw x3, 0(x2) # store 0x3d8691a404698fb in memory
flh f11, 0(x2) # load 0x3d8691a404698fb from memory into f11
li x3, 0x19dda9317daff916 # load x3 with value 0x19dda9317daff916
sw x3, 0(x2) # store 0x19dda9317daff916 in memory
flh f13, 0(x2) # load 0x19dda9317daff916 from memory into f13
fsub.h f10, f11, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x30, 0x08da4126420a8fbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x604f13097ec826f7 # load x3 with value 0x604f13097ec826f7
sw x3, 0(x2) # store 0x604f13097ec826f7 in memory
flh f12, 0(x2) # load 0x604f13097ec826f7 from memory into f12
li x3, 0xd25ab6620d42ab47 # load x3 with value 0xd25ab6620d42ab47
sw x3, 0(x2) # store 0xd25ab6620d42ab47 in memory
flh f20, 0(x2) # load 0xd25ab6620d42ab47 from memory into f20
fsub.h f30, f12, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x28, 0x925a34cb35fbdf4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf02c4f2aec2656b # load x3 with value 0xcf02c4f2aec2656b
sw x3, 0(x2) # store 0xcf02c4f2aec2656b in memory
flh f13, 0(x2) # load 0xcf02c4f2aec2656b from memory into f13
li x3, 0x3426b75784d867cc # load x3 with value 0x3426b75784d867cc
sw x3, 0(x2) # store 0x3426b75784d867cc in memory
flh f24, 0(x2) # load 0x3426b75784d867cc from memory into f24
fsub.h f28, f13, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x10, 0x394f9b69111d3ff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9835c08e3b2b6465 # load x3 with value 0x9835c08e3b2b6465
sw x3, 0(x2) # store 0x9835c08e3b2b6465 in memory
flh f14, 0(x2) # load 0x9835c08e3b2b6465 from memory into f14
li x3, 0xa8f76dc546d772f0 # load x3 with value 0xa8f76dc546d772f0
sw x3, 0(x2) # store 0xa8f76dc546d772f0 in memory
flh f2, 0(x2) # load 0xa8f76dc546d772f0 from memory into f2
fsub.h f10, f14, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x3, 0xe1b7150babd095cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6b4c04df70a5dbc # load x3 with value 0xd6b4c04df70a5dbc
sw x3, 0(x2) # store 0xd6b4c04df70a5dbc in memory
flh f15, 0(x2) # load 0xd6b4c04df70a5dbc from memory into f15
li x3, 0x2264dabd839d59f # load x3 with value 0x2264dabd839d59f
sw x3, 0(x2) # store 0x2264dabd839d59f in memory
flh f25, 0(x2) # load 0x2264dabd839d59f from memory into f25
fsub.h f3, f15, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x17, 0x16e00a3289c73ffd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf88b39c6086b5c7 # load x3 with value 0xaf88b39c6086b5c7
sw x3, 0(x2) # store 0xaf88b39c6086b5c7 in memory
flh f16, 0(x2) # load 0xaf88b39c6086b5c7 from memory into f16
li x3, 0xef0e479d1fc81e3 # load x3 with value 0xef0e479d1fc81e3
sw x3, 0(x2) # store 0xef0e479d1fc81e3 in memory
flh f19, 0(x2) # load 0xef0e479d1fc81e3 from memory into f19
fsub.h f17, f16, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x1, 0x3c233284647f254a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x58bfbe32655a75f4 # load x3 with value 0x58bfbe32655a75f4
sw x3, 0(x2) # store 0x58bfbe32655a75f4 in memory
flh f17, 0(x2) # load 0x58bfbe32655a75f4 from memory into f17
li x3, 0xc9ec54b781f812be # load x3 with value 0xc9ec54b781f812be
sw x3, 0(x2) # store 0xc9ec54b781f812be in memory
flh f12, 0(x2) # load 0xc9ec54b781f812be from memory into f12
fsub.h f1, f17, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x8, 0xe197755a75c0de56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e4c6ddcf236e48 # load x3 with value 0xa6e4c6ddcf236e48
sw x3, 0(x2) # store 0xa6e4c6ddcf236e48 in memory
flh f18, 0(x2) # load 0xa6e4c6ddcf236e48 from memory into f18
li x3, 0xd2e66d41027ffbd # load x3 with value 0xd2e66d41027ffbd
sw x3, 0(x2) # store 0xd2e66d41027ffbd in memory
flh f22, 0(x2) # load 0xd2e66d41027ffbd from memory into f22
fsub.h f8, f18, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x2, 0x6188dd011f095cc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed86a14f0b73be3e # load x3 with value 0xed86a14f0b73be3e
sw x3, 0(x2) # store 0xed86a14f0b73be3e in memory
flh f19, 0(x2) # load 0xed86a14f0b73be3e from memory into f19
li x3, 0x806a1f46e8d65d70 # load x3 with value 0x806a1f46e8d65d70
sw x3, 0(x2) # store 0x806a1f46e8d65d70 in memory
flh f26, 0(x2) # load 0x806a1f46e8d65d70 from memory into f26
fsub.h f2, f19, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x1, 0xf7ffbf7e46ffa280 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9ae544ccb29a7d00 # load x3 with value 0x9ae544ccb29a7d00
sw x3, 0(x2) # store 0x9ae544ccb29a7d00 in memory
flh f20, 0(x2) # load 0x9ae544ccb29a7d00 from memory into f20
li x3, 0xec19cbb3439e22aa # load x3 with value 0xec19cbb3439e22aa
sw x3, 0(x2) # store 0xec19cbb3439e22aa in memory
flh f2, 0(x2) # load 0xec19cbb3439e22aa from memory into f2
fsub.h f1, f20, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x28, 0xa634a5daa0f7f8bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x44d45f9f19380e30 # load x3 with value 0x44d45f9f19380e30
sw x3, 0(x2) # store 0x44d45f9f19380e30 in memory
flh f21, 0(x2) # load 0x44d45f9f19380e30 from memory into f21
li x3, 0x91da89810630f028 # load x3 with value 0x91da89810630f028
sw x3, 0(x2) # store 0x91da89810630f028 in memory
flh f9, 0(x2) # load 0x91da89810630f028 from memory into f9
fsub.h f28, f21, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x10, 0x8e1d2c1d4899f1ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f2f33c8e3f8e026 # load x3 with value 0x3f2f33c8e3f8e026
sw x3, 0(x2) # store 0x3f2f33c8e3f8e026 in memory
flh f22, 0(x2) # load 0x3f2f33c8e3f8e026 from memory into f22
li x3, 0x6e0e2bf7652cb309 # load x3 with value 0x6e0e2bf7652cb309
sw x3, 0(x2) # store 0x6e0e2bf7652cb309 in memory
flh f19, 0(x2) # load 0x6e0e2bf7652cb309 from memory into f19
fsub.h f10, f22, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x8, 0xa960f07b7b6b47ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b3281fb52a5c805 # load x3 with value 0x4b3281fb52a5c805
sw x3, 0(x2) # store 0x4b3281fb52a5c805 in memory
flh f23, 0(x2) # load 0x4b3281fb52a5c805 from memory into f23
li x3, 0xa18303dbd813a2c5 # load x3 with value 0xa18303dbd813a2c5
sw x3, 0(x2) # store 0xa18303dbd813a2c5 in memory
flh f6, 0(x2) # load 0xa18303dbd813a2c5 from memory into f6
fsub.h f8, f23, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x14, 0x14913e6e7ca40cb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5509e2fac3b6018c # load x3 with value 0x5509e2fac3b6018c
sw x3, 0(x2) # store 0x5509e2fac3b6018c in memory
flh f24, 0(x2) # load 0x5509e2fac3b6018c from memory into f24
li x3, 0x19e7858addcb2d41 # load x3 with value 0x19e7858addcb2d41
sw x3, 0(x2) # store 0x19e7858addcb2d41 in memory
flh f29, 0(x2) # load 0x19e7858addcb2d41 from memory into f29
fsub.h f14, f24, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x15, 0xdb063dbea7ca9f26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf8c049fa941567f7 # load x3 with value 0xf8c049fa941567f7
sw x3, 0(x2) # store 0xf8c049fa941567f7 in memory
flh f25, 0(x2) # load 0xf8c049fa941567f7 from memory into f25
li x3, 0x46d7c117b019df50 # load x3 with value 0x46d7c117b019df50
sw x3, 0(x2) # store 0x46d7c117b019df50 in memory
flh f28, 0(x2) # load 0x46d7c117b019df50 from memory into f28
fsub.h f15, f25, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x26, 0x46b2c110a5969e5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe1a199fd170bf7be # load x3 with value 0xe1a199fd170bf7be
sw x3, 0(x2) # store 0xe1a199fd170bf7be in memory
flh f26, 0(x2) # load 0xe1a199fd170bf7be from memory into f26
li x3, 0x228623c903027399 # load x3 with value 0x228623c903027399
sw x3, 0(x2) # store 0x228623c903027399 in memory
flh f18, 0(x2) # load 0x228623c903027399 from memory into f18
fsub.h f26, f26, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x1, 0xb0ada9ccefff8a62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x42a57a56cae55f5a # load x3 with value 0x42a57a56cae55f5a
sw x3, 0(x2) # store 0x42a57a56cae55f5a in memory
flh f27, 0(x2) # load 0x42a57a56cae55f5a from memory into f27
li x3, 0xa7e4c9f397066998 # load x3 with value 0xa7e4c9f397066998
sw x3, 0(x2) # store 0xa7e4c9f397066998 in memory
flh f29, 0(x2) # load 0xa7e4c9f397066998 from memory into f29
fsub.h f1, f27, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x9, 0xeb16e06571aed258 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed0416f8e46cc9e4 # load x3 with value 0xed0416f8e46cc9e4
sw x3, 0(x2) # store 0xed0416f8e46cc9e4 in memory
flh f28, 0(x2) # load 0xed0416f8e46cc9e4 from memory into f28
li x3, 0xaf23e6aa8003418f # load x3 with value 0xaf23e6aa8003418f
sw x3, 0(x2) # store 0xaf23e6aa8003418f in memory
flh f1, 0(x2) # load 0xaf23e6aa8003418f from memory into f1
fsub.h f9, f28, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x22, 0x0d260a221463ac9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd8080df2d474bece # load x3 with value 0xd8080df2d474bece
sw x3, 0(x2) # store 0xd8080df2d474bece in memory
flh f29, 0(x2) # load 0xd8080df2d474bece from memory into f29
li x3, 0xb1532baf2dbb5a2f # load x3 with value 0xb1532baf2dbb5a2f
sw x3, 0(x2) # store 0xb1532baf2dbb5a2f in memory
flh f1, 0(x2) # load 0xb1532baf2dbb5a2f from memory into f1
fsub.h f22, f29, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x12, 0xc96993724ebbc21a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x22c6c366714e0d9c # load x3 with value 0x22c6c366714e0d9c
sw x3, 0(x2) # store 0x22c6c366714e0d9c in memory
flh f30, 0(x2) # load 0x22c6c366714e0d9c from memory into f30
li x3, 0x91405f36bb523b49 # load x3 with value 0x91405f36bb523b49
sw x3, 0(x2) # store 0x91405f36bb523b49 in memory
flh f10, 0(x2) # load 0x91405f36bb523b49 from memory into f10
fsub.h f12, f30, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x20, 0xedcd673e0b6493bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb42bcf1a38de9424 # load x3 with value 0xb42bcf1a38de9424
sw x3, 0(x2) # store 0xb42bcf1a38de9424 in memory
flh f31, 0(x2) # load 0xb42bcf1a38de9424 from memory into f31
li x3, 0xcb83d33de2ad28ca # load x3 with value 0xcb83d33de2ad28ca
sw x3, 0(x2) # store 0xcb83d33de2ad28ca in memory
flh f4, 0(x2) # load 0xcb83d33de2ad28ca from memory into f4
fsub.h f20, f31, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x5, 0xa50924e98b526f00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb882185ca926f67e # load x3 with value 0xb882185ca926f67e
sw x3, 0(x2) # store 0xb882185ca926f67e in memory
flh f20, 0(x2) # load 0xb882185ca926f67e from memory into f20
li x3, 0x572cea4378e6eb3f # load x3 with value 0x572cea4378e6eb3f
sw x3, 0(x2) # store 0x572cea4378e6eb3f in memory
flh f0, 0(x2) # load 0x572cea4378e6eb3f from memory into f0
fsub.h f5, f20, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x30, 0xa8e3179e4e558a51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23953445aa7a22c2 # load x3 with value 0x23953445aa7a22c2
sw x3, 0(x2) # store 0x23953445aa7a22c2 in memory
flh f31, 0(x2) # load 0x23953445aa7a22c2 from memory into f31
li x3, 0xf78364a180959e2 # load x3 with value 0xf78364a180959e2
sw x3, 0(x2) # store 0xf78364a180959e2 in memory
flh f1, 0(x2) # load 0xf78364a180959e2 from memory into f1
fsub.h f30, f31, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x17, 0xda4dbcba41d20f79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb5de2865139b7baf # load x3 with value 0xb5de2865139b7baf
sw x3, 0(x2) # store 0xb5de2865139b7baf in memory
flh f29, 0(x2) # load 0xb5de2865139b7baf from memory into f29
li x3, 0x978139f3ad5db728 # load x3 with value 0x978139f3ad5db728
sw x3, 0(x2) # store 0x978139f3ad5db728 in memory
flh f2, 0(x2) # load 0x978139f3ad5db728 from memory into f2
fsub.h f17, f29, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x21, 0x68737e4467516bec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x77d64d6a1eba8668 # load x3 with value 0x77d64d6a1eba8668
sw x3, 0(x2) # store 0x77d64d6a1eba8668 in memory
flh f5, 0(x2) # load 0x77d64d6a1eba8668 from memory into f5
li x3, 0x4445139216ef3f80 # load x3 with value 0x4445139216ef3f80
sw x3, 0(x2) # store 0x4445139216ef3f80 in memory
flh f3, 0(x2) # load 0x4445139216ef3f80 from memory into f3
fsub.h f21, f5, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x26, 0xd6d01777d449621d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4707387bcc87e696 # load x3 with value 0x4707387bcc87e696
sw x3, 0(x2) # store 0x4707387bcc87e696 in memory
flh f31, 0(x2) # load 0x4707387bcc87e696 from memory into f31
li x3, 0x40ca516e8d8d8f11 # load x3 with value 0x40ca516e8d8d8f11
sw x3, 0(x2) # store 0x40ca516e8d8d8f11 in memory
flh f4, 0(x2) # load 0x40ca516e8d8d8f11 from memory into f4
fsub.h f26, f31, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x4, 0xafe75d57d215109f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ec20b4235fb15f6 # load x3 with value 0x7ec20b4235fb15f6
sw x3, 0(x2) # store 0x7ec20b4235fb15f6 in memory
flh f9, 0(x2) # load 0x7ec20b4235fb15f6 from memory into f9
li x3, 0xd5fa2a316f9349e5 # load x3 with value 0xd5fa2a316f9349e5
sw x3, 0(x2) # store 0xd5fa2a316f9349e5 in memory
flh f5, 0(x2) # load 0xd5fa2a316f9349e5 from memory into f5
fsub.h f4, f9, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x13, 0xcf9e36d614add832 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca76c13720a81389 # load x3 with value 0xca76c13720a81389
sw x3, 0(x2) # store 0xca76c13720a81389 in memory
flh f14, 0(x2) # load 0xca76c13720a81389 from memory into f14
li x3, 0xaaa55a9e67f7353d # load x3 with value 0xaaa55a9e67f7353d
sw x3, 0(x2) # store 0xaaa55a9e67f7353d in memory
flh f6, 0(x2) # load 0xaaa55a9e67f7353d from memory into f6
fsub.h f13, f14, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x15, 0xff1d9baa12042b5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf4886de840cadd48 # load x3 with value 0xf4886de840cadd48
sw x3, 0(x2) # store 0xf4886de840cadd48 in memory
flh f22, 0(x2) # load 0xf4886de840cadd48 from memory into f22
li x3, 0xeaf505b30127df05 # load x3 with value 0xeaf505b30127df05
sw x3, 0(x2) # store 0xeaf505b30127df05 in memory
flh f7, 0(x2) # load 0xeaf505b30127df05 from memory into f7
fsub.h f15, f22, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x24, 0x39d1ae973ee189ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe86530578f1353c2 # load x3 with value 0xe86530578f1353c2
sw x3, 0(x2) # store 0xe86530578f1353c2 in memory
flh f26, 0(x2) # load 0xe86530578f1353c2 from memory into f26
li x3, 0xecd09379315ce607 # load x3 with value 0xecd09379315ce607
sw x3, 0(x2) # store 0xecd09379315ce607 in memory
flh f8, 0(x2) # load 0xecd09379315ce607 from memory into f8
fsub.h f24, f26, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x21, 0xee0815a3787f778d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9fb9708d0e7d9bd6 # load x3 with value 0x9fb9708d0e7d9bd6
sw x3, 0(x2) # store 0x9fb9708d0e7d9bd6 in memory
flh f1, 0(x2) # load 0x9fb9708d0e7d9bd6 from memory into f1
li x3, 0x78ecc5bcdc3860fc # load x3 with value 0x78ecc5bcdc3860fc
sw x3, 0(x2) # store 0x78ecc5bcdc3860fc in memory
flh f9, 0(x2) # load 0x78ecc5bcdc3860fc from memory into f9
fsub.h f21, f1, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x26, 0x6f90a7e6d5bbec6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x938730274d9d3529 # load x3 with value 0x938730274d9d3529
sw x3, 0(x2) # store 0x938730274d9d3529 in memory
flh f2, 0(x2) # load 0x938730274d9d3529 from memory into f2
li x3, 0x52addc20775ed455 # load x3 with value 0x52addc20775ed455
sw x3, 0(x2) # store 0x52addc20775ed455 in memory
flh f10, 0(x2) # load 0x52addc20775ed455 from memory into f10
fsub.h f26, f2, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x2, 0x1126dba7cbc238a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa29e89094277a708 # load x3 with value 0xa29e89094277a708
sw x3, 0(x2) # store 0xa29e89094277a708 in memory
flh f24, 0(x2) # load 0xa29e89094277a708 from memory into f24
li x3, 0x960f787ea9d0a81b # load x3 with value 0x960f787ea9d0a81b
sw x3, 0(x2) # store 0x960f787ea9d0a81b in memory
flh f11, 0(x2) # load 0x960f787ea9d0a81b from memory into f11
fsub.h f2, f24, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x1, 0xf0e310bca832f5c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f5c018158039cf8 # load x3 with value 0x7f5c018158039cf8
sw x3, 0(x2) # store 0x7f5c018158039cf8 in memory
flh f27, 0(x2) # load 0x7f5c018158039cf8 from memory into f27
li x3, 0xd0d4340ee53cb624 # load x3 with value 0xd0d4340ee53cb624
sw x3, 0(x2) # store 0xd0d4340ee53cb624 in memory
flh f12, 0(x2) # load 0xd0d4340ee53cb624 from memory into f12
fsub.h f1, f27, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x26, 0x44cca2e52e6b8dc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe289302b79cef964 # load x3 with value 0xe289302b79cef964
sw x3, 0(x2) # store 0xe289302b79cef964 in memory
flh f29, 0(x2) # load 0xe289302b79cef964 from memory into f29
li x3, 0x2144fa056a1adc26 # load x3 with value 0x2144fa056a1adc26
sw x3, 0(x2) # store 0x2144fa056a1adc26 in memory
flh f13, 0(x2) # load 0x2144fa056a1adc26 from memory into f13
fsub.h f26, f29, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x3, 0xb439c887aa6b1c9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4f703784ea41abb # load x3 with value 0x4f703784ea41abb
sw x3, 0(x2) # store 0x4f703784ea41abb in memory
flh f6, 0(x2) # load 0x4f703784ea41abb from memory into f6
li x3, 0xcb306cd40b949d4f # load x3 with value 0xcb306cd40b949d4f
sw x3, 0(x2) # store 0xcb306cd40b949d4f in memory
flh f14, 0(x2) # load 0xcb306cd40b949d4f from memory into f14
fsub.h f3, f6, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x13, 0x096b32ab41e6738b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc82e1afafcaf1275 # load x3 with value 0xc82e1afafcaf1275
sw x3, 0(x2) # store 0xc82e1afafcaf1275 in memory
flh f23, 0(x2) # load 0xc82e1afafcaf1275 from memory into f23
li x3, 0x9235aacd2c611199 # load x3 with value 0x9235aacd2c611199
sw x3, 0(x2) # store 0x9235aacd2c611199 in memory
flh f15, 0(x2) # load 0x9235aacd2c611199 from memory into f15
fsub.h f13, f23, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x28, 0xa0fc18298cf2c1f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d3dc6b55f0c2d46 # load x3 with value 0x9d3dc6b55f0c2d46
sw x3, 0(x2) # store 0x9d3dc6b55f0c2d46 in memory
flh f4, 0(x2) # load 0x9d3dc6b55f0c2d46 from memory into f4
li x3, 0x1d1dc24782e807fd # load x3 with value 0x1d1dc24782e807fd
sw x3, 0(x2) # store 0x1d1dc24782e807fd in memory
flh f16, 0(x2) # load 0x1d1dc24782e807fd from memory into f16
fsub.h f28, f4, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x2, 0x5c76a5e2abcfd1e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe7b3409506bee18c # load x3 with value 0xe7b3409506bee18c
sw x3, 0(x2) # store 0xe7b3409506bee18c in memory
flh f16, 0(x2) # load 0xe7b3409506bee18c from memory into f16
li x3, 0x324fcd592903400f # load x3 with value 0x324fcd592903400f
sw x3, 0(x2) # store 0x324fcd592903400f in memory
flh f17, 0(x2) # load 0x324fcd592903400f from memory into f17
fsub.h f2, f16, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x14, 0x373b4a86461eabad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8d64b64b4950b2af # load x3 with value 0x8d64b64b4950b2af
sw x3, 0(x2) # store 0x8d64b64b4950b2af in memory
flh f12, 0(x2) # load 0x8d64b64b4950b2af from memory into f12
li x3, 0x3d469ae55b0f9915 # load x3 with value 0x3d469ae55b0f9915
sw x3, 0(x2) # store 0x3d469ae55b0f9915 in memory
flh f18, 0(x2) # load 0x3d469ae55b0f9915 from memory into f18
fsub.h f14, f12, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x4, 0x3017f33de75a2c00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd2fee2b67a343c8 # load x3 with value 0xfd2fee2b67a343c8
sw x3, 0(x2) # store 0xfd2fee2b67a343c8 in memory
flh f30, 0(x2) # load 0xfd2fee2b67a343c8 from memory into f30
li x3, 0xbc9c55d769b2a674 # load x3 with value 0xbc9c55d769b2a674
sw x3, 0(x2) # store 0xbc9c55d769b2a674 in memory
flh f19, 0(x2) # load 0xbc9c55d769b2a674 from memory into f19
fsub.h f4, f30, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x2, 0x205905e3de03097f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x996e1471f80fa6f6 # load x3 with value 0x996e1471f80fa6f6
sw x3, 0(x2) # store 0x996e1471f80fa6f6 in memory
flh f3, 0(x2) # load 0x996e1471f80fa6f6 from memory into f3
li x3, 0x2ef084fe08d21e6c # load x3 with value 0x2ef084fe08d21e6c
sw x3, 0(x2) # store 0x2ef084fe08d21e6c in memory
flh f20, 0(x2) # load 0x2ef084fe08d21e6c from memory into f20
fsub.h f2, f3, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x29, 0xcab0d63f5182c1fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1861a1d79ad78f53 # load x3 with value 0x1861a1d79ad78f53
sw x3, 0(x2) # store 0x1861a1d79ad78f53 in memory
flh f5, 0(x2) # load 0x1861a1d79ad78f53 from memory into f5
li x3, 0x49e07df8486127e1 # load x3 with value 0x49e07df8486127e1
sw x3, 0(x2) # store 0x49e07df8486127e1 in memory
flh f21, 0(x2) # load 0x49e07df8486127e1 from memory into f21
fsub.h f29, f5, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x7, 0x75a73cdf0cb6ab7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x89b638e703166a50 # load x3 with value 0x89b638e703166a50
sw x3, 0(x2) # store 0x89b638e703166a50 in memory
flh f25, 0(x2) # load 0x89b638e703166a50 from memory into f25
li x3, 0x820cf235d6e39953 # load x3 with value 0x820cf235d6e39953
sw x3, 0(x2) # store 0x820cf235d6e39953 in memory
flh f22, 0(x2) # load 0x820cf235d6e39953 from memory into f22
fsub.h f7, f25, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x4, 0xd50df524663a5807 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc840440da9ff97e5 # load x3 with value 0xc840440da9ff97e5
sw x3, 0(x2) # store 0xc840440da9ff97e5 in memory
flh f27, 0(x2) # load 0xc840440da9ff97e5 from memory into f27
li x3, 0x9c9ad9219a15eb97 # load x3 with value 0x9c9ad9219a15eb97
sw x3, 0(x2) # store 0x9c9ad9219a15eb97 in memory
flh f23, 0(x2) # load 0x9c9ad9219a15eb97 from memory into f23
fsub.h f4, f27, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x19, 0xc04b750ee90e7f2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce47a248f1735eec # load x3 with value 0xce47a248f1735eec
sw x3, 0(x2) # store 0xce47a248f1735eec in memory
flh f30, 0(x2) # load 0xce47a248f1735eec from memory into f30
li x3, 0x871f37bebbfca971 # load x3 with value 0x871f37bebbfca971
sw x3, 0(x2) # store 0x871f37bebbfca971 in memory
flh f24, 0(x2) # load 0x871f37bebbfca971 from memory into f24
fsub.h f19, f30, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x14, 0x93687cdc0e37c51d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8eaa775ad56fcbec # load x3 with value 0x8eaa775ad56fcbec
sw x3, 0(x2) # store 0x8eaa775ad56fcbec in memory
flh f17, 0(x2) # load 0x8eaa775ad56fcbec from memory into f17
li x3, 0xb11c074fadeb2231 # load x3 with value 0xb11c074fadeb2231
sw x3, 0(x2) # store 0xb11c074fadeb2231 in memory
flh f25, 0(x2) # load 0xb11c074fadeb2231 from memory into f25
fsub.h f14, f17, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x15, 0x6f33aa8e6efce23c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1340bd2b22085222 # load x3 with value 0x1340bd2b22085222
sw x3, 0(x2) # store 0x1340bd2b22085222 in memory
flh f4, 0(x2) # load 0x1340bd2b22085222 from memory into f4
li x3, 0x4231a5910ec0e383 # load x3 with value 0x4231a5910ec0e383
sw x3, 0(x2) # store 0x4231a5910ec0e383 in memory
flh f26, 0(x2) # load 0x4231a5910ec0e383 from memory into f26
fsub.h f15, f4, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x23, 0xfc5eeb0a75b10946 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x88fecfe651b575ce # load x3 with value 0x88fecfe651b575ce
sw x3, 0(x2) # store 0x88fecfe651b575ce in memory
flh f7, 0(x2) # load 0x88fecfe651b575ce from memory into f7
li x3, 0xede52903c042db5d # load x3 with value 0xede52903c042db5d
sw x3, 0(x2) # store 0xede52903c042db5d in memory
flh f27, 0(x2) # load 0xede52903c042db5d from memory into f27
fsub.h f23, f7, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x23, 0x6db21eee6098f0d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd71a42978f0cd999 # load x3 with value 0xd71a42978f0cd999
sw x3, 0(x2) # store 0xd71a42978f0cd999 in memory
flh f2, 0(x2) # load 0xd71a42978f0cd999 from memory into f2
li x3, 0x1723d7af366afdca # load x3 with value 0x1723d7af366afdca
sw x3, 0(x2) # store 0x1723d7af366afdca in memory
flh f28, 0(x2) # load 0x1723d7af366afdca from memory into f28
fsub.h f23, f2, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x31, 0x4b8d338c030d5c60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x73f5e3bb44488a70 # load x3 with value 0x73f5e3bb44488a70
sw x3, 0(x2) # store 0x73f5e3bb44488a70 in memory
flh f27, 0(x2) # load 0x73f5e3bb44488a70 from memory into f27
li x3, 0x9630e0ad5977dc10 # load x3 with value 0x9630e0ad5977dc10
sw x3, 0(x2) # store 0x9630e0ad5977dc10 in memory
flh f29, 0(x2) # load 0x9630e0ad5977dc10 from memory into f29
fsub.h f31, f27, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x27, 0xe961bee1137213e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6feb3b4cc77dc7e8 # load x3 with value 0x6feb3b4cc77dc7e8
sw x3, 0(x2) # store 0x6feb3b4cc77dc7e8 in memory
flh f14, 0(x2) # load 0x6feb3b4cc77dc7e8 from memory into f14
li x3, 0xd0700e40154793 # load x3 with value 0xd0700e40154793
sw x3, 0(x2) # store 0xd0700e40154793 in memory
flh f30, 0(x2) # load 0xd0700e40154793 from memory into f30
fsub.h f27, f14, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x19, 0xd525da4746203563 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2838299d850ff8a5 # load x3 with value 0x2838299d850ff8a5
sw x3, 0(x2) # store 0x2838299d850ff8a5 in memory
flh f3, 0(x2) # load 0x2838299d850ff8a5 from memory into f3
li x3, 0x66fca7576b179d6b # load x3 with value 0x66fca7576b179d6b
sw x3, 0(x2) # store 0x66fca7576b179d6b in memory
flh f31, 0(x2) # load 0x66fca7576b179d6b from memory into f31
fsub.h f19, f3, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
