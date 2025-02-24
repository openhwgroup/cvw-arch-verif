///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-fmul.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.188680
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
fmul.h f31, f27, f21 # perform first operation
fmul.h f7, f31, f23 # perform second operation

# Testcase cmp_gpr_hazard raw test
fmul.h f7, f14, f24 # perform first operation
fmul.h f4, f31, f7 # perform second operation

# Testcase cmp_gpr_hazard waw test
fmul.h f10, f11, f18 # perform first operation
fmul.h f10, f2, f1 # perform second operation

# Testcase cmp_gpr_hazard waw test
fmul.h f5, f8, f10 # perform first operation
fmul.h f5, f1, f11 # perform second operation

# Testcase cmp_gpr_hazard war test
fmul.h f17, f26, f28 # perform first operation
fmul.h f26, f30, f25 # perform second operation

# Testcase cmp_gpr_hazard war test
fmul.h f19, f15, f22 # perform first operation
fmul.h f22, f30, f9 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0xf41eb0f2e59e57b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf5e86a614239d86 # load x3 with value 0xdf5e86a614239d86
sw x3, 0(x2) # store 0xdf5e86a614239d86 in memory
flh f0, 0(x2) # load 0xdf5e86a614239d86 from memory into f0
li x3, 0x9a2bb78b9cd61743 # load x3 with value 0x9a2bb78b9cd61743
sw x3, 0(x2) # store 0x9a2bb78b9cd61743 in memory
flh f16, 0(x2) # load 0x9a2bb78b9cd61743 from memory into f16
fmul.h f0, f0, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x82616140361f850d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9b7a04110e3435b5 # load x3 with value 0x9b7a04110e3435b5
sw x3, 0(x2) # store 0x9b7a04110e3435b5 in memory
flh f1, 0(x2) # load 0x9b7a04110e3435b5 from memory into f1
li x3, 0xf8856cc56dae9471 # load x3 with value 0xf8856cc56dae9471
sw x3, 0(x2) # store 0xf8856cc56dae9471 in memory
flh f26, 0(x2) # load 0xf8856cc56dae9471 from memory into f26
fmul.h f1, f1, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x3a3553f5d448be0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x545adde8d47db55e # load x3 with value 0x545adde8d47db55e
sw x3, 0(x2) # store 0x545adde8d47db55e in memory
flh f2, 0(x2) # load 0x545adde8d47db55e from memory into f2
li x3, 0x580d69d3da504c6a # load x3 with value 0x580d69d3da504c6a
sw x3, 0(x2) # store 0x580d69d3da504c6a in memory
flh f11, 0(x2) # load 0x580d69d3da504c6a from memory into f11
fmul.h f2, f2, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x248c48ada63b11b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf16b8dc59f1c0efa # load x3 with value 0xf16b8dc59f1c0efa
sw x3, 0(x2) # store 0xf16b8dc59f1c0efa in memory
flh f3, 0(x2) # load 0xf16b8dc59f1c0efa from memory into f3
li x3, 0x3bf72f50fece0ba7 # load x3 with value 0x3bf72f50fece0ba7
sw x3, 0(x2) # store 0x3bf72f50fece0ba7 in memory
flh f23, 0(x2) # load 0x3bf72f50fece0ba7 from memory into f23
fmul.h f3, f3, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0xa1546680df2cb357 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe8cc745ae24d37a6 # load x3 with value 0xe8cc745ae24d37a6
sw x3, 0(x2) # store 0xe8cc745ae24d37a6 in memory
flh f4, 0(x2) # load 0xe8cc745ae24d37a6 from memory into f4
li x3, 0x74eceffb3f949540 # load x3 with value 0x74eceffb3f949540
sw x3, 0(x2) # store 0x74eceffb3f949540 in memory
flh f18, 0(x2) # load 0x74eceffb3f949540 from memory into f18
fmul.h f4, f4, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x62a73ff420e94b43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa32fa741ecd2b27 # load x3 with value 0xaa32fa741ecd2b27
sw x3, 0(x2) # store 0xaa32fa741ecd2b27 in memory
flh f5, 0(x2) # load 0xaa32fa741ecd2b27 from memory into f5
li x3, 0x2f8d51956b5fc339 # load x3 with value 0x2f8d51956b5fc339
sw x3, 0(x2) # store 0x2f8d51956b5fc339 in memory
flh f28, 0(x2) # load 0x2f8d51956b5fc339 from memory into f28
fmul.h f5, f5, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0xc85cdff1fca81aca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14d9edf68cfcfe # load x3 with value 0x14d9edf68cfcfe
sw x3, 0(x2) # store 0x14d9edf68cfcfe in memory
flh f6, 0(x2) # load 0x14d9edf68cfcfe from memory into f6
li x3, 0xef31a04f60731ca8 # load x3 with value 0xef31a04f60731ca8
sw x3, 0(x2) # store 0xef31a04f60731ca8 in memory
flh f11, 0(x2) # load 0xef31a04f60731ca8 from memory into f11
fmul.h f6, f6, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0xaf2eebee1914c18f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4109b38a25187de2 # load x3 with value 0x4109b38a25187de2
sw x3, 0(x2) # store 0x4109b38a25187de2 in memory
flh f7, 0(x2) # load 0x4109b38a25187de2 from memory into f7
li x3, 0x7f2603c7867dcae9 # load x3 with value 0x7f2603c7867dcae9
sw x3, 0(x2) # store 0x7f2603c7867dcae9 in memory
flh f22, 0(x2) # load 0x7f2603c7867dcae9 from memory into f22
fmul.h f7, f7, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x8d8c4d0f3099719d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc521a9ffe4bb9cfd # load x3 with value 0xc521a9ffe4bb9cfd
sw x3, 0(x2) # store 0xc521a9ffe4bb9cfd in memory
flh f8, 0(x2) # load 0xc521a9ffe4bb9cfd from memory into f8
li x3, 0x33e5a0c6e64c05f # load x3 with value 0x33e5a0c6e64c05f
sw x3, 0(x2) # store 0x33e5a0c6e64c05f in memory
flh f16, 0(x2) # load 0x33e5a0c6e64c05f from memory into f16
fmul.h f8, f8, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0x34344c46d051d004 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x76be29a5ea15e177 # load x3 with value 0x76be29a5ea15e177
sw x3, 0(x2) # store 0x76be29a5ea15e177 in memory
flh f9, 0(x2) # load 0x76be29a5ea15e177 from memory into f9
li x3, 0xbed3dc765802ebc0 # load x3 with value 0xbed3dc765802ebc0
sw x3, 0(x2) # store 0xbed3dc765802ebc0 in memory
flh f13, 0(x2) # load 0xbed3dc765802ebc0 from memory into f13
fmul.h f9, f9, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0xc91e7cf9f40887ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb52f91e6c7596e0b # load x3 with value 0xb52f91e6c7596e0b
sw x3, 0(x2) # store 0xb52f91e6c7596e0b in memory
flh f10, 0(x2) # load 0xb52f91e6c7596e0b from memory into f10
li x3, 0xfb5d6031167c4dc4 # load x3 with value 0xfb5d6031167c4dc4
sw x3, 0(x2) # store 0xfb5d6031167c4dc4 in memory
flh f11, 0(x2) # load 0xfb5d6031167c4dc4 from memory into f11
fmul.h f10, f10, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0xfaed2c5afbcb8c9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80e04306bb0c85d4 # load x3 with value 0x80e04306bb0c85d4
sw x3, 0(x2) # store 0x80e04306bb0c85d4 in memory
flh f11, 0(x2) # load 0x80e04306bb0c85d4 from memory into f11
li x3, 0xe6471dc74290acb4 # load x3 with value 0xe6471dc74290acb4
sw x3, 0(x2) # store 0xe6471dc74290acb4 in memory
flh f16, 0(x2) # load 0xe6471dc74290acb4 from memory into f16
fmul.h f11, f11, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0xb2988ebe3c8b2c6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f883b773f8232f8 # load x3 with value 0x7f883b773f8232f8
sw x3, 0(x2) # store 0x7f883b773f8232f8 in memory
flh f12, 0(x2) # load 0x7f883b773f8232f8 from memory into f12
li x3, 0xe679e13205637036 # load x3 with value 0xe679e13205637036
sw x3, 0(x2) # store 0xe679e13205637036 in memory
flh f29, 0(x2) # load 0xe679e13205637036 from memory into f29
fmul.h f12, f12, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0x2cf4d54a196337fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5304395afb4bcba9 # load x3 with value 0x5304395afb4bcba9
sw x3, 0(x2) # store 0x5304395afb4bcba9 in memory
flh f13, 0(x2) # load 0x5304395afb4bcba9 from memory into f13
li x3, 0x85f4b17f7e665da3 # load x3 with value 0x85f4b17f7e665da3
sw x3, 0(x2) # store 0x85f4b17f7e665da3 in memory
flh f13, 0(x2) # load 0x85f4b17f7e665da3 from memory into f13
fmul.h f13, f13, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0xf6774fb64e562e24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa7ac213ee4ecf512 # load x3 with value 0xa7ac213ee4ecf512
sw x3, 0(x2) # store 0xa7ac213ee4ecf512 in memory
flh f14, 0(x2) # load 0xa7ac213ee4ecf512 from memory into f14
li x3, 0x8749d75dd22af6c1 # load x3 with value 0x8749d75dd22af6c1
sw x3, 0(x2) # store 0x8749d75dd22af6c1 in memory
flh f18, 0(x2) # load 0x8749d75dd22af6c1 from memory into f18
fmul.h f14, f14, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0xf1d8c92a9310715c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa3eba323247cd503 # load x3 with value 0xa3eba323247cd503
sw x3, 0(x2) # store 0xa3eba323247cd503 in memory
flh f15, 0(x2) # load 0xa3eba323247cd503 from memory into f15
li x3, 0xdecc9f98fec017ae # load x3 with value 0xdecc9f98fec017ae
sw x3, 0(x2) # store 0xdecc9f98fec017ae in memory
flh f27, 0(x2) # load 0xdecc9f98fec017ae from memory into f27
fmul.h f15, f15, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x567b4fd7c111ef4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x290bae74d459fd28 # load x3 with value 0x290bae74d459fd28
sw x3, 0(x2) # store 0x290bae74d459fd28 in memory
flh f16, 0(x2) # load 0x290bae74d459fd28 from memory into f16
li x3, 0x44235295064bd9c5 # load x3 with value 0x44235295064bd9c5
sw x3, 0(x2) # store 0x44235295064bd9c5 in memory
flh f3, 0(x2) # load 0x44235295064bd9c5 from memory into f3
fmul.h f16, f16, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x4fe5d4ca6d2676e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2bd40e0bfa5b80c7 # load x3 with value 0x2bd40e0bfa5b80c7
sw x3, 0(x2) # store 0x2bd40e0bfa5b80c7 in memory
flh f17, 0(x2) # load 0x2bd40e0bfa5b80c7 from memory into f17
li x3, 0x3ae140dabddd0636 # load x3 with value 0x3ae140dabddd0636
sw x3, 0(x2) # store 0x3ae140dabddd0636 in memory
flh f31, 0(x2) # load 0x3ae140dabddd0636 from memory into f31
fmul.h f17, f17, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0x12602a9f32ff4990 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4244f8088aa53e0a # load x3 with value 0x4244f8088aa53e0a
sw x3, 0(x2) # store 0x4244f8088aa53e0a in memory
flh f18, 0(x2) # load 0x4244f8088aa53e0a from memory into f18
li x3, 0x4c593b2f2b74a546 # load x3 with value 0x4c593b2f2b74a546
sw x3, 0(x2) # store 0x4c593b2f2b74a546 in memory
flh f21, 0(x2) # load 0x4c593b2f2b74a546 from memory into f21
fmul.h f18, f18, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0xdf647ef085df7347 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5cffcc3f37fcfe5a # load x3 with value 0x5cffcc3f37fcfe5a
sw x3, 0(x2) # store 0x5cffcc3f37fcfe5a in memory
flh f19, 0(x2) # load 0x5cffcc3f37fcfe5a from memory into f19
li x3, 0xb5b9a9036adf00a0 # load x3 with value 0xb5b9a9036adf00a0
sw x3, 0(x2) # store 0xb5b9a9036adf00a0 in memory
flh f14, 0(x2) # load 0xb5b9a9036adf00a0 from memory into f14
fmul.h f19, f19, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x279847ca4ea035b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3a9aa7d53dbc53d # load x3 with value 0xf3a9aa7d53dbc53d
sw x3, 0(x2) # store 0xf3a9aa7d53dbc53d in memory
flh f20, 0(x2) # load 0xf3a9aa7d53dbc53d from memory into f20
li x3, 0x49f30c1dcf8bc208 # load x3 with value 0x49f30c1dcf8bc208
sw x3, 0(x2) # store 0x49f30c1dcf8bc208 in memory
flh f23, 0(x2) # load 0x49f30c1dcf8bc208 from memory into f23
fmul.h f20, f20, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x1a3d3655978d03f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd051ec54261ae6d9 # load x3 with value 0xd051ec54261ae6d9
sw x3, 0(x2) # store 0xd051ec54261ae6d9 in memory
flh f21, 0(x2) # load 0xd051ec54261ae6d9 from memory into f21
li x3, 0x125cad110a969a83 # load x3 with value 0x125cad110a969a83
sw x3, 0(x2) # store 0x125cad110a969a83 in memory
flh f12, 0(x2) # load 0x125cad110a969a83 from memory into f12
fmul.h f21, f21, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0xb8ed9a8108bb3131 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xad5d5580a925075d # load x3 with value 0xad5d5580a925075d
sw x3, 0(x2) # store 0xad5d5580a925075d in memory
flh f22, 0(x2) # load 0xad5d5580a925075d from memory into f22
li x3, 0x7957420d34b96f5a # load x3 with value 0x7957420d34b96f5a
sw x3, 0(x2) # store 0x7957420d34b96f5a in memory
flh f7, 0(x2) # load 0x7957420d34b96f5a from memory into f7
fmul.h f22, f22, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x7cd33cc1a293ebb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b7aa7a691c6169f # load x3 with value 0x6b7aa7a691c6169f
sw x3, 0(x2) # store 0x6b7aa7a691c6169f in memory
flh f23, 0(x2) # load 0x6b7aa7a691c6169f from memory into f23
li x3, 0xb7e90804e9bf2dbb # load x3 with value 0xb7e90804e9bf2dbb
sw x3, 0(x2) # store 0xb7e90804e9bf2dbb in memory
flh f9, 0(x2) # load 0xb7e90804e9bf2dbb from memory into f9
fmul.h f23, f23, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x78d2573398338043 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd3624fd3f83adfa3 # load x3 with value 0xd3624fd3f83adfa3
sw x3, 0(x2) # store 0xd3624fd3f83adfa3 in memory
flh f24, 0(x2) # load 0xd3624fd3f83adfa3 from memory into f24
li x3, 0x7f179754af715ed2 # load x3 with value 0x7f179754af715ed2
sw x3, 0(x2) # store 0x7f179754af715ed2 in memory
flh f22, 0(x2) # load 0x7f179754af715ed2 from memory into f22
fmul.h f24, f24, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x9b2074297ad65910 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7eecf59c616c5af4 # load x3 with value 0x7eecf59c616c5af4
sw x3, 0(x2) # store 0x7eecf59c616c5af4 in memory
flh f25, 0(x2) # load 0x7eecf59c616c5af4 from memory into f25
li x3, 0xb187a4f6263a6838 # load x3 with value 0xb187a4f6263a6838
sw x3, 0(x2) # store 0xb187a4f6263a6838 in memory
flh f5, 0(x2) # load 0xb187a4f6263a6838 from memory into f5
fmul.h f25, f25, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x0ac8ab76b57500b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8d5446a4be5563dd # load x3 with value 0x8d5446a4be5563dd
sw x3, 0(x2) # store 0x8d5446a4be5563dd in memory
flh f26, 0(x2) # load 0x8d5446a4be5563dd from memory into f26
li x3, 0xc5860f20bdb7d454 # load x3 with value 0xc5860f20bdb7d454
sw x3, 0(x2) # store 0xc5860f20bdb7d454 in memory
flh f26, 0(x2) # load 0xc5860f20bdb7d454 from memory into f26
fmul.h f26, f26, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x8912d2a95195474e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1c449887161f4b2e # load x3 with value 0x1c449887161f4b2e
sw x3, 0(x2) # store 0x1c449887161f4b2e in memory
flh f27, 0(x2) # load 0x1c449887161f4b2e from memory into f27
li x3, 0x720a7e4d92d2b63b # load x3 with value 0x720a7e4d92d2b63b
sw x3, 0(x2) # store 0x720a7e4d92d2b63b in memory
flh f18, 0(x2) # load 0x720a7e4d92d2b63b from memory into f18
fmul.h f27, f27, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x60505a38acd8d1fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa39ffae7c244648b # load x3 with value 0xa39ffae7c244648b
sw x3, 0(x2) # store 0xa39ffae7c244648b in memory
flh f28, 0(x2) # load 0xa39ffae7c244648b from memory into f28
li x3, 0xdef205baf6ce71a5 # load x3 with value 0xdef205baf6ce71a5
sw x3, 0(x2) # store 0xdef205baf6ce71a5 in memory
flh f15, 0(x2) # load 0xdef205baf6ce71a5 from memory into f15
fmul.h f28, f28, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x230b428acea05081 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x46fc667556347b19 # load x3 with value 0x46fc667556347b19
sw x3, 0(x2) # store 0x46fc667556347b19 in memory
flh f29, 0(x2) # load 0x46fc667556347b19 from memory into f29
li x3, 0x89c57cd3ae6855f7 # load x3 with value 0x89c57cd3ae6855f7
sw x3, 0(x2) # store 0x89c57cd3ae6855f7 in memory
flh f30, 0(x2) # load 0x89c57cd3ae6855f7 from memory into f30
fmul.h f29, f29, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0xe776510b96ce0824 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x130604770bc5bd8d # load x3 with value 0x130604770bc5bd8d
sw x3, 0(x2) # store 0x130604770bc5bd8d in memory
flh f30, 0(x2) # load 0x130604770bc5bd8d from memory into f30
li x3, 0xcd286863c170d2dc # load x3 with value 0xcd286863c170d2dc
sw x3, 0(x2) # store 0xcd286863c170d2dc in memory
flh f25, 0(x2) # load 0xcd286863c170d2dc from memory into f25
fmul.h f30, f30, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x2b0e0a451f90d734 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa5a562afe24bb709 # load x3 with value 0xa5a562afe24bb709
sw x3, 0(x2) # store 0xa5a562afe24bb709 in memory
flh f31, 0(x2) # load 0xa5a562afe24bb709 from memory into f31
li x3, 0x14843e31904f2f32 # load x3 with value 0x14843e31904f2f32
sw x3, 0(x2) # store 0x14843e31904f2f32 in memory
flh f23, 0(x2) # load 0x14843e31904f2f32 from memory into f23
fmul.h f31, f31, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0xd89d759f0bef210d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2a33de625126fef # load x3 with value 0xf2a33de625126fef
sw x3, 0(x2) # store 0xf2a33de625126fef in memory
flh f13, 0(x2) # load 0xf2a33de625126fef from memory into f13
li x3, 0xf493baf422fbee7 # load x3 with value 0xf493baf422fbee7
sw x3, 0(x2) # store 0xf493baf422fbee7 in memory
flh f0, 0(x2) # load 0xf493baf422fbee7 from memory into f0
fmul.h f0, f13, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0x04a2c2b0a079c6e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa66f818310cb7296 # load x3 with value 0xa66f818310cb7296
sw x3, 0(x2) # store 0xa66f818310cb7296 in memory
flh f13, 0(x2) # load 0xa66f818310cb7296 from memory into f13
li x3, 0x6c889c650215ec45 # load x3 with value 0x6c889c650215ec45
sw x3, 0(x2) # store 0x6c889c650215ec45 in memory
flh f1, 0(x2) # load 0x6c889c650215ec45 from memory into f1
fmul.h f1, f13, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x9ab1cc0b3547c863 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b8fad1c94ba0907 # load x3 with value 0x1b8fad1c94ba0907
sw x3, 0(x2) # store 0x1b8fad1c94ba0907 in memory
flh f20, 0(x2) # load 0x1b8fad1c94ba0907 from memory into f20
li x3, 0x77804ed3aeaa2da1 # load x3 with value 0x77804ed3aeaa2da1
sw x3, 0(x2) # store 0x77804ed3aeaa2da1 in memory
flh f2, 0(x2) # load 0x77804ed3aeaa2da1 from memory into f2
fmul.h f2, f20, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0x8c46ccbae72ac6c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6f7beea54bd275ba # load x3 with value 0x6f7beea54bd275ba
sw x3, 0(x2) # store 0x6f7beea54bd275ba in memory
flh f20, 0(x2) # load 0x6f7beea54bd275ba from memory into f20
li x3, 0xd75eb4f392a67d27 # load x3 with value 0xd75eb4f392a67d27
sw x3, 0(x2) # store 0xd75eb4f392a67d27 in memory
flh f3, 0(x2) # load 0xd75eb4f392a67d27 from memory into f3
fmul.h f3, f20, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0x73eeced6c4c0cf5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb7b712764954550c # load x3 with value 0xb7b712764954550c
sw x3, 0(x2) # store 0xb7b712764954550c in memory
flh f15, 0(x2) # load 0xb7b712764954550c from memory into f15
li x3, 0x6e3439784fac6363 # load x3 with value 0x6e3439784fac6363
sw x3, 0(x2) # store 0x6e3439784fac6363 in memory
flh f4, 0(x2) # load 0x6e3439784fac6363 from memory into f4
fmul.h f4, f15, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0xd0e7586e7ca45dc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce7583053dd697aa # load x3 with value 0xce7583053dd697aa
sw x3, 0(x2) # store 0xce7583053dd697aa in memory
flh f31, 0(x2) # load 0xce7583053dd697aa from memory into f31
li x3, 0x5157f8e89b286690 # load x3 with value 0x5157f8e89b286690
sw x3, 0(x2) # store 0x5157f8e89b286690 in memory
flh f5, 0(x2) # load 0x5157f8e89b286690 from memory into f5
fmul.h f5, f31, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0xc329ed821a7154a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d8ad0f3e8bda225 # load x3 with value 0x9d8ad0f3e8bda225
sw x3, 0(x2) # store 0x9d8ad0f3e8bda225 in memory
flh f5, 0(x2) # load 0x9d8ad0f3e8bda225 from memory into f5
li x3, 0x1d6de05e0f02ca6c # load x3 with value 0x1d6de05e0f02ca6c
sw x3, 0(x2) # store 0x1d6de05e0f02ca6c in memory
flh f6, 0(x2) # load 0x1d6de05e0f02ca6c from memory into f6
fmul.h f6, f5, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0x474ea7734303e043 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35bae7b2ee57735f # load x3 with value 0x35bae7b2ee57735f
sw x3, 0(x2) # store 0x35bae7b2ee57735f in memory
flh f23, 0(x2) # load 0x35bae7b2ee57735f from memory into f23
li x3, 0xae0c46ad300f63bc # load x3 with value 0xae0c46ad300f63bc
sw x3, 0(x2) # store 0xae0c46ad300f63bc in memory
flh f7, 0(x2) # load 0xae0c46ad300f63bc from memory into f7
fmul.h f7, f23, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x15fdb9638f5516ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf66a8ea1937ff970 # load x3 with value 0xf66a8ea1937ff970
sw x3, 0(x2) # store 0xf66a8ea1937ff970 in memory
flh f25, 0(x2) # load 0xf66a8ea1937ff970 from memory into f25
li x3, 0x8e9bb95926dfb78e # load x3 with value 0x8e9bb95926dfb78e
sw x3, 0(x2) # store 0x8e9bb95926dfb78e in memory
flh f8, 0(x2) # load 0x8e9bb95926dfb78e from memory into f8
fmul.h f8, f25, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0xe3b542222810fc16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb07608e97ca97fe7 # load x3 with value 0xb07608e97ca97fe7
sw x3, 0(x2) # store 0xb07608e97ca97fe7 in memory
flh f28, 0(x2) # load 0xb07608e97ca97fe7 from memory into f28
li x3, 0xa2d78f3e5dbf8c73 # load x3 with value 0xa2d78f3e5dbf8c73
sw x3, 0(x2) # store 0xa2d78f3e5dbf8c73 in memory
flh f9, 0(x2) # load 0xa2d78f3e5dbf8c73 from memory into f9
fmul.h f9, f28, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x475e3476c8d70880 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe64c80f454d93ba0 # load x3 with value 0xe64c80f454d93ba0
sw x3, 0(x2) # store 0xe64c80f454d93ba0 in memory
flh f1, 0(x2) # load 0xe64c80f454d93ba0 from memory into f1
li x3, 0x6e2eac9b8608abc0 # load x3 with value 0x6e2eac9b8608abc0
sw x3, 0(x2) # store 0x6e2eac9b8608abc0 in memory
flh f10, 0(x2) # load 0x6e2eac9b8608abc0 from memory into f10
fmul.h f10, f1, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x432571d8a2ef1a2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x20c5c627b8fd9504 # load x3 with value 0x20c5c627b8fd9504
sw x3, 0(x2) # store 0x20c5c627b8fd9504 in memory
flh f28, 0(x2) # load 0x20c5c627b8fd9504 from memory into f28
li x3, 0xf52d2c4383315410 # load x3 with value 0xf52d2c4383315410
sw x3, 0(x2) # store 0xf52d2c4383315410 in memory
flh f11, 0(x2) # load 0xf52d2c4383315410 from memory into f11
fmul.h f11, f28, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0xd7b8e6e119d8ef18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe65b86798395933d # load x3 with value 0xe65b86798395933d
sw x3, 0(x2) # store 0xe65b86798395933d in memory
flh f25, 0(x2) # load 0xe65b86798395933d from memory into f25
li x3, 0x4c495268e016692f # load x3 with value 0x4c495268e016692f
sw x3, 0(x2) # store 0x4c495268e016692f in memory
flh f12, 0(x2) # load 0x4c495268e016692f from memory into f12
fmul.h f12, f25, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0x96e9850b0a1312df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf50c40a18a6647a4 # load x3 with value 0xf50c40a18a6647a4
sw x3, 0(x2) # store 0xf50c40a18a6647a4 in memory
flh f2, 0(x2) # load 0xf50c40a18a6647a4 from memory into f2
li x3, 0xdec2ef95e4e43014 # load x3 with value 0xdec2ef95e4e43014
sw x3, 0(x2) # store 0xdec2ef95e4e43014 in memory
flh f13, 0(x2) # load 0xdec2ef95e4e43014 from memory into f13
fmul.h f13, f2, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0x314fc42bffb0183f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e457cbd94ccd3ce # load x3 with value 0x7e457cbd94ccd3ce
sw x3, 0(x2) # store 0x7e457cbd94ccd3ce in memory
flh f4, 0(x2) # load 0x7e457cbd94ccd3ce from memory into f4
li x3, 0xd533de47ded4b6f8 # load x3 with value 0xd533de47ded4b6f8
sw x3, 0(x2) # store 0xd533de47ded4b6f8 in memory
flh f14, 0(x2) # load 0xd533de47ded4b6f8 from memory into f14
fmul.h f14, f4, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x074ca60a8cc0b160 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x29659749e7747290 # load x3 with value 0x29659749e7747290
sw x3, 0(x2) # store 0x29659749e7747290 in memory
flh f20, 0(x2) # load 0x29659749e7747290 from memory into f20
li x3, 0x1616015006cd3004 # load x3 with value 0x1616015006cd3004
sw x3, 0(x2) # store 0x1616015006cd3004 in memory
flh f15, 0(x2) # load 0x1616015006cd3004 from memory into f15
fmul.h f15, f20, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0x8610c81636a90294 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xefbcff035dbd0f45 # load x3 with value 0xefbcff035dbd0f45
sw x3, 0(x2) # store 0xefbcff035dbd0f45 in memory
flh f24, 0(x2) # load 0xefbcff035dbd0f45 from memory into f24
li x3, 0xc4e36f495271928a # load x3 with value 0xc4e36f495271928a
sw x3, 0(x2) # store 0xc4e36f495271928a in memory
flh f16, 0(x2) # load 0xc4e36f495271928a from memory into f16
fmul.h f16, f24, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0xdfbb216c0f6eb5e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x56cf5629fb5b3db5 # load x3 with value 0x56cf5629fb5b3db5
sw x3, 0(x2) # store 0x56cf5629fb5b3db5 in memory
flh f21, 0(x2) # load 0x56cf5629fb5b3db5 from memory into f21
li x3, 0x89b7d327aecf5f2 # load x3 with value 0x89b7d327aecf5f2
sw x3, 0(x2) # store 0x89b7d327aecf5f2 in memory
flh f17, 0(x2) # load 0x89b7d327aecf5f2 from memory into f17
fmul.h f17, f21, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0x11fe8c641c5c33ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x683fef1e3a729fce # load x3 with value 0x683fef1e3a729fce
sw x3, 0(x2) # store 0x683fef1e3a729fce in memory
flh f19, 0(x2) # load 0x683fef1e3a729fce from memory into f19
li x3, 0x96279788e25a77f4 # load x3 with value 0x96279788e25a77f4
sw x3, 0(x2) # store 0x96279788e25a77f4 in memory
flh f18, 0(x2) # load 0x96279788e25a77f4 from memory into f18
fmul.h f18, f19, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0x56b686fe6f92fb9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x622eacd7f8962660 # load x3 with value 0x622eacd7f8962660
sw x3, 0(x2) # store 0x622eacd7f8962660 in memory
flh f21, 0(x2) # load 0x622eacd7f8962660 from memory into f21
li x3, 0xf50c35b219739425 # load x3 with value 0xf50c35b219739425
sw x3, 0(x2) # store 0xf50c35b219739425 in memory
flh f19, 0(x2) # load 0xf50c35b219739425 from memory into f19
fmul.h f19, f21, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0xb5bc2753e1d2d851 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcadbf652a81ccf56 # load x3 with value 0xcadbf652a81ccf56
sw x3, 0(x2) # store 0xcadbf652a81ccf56 in memory
flh f9, 0(x2) # load 0xcadbf652a81ccf56 from memory into f9
li x3, 0x636310c63437d992 # load x3 with value 0x636310c63437d992
sw x3, 0(x2) # store 0x636310c63437d992 in memory
flh f20, 0(x2) # load 0x636310c63437d992 from memory into f20
fmul.h f20, f9, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x40a5facb0f784725 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60e5bd6334430893 # load x3 with value 0x60e5bd6334430893
sw x3, 0(x2) # store 0x60e5bd6334430893 in memory
flh f16, 0(x2) # load 0x60e5bd6334430893 from memory into f16
li x3, 0x62bf748de85dc9b6 # load x3 with value 0x62bf748de85dc9b6
sw x3, 0(x2) # store 0x62bf748de85dc9b6 in memory
flh f21, 0(x2) # load 0x62bf748de85dc9b6 from memory into f21
fmul.h f21, f16, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0x454030f49f5e245d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x625cd5c8be55d8ef # load x3 with value 0x625cd5c8be55d8ef
sw x3, 0(x2) # store 0x625cd5c8be55d8ef in memory
flh f17, 0(x2) # load 0x625cd5c8be55d8ef from memory into f17
li x3, 0x3bfd6eb3e1e7efa6 # load x3 with value 0x3bfd6eb3e1e7efa6
sw x3, 0(x2) # store 0x3bfd6eb3e1e7efa6 in memory
flh f22, 0(x2) # load 0x3bfd6eb3e1e7efa6 from memory into f22
fmul.h f22, f17, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0x8d81ad871dd1a3e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7efec46705f44336 # load x3 with value 0x7efec46705f44336
sw x3, 0(x2) # store 0x7efec46705f44336 in memory
flh f10, 0(x2) # load 0x7efec46705f44336 from memory into f10
li x3, 0xcc4782429a46548f # load x3 with value 0xcc4782429a46548f
sw x3, 0(x2) # store 0xcc4782429a46548f in memory
flh f23, 0(x2) # load 0xcc4782429a46548f from memory into f23
fmul.h f23, f10, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x5c031e44443186f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x271f331101ae959 # load x3 with value 0x271f331101ae959
sw x3, 0(x2) # store 0x271f331101ae959 in memory
flh f28, 0(x2) # load 0x271f331101ae959 from memory into f28
li x3, 0xa06f9af8a728c590 # load x3 with value 0xa06f9af8a728c590
sw x3, 0(x2) # store 0xa06f9af8a728c590 in memory
flh f24, 0(x2) # load 0xa06f9af8a728c590 from memory into f24
fmul.h f24, f28, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0x05433906b20af83d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4428455d7ea9e769 # load x3 with value 0x4428455d7ea9e769
sw x3, 0(x2) # store 0x4428455d7ea9e769 in memory
flh f31, 0(x2) # load 0x4428455d7ea9e769 from memory into f31
li x3, 0x46c2c221b4e989e6 # load x3 with value 0x46c2c221b4e989e6
sw x3, 0(x2) # store 0x46c2c221b4e989e6 in memory
flh f25, 0(x2) # load 0x46c2c221b4e989e6 from memory into f25
fmul.h f25, f31, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x1ff33439cecc0ed3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9c8566ff112c2ea3 # load x3 with value 0x9c8566ff112c2ea3
sw x3, 0(x2) # store 0x9c8566ff112c2ea3 in memory
flh f9, 0(x2) # load 0x9c8566ff112c2ea3 from memory into f9
li x3, 0x59b3ba44ec912532 # load x3 with value 0x59b3ba44ec912532
sw x3, 0(x2) # store 0x59b3ba44ec912532 in memory
flh f26, 0(x2) # load 0x59b3ba44ec912532 from memory into f26
fmul.h f26, f9, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0x67dcfec3039e98b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x58629a963d94415b # load x3 with value 0x58629a963d94415b
sw x3, 0(x2) # store 0x58629a963d94415b in memory
flh f2, 0(x2) # load 0x58629a963d94415b from memory into f2
li x3, 0x3232e19a570dbde5 # load x3 with value 0x3232e19a570dbde5
sw x3, 0(x2) # store 0x3232e19a570dbde5 in memory
flh f27, 0(x2) # load 0x3232e19a570dbde5 from memory into f27
fmul.h f27, f2, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0x8985d6068d717e42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a2127c8b6b563f6 # load x3 with value 0x4a2127c8b6b563f6
sw x3, 0(x2) # store 0x4a2127c8b6b563f6 in memory
flh f12, 0(x2) # load 0x4a2127c8b6b563f6 from memory into f12
li x3, 0x6b39cfa634c00983 # load x3 with value 0x6b39cfa634c00983
sw x3, 0(x2) # store 0x6b39cfa634c00983 in memory
flh f28, 0(x2) # load 0x6b39cfa634c00983 from memory into f28
fmul.h f28, f12, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0xf784a7e4f847def1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7881e4ca8ce5822a # load x3 with value 0x7881e4ca8ce5822a
sw x3, 0(x2) # store 0x7881e4ca8ce5822a in memory
flh f14, 0(x2) # load 0x7881e4ca8ce5822a from memory into f14
li x3, 0x53a84fad688dfe4b # load x3 with value 0x53a84fad688dfe4b
sw x3, 0(x2) # store 0x53a84fad688dfe4b in memory
flh f29, 0(x2) # load 0x53a84fad688dfe4b from memory into f29
fmul.h f29, f14, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0x72ccad1c83d887d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x30243f96858960c # load x3 with value 0x30243f96858960c
sw x3, 0(x2) # store 0x30243f96858960c in memory
flh f2, 0(x2) # load 0x30243f96858960c from memory into f2
li x3, 0x11a8fe78190b98ae # load x3 with value 0x11a8fe78190b98ae
sw x3, 0(x2) # store 0x11a8fe78190b98ae in memory
flh f30, 0(x2) # load 0x11a8fe78190b98ae from memory into f30
fmul.h f30, f2, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0xf12a4ce3d048e3ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd194fe872c61fead # load x3 with value 0xd194fe872c61fead
sw x3, 0(x2) # store 0xd194fe872c61fead in memory
flh f1, 0(x2) # load 0xd194fe872c61fead from memory into f1
li x3, 0xa2432753aff462af # load x3 with value 0xa2432753aff462af
sw x3, 0(x2) # store 0xa2432753aff462af in memory
flh f31, 0(x2) # load 0xa2432753aff462af from memory into f31
fmul.h f31, f1, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x16, 0xc0a3568252bb852a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0xa1a2dc863f2d96ef # load x3 with value 0xa1a2dc863f2d96ef
sw x3, 0(x2) # store 0xa1a2dc863f2d96ef in memory
flh f21, 0(x2) # load 0xa1a2dc863f2d96ef from memory into f21
fmul.h f16, f26, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x9, 0x17e41649254fd4b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
li x3, 0xd1df69f896803433 # load x3 with value 0xd1df69f896803433
sw x3, 0(x2) # store 0xd1df69f896803433 in memory
flh f23, 0(x2) # load 0xd1df69f896803433 from memory into f23
fmul.h f9, f26, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x21, 0x206404efb8192d6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
li x3, 0x93cbd926a8651d75 # load x3 with value 0x93cbd926a8651d75
sw x3, 0(x2) # store 0x93cbd926a8651d75 in memory
flh f29, 0(x2) # load 0x93cbd926a8651d75 from memory into f29
fmul.h f21, f2, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x22, 0xa4c8e2cae6aed7c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
li x3, 0xb38eeeedc439070b # load x3 with value 0xb38eeeedc439070b
sw x3, 0(x2) # store 0xb38eeeedc439070b in memory
flh f16, 0(x2) # load 0xb38eeeedc439070b from memory into f16
fmul.h f22, f11, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x12, 0x4347a95e3761b153 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
li x3, 0xeebfd7ba3c50c4bd # load x3 with value 0xeebfd7ba3c50c4bd
sw x3, 0(x2) # store 0xeebfd7ba3c50c4bd in memory
flh f30, 0(x2) # load 0xeebfd7ba3c50c4bd from memory into f30
fmul.h f12, f13, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x8, 0x24f200129ee33cca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
li x3, 0x25a756bb7d01d078 # load x3 with value 0x25a756bb7d01d078
sw x3, 0(x2) # store 0x25a756bb7d01d078 in memory
flh f30, 0(x2) # load 0x25a756bb7d01d078 from memory into f30
fmul.h f8, f18, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x1, 0xf4055f51ffffc5fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
li x3, 0x6c224a010ef2053c # load x3 with value 0x6c224a010ef2053c
sw x3, 0(x2) # store 0x6c224a010ef2053c in memory
flh f3, 0(x2) # load 0x6c224a010ef2053c from memory into f3
fmul.h f1, f18, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x27, 0x110353c80b84017e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
li x3, 0x50dc4bc7def11830 # load x3 with value 0x50dc4bc7def11830
sw x3, 0(x2) # store 0x50dc4bc7def11830 in memory
flh f12, 0(x2) # load 0x50dc4bc7def11830 from memory into f12
fmul.h f27, f24, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x1, 0xab5307dcd6c09ef0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
li x3, 0x5428ed32eb8a0ad7 # load x3 with value 0x5428ed32eb8a0ad7
sw x3, 0(x2) # store 0x5428ed32eb8a0ad7 in memory
flh f7, 0(x2) # load 0x5428ed32eb8a0ad7 from memory into f7
fmul.h f1, f11, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x6, 0xbdd8c30dffe47668 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
li x3, 0x26a4f79dfc917120 # load x3 with value 0x26a4f79dfc917120
sw x3, 0(x2) # store 0x26a4f79dfc917120 in memory
flh f27, 0(x2) # load 0x26a4f79dfc917120 from memory into f27
fmul.h f6, f17, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x31, 0x9ee7985d21135600 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
li x3, 0x3642f98bfa3d076 # load x3 with value 0x3642f98bfa3d076
sw x3, 0(x2) # store 0x3642f98bfa3d076 in memory
flh f26, 0(x2) # load 0x3642f98bfa3d076 from memory into f26
fmul.h f31, f13, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x27, 0x0690134e9229050c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
li x3, 0xd5978c25779e4467 # load x3 with value 0xd5978c25779e4467
sw x3, 0(x2) # store 0xd5978c25779e4467 in memory
flh f29, 0(x2) # load 0xd5978c25779e4467 from memory into f29
fmul.h f27, f30, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x14, 0x5fcc8c38bf6021a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
li x3, 0xa7e5619cd4c4ea99 # load x3 with value 0xa7e5619cd4c4ea99
sw x3, 0(x2) # store 0xa7e5619cd4c4ea99 in memory
flh f11, 0(x2) # load 0xa7e5619cd4c4ea99 from memory into f11
fmul.h f14, f16, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x14, 0xb69960ecf0987b65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
li x3, 0x12e80a7d66cc5c44 # load x3 with value 0x12e80a7d66cc5c44
sw x3, 0(x2) # store 0x12e80a7d66cc5c44 in memory
flh f22, 0(x2) # load 0x12e80a7d66cc5c44 from memory into f22
fmul.h f14, f4, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x22, 0xe8f0d69343068061 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
li x3, 0x3118e645d6989e6d # load x3 with value 0x3118e645d6989e6d
sw x3, 0(x2) # store 0x3118e645d6989e6d in memory
flh f9, 0(x2) # load 0x3118e645d6989e6d from memory into f9
fmul.h f22, f18, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x12, 0x7a0fa61542b32313 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
li x3, 0x8fc8d52a14574113 # load x3 with value 0x8fc8d52a14574113
sw x3, 0(x2) # store 0x8fc8d52a14574113 in memory
flh f17, 0(x2) # load 0x8fc8d52a14574113 from memory into f17
fmul.h f12, f18, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x28, 0x743afce8d107be9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
li x3, 0x939ecec43df06f9f # load x3 with value 0x939ecec43df06f9f
sw x3, 0(x2) # store 0x939ecec43df06f9f in memory
flh f6, 0(x2) # load 0x939ecec43df06f9f from memory into f6
fmul.h f28, f25, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x4, 0xe525be0158656b62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
li x3, 0xbd1480a23eeb8e0f # load x3 with value 0xbd1480a23eeb8e0f
sw x3, 0(x2) # store 0xbd1480a23eeb8e0f in memory
flh f18, 0(x2) # load 0xbd1480a23eeb8e0f from memory into f18
fmul.h f4, f24, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x21, 0xbdfa27e83c045fb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
li x3, 0x10fa9d4d589543fc # load x3 with value 0x10fa9d4d589543fc
sw x3, 0(x2) # store 0x10fa9d4d589543fc in memory
flh f13, 0(x2) # load 0x10fa9d4d589543fc from memory into f13
fmul.h f21, f5, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x19, 0xa5214e607e918b46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
li x3, 0xc4c560184ab432a3 # load x3 with value 0xc4c560184ab432a3
sw x3, 0(x2) # store 0xc4c560184ab432a3 in memory
flh f14, 0(x2) # load 0xc4c560184ab432a3 from memory into f14
fmul.h f19, f4, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x25, 0x22cfd7ab43535606 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
li x3, 0xda65a2e0b5539eeb # load x3 with value 0xda65a2e0b5539eeb
sw x3, 0(x2) # store 0xda65a2e0b5539eeb in memory
flh f29, 0(x2) # load 0xda65a2e0b5539eeb from memory into f29
fmul.h f25, f15, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x26, 0xec2cd877b25b633e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
li x3, 0xb9026dd736c14dd0 # load x3 with value 0xb9026dd736c14dd0
sw x3, 0(x2) # store 0xb9026dd736c14dd0 in memory
flh f8, 0(x2) # load 0xb9026dd736c14dd0 from memory into f8
fmul.h f26, f6, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x7, 0x9ad2149da258bd3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
li x3, 0x4bb2fc855ed37150 # load x3 with value 0x4bb2fc855ed37150
sw x3, 0(x2) # store 0x4bb2fc855ed37150 in memory
flh f9, 0(x2) # load 0x4bb2fc855ed37150 from memory into f9
fmul.h f7, f13, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x31, 0x1cbf3cb67d085cb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
li x3, 0xb8f1b732cdf576d5 # load x3 with value 0xb8f1b732cdf576d5
sw x3, 0(x2) # store 0xb8f1b732cdf576d5 in memory
flh f14, 0(x2) # load 0xb8f1b732cdf576d5 from memory into f14
fmul.h f31, f11, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x5, 0x4d703aa29e10eae3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
li x3, 0x3b0dc29ac00b5dac # load x3 with value 0x3b0dc29ac00b5dac
sw x3, 0(x2) # store 0x3b0dc29ac00b5dac in memory
flh f24, 0(x2) # load 0x3b0dc29ac00b5dac from memory into f24
fmul.h f5, f8, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x9, 0x069529a7cb755a2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
li x3, 0xd3a968cd9615f70 # load x3 with value 0xd3a968cd9615f70
sw x3, 0(x2) # store 0xd3a968cd9615f70 in memory
flh f15, 0(x2) # load 0xd3a968cd9615f70 from memory into f15
fmul.h f9, f1, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x7, 0xf22284eeb5268b56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9143a0f885d0cd56 # load x3 with value 0x9143a0f885d0cd56
sw x3, 0(x2) # store 0x9143a0f885d0cd56 in memory
flh f9, 0(x2) # load 0x9143a0f885d0cd56 from memory into f9
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fmul.h f7, f9, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
li x29, 0x9a5fec5868394cbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x487f27e7bd46d64f # load x3 with value 0x487f27e7bd46d64f
sw x3, 0(x2) # store 0x487f27e7bd46d64f in memory
flh f7, 0(x2) # load 0x487f27e7bd46d64f from memory into f7
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
fmul.h f29, f7, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
li x10, 0x7091f424ca43ab99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x41b0704bed10b2d2 # load x3 with value 0x41b0704bed10b2d2
sw x3, 0(x2) # store 0x41b0704bed10b2d2 in memory
flh f11, 0(x2) # load 0x41b0704bed10b2d2 from memory into f11
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fmul.h f10, f11, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
li x28, 0x4d31ddb15ea527f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x92e9f11c2a453665 # load x3 with value 0x92e9f11c2a453665
sw x3, 0(x2) # store 0x92e9f11c2a453665 in memory
flh f5, 0(x2) # load 0x92e9f11c2a453665 from memory into f5
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f4, 0(x2) # load 0x0000bc00 from memory into f4
fmul.h f28, f5, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
li x7, 0xb14940f5420f1ecd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd660cc6a535d5aeb # load x3 with value 0xd660cc6a535d5aeb
sw x3, 0(x2) # store 0xd660cc6a535d5aeb in memory
flh f3, 0(x2) # load 0xd660cc6a535d5aeb from memory into f3
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
fmul.h f7, f3, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
li x21, 0xda56e414afe7ba11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3096dbc3ed0e11ec # load x3 with value 0x3096dbc3ed0e11ec
sw x3, 0(x2) # store 0x3096dbc3ed0e11ec in memory
flh f23, 0(x2) # load 0x3096dbc3ed0e11ec from memory into f23
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
fmul.h f21, f23, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
li x16, 0xc25cba81836d95ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x27fbf552832d2b75 # load x3 with value 0x27fbf552832d2b75
sw x3, 0(x2) # store 0x27fbf552832d2b75 in memory
flh f29, 0(x2) # load 0x27fbf552832d2b75 from memory into f29
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
fmul.h f16, f29, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
li x29, 0x3686110effd8ab85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca9a730e93deb1a9 # load x3 with value 0xca9a730e93deb1a9
sw x3, 0(x2) # store 0xca9a730e93deb1a9 in memory
flh f2, 0(x2) # load 0xca9a730e93deb1a9 from memory into f2
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
fmul.h f29, f2, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
li x12, 0x3e927d0643f51b0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1b861f60988337fb # load x3 with value 0x1b861f60988337fb
sw x3, 0(x2) # store 0x1b861f60988337fb in memory
flh f6, 0(x2) # load 0x1b861f60988337fb from memory into f6
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fmul.h f12, f6, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
li x2, 0x47fd2d23ea9c92ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x99576e40f7dee703 # load x3 with value 0x99576e40f7dee703
sw x3, 0(x2) # store 0x99576e40f7dee703 in memory
flh f17, 0(x2) # load 0x99576e40f7dee703 from memory into f17
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
fmul.h f2, f17, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
li x8, 0xc19ee404a92e9430 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa09a8bdfd3b3bd71 # load x3 with value 0xa09a8bdfd3b3bd71
sw x3, 0(x2) # store 0xa09a8bdfd3b3bd71 in memory
flh f20, 0(x2) # load 0xa09a8bdfd3b3bd71 from memory into f20
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
fmul.h f8, f20, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
li x3, 0xf3925c730720ca3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee8903c641809077 # load x3 with value 0xee8903c641809077
sw x3, 0(x2) # store 0xee8903c641809077 in memory
flh f12, 0(x2) # load 0xee8903c641809077 from memory into f12
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
fmul.h f3, f12, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
li x29, 0x75648d32348318a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x717adf46e38f7c26 # load x3 with value 0x717adf46e38f7c26
sw x3, 0(x2) # store 0x717adf46e38f7c26 in memory
flh f15, 0(x2) # load 0x717adf46e38f7c26 from memory into f15
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fmul.h f29, f15, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
li x19, 0x3c0368aa6882e332 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3822e370c388cb90 # load x3 with value 0x3822e370c388cb90
sw x3, 0(x2) # store 0x3822e370c388cb90 in memory
flh f31, 0(x2) # load 0x3822e370c388cb90 from memory into f31
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
fmul.h f19, f31, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
li x9, 0x6363c94c424b443b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4be738911e90da19 # load x3 with value 0x4be738911e90da19
sw x3, 0(x2) # store 0x4be738911e90da19 in memory
flh f7, 0(x2) # load 0x4be738911e90da19 from memory into f7
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fmul.h f9, f7, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
li x30, 0x49a3f8e3c563621c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x18f2aaacf990bd89 # load x3 with value 0x18f2aaacf990bd89
sw x3, 0(x2) # store 0x18f2aaacf990bd89 in memory
flh f6, 0(x2) # load 0x18f2aaacf990bd89 from memory into f6
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
fmul.h f30, f6, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x13, 0x0eb248ef5bea580d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35881d14980dcc74 # load x3 with value 0x35881d14980dcc74
sw x3, 0(x2) # store 0x35881d14980dcc74 in memory
flh f30, 0(x2) # load 0x35881d14980dcc74 from memory into f30
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fmul.h f13, f30, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
li x6, 0xc80262b103ce2eb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac2be2ace6c51d4c # load x3 with value 0xac2be2ace6c51d4c
sw x3, 0(x2) # store 0xac2be2ace6c51d4c in memory
flh f26, 0(x2) # load 0xac2be2ace6c51d4c from memory into f26
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
fmul.h f6, f26, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
li x31, 0x1148e3d35f968696 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda7fd006a58d93af # load x3 with value 0xda7fd006a58d93af
sw x3, 0(x2) # store 0xda7fd006a58d93af in memory
flh f13, 0(x2) # load 0xda7fd006a58d93af from memory into f13
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
fmul.h f31, f13, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
li x9, 0x3820471920ed3ad2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x879ea6027c7bd4ac # load x3 with value 0x879ea6027c7bd4ac
sw x3, 0(x2) # store 0x879ea6027c7bd4ac in memory
flh f31, 0(x2) # load 0x879ea6027c7bd4ac from memory into f31
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
fmul.h f9, f31, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
li x31, 0x59a896d4f227411e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x274cecffa9252df1 # load x3 with value 0x274cecffa9252df1
sw x3, 0(x2) # store 0x274cecffa9252df1 in memory
flh f2, 0(x2) # load 0x274cecffa9252df1 from memory into f2
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fmul.h f31, f2, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
li x24, 0x1cbfdc03393737e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8facc2d0741c369f # load x3 with value 0x8facc2d0741c369f
sw x3, 0(x2) # store 0x8facc2d0741c369f in memory
flh f8, 0(x2) # load 0x8facc2d0741c369f from memory into f8
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
fmul.h f24, f8, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
li x18, 0xcadbebb4c9ab97c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf7d91929a1b2befb # load x3 with value 0xf7d91929a1b2befb
sw x3, 0(x2) # store 0xf7d91929a1b2befb in memory
flh f31, 0(x2) # load 0xf7d91929a1b2befb from memory into f31
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
fmul.h f18, f31, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
li x7, 0xed7d0079355f1316 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x90d90dc9780f029f # load x3 with value 0x90d90dc9780f029f
sw x3, 0(x2) # store 0x90d90dc9780f029f in memory
flh f30, 0(x2) # load 0x90d90dc9780f029f from memory into f30
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
fmul.h f7, f30, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
li x30, 0x814fe39b00dddb5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xadb15c616311ca9d # load x3 with value 0xadb15c616311ca9d
sw x3, 0(x2) # store 0xadb15c616311ca9d in memory
flh f8, 0(x2) # load 0xadb15c616311ca9d from memory into f8
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fmul.h f30, f8, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
li x21, 0x871fddb41b61a423 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf9887cc04c0f8cd # load x3 with value 0xcf9887cc04c0f8cd
sw x3, 0(x2) # store 0xcf9887cc04c0f8cd in memory
flh f12, 0(x2) # load 0xcf9887cc04c0f8cd from memory into f12
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
fmul.h f21, f12, f30 # perform operation

# Testcase cp_frm
li x24, 0x6bef924a23135877 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1bfe57f6330fe819 # load x3 with value 0x1bfe57f6330fe819
sw x3, 0(x2) # store 0x1bfe57f6330fe819 in memory
flh f17, 0(x2) # load 0x1bfe57f6330fe819 from memory into f17
li x3, 0xb64b20afe80ce3c5 # load x3 with value 0xb64b20afe80ce3c5
sw x3, 0(x2) # store 0xb64b20afe80ce3c5 in memory
flh f28, 0(x2) # load 0xb64b20afe80ce3c5 from memory into f28
fmul.h f24, f17, f28, dyn # perform operation
fmul.h f24, f17, f28, rdn # perform operation
fmul.h f24, f17, f28, rmm # perform operation
fmul.h f24, f17, f28, rne # perform operation
fmul.h f24, f17, f28, rtz # perform operation
fmul.h f24, f17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f17, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f17, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f17, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f17, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f17, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x30, 0x4678ab77c4a73276 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fmul.h f30, f24, f5, dyn # perform operation
fmul.h f30, f24, f5, rdn # perform operation
fmul.h f30, f24, f5, rmm # perform operation
fmul.h f30, f24, f5, rne # perform operation
fmul.h f30, f24, f5, rtz # perform operation
fmul.h f30, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f24, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000)
li x18, 0xf11dc0d1a1a80a14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fmul.h f18, f2, f19, dyn # perform operation
fmul.h f18, f2, f19, rdn # perform operation
fmul.h f18, f2, f19, rmm # perform operation
fmul.h f18, f2, f19, rne # perform operation
fmul.h f18, f2, f19, rtz # perform operation
fmul.h f18, f2, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f2, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f2, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f2, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f2, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f2, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3c00)
li x27, 0x3a1205dad1dabcd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
fmul.h f27, f12, f18, dyn # perform operation
fmul.h f27, f12, f18, rdn # perform operation
fmul.h f27, f12, f18, rmm # perform operation
fmul.h f27, f12, f18, rne # perform operation
fmul.h f27, f12, f18, rtz # perform operation
fmul.h f27, f12, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f12, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f12, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f12, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f12, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f12, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbc00)
li x23, 0x78809d71e51fa2aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
fmul.h f23, f29, f10, dyn # perform operation
fmul.h f23, f29, f10, rdn # perform operation
fmul.h f23, f29, f10, rmm # perform operation
fmul.h f23, f29, f10, rne # perform operation
fmul.h f23, f29, f10, rtz # perform operation
fmul.h f23, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f29, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3e00)
li x13, 0xccfafd8b4dfd7114 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
fmul.h f13, f2, f21, dyn # perform operation
fmul.h f13, f2, f21, rdn # perform operation
fmul.h f13, f2, f21, rmm # perform operation
fmul.h f13, f2, f21, rne # perform operation
fmul.h f13, f2, f21, rtz # perform operation
fmul.h f13, f2, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f2, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f2, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f2, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f2, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbe00)
li x18, 0xc4c22d6dce777046 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fmul.h f18, f5, f15, dyn # perform operation
fmul.h f18, f5, f15, rdn # perform operation
fmul.h f18, f5, f15, rmm # perform operation
fmul.h f18, f5, f15, rne # perform operation
fmul.h f18, f5, f15, rtz # perform operation
fmul.h f18, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000)
li x11, 0x9462a67f4512ba40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
fmul.h f11, f5, f17, dyn # perform operation
fmul.h f11, f5, f17, rdn # perform operation
fmul.h f11, f5, f17, rmm # perform operation
fmul.h f11, f5, f17, rne # perform operation
fmul.h f11, f5, f17, rtz # perform operation
fmul.h f11, f5, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f5, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f5, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f5, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f5, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f5, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000)
li x14, 0x63df3af265ab1498 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f13, 0(x2) # load 0x00000000 from memory into f13
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
fmul.h f14, f13, f18, dyn # perform operation
fmul.h f14, f13, f18, rdn # perform operation
fmul.h f14, f13, f18, rmm # perform operation
fmul.h f14, f13, f18, rne # perform operation
fmul.h f14, f13, f18, rtz # perform operation
fmul.h f14, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f13, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400)
li x22, 0xec0b69227b1a5fa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
fmul.h f22, f26, f10, dyn # perform operation
fmul.h f22, f26, f10, rdn # perform operation
fmul.h f22, f26, f10, rmm # perform operation
fmul.h f22, f26, f10, rne # perform operation
fmul.h f22, f26, f10, rtz # perform operation
fmul.h f22, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8400)
li x3, 0x182d6908b57ed2a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
fmul.h f3, f23, f6, dyn # perform operation
fmul.h f3, f23, f6, rdn # perform operation
fmul.h f3, f23, f6, rmm # perform operation
fmul.h f3, f23, f6, rne # perform operation
fmul.h f3, f23, f6, rtz # perform operation
fmul.h f3, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7bff)
li x29, 0x6082f38582c54eaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
fmul.h f29, f9, f22, dyn # perform operation
fmul.h f29, f9, f22, rdn # perform operation
fmul.h f29, f9, f22, rmm # perform operation
fmul.h f29, f9, f22, rne # perform operation
fmul.h f29, f9, f22, rtz # perform operation
fmul.h f29, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f9, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfbff)
li x30, 0x0135bf39305734ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
fmul.h f30, f19, f6, dyn # perform operation
fmul.h f30, f19, f6, rdn # perform operation
fmul.h f30, f19, f6, rmm # perform operation
fmul.h f30, f19, f6, rne # perform operation
fmul.h f30, f19, f6, rtz # perform operation
fmul.h f30, f19, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f19, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f19, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f19, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f19, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff)
li x31, 0xde9452ecc351c756 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
fmul.h f31, f9, f15, dyn # perform operation
fmul.h f31, f9, f15, rdn # perform operation
fmul.h f31, f9, f15, rmm # perform operation
fmul.h f31, f9, f15, rne # perform operation
fmul.h f31, f9, f15, rtz # perform operation
fmul.h f31, f9, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f9, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f9, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f9, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f9, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f9, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x83ff)
li x11, 0x7c4b2b821e3f539b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
fmul.h f11, f22, f7, dyn # perform operation
fmul.h f11, f22, f7, rdn # perform operation
fmul.h f11, f22, f7, rmm # perform operation
fmul.h f11, f22, f7, rne # perform operation
fmul.h f11, f22, f7, rtz # perform operation
fmul.h f11, f22, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f22, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f22, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f22, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f22, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x200)
li x7, 0x896b5625574d9ea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
fmul.h f7, f18, f17, dyn # perform operation
fmul.h f7, f18, f17, rdn # perform operation
fmul.h f7, f18, f17, rmm # perform operation
fmul.h f7, f18, f17, rne # perform operation
fmul.h f7, f18, f17, rtz # perform operation
fmul.h f7, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f18, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8200)
li x19, 0xc937456a47d53d3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
fmul.h f19, f27, f26, dyn # perform operation
fmul.h f19, f27, f26, rdn # perform operation
fmul.h f19, f27, f26, rmm # perform operation
fmul.h f19, f27, f26, rne # perform operation
fmul.h f19, f27, f26, rtz # perform operation
fmul.h f19, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x5, 0x6e7f78129f97f14f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fmul.h f5, f26, f16, dyn # perform operation
fmul.h f5, f26, f16, rdn # perform operation
fmul.h f5, f26, f16, rmm # perform operation
fmul.h f5, f26, f16, rne # perform operation
fmul.h f5, f26, f16, rtz # perform operation
fmul.h f5, f26, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f26, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f26, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f26, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f26, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8001)
li x16, 0xc46db3c7decf036c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f11, 0(x2) # load 0x00000000 from memory into f11
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
fmul.h f16, f11, f28, dyn # perform operation
fmul.h f16, f11, f28, rdn # perform operation
fmul.h f16, f11, f28, rmm # perform operation
fmul.h f16, f11, f28, rne # perform operation
fmul.h f16, f11, f28, rtz # perform operation
fmul.h f16, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f11, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c00)
li x27, 0x2c7c3cf3aedc478c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
fmul.h f27, f12, f16, dyn # perform operation
fmul.h f27, f12, f16, rdn # perform operation
fmul.h f27, f12, f16, rmm # perform operation
fmul.h f27, f12, f16, rne # perform operation
fmul.h f27, f12, f16, rtz # perform operation
fmul.h f27, f12, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f12, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f12, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f12, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f12, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc00)
li x4, 0x5301b2e779b52141 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f24, 0(x2) # load 0x00000000 from memory into f24
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fmul.h f4, f24, f26, dyn # perform operation
fmul.h f4, f24, f26, rdn # perform operation
fmul.h f4, f24, f26, rmm # perform operation
fmul.h f4, f24, f26, rne # perform operation
fmul.h f4, f24, f26, rtz # perform operation
fmul.h f4, f24, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f24, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f24, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f24, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f24, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f24, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7e00)
li x17, 0xab68b86c121bd24a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
fmul.h f17, f22, f13, dyn # perform operation
fmul.h f17, f22, f13, rdn # perform operation
fmul.h f17, f22, f13, rmm # perform operation
fmul.h f17, f22, f13, rne # perform operation
fmul.h f17, f22, f13, rtz # perform operation
fmul.h f17, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f22, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fff)
li x12, 0x18e4ae5fbbd6eb72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
fmul.h f12, f22, f13, dyn # perform operation
fmul.h f12, f22, f13, rdn # perform operation
fmul.h f12, f22, f13, rmm # perform operation
fmul.h f12, f22, f13, rne # perform operation
fmul.h f12, f22, f13, rtz # perform operation
fmul.h f12, f22, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f22, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f22, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f22, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f22, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f22, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c01)
li x16, 0x43e09720721728aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
fmul.h f16, f18, f6, dyn # perform operation
fmul.h f16, f18, f6, rdn # perform operation
fmul.h f16, f18, f6, rmm # perform operation
fmul.h f16, f18, f6, rne # perform operation
fmul.h f16, f18, f6, rtz # perform operation
fmul.h f16, f18, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f18, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f18, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f18, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f18, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f18, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7dff)
li x12, 0x943fda57c3fcfef5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
fmul.h f12, f14, f23, dyn # perform operation
fmul.h f12, f14, f23, rdn # perform operation
fmul.h f12, f14, f23, rmm # perform operation
fmul.h f12, f14, f23, rne # perform operation
fmul.h f12, f14, f23, rtz # perform operation
fmul.h f12, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x58b4)
li x31, 0x90b0b615393f665e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fmul.h f31, f9, f23, dyn # perform operation
fmul.h f31, f9, f23, rdn # perform operation
fmul.h f31, f9, f23, rmm # perform operation
fmul.h f31, f9, f23, rne # perform operation
fmul.h f31, f9, f23, rtz # perform operation
fmul.h f31, f9, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f9, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f9, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f9, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f9, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f9, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc93a)
li x17, 0xe39276cd6463ed6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
fmul.h f17, f5, f29, dyn # perform operation
fmul.h f17, f5, f29, rdn # perform operation
fmul.h f17, f5, f29, rmm # perform operation
fmul.h f17, f5, f29, rne # perform operation
fmul.h f17, f5, f29, rtz # perform operation
fmul.h f17, f5, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f5, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f5, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f5, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f5, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f5, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x0)
li x5, 0x0a8b896448a7c196 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
fmul.h f5, f8, f27, dyn # perform operation
fmul.h f5, f8, f27, rdn # perform operation
fmul.h f5, f8, f27, rmm # perform operation
fmul.h f5, f8, f27, rne # perform operation
fmul.h f5, f8, f27, rtz # perform operation
fmul.h f5, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f8, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8000)
li x20, 0x333be3c1ba9ce401 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
fmul.h f20, f15, f18, dyn # perform operation
fmul.h f20, f15, f18, rdn # perform operation
fmul.h f20, f15, f18, rmm # perform operation
fmul.h f20, f15, f18, rne # perform operation
fmul.h f20, f15, f18, rtz # perform operation
fmul.h f20, f15, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f15, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f15, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f15, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f15, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3c00)
li x11, 0x1866b2b79b5fe698 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fmul.h f11, f20, f12, dyn # perform operation
fmul.h f11, f20, f12, rdn # perform operation
fmul.h f11, f20, f12, rmm # perform operation
fmul.h f11, f20, f12, rne # perform operation
fmul.h f11, f20, f12, rtz # perform operation
fmul.h f11, f20, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f20, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f20, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f20, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f20, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f20, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbc00)
li x25, 0xd85eb13bbe50e378 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fmul.h f25, f3, f2, dyn # perform operation
fmul.h f25, f3, f2, rdn # perform operation
fmul.h f25, f3, f2, rmm # perform operation
fmul.h f25, f3, f2, rne # perform operation
fmul.h f25, f3, f2, rtz # perform operation
fmul.h f25, f3, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f3, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f3, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f3, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f3, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f3, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3e00)
li x11, 0xd1dd3ef2e3c02a3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fmul.h f11, f29, f10, dyn # perform operation
fmul.h f11, f29, f10, rdn # perform operation
fmul.h f11, f29, f10, rmm # perform operation
fmul.h f11, f29, f10, rne # perform operation
fmul.h f11, f29, f10, rtz # perform operation
fmul.h f11, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f29, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbe00)
li x22, 0xcbb576e6a5637667 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fmul.h f22, f2, f26, dyn # perform operation
fmul.h f22, f2, f26, rdn # perform operation
fmul.h f22, f2, f26, rmm # perform operation
fmul.h f22, f2, f26, rne # perform operation
fmul.h f22, f2, f26, rtz # perform operation
fmul.h f22, f2, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f2, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f2, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f2, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f2, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f2, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x4000)
li x6, 0x00d05b2ae50ce86f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
fmul.h f6, f4, f5, dyn # perform operation
fmul.h f6, f4, f5, rdn # perform operation
fmul.h f6, f4, f5, rmm # perform operation
fmul.h f6, f4, f5, rne # perform operation
fmul.h f6, f4, f5, rtz # perform operation
fmul.h f6, f4, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f4, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f4, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f4, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f4, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f4, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc000)
li x12, 0x7d6ee68973a9119f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
fmul.h f12, f26, f30, dyn # perform operation
fmul.h f12, f26, f30, rdn # perform operation
fmul.h f12, f26, f30, rmm # perform operation
fmul.h f12, f26, f30, rne # perform operation
fmul.h f12, f26, f30, rtz # perform operation
fmul.h f12, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x400)
li x10, 0x351f53914993df93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
fmul.h f10, f7, f5, dyn # perform operation
fmul.h f10, f7, f5, rdn # perform operation
fmul.h f10, f7, f5, rmm # perform operation
fmul.h f10, f7, f5, rne # perform operation
fmul.h f10, f7, f5, rtz # perform operation
fmul.h f10, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8400)
li x30, 0xfc5245ecb7755599 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
fmul.h f30, f15, f24, dyn # perform operation
fmul.h f30, f15, f24, rdn # perform operation
fmul.h f30, f15, f24, rmm # perform operation
fmul.h f30, f15, f24, rne # perform operation
fmul.h f30, f15, f24, rtz # perform operation
fmul.h f30, f15, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f15, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f15, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f15, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f15, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7bff)
li x22, 0xc7d4fa53f6b310f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
fmul.h f22, f26, f9, dyn # perform operation
fmul.h f22, f26, f9, rdn # perform operation
fmul.h f22, f26, f9, rmm # perform operation
fmul.h f22, f26, f9, rne # perform operation
fmul.h f22, f26, f9, rtz # perform operation
fmul.h f22, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f26, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfbff)
li x6, 0xe37a4adbe69a5b4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
fmul.h f6, f27, f7, dyn # perform operation
fmul.h f6, f27, f7, rdn # perform operation
fmul.h f6, f27, f7, rmm # perform operation
fmul.h f6, f27, f7, rne # perform operation
fmul.h f6, f27, f7, rtz # perform operation
fmul.h f6, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3ff)
li x13, 0x9725144b861e12ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
fmul.h f13, f20, f28, dyn # perform operation
fmul.h f13, f20, f28, rdn # perform operation
fmul.h f13, f20, f28, rmm # perform operation
fmul.h f13, f20, f28, rne # perform operation
fmul.h f13, f20, f28, rtz # perform operation
fmul.h f13, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x83ff)
li x9, 0xccce691f80485bea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f16, 0(x2) # load 0x00008000 from memory into f16
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
fmul.h f9, f16, f15, dyn # perform operation
fmul.h f9, f16, f15, rdn # perform operation
fmul.h f9, f16, f15, rmm # perform operation
fmul.h f9, f16, f15, rne # perform operation
fmul.h f9, f16, f15, rtz # perform operation
fmul.h f9, f16, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f16, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f16, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f16, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f16, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f16, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x200)
li x25, 0xfe72b736281999ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
fmul.h f25, f9, f6, dyn # perform operation
fmul.h f25, f9, f6, rdn # perform operation
fmul.h f25, f9, f6, rmm # perform operation
fmul.h f25, f9, f6, rne # perform operation
fmul.h f25, f9, f6, rtz # perform operation
fmul.h f25, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8200)
li x2, 0x85996a52219f574e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fmul.h f2, f7, f23, dyn # perform operation
fmul.h f2, f7, f23, rdn # perform operation
fmul.h f2, f7, f23, rmm # perform operation
fmul.h f2, f7, f23, rne # perform operation
fmul.h f2, f7, f23, rtz # perform operation
fmul.h f2, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x1)
li x31, 0x6738a806e61a1436 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
fmul.h f31, f11, f5, dyn # perform operation
fmul.h f31, f11, f5, rdn # perform operation
fmul.h f31, f11, f5, rmm # perform operation
fmul.h f31, f11, f5, rne # perform operation
fmul.h f31, f11, f5, rtz # perform operation
fmul.h f31, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8001)
li x24, 0x6d78e43af553d584 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f4, 0(x2) # load 0x00008001 from memory into f4
fmul.h f24, f3, f4, dyn # perform operation
fmul.h f24, f3, f4, rdn # perform operation
fmul.h f24, f3, f4, rmm # perform operation
fmul.h f24, f3, f4, rne # perform operation
fmul.h f24, f3, f4, rtz # perform operation
fmul.h f24, f3, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f3, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f3, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f3, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f3, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f3, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c00)
li x24, 0x128b93c77654d32b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
fmul.h f24, f31, f9, dyn # perform operation
fmul.h f24, f31, f9, rdn # perform operation
fmul.h f24, f31, f9, rmm # perform operation
fmul.h f24, f31, f9, rne # perform operation
fmul.h f24, f31, f9, rtz # perform operation
fmul.h f24, f31, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f31, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f31, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f31, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f31, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc00)
li x6, 0xea2afb8b0708a945 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
fmul.h f6, f11, f29, dyn # perform operation
fmul.h f6, f11, f29, rdn # perform operation
fmul.h f6, f11, f29, rmm # perform operation
fmul.h f6, f11, f29, rne # perform operation
fmul.h f6, f11, f29, rtz # perform operation
fmul.h f6, f11, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f11, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f11, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f11, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f11, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f11, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7e00)
li x4, 0xad2ae8d93f65e6cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
fmul.h f4, f3, f11, dyn # perform operation
fmul.h f4, f3, f11, rdn # perform operation
fmul.h f4, f3, f11, rmm # perform operation
fmul.h f4, f3, f11, rne # perform operation
fmul.h f4, f3, f11, rtz # perform operation
fmul.h f4, f3, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f3, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f3, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f3, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f3, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7fff)
li x21, 0x9622d187b4a6c0ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
fmul.h f21, f30, f6, dyn # perform operation
fmul.h f21, f30, f6, rdn # perform operation
fmul.h f21, f30, f6, rmm # perform operation
fmul.h f21, f30, f6, rne # perform operation
fmul.h f21, f30, f6, rtz # perform operation
fmul.h f21, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c01)
li x20, 0x25699c2ea5a8ac5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
fmul.h f20, f21, f14, dyn # perform operation
fmul.h f20, f21, f14, rdn # perform operation
fmul.h f20, f21, f14, rmm # perform operation
fmul.h f20, f21, f14, rne # perform operation
fmul.h f20, f21, f14, rtz # perform operation
fmul.h f20, f21, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f21, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f21, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f21, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f21, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f21, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7dff)
li x8, 0xb0ce7417273bea81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
fmul.h f8, f22, f24, dyn # perform operation
fmul.h f8, f22, f24, rdn # perform operation
fmul.h f8, f22, f24, rmm # perform operation
fmul.h f8, f22, f24, rne # perform operation
fmul.h f8, f22, f24, rtz # perform operation
fmul.h f8, f22, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f22, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f22, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f22, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f22, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f22, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x58b4)
li x29, 0x98d74bf65947bb0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
fmul.h f29, f23, f8, dyn # perform operation
fmul.h f29, f23, f8, rdn # perform operation
fmul.h f29, f23, f8, rmm # perform operation
fmul.h f29, f23, f8, rne # perform operation
fmul.h f29, f23, f8, rtz # perform operation
fmul.h f29, f23, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f23, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f23, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f23, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f23, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f23, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc93a)
li x17, 0x921e1d1a56867bce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
fmul.h f17, f5, f11, dyn # perform operation
fmul.h f17, f5, f11, rdn # perform operation
fmul.h f17, f5, f11, rmm # perform operation
fmul.h f17, f5, f11, rne # perform operation
fmul.h f17, f5, f11, rtz # perform operation
fmul.h f17, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f5, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x0)
li x8, 0x93f92ea1ac2c4e6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
fmul.h f8, f11, f12, dyn # perform operation
fmul.h f8, f11, f12, rdn # perform operation
fmul.h f8, f11, f12, rmm # perform operation
fmul.h f8, f11, f12, rne # perform operation
fmul.h f8, f11, f12, rtz # perform operation
fmul.h f8, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8000)
li x18, 0xbedba45778cb7656 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
fmul.h f18, f5, f1, dyn # perform operation
fmul.h f18, f5, f1, rdn # perform operation
fmul.h f18, f5, f1, rmm # perform operation
fmul.h f18, f5, f1, rne # perform operation
fmul.h f18, f5, f1, rtz # perform operation
fmul.h f18, f5, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f5, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f5, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f5, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f5, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f5, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3c00)
li x6, 0x6e1c8306a8fb6091 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
fmul.h f6, f30, f13, dyn # perform operation
fmul.h f6, f30, f13, rdn # perform operation
fmul.h f6, f30, f13, rmm # perform operation
fmul.h f6, f30, f13, rne # perform operation
fmul.h f6, f30, f13, rtz # perform operation
fmul.h f6, f30, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f30, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f30, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f30, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f30, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f30, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbc00)
li x14, 0x2e3f3df8d354ac54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fmul.h f14, f17, f26, dyn # perform operation
fmul.h f14, f17, f26, rdn # perform operation
fmul.h f14, f17, f26, rmm # perform operation
fmul.h f14, f17, f26, rne # perform operation
fmul.h f14, f17, f26, rtz # perform operation
fmul.h f14, f17, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f17, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f17, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f17, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f17, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f17, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3e00)
li x17, 0x2c83a1dbc1e60ec5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
fmul.h f17, f16, f6, dyn # perform operation
fmul.h f17, f16, f6, rdn # perform operation
fmul.h f17, f16, f6, rmm # perform operation
fmul.h f17, f16, f6, rne # perform operation
fmul.h f17, f16, f6, rtz # perform operation
fmul.h f17, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f16, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbe00)
li x31, 0xb0c062183377e282 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
fmul.h f31, f7, f5, dyn # perform operation
fmul.h f31, f7, f5, rdn # perform operation
fmul.h f31, f7, f5, rmm # perform operation
fmul.h f31, f7, f5, rne # perform operation
fmul.h f31, f7, f5, rtz # perform operation
fmul.h f31, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x4000)
li x9, 0x4df6f3712e4c5e71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fmul.h f9, f28, f27, dyn # perform operation
fmul.h f9, f28, f27, rdn # perform operation
fmul.h f9, f28, f27, rmm # perform operation
fmul.h f9, f28, f27, rne # perform operation
fmul.h f9, f28, f27, rtz # perform operation
fmul.h f9, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f28, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc000)
li x6, 0xb23964c0f1d1958c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fmul.h f6, f30, f1, dyn # perform operation
fmul.h f6, f30, f1, rdn # perform operation
fmul.h f6, f30, f1, rmm # perform operation
fmul.h f6, f30, f1, rne # perform operation
fmul.h f6, f30, f1, rtz # perform operation
fmul.h f6, f30, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f30, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f30, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f30, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f30, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x400)
li x4, 0x2eda890653ed9bb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f9, 0(x2) # load 0x00003c00 from memory into f9
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
fmul.h f4, f9, f8, dyn # perform operation
fmul.h f4, f9, f8, rdn # perform operation
fmul.h f4, f9, f8, rmm # perform operation
fmul.h f4, f9, f8, rne # perform operation
fmul.h f4, f9, f8, rtz # perform operation
fmul.h f4, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f9, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8400)
li x20, 0x06a709af1f3e79d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
fmul.h f20, f14, f8, dyn # perform operation
fmul.h f20, f14, f8, rdn # perform operation
fmul.h f20, f14, f8, rmm # perform operation
fmul.h f20, f14, f8, rne # perform operation
fmul.h f20, f14, f8, rtz # perform operation
fmul.h f20, f14, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f14, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f14, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f14, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f14, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f14, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7bff)
li x30, 0x2c3051c87845a33a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
fmul.h f30, f8, f19, dyn # perform operation
fmul.h f30, f8, f19, rdn # perform operation
fmul.h f30, f8, f19, rmm # perform operation
fmul.h f30, f8, f19, rne # perform operation
fmul.h f30, f8, f19, rtz # perform operation
fmul.h f30, f8, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f8, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f8, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f8, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f8, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfbff)
li x17, 0xdf93c50f9ce7401a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
fmul.h f17, f3, f27, dyn # perform operation
fmul.h f17, f3, f27, rdn # perform operation
fmul.h f17, f3, f27, rmm # perform operation
fmul.h f17, f3, f27, rne # perform operation
fmul.h f17, f3, f27, rtz # perform operation
fmul.h f17, f3, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f3, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f3, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f3, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f3, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f3, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3ff)
li x21, 0x2e59ab43a319d205 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
fmul.h f21, f17, f1, dyn # perform operation
fmul.h f21, f17, f1, rdn # perform operation
fmul.h f21, f17, f1, rmm # perform operation
fmul.h f21, f17, f1, rne # perform operation
fmul.h f21, f17, f1, rtz # perform operation
fmul.h f21, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x83ff)
li x2, 0x473f8ff69ac82bee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
fmul.h f2, f27, f26, dyn # perform operation
fmul.h f2, f27, f26, rdn # perform operation
fmul.h f2, f27, f26, rmm # perform operation
fmul.h f2, f27, f26, rne # perform operation
fmul.h f2, f27, f26, rtz # perform operation
fmul.h f2, f27, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f27, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f27, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f27, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f27, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x200)
li x13, 0xfe5254f60a5ace28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f10, 0(x2) # load 0x00003c00 from memory into f10
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
fmul.h f13, f10, f26, dyn # perform operation
fmul.h f13, f10, f26, rdn # perform operation
fmul.h f13, f10, f26, rmm # perform operation
fmul.h f13, f10, f26, rne # perform operation
fmul.h f13, f10, f26, rtz # perform operation
fmul.h f13, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8200)
li x12, 0x75fabefedf84aa08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
fmul.h f12, f16, f30, dyn # perform operation
fmul.h f12, f16, f30, rdn # perform operation
fmul.h f12, f16, f30, rmm # perform operation
fmul.h f12, f16, f30, rne # perform operation
fmul.h f12, f16, f30, rtz # perform operation
fmul.h f12, f16, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f16, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f16, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f16, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f16, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f16, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x1)
li x18, 0x347b98dfc743b76f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
fmul.h f18, f1, f17, dyn # perform operation
fmul.h f18, f1, f17, rdn # perform operation
fmul.h f18, f1, f17, rmm # perform operation
fmul.h f18, f1, f17, rne # perform operation
fmul.h f18, f1, f17, rtz # perform operation
fmul.h f18, f1, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f1, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f1, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f1, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f1, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f1, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8001)
li x19, 0x555853013a409a0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
fmul.h f19, f7, f18, dyn # perform operation
fmul.h f19, f7, f18, rdn # perform operation
fmul.h f19, f7, f18, rmm # perform operation
fmul.h f19, f7, f18, rne # perform operation
fmul.h f19, f7, f18, rtz # perform operation
fmul.h f19, f7, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f7, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f7, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f7, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f7, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f7, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c00)
li x26, 0x9a33df5cdcf34448 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
fmul.h f26, f11, f28, dyn # perform operation
fmul.h f26, f11, f28, rdn # perform operation
fmul.h f26, f11, f28, rmm # perform operation
fmul.h f26, f11, f28, rne # perform operation
fmul.h f26, f11, f28, rtz # perform operation
fmul.h f26, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f11, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc00)
li x26, 0x5a9833c969dc93fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f29, 0(x2) # load 0x00003c00 from memory into f29
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
fmul.h f26, f29, f13, dyn # perform operation
fmul.h f26, f29, f13, rdn # perform operation
fmul.h f26, f29, f13, rmm # perform operation
fmul.h f26, f29, f13, rne # perform operation
fmul.h f26, f29, f13, rtz # perform operation
fmul.h f26, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f29, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7e00)
li x10, 0x416c873a03c51868 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f4, 0(x2) # load 0x00007e00 from memory into f4
fmul.h f10, f17, f4, dyn # perform operation
fmul.h f10, f17, f4, rdn # perform operation
fmul.h f10, f17, f4, rmm # perform operation
fmul.h f10, f17, f4, rne # perform operation
fmul.h f10, f17, f4, rtz # perform operation
fmul.h f10, f17, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f17, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f17, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f17, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f17, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f17, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7fff)
li x5, 0x51870425d06b2c38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
fmul.h f5, f1, f10, dyn # perform operation
fmul.h f5, f1, f10, rdn # perform operation
fmul.h f5, f1, f10, rmm # perform operation
fmul.h f5, f1, f10, rne # perform operation
fmul.h f5, f1, f10, rtz # perform operation
fmul.h f5, f1, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f1, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f1, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f1, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f1, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f1, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c01)
li x12, 0x2dff396c10f91363 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f3, 0(x2) # load 0x00007c01 from memory into f3
fmul.h f12, f1, f3, dyn # perform operation
fmul.h f12, f1, f3, rdn # perform operation
fmul.h f12, f1, f3, rmm # perform operation
fmul.h f12, f1, f3, rne # perform operation
fmul.h f12, f1, f3, rtz # perform operation
fmul.h f12, f1, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f1, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f1, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f1, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f1, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7dff)
li x4, 0x049c3e0433d180d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fmul.h f4, f2, f7, dyn # perform operation
fmul.h f4, f2, f7, rdn # perform operation
fmul.h f4, f2, f7, rmm # perform operation
fmul.h f4, f2, f7, rne # perform operation
fmul.h f4, f2, f7, rtz # perform operation
fmul.h f4, f2, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f2, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f2, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f2, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f2, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f2, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x58b4)
li x22, 0xf6d1bde2c83a6cf8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f1, 0(x2) # load 0x000058b4 from memory into f1
fmul.h f22, f14, f1, dyn # perform operation
fmul.h f22, f14, f1, rdn # perform operation
fmul.h f22, f14, f1, rmm # perform operation
fmul.h f22, f14, f1, rne # perform operation
fmul.h f22, f14, f1, rtz # perform operation
fmul.h f22, f14, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f14, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f14, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f14, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f14, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc93a)
li x25, 0xb3d43ba40fafc9cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
fmul.h f25, f28, f7, dyn # perform operation
fmul.h f25, f28, f7, rdn # perform operation
fmul.h f25, f28, f7, rmm # perform operation
fmul.h f25, f28, f7, rne # perform operation
fmul.h f25, f28, f7, rtz # perform operation
fmul.h f25, f28, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f28, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f28, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f28, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f28, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f28, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x0)
li x2, 0x7184da4ef5820c3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fmul.h f2, f30, f14, dyn # perform operation
fmul.h f2, f30, f14, rdn # perform operation
fmul.h f2, f30, f14, rmm # perform operation
fmul.h f2, f30, f14, rne # perform operation
fmul.h f2, f30, f14, rtz # perform operation
fmul.h f2, f30, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f30, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f30, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f30, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f30, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f30, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8000)
li x25, 0x6f35ad381323bc76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
fmul.h f25, f17, f21, dyn # perform operation
fmul.h f25, f17, f21, rdn # perform operation
fmul.h f25, f17, f21, rmm # perform operation
fmul.h f25, f17, f21, rne # perform operation
fmul.h f25, f17, f21, rtz # perform operation
fmul.h f25, f17, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f17, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f17, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f17, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f17, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f17, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3c00)
li x30, 0xab0c6e0800ca71b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
fmul.h f30, f14, f11, dyn # perform operation
fmul.h f30, f14, f11, rdn # perform operation
fmul.h f30, f14, f11, rmm # perform operation
fmul.h f30, f14, f11, rne # perform operation
fmul.h f30, f14, f11, rtz # perform operation
fmul.h f30, f14, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f14, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f14, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f14, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f14, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f14, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbc00)
li x5, 0x8b6141441d55e852 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f2, 0(x2) # load 0x0000bc00 from memory into f2
fmul.h f5, f17, f2, dyn # perform operation
fmul.h f5, f17, f2, rdn # perform operation
fmul.h f5, f17, f2, rmm # perform operation
fmul.h f5, f17, f2, rne # perform operation
fmul.h f5, f17, f2, rtz # perform operation
fmul.h f5, f17, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f17, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f17, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f17, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f17, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f17, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3e00)
li x19, 0x0b2e7885fc6f1de0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
fmul.h f19, f5, f6, dyn # perform operation
fmul.h f19, f5, f6, rdn # perform operation
fmul.h f19, f5, f6, rmm # perform operation
fmul.h f19, f5, f6, rne # perform operation
fmul.h f19, f5, f6, rtz # perform operation
fmul.h f19, f5, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f5, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f5, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f5, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f5, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f5, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbe00)
li x9, 0x02346b1688226b7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
fmul.h f9, f13, f21, dyn # perform operation
fmul.h f9, f13, f21, rdn # perform operation
fmul.h f9, f13, f21, rmm # perform operation
fmul.h f9, f13, f21, rne # perform operation
fmul.h f9, f13, f21, rtz # perform operation
fmul.h f9, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x4000)
li x27, 0x12bc521bfeebde4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fmul.h f27, f9, f22, dyn # perform operation
fmul.h f27, f9, f22, rdn # perform operation
fmul.h f27, f9, f22, rmm # perform operation
fmul.h f27, f9, f22, rne # perform operation
fmul.h f27, f9, f22, rtz # perform operation
fmul.h f27, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f9, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc000)
li x18, 0xedadeb8970efb88a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fmul.h f18, f16, f5, dyn # perform operation
fmul.h f18, f16, f5, rdn # perform operation
fmul.h f18, f16, f5, rmm # perform operation
fmul.h f18, f16, f5, rne # perform operation
fmul.h f18, f16, f5, rtz # perform operation
fmul.h f18, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f16, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x400)
li x14, 0xff0451328605a842 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
fmul.h f14, f11, f1, dyn # perform operation
fmul.h f14, f11, f1, rdn # perform operation
fmul.h f14, f11, f1, rmm # perform operation
fmul.h f14, f11, f1, rne # perform operation
fmul.h f14, f11, f1, rtz # perform operation
fmul.h f14, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f11, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8400)
li x5, 0x208e6d906d220b02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
fmul.h f5, f21, f6, dyn # perform operation
fmul.h f5, f21, f6, rdn # perform operation
fmul.h f5, f21, f6, rmm # perform operation
fmul.h f5, f21, f6, rne # perform operation
fmul.h f5, f21, f6, rtz # perform operation
fmul.h f5, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7bff)
li x18, 0xf08955903cae803d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
fmul.h f18, f13, f21, dyn # perform operation
fmul.h f18, f13, f21, rdn # perform operation
fmul.h f18, f13, f21, rmm # perform operation
fmul.h f18, f13, f21, rne # perform operation
fmul.h f18, f13, f21, rtz # perform operation
fmul.h f18, f13, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f13, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f13, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f13, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f13, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfbff)
li x19, 0x3a14c7b11e643dc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f3, 0(x2) # load 0x0000fbff from memory into f3
fmul.h f19, f29, f3, dyn # perform operation
fmul.h f19, f29, f3, rdn # perform operation
fmul.h f19, f29, f3, rmm # perform operation
fmul.h f19, f29, f3, rne # perform operation
fmul.h f19, f29, f3, rtz # perform operation
fmul.h f19, f29, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f29, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f29, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f29, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f29, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f29, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3ff)
li x31, 0x9c64fa124a6fc991 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
fmul.h f31, f30, f12, dyn # perform operation
fmul.h f31, f30, f12, rdn # perform operation
fmul.h f31, f30, f12, rmm # perform operation
fmul.h f31, f30, f12, rne # perform operation
fmul.h f31, f30, f12, rtz # perform operation
fmul.h f31, f30, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f30, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f30, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f30, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f30, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f30, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x83ff)
li x13, 0xc267dd8f1589dd7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
fmul.h f13, f25, f19, dyn # perform operation
fmul.h f13, f25, f19, rdn # perform operation
fmul.h f13, f25, f19, rmm # perform operation
fmul.h f13, f25, f19, rne # perform operation
fmul.h f13, f25, f19, rtz # perform operation
fmul.h f13, f25, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f25, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f25, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f25, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f25, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f25, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x200)
li x24, 0x18e8931689cfcc85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
fmul.h f24, f9, f30, dyn # perform operation
fmul.h f24, f9, f30, rdn # perform operation
fmul.h f24, f9, f30, rmm # perform operation
fmul.h f24, f9, f30, rne # perform operation
fmul.h f24, f9, f30, rtz # perform operation
fmul.h f24, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f9, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8200)
li x15, 0x8eb03380866bf74f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
fmul.h f15, f31, f25, dyn # perform operation
fmul.h f15, f31, f25, rdn # perform operation
fmul.h f15, f31, f25, rmm # perform operation
fmul.h f15, f31, f25, rne # perform operation
fmul.h f15, f31, f25, rtz # perform operation
fmul.h f15, f31, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f31, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f31, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f31, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f31, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f31, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x1)
li x1, 0x5c8f8470266557e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
fmul.h f1, f12, f17, dyn # perform operation
fmul.h f1, f12, f17, rdn # perform operation
fmul.h f1, f12, f17, rmm # perform operation
fmul.h f1, f12, f17, rne # perform operation
fmul.h f1, f12, f17, rtz # perform operation
fmul.h f1, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f12, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8001)
li x22, 0x47da7a4cc97c82b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
fmul.h f22, f30, f8, dyn # perform operation
fmul.h f22, f30, f8, rdn # perform operation
fmul.h f22, f30, f8, rmm # perform operation
fmul.h f22, f30, f8, rne # perform operation
fmul.h f22, f30, f8, rtz # perform operation
fmul.h f22, f30, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f30, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f30, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f30, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f30, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c00)
li x22, 0xd6008be52a600a5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
fmul.h f22, f15, f11, dyn # perform operation
fmul.h f22, f15, f11, rdn # perform operation
fmul.h f22, f15, f11, rmm # perform operation
fmul.h f22, f15, f11, rne # perform operation
fmul.h f22, f15, f11, rtz # perform operation
fmul.h f22, f15, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f15, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f15, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f15, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f15, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f15, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc00)
li x24, 0x259426f4788d1038 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f11, 0(x2) # load 0x0000bc00 from memory into f11
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
fmul.h f24, f11, f18, dyn # perform operation
fmul.h f24, f11, f18, rdn # perform operation
fmul.h f24, f11, f18, rmm # perform operation
fmul.h f24, f11, f18, rne # perform operation
fmul.h f24, f11, f18, rtz # perform operation
fmul.h f24, f11, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f11, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f11, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f11, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f11, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f11, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7e00)
li x24, 0xa6d4a8ae116d352f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
fmul.h f24, f25, f7, dyn # perform operation
fmul.h f24, f25, f7, rdn # perform operation
fmul.h f24, f25, f7, rmm # perform operation
fmul.h f24, f25, f7, rne # perform operation
fmul.h f24, f25, f7, rtz # perform operation
fmul.h f24, f25, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f25, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f25, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f25, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f25, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f25, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7fff)
li x18, 0x49a978d956959c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
fmul.h f18, f20, f29, dyn # perform operation
fmul.h f18, f20, f29, rdn # perform operation
fmul.h f18, f20, f29, rmm # perform operation
fmul.h f18, f20, f29, rne # perform operation
fmul.h f18, f20, f29, rtz # perform operation
fmul.h f18, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c01)
li x14, 0x6a97621a2df170d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
fmul.h f14, f17, f16, dyn # perform operation
fmul.h f14, f17, f16, rdn # perform operation
fmul.h f14, f17, f16, rmm # perform operation
fmul.h f14, f17, f16, rne # perform operation
fmul.h f14, f17, f16, rtz # perform operation
fmul.h f14, f17, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f17, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f17, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f17, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f17, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f17, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7dff)
li x28, 0x8722902f8ddf6af4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
fmul.h f28, f8, f9, dyn # perform operation
fmul.h f28, f8, f9, rdn # perform operation
fmul.h f28, f8, f9, rmm # perform operation
fmul.h f28, f8, f9, rne # perform operation
fmul.h f28, f8, f9, rtz # perform operation
fmul.h f28, f8, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f8, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f8, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f8, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f8, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f8, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x58b4)
li x10, 0x95556719326c21a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
fmul.h f10, f5, f16, dyn # perform operation
fmul.h f10, f5, f16, rdn # perform operation
fmul.h f10, f5, f16, rmm # perform operation
fmul.h f10, f5, f16, rne # perform operation
fmul.h f10, f5, f16, rtz # perform operation
fmul.h f10, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f5, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc93a)
li x31, 0x8ba737bbf25398a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
fmul.h f31, f15, f29, dyn # perform operation
fmul.h f31, f15, f29, rdn # perform operation
fmul.h f31, f15, f29, rmm # perform operation
fmul.h f31, f15, f29, rne # perform operation
fmul.h f31, f15, f29, rtz # perform operation
fmul.h f31, f15, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f15, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f15, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f15, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f15, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x0)
li x13, 0x3c4ae04d29c2e680 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
fmul.h f13, f21, f22, dyn # perform operation
fmul.h f13, f21, f22, rdn # perform operation
fmul.h f13, f21, f22, rmm # perform operation
fmul.h f13, f21, f22, rne # perform operation
fmul.h f13, f21, f22, rtz # perform operation
fmul.h f13, f21, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f21, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f21, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f21, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f21, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f21, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8000)
li x12, 0x90254c3c740350b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f18, 0(x2) # load 0x00003e00 from memory into f18
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
fmul.h f12, f18, f4, dyn # perform operation
fmul.h f12, f18, f4, rdn # perform operation
fmul.h f12, f18, f4, rmm # perform operation
fmul.h f12, f18, f4, rne # perform operation
fmul.h f12, f18, f4, rtz # perform operation
fmul.h f12, f18, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f18, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f18, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f18, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f18, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f18, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3c00)
li x5, 0xfec43148a060373a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fmul.h f5, f17, f3, dyn # perform operation
fmul.h f5, f17, f3, rdn # perform operation
fmul.h f5, f17, f3, rmm # perform operation
fmul.h f5, f17, f3, rne # perform operation
fmul.h f5, f17, f3, rtz # perform operation
fmul.h f5, f17, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f17, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f17, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f17, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f17, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f17, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbc00)
li x29, 0xf50ed386e4eb94de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
fmul.h f29, f17, f24, dyn # perform operation
fmul.h f29, f17, f24, rdn # perform operation
fmul.h f29, f17, f24, rmm # perform operation
fmul.h f29, f17, f24, rne # perform operation
fmul.h f29, f17, f24, rtz # perform operation
fmul.h f29, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f17, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3e00)
li x29, 0xadc0a922ea1fd205 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
fmul.h f29, f2, f11, dyn # perform operation
fmul.h f29, f2, f11, rdn # perform operation
fmul.h f29, f2, f11, rmm # perform operation
fmul.h f29, f2, f11, rne # perform operation
fmul.h f29, f2, f11, rtz # perform operation
fmul.h f29, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f2, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbe00)
li x6, 0x8153f9ff2891205d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
fmul.h f6, f22, f25, dyn # perform operation
fmul.h f6, f22, f25, rdn # perform operation
fmul.h f6, f22, f25, rmm # perform operation
fmul.h f6, f22, f25, rne # perform operation
fmul.h f6, f22, f25, rtz # perform operation
fmul.h f6, f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x4000)
li x6, 0x78981d8bbbedefc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
fmul.h f6, f10, f12, dyn # perform operation
fmul.h f6, f10, f12, rdn # perform operation
fmul.h f6, f10, f12, rmm # perform operation
fmul.h f6, f10, f12, rne # perform operation
fmul.h f6, f10, f12, rtz # perform operation
fmul.h f6, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc000)
li x7, 0x55e54ea4215815b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f4, 0(x2) # load 0x0000c000 from memory into f4
fmul.h f7, f25, f4, dyn # perform operation
fmul.h f7, f25, f4, rdn # perform operation
fmul.h f7, f25, f4, rmm # perform operation
fmul.h f7, f25, f4, rne # perform operation
fmul.h f7, f25, f4, rtz # perform operation
fmul.h f7, f25, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f25, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f25, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f25, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f25, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f25, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x400)
li x8, 0x9cba0d7aa6dce0af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
fmul.h f8, f24, f11, dyn # perform operation
fmul.h f8, f24, f11, rdn # perform operation
fmul.h f8, f24, f11, rmm # perform operation
fmul.h f8, f24, f11, rne # perform operation
fmul.h f8, f24, f11, rtz # perform operation
fmul.h f8, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8400)
li x14, 0x2da1126bc451bf4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
fmul.h f14, f7, f29, dyn # perform operation
fmul.h f14, f7, f29, rdn # perform operation
fmul.h f14, f7, f29, rmm # perform operation
fmul.h f14, f7, f29, rne # perform operation
fmul.h f14, f7, f29, rtz # perform operation
fmul.h f14, f7, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f7, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f7, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f7, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f7, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f7, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7bff)
li x4, 0x684d5fea0a5f7e42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
fmul.h f4, f13, f26, dyn # perform operation
fmul.h f4, f13, f26, rdn # perform operation
fmul.h f4, f13, f26, rmm # perform operation
fmul.h f4, f13, f26, rne # perform operation
fmul.h f4, f13, f26, rtz # perform operation
fmul.h f4, f13, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f13, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f13, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f13, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f13, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f13, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfbff)
li x8, 0xd16f1923224feb35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
fmul.h f8, f25, f31, dyn # perform operation
fmul.h f8, f25, f31, rdn # perform operation
fmul.h f8, f25, f31, rmm # perform operation
fmul.h f8, f25, f31, rne # perform operation
fmul.h f8, f25, f31, rtz # perform operation
fmul.h f8, f25, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f25, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f25, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f25, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f25, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3ff)
li x1, 0xf4e0f4b4f3c7dd44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
fmul.h f1, f8, f15, dyn # perform operation
fmul.h f1, f8, f15, rdn # perform operation
fmul.h f1, f8, f15, rmm # perform operation
fmul.h f1, f8, f15, rne # perform operation
fmul.h f1, f8, f15, rtz # perform operation
fmul.h f1, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x83ff)
li x14, 0x7a1d762b28118767 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
fmul.h f14, f8, f15, dyn # perform operation
fmul.h f14, f8, f15, rdn # perform operation
fmul.h f14, f8, f15, rmm # perform operation
fmul.h f14, f8, f15, rne # perform operation
fmul.h f14, f8, f15, rtz # perform operation
fmul.h f14, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x200)
li x20, 0xc5ec68355943230f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fmul.h f20, f19, f24, dyn # perform operation
fmul.h f20, f19, f24, rdn # perform operation
fmul.h f20, f19, f24, rmm # perform operation
fmul.h f20, f19, f24, rne # perform operation
fmul.h f20, f19, f24, rtz # perform operation
fmul.h f20, f19, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f19, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f19, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f19, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f19, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f19, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8200)
li x28, 0x68eb5ee97656db41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
fmul.h f28, f4, f31, dyn # perform operation
fmul.h f28, f4, f31, rdn # perform operation
fmul.h f28, f4, f31, rmm # perform operation
fmul.h f28, f4, f31, rne # perform operation
fmul.h f28, f4, f31, rtz # perform operation
fmul.h f28, f4, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f4, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f4, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f4, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f4, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f4, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x1)
li x12, 0x31baf8b05b11314a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fmul.h f12, f4, f21, dyn # perform operation
fmul.h f12, f4, f21, rdn # perform operation
fmul.h f12, f4, f21, rmm # perform operation
fmul.h f12, f4, f21, rne # perform operation
fmul.h f12, f4, f21, rtz # perform operation
fmul.h f12, f4, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f4, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f4, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f4, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f4, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f4, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8001)
li x5, 0xee21c3e5503ece19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f30, 0(x2) # load 0x00008001 from memory into f30
fmul.h f5, f9, f30, dyn # perform operation
fmul.h f5, f9, f30, rdn # perform operation
fmul.h f5, f9, f30, rmm # perform operation
fmul.h f5, f9, f30, rne # perform operation
fmul.h f5, f9, f30, rtz # perform operation
fmul.h f5, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f9, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c00)
li x16, 0x5b93ed045113e047 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
fmul.h f16, f26, f9, dyn # perform operation
fmul.h f16, f26, f9, rdn # perform operation
fmul.h f16, f26, f9, rmm # perform operation
fmul.h f16, f26, f9, rne # perform operation
fmul.h f16, f26, f9, rtz # perform operation
fmul.h f16, f26, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f26, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f26, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f26, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f26, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f26, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc00)
li x4, 0x1cf6be871bf767fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f23, 0(x2) # load 0x00003e00 from memory into f23
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
fmul.h f4, f23, f31, dyn # perform operation
fmul.h f4, f23, f31, rdn # perform operation
fmul.h f4, f23, f31, rmm # perform operation
fmul.h f4, f23, f31, rne # perform operation
fmul.h f4, f23, f31, rtz # perform operation
fmul.h f4, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f23, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7e00)
li x12, 0xda6de8771f23349c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
fmul.h f12, f20, f25, dyn # perform operation
fmul.h f12, f20, f25, rdn # perform operation
fmul.h f12, f20, f25, rmm # perform operation
fmul.h f12, f20, f25, rne # perform operation
fmul.h f12, f20, f25, rtz # perform operation
fmul.h f12, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f20, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7fff)
li x4, 0x2e167e88d1046d21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f12, 0(x2) # load 0x00007fff from memory into f12
fmul.h f4, f16, f12, dyn # perform operation
fmul.h f4, f16, f12, rdn # perform operation
fmul.h f4, f16, f12, rmm # perform operation
fmul.h f4, f16, f12, rne # perform operation
fmul.h f4, f16, f12, rtz # perform operation
fmul.h f4, f16, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f16, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f16, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f16, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f16, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c01)
li x23, 0xf6cd64b072a640c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
fmul.h f23, f13, f17, dyn # perform operation
fmul.h f23, f13, f17, rdn # perform operation
fmul.h f23, f13, f17, rmm # perform operation
fmul.h f23, f13, f17, rne # perform operation
fmul.h f23, f13, f17, rtz # perform operation
fmul.h f23, f13, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f13, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f13, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f13, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f13, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7dff)
li x24, 0x75de3987db47b6e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fmul.h f24, f19, f30, dyn # perform operation
fmul.h f24, f19, f30, rdn # perform operation
fmul.h f24, f19, f30, rmm # perform operation
fmul.h f24, f19, f30, rne # perform operation
fmul.h f24, f19, f30, rtz # perform operation
fmul.h f24, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f19, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x58b4)
li x23, 0x1d4fc33628a1812a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
fmul.h f23, f21, f4, dyn # perform operation
fmul.h f23, f21, f4, rdn # perform operation
fmul.h f23, f21, f4, rmm # perform operation
fmul.h f23, f21, f4, rne # perform operation
fmul.h f23, f21, f4, rtz # perform operation
fmul.h f23, f21, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f21, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f21, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f21, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f21, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f21, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc93a)
li x11, 0x07fe22e606515ccf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
fmul.h f11, f5, f15, dyn # perform operation
fmul.h f11, f5, f15, rdn # perform operation
fmul.h f11, f5, f15, rmm # perform operation
fmul.h f11, f5, f15, rne # perform operation
fmul.h f11, f5, f15, rtz # perform operation
fmul.h f11, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x0)
li x23, 0xba449bdd060d1eef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
fmul.h f23, f11, f3, dyn # perform operation
fmul.h f23, f11, f3, rdn # perform operation
fmul.h f23, f11, f3, rmm # perform operation
fmul.h f23, f11, f3, rne # perform operation
fmul.h f23, f11, f3, rtz # perform operation
fmul.h f23, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f11, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8000)
li x18, 0x4f8b050c91e45fae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fmul.h f18, f25, f7, dyn # perform operation
fmul.h f18, f25, f7, rdn # perform operation
fmul.h f18, f25, f7, rmm # perform operation
fmul.h f18, f25, f7, rne # perform operation
fmul.h f18, f25, f7, rtz # perform operation
fmul.h f18, f25, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f25, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f25, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f25, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f25, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f25, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3c00)
li x6, 0x07f860bfc2256af1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
fmul.h f6, f20, f11, dyn # perform operation
fmul.h f6, f20, f11, rdn # perform operation
fmul.h f6, f20, f11, rmm # perform operation
fmul.h f6, f20, f11, rne # perform operation
fmul.h f6, f20, f11, rtz # perform operation
fmul.h f6, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f20, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbc00)
li x9, 0x7199f51e16bfd27d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
fmul.h f9, f15, f17, dyn # perform operation
fmul.h f9, f15, f17, rdn # perform operation
fmul.h f9, f15, f17, rmm # perform operation
fmul.h f9, f15, f17, rne # perform operation
fmul.h f9, f15, f17, rtz # perform operation
fmul.h f9, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f15, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3e00)
li x1, 0x9643b31da073d9be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
fmul.h f1, f11, f4, dyn # perform operation
fmul.h f1, f11, f4, rdn # perform operation
fmul.h f1, f11, f4, rmm # perform operation
fmul.h f1, f11, f4, rne # perform operation
fmul.h f1, f11, f4, rtz # perform operation
fmul.h f1, f11, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f11, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f11, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f11, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f11, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f11, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbe00)
li x12, 0x8557e126e07cb787 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
fmul.h f12, f29, f9, dyn # perform operation
fmul.h f12, f29, f9, rdn # perform operation
fmul.h f12, f29, f9, rmm # perform operation
fmul.h f12, f29, f9, rne # perform operation
fmul.h f12, f29, f9, rtz # perform operation
fmul.h f12, f29, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f29, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f29, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f29, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f29, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x4000)
li x12, 0xfe8afd307d0578b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
fmul.h f12, f5, f3, dyn # perform operation
fmul.h f12, f5, f3, rdn # perform operation
fmul.h f12, f5, f3, rmm # perform operation
fmul.h f12, f5, f3, rne # perform operation
fmul.h f12, f5, f3, rtz # perform operation
fmul.h f12, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc000)
li x9, 0xdcf0f0f123024dbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
fmul.h f9, f6, f16, dyn # perform operation
fmul.h f9, f6, f16, rdn # perform operation
fmul.h f9, f6, f16, rmm # perform operation
fmul.h f9, f6, f16, rne # perform operation
fmul.h f9, f6, f16, rtz # perform operation
fmul.h f9, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f6, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x400)
li x9, 0x4738ad0feab658bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
fmul.h f9, f29, f31, dyn # perform operation
fmul.h f9, f29, f31, rdn # perform operation
fmul.h f9, f29, f31, rmm # perform operation
fmul.h f9, f29, f31, rne # perform operation
fmul.h f9, f29, f31, rtz # perform operation
fmul.h f9, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f29, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8400)
li x27, 0xada9a3c6d770ab2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
fmul.h f27, f1, f26, dyn # perform operation
fmul.h f27, f1, f26, rdn # perform operation
fmul.h f27, f1, f26, rmm # perform operation
fmul.h f27, f1, f26, rne # perform operation
fmul.h f27, f1, f26, rtz # perform operation
fmul.h f27, f1, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f1, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f1, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f1, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f1, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f1, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7bff)
li x16, 0x38c10b020116304d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
fmul.h f16, f18, f30, dyn # perform operation
fmul.h f16, f18, f30, rdn # perform operation
fmul.h f16, f18, f30, rmm # perform operation
fmul.h f16, f18, f30, rne # perform operation
fmul.h f16, f18, f30, rtz # perform operation
fmul.h f16, f18, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f18, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f18, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f18, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f18, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f18, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfbff)
li x28, 0x9a66cc7e2abde77d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
fmul.h f28, f12, f19, dyn # perform operation
fmul.h f28, f12, f19, rdn # perform operation
fmul.h f28, f12, f19, rmm # perform operation
fmul.h f28, f12, f19, rne # perform operation
fmul.h f28, f12, f19, rtz # perform operation
fmul.h f28, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3ff)
li x27, 0x27af7d216e4fa386 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
fmul.h f27, f16, f28, dyn # perform operation
fmul.h f27, f16, f28, rdn # perform operation
fmul.h f27, f16, f28, rmm # perform operation
fmul.h f27, f16, f28, rne # perform operation
fmul.h f27, f16, f28, rtz # perform operation
fmul.h f27, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f16, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x83ff)
li x26, 0x9245afcfe41beb56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
fmul.h f26, f23, f9, dyn # perform operation
fmul.h f26, f23, f9, rdn # perform operation
fmul.h f26, f23, f9, rmm # perform operation
fmul.h f26, f23, f9, rne # perform operation
fmul.h f26, f23, f9, rtz # perform operation
fmul.h f26, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f23, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x200)
li x27, 0xc058e20f33886287 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
fmul.h f27, f16, f28, dyn # perform operation
fmul.h f27, f16, f28, rdn # perform operation
fmul.h f27, f16, f28, rmm # perform operation
fmul.h f27, f16, f28, rne # perform operation
fmul.h f27, f16, f28, rtz # perform operation
fmul.h f27, f16, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f16, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f16, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f16, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f16, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f16, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8200)
li x7, 0xa37f6e92a615c02e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
fmul.h f7, f9, f19, dyn # perform operation
fmul.h f7, f9, f19, rdn # perform operation
fmul.h f7, f9, f19, rmm # perform operation
fmul.h f7, f9, f19, rne # perform operation
fmul.h f7, f9, f19, rtz # perform operation
fmul.h f7, f9, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f9, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f9, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f9, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f9, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f9, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x1)
li x24, 0x0c8b52a08cc6ac4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
fmul.h f24, f2, f5, dyn # perform operation
fmul.h f24, f2, f5, rdn # perform operation
fmul.h f24, f2, f5, rmm # perform operation
fmul.h f24, f2, f5, rne # perform operation
fmul.h f24, f2, f5, rtz # perform operation
fmul.h f24, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f2, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8001)
li x30, 0xb292d4f81f9a88ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f28, 0(x2) # load 0x00008001 from memory into f28
fmul.h f30, f26, f28, dyn # perform operation
fmul.h f30, f26, f28, rdn # perform operation
fmul.h f30, f26, f28, rmm # perform operation
fmul.h f30, f26, f28, rne # perform operation
fmul.h f30, f26, f28, rtz # perform operation
fmul.h f30, f26, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f26, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f26, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f26, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f26, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f26, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c00)
li x25, 0xd702f55c83cf77dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
fmul.h f25, f29, f20, dyn # perform operation
fmul.h f25, f29, f20, rdn # perform operation
fmul.h f25, f29, f20, rmm # perform operation
fmul.h f25, f29, f20, rne # perform operation
fmul.h f25, f29, f20, rtz # perform operation
fmul.h f25, f29, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f29, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f29, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f29, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f29, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f29, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc00)
li x31, 0x4de9a6a78a222794 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
fmul.h f31, f23, f10, dyn # perform operation
fmul.h f31, f23, f10, rdn # perform operation
fmul.h f31, f23, f10, rmm # perform operation
fmul.h f31, f23, f10, rne # perform operation
fmul.h f31, f23, f10, rtz # perform operation
fmul.h f31, f23, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f23, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f23, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f23, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f23, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f23, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7e00)
li x26, 0x651ea65611f3c0a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
fmul.h f26, f16, f5, dyn # perform operation
fmul.h f26, f16, f5, rdn # perform operation
fmul.h f26, f16, f5, rmm # perform operation
fmul.h f26, f16, f5, rne # perform operation
fmul.h f26, f16, f5, rtz # perform operation
fmul.h f26, f16, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f16, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f16, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f16, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f16, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f16, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7fff)
li x5, 0xc8128708ac6544fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fmul.h f5, f19, f25, dyn # perform operation
fmul.h f5, f19, f25, rdn # perform operation
fmul.h f5, f19, f25, rmm # perform operation
fmul.h f5, f19, f25, rne # perform operation
fmul.h f5, f19, f25, rtz # perform operation
fmul.h f5, f19, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f19, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f19, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f19, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f19, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f19, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c01)
li x2, 0x04a0e2453f3a2ec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
fmul.h f2, f31, f15, dyn # perform operation
fmul.h f2, f31, f15, rdn # perform operation
fmul.h f2, f31, f15, rmm # perform operation
fmul.h f2, f31, f15, rne # perform operation
fmul.h f2, f31, f15, rtz # perform operation
fmul.h f2, f31, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f31, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f31, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f31, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f31, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7dff)
li x27, 0xdd8032b26e081c8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
fmul.h f27, f28, f2, dyn # perform operation
fmul.h f27, f28, f2, rdn # perform operation
fmul.h f27, f28, f2, rmm # perform operation
fmul.h f27, f28, f2, rne # perform operation
fmul.h f27, f28, f2, rtz # perform operation
fmul.h f27, f28, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f28, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f28, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f28, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f28, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f28, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x58b4)
li x16, 0x6fcb9f3bc4527258 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
fmul.h f16, f7, f28, dyn # perform operation
fmul.h f16, f7, f28, rdn # perform operation
fmul.h f16, f7, f28, rmm # perform operation
fmul.h f16, f7, f28, rne # perform operation
fmul.h f16, f7, f28, rtz # perform operation
fmul.h f16, f7, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f7, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f7, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f7, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f7, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc93a)
li x25, 0x74d46a2ed26648b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f4, 0(x2) # load 0x0000be00 from memory into f4
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
fmul.h f25, f4, f21, dyn # perform operation
fmul.h f25, f4, f21, rdn # perform operation
fmul.h f25, f4, f21, rmm # perform operation
fmul.h f25, f4, f21, rne # perform operation
fmul.h f25, f4, f21, rtz # perform operation
fmul.h f25, f4, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f4, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f4, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f4, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f4, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f4, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x0)
li x2, 0xe99376bf51275caf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
fmul.h f2, f22, f14, dyn # perform operation
fmul.h f2, f22, f14, rdn # perform operation
fmul.h f2, f22, f14, rmm # perform operation
fmul.h f2, f22, f14, rne # perform operation
fmul.h f2, f22, f14, rtz # perform operation
fmul.h f2, f22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f22, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f22, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f22, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f22, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f22, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8000)
li x11, 0x775c4b9061ba4552 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
fmul.h f11, f8, f18, dyn # perform operation
fmul.h f11, f8, f18, rdn # perform operation
fmul.h f11, f8, f18, rmm # perform operation
fmul.h f11, f8, f18, rne # perform operation
fmul.h f11, f8, f18, rtz # perform operation
fmul.h f11, f8, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f8, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f8, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f8, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f8, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f8, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3c00)
li x16, 0xf49beddd246eef43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fmul.h f16, f20, f30, dyn # perform operation
fmul.h f16, f20, f30, rdn # perform operation
fmul.h f16, f20, f30, rmm # perform operation
fmul.h f16, f20, f30, rne # perform operation
fmul.h f16, f20, f30, rtz # perform operation
fmul.h f16, f20, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f20, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f20, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f20, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f20, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f20, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbc00)
li x11, 0x29bb6fd47b717b2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
fmul.h f11, f18, f10, dyn # perform operation
fmul.h f11, f18, f10, rdn # perform operation
fmul.h f11, f18, f10, rmm # perform operation
fmul.h f11, f18, f10, rne # perform operation
fmul.h f11, f18, f10, rtz # perform operation
fmul.h f11, f18, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f18, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f18, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f18, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f18, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f18, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3e00)
li x25, 0x6574ed1509e748c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fmul.h f25, f23, f28, dyn # perform operation
fmul.h f25, f23, f28, rdn # perform operation
fmul.h f25, f23, f28, rmm # perform operation
fmul.h f25, f23, f28, rne # perform operation
fmul.h f25, f23, f28, rtz # perform operation
fmul.h f25, f23, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f23, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f23, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f23, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f23, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbe00)
li x25, 0x8010055bc61451c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f17, 0(x2) # load 0x00004000 from memory into f17
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fmul.h f25, f17, f20, dyn # perform operation
fmul.h f25, f17, f20, rdn # perform operation
fmul.h f25, f17, f20, rmm # perform operation
fmul.h f25, f17, f20, rne # perform operation
fmul.h f25, f17, f20, rtz # perform operation
fmul.h f25, f17, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f17, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f17, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f17, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f17, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f17, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x4000)
li x17, 0x076710714ea2de9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
fmul.h f17, f25, f8, dyn # perform operation
fmul.h f17, f25, f8, rdn # perform operation
fmul.h f17, f25, f8, rmm # perform operation
fmul.h f17, f25, f8, rne # perform operation
fmul.h f17, f25, f8, rtz # perform operation
fmul.h f17, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f25, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc000)
li x19, 0x560537c16b06e96f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
fmul.h f19, f18, f24, dyn # perform operation
fmul.h f19, f18, f24, rdn # perform operation
fmul.h f19, f18, f24, rmm # perform operation
fmul.h f19, f18, f24, rne # perform operation
fmul.h f19, f18, f24, rtz # perform operation
fmul.h f19, f18, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f18, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f18, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f18, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f18, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f18, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x400)
li x15, 0x122abc51d36ec171 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f4, 0(x2) # load 0x00000400 from memory into f4
fmul.h f15, f20, f4, dyn # perform operation
fmul.h f15, f20, f4, rdn # perform operation
fmul.h f15, f20, f4, rmm # perform operation
fmul.h f15, f20, f4, rne # perform operation
fmul.h f15, f20, f4, rtz # perform operation
fmul.h f15, f20, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f20, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f20, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f20, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f20, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f20, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8400)
li x2, 0xc8167a464ef4c483 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
fmul.h f2, f25, f27, dyn # perform operation
fmul.h f2, f25, f27, rdn # perform operation
fmul.h f2, f25, f27, rmm # perform operation
fmul.h f2, f25, f27, rne # perform operation
fmul.h f2, f25, f27, rtz # perform operation
fmul.h f2, f25, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f25, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f25, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f25, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f25, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f25, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7bff)
li x16, 0x9a85e7cc96a57882 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
fmul.h f16, f8, f23, dyn # perform operation
fmul.h f16, f8, f23, rdn # perform operation
fmul.h f16, f8, f23, rmm # perform operation
fmul.h f16, f8, f23, rne # perform operation
fmul.h f16, f8, f23, rtz # perform operation
fmul.h f16, f8, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f8, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f8, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f8, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f8, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f8, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfbff)
li x12, 0x657aa354e58395ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f16, 0(x2) # load 0x00004000 from memory into f16
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
fmul.h f12, f16, f19, dyn # perform operation
fmul.h f12, f16, f19, rdn # perform operation
fmul.h f12, f16, f19, rmm # perform operation
fmul.h f12, f16, f19, rne # perform operation
fmul.h f12, f16, f19, rtz # perform operation
fmul.h f12, f16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f16, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f16, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f16, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f16, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f16, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3ff)
li x13, 0x993ec411bc401f77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fmul.h f13, f29, f23, dyn # perform operation
fmul.h f13, f29, f23, rdn # perform operation
fmul.h f13, f29, f23, rmm # perform operation
fmul.h f13, f29, f23, rne # perform operation
fmul.h f13, f29, f23, rtz # perform operation
fmul.h f13, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x83ff)
li x1, 0x7788ca624d0dd0fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
fmul.h f1, f28, f19, dyn # perform operation
fmul.h f1, f28, f19, rdn # perform operation
fmul.h f1, f28, f19, rmm # perform operation
fmul.h f1, f28, f19, rne # perform operation
fmul.h f1, f28, f19, rtz # perform operation
fmul.h f1, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f28, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x200)
li x7, 0x70d0edc30a01407a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
fmul.h f7, f19, f8, dyn # perform operation
fmul.h f7, f19, f8, rdn # perform operation
fmul.h f7, f19, f8, rmm # perform operation
fmul.h f7, f19, f8, rne # perform operation
fmul.h f7, f19, f8, rtz # perform operation
fmul.h f7, f19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f19, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f19, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f19, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f19, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f19, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8200)
li x26, 0x0ef9b9d2d07121e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
fmul.h f26, f23, f5, dyn # perform operation
fmul.h f26, f23, f5, rdn # perform operation
fmul.h f26, f23, f5, rmm # perform operation
fmul.h f26, f23, f5, rne # perform operation
fmul.h f26, f23, f5, rtz # perform operation
fmul.h f26, f23, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f23, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f23, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f23, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f23, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f23, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x1)
li x20, 0x4dd0a864bc07a62b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
fmul.h f20, f29, f18, dyn # perform operation
fmul.h f20, f29, f18, rdn # perform operation
fmul.h f20, f29, f18, rmm # perform operation
fmul.h f20, f29, f18, rne # perform operation
fmul.h f20, f29, f18, rtz # perform operation
fmul.h f20, f29, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f29, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f29, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f29, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f29, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f29, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8001)
li x13, 0xe5c0762f9d07acd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fmul.h f13, f2, f14, dyn # perform operation
fmul.h f13, f2, f14, rdn # perform operation
fmul.h f13, f2, f14, rmm # perform operation
fmul.h f13, f2, f14, rne # perform operation
fmul.h f13, f2, f14, rtz # perform operation
fmul.h f13, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f2, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c00)
li x28, 0x3a4fedde677c9768 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
fmul.h f28, f27, f29, dyn # perform operation
fmul.h f28, f27, f29, rdn # perform operation
fmul.h f28, f27, f29, rmm # perform operation
fmul.h f28, f27, f29, rne # perform operation
fmul.h f28, f27, f29, rtz # perform operation
fmul.h f28, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f27, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc00)
li x12, 0x051d1312a09f26a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
fmul.h f12, f1, f14, dyn # perform operation
fmul.h f12, f1, f14, rdn # perform operation
fmul.h f12, f1, f14, rmm # perform operation
fmul.h f12, f1, f14, rne # perform operation
fmul.h f12, f1, f14, rtz # perform operation
fmul.h f12, f1, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f1, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f1, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f1, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f1, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f1, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7e00)
li x1, 0xfaf2ca56bb8025aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
fmul.h f1, f5, f11, dyn # perform operation
fmul.h f1, f5, f11, rdn # perform operation
fmul.h f1, f5, f11, rmm # perform operation
fmul.h f1, f5, f11, rne # perform operation
fmul.h f1, f5, f11, rtz # perform operation
fmul.h f1, f5, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f5, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f5, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f5, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f5, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f5, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7fff)
li x3, 0xe92c3c1c828352f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fmul.h f3, f19, f2, dyn # perform operation
fmul.h f3, f19, f2, rdn # perform operation
fmul.h f3, f19, f2, rmm # perform operation
fmul.h f3, f19, f2, rne # perform operation
fmul.h f3, f19, f2, rtz # perform operation
fmul.h f3, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c01)
li x14, 0x1b29c2f90ee5909a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
fmul.h f14, f1, f24, dyn # perform operation
fmul.h f14, f1, f24, rdn # perform operation
fmul.h f14, f1, f24, rmm # perform operation
fmul.h f14, f1, f24, rne # perform operation
fmul.h f14, f1, f24, rtz # perform operation
fmul.h f14, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f1, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7dff)
li x18, 0xa3e1a031713fd8ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f4, 0(x2) # load 0x00007dff from memory into f4
fmul.h f18, f5, f4, dyn # perform operation
fmul.h f18, f5, f4, rdn # perform operation
fmul.h f18, f5, f4, rmm # perform operation
fmul.h f18, f5, f4, rne # perform operation
fmul.h f18, f5, f4, rtz # perform operation
fmul.h f18, f5, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f5, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f5, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f5, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f5, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f5, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x58b4)
li x24, 0xd28db1d021b2f956 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
fmul.h f24, f22, f2, dyn # perform operation
fmul.h f24, f22, f2, rdn # perform operation
fmul.h f24, f22, f2, rmm # perform operation
fmul.h f24, f22, f2, rne # perform operation
fmul.h f24, f22, f2, rtz # perform operation
fmul.h f24, f22, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f22, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f22, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f22, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f22, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc93a)
li x1, 0x91c37926a4259483 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f7, 0(x2) # load 0x00004000 from memory into f7
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
fmul.h f1, f7, f22, dyn # perform operation
fmul.h f1, f7, f22, rdn # perform operation
fmul.h f1, f7, f22, rmm # perform operation
fmul.h f1, f7, f22, rne # perform operation
fmul.h f1, f7, f22, rtz # perform operation
fmul.h f1, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x0)
li x6, 0xfb08b8a630fb998b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
fmul.h f6, f19, f29, dyn # perform operation
fmul.h f6, f19, f29, rdn # perform operation
fmul.h f6, f19, f29, rmm # perform operation
fmul.h f6, f19, f29, rne # perform operation
fmul.h f6, f19, f29, rtz # perform operation
fmul.h f6, f19, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f19, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f19, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f19, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f19, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f19, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8000)
li x8, 0x12d59dde1973f9be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
fmul.h f8, f24, f28, dyn # perform operation
fmul.h f8, f24, f28, rdn # perform operation
fmul.h f8, f24, f28, rmm # perform operation
fmul.h f8, f24, f28, rne # perform operation
fmul.h f8, f24, f28, rtz # perform operation
fmul.h f8, f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f24, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3c00)
li x30, 0x0f5cb2ce0d8b11d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
fmul.h f30, f7, f5, dyn # perform operation
fmul.h f30, f7, f5, rdn # perform operation
fmul.h f30, f7, f5, rmm # perform operation
fmul.h f30, f7, f5, rne # perform operation
fmul.h f30, f7, f5, rtz # perform operation
fmul.h f30, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbc00)
li x28, 0xf0f3f0d12237a60a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
fmul.h f28, f27, f1, dyn # perform operation
fmul.h f28, f27, f1, rdn # perform operation
fmul.h f28, f27, f1, rmm # perform operation
fmul.h f28, f27, f1, rne # perform operation
fmul.h f28, f27, f1, rtz # perform operation
fmul.h f28, f27, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f27, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f27, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f27, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f27, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f27, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3e00)
li x15, 0x9b637fd74cbacde8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fmul.h f15, f31, f17, dyn # perform operation
fmul.h f15, f31, f17, rdn # perform operation
fmul.h f15, f31, f17, rmm # perform operation
fmul.h f15, f31, f17, rne # perform operation
fmul.h f15, f31, f17, rtz # perform operation
fmul.h f15, f31, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f31, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f31, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f31, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f31, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbe00)
li x29, 0x76e3bfc4178128ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
fmul.h f29, f7, f5, dyn # perform operation
fmul.h f29, f7, f5, rdn # perform operation
fmul.h f29, f7, f5, rmm # perform operation
fmul.h f29, f7, f5, rne # perform operation
fmul.h f29, f7, f5, rtz # perform operation
fmul.h f29, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x4000)
li x28, 0x6a47b31d797dbbd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
fmul.h f28, f20, f11, dyn # perform operation
fmul.h f28, f20, f11, rdn # perform operation
fmul.h f28, f20, f11, rmm # perform operation
fmul.h f28, f20, f11, rne # perform operation
fmul.h f28, f20, f11, rtz # perform operation
fmul.h f28, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f20, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc000)
li x29, 0x8a7214bfe6e5b13b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
fmul.h f29, f7, f23, dyn # perform operation
fmul.h f29, f7, f23, rdn # perform operation
fmul.h f29, f7, f23, rmm # perform operation
fmul.h f29, f7, f23, rne # perform operation
fmul.h f29, f7, f23, rtz # perform operation
fmul.h f29, f7, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f7, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f7, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f7, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f7, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x400)
li x11, 0x3e5f7dcab47b88e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
fmul.h f11, f18, f14, dyn # perform operation
fmul.h f11, f18, f14, rdn # perform operation
fmul.h f11, f18, f14, rmm # perform operation
fmul.h f11, f18, f14, rne # perform operation
fmul.h f11, f18, f14, rtz # perform operation
fmul.h f11, f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8400)
li x18, 0xcfd27f767e987613 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
fmul.h f18, f3, f13, dyn # perform operation
fmul.h f18, f3, f13, rdn # perform operation
fmul.h f18, f3, f13, rmm # perform operation
fmul.h f18, f3, f13, rne # perform operation
fmul.h f18, f3, f13, rtz # perform operation
fmul.h f18, f3, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f3, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f3, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f3, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f3, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f3, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7bff)
li x1, 0x252666423711dccc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f9, 0(x2) # load 0x00007bff from memory into f9
fmul.h f1, f17, f9, dyn # perform operation
fmul.h f1, f17, f9, rdn # perform operation
fmul.h f1, f17, f9, rmm # perform operation
fmul.h f1, f17, f9, rne # perform operation
fmul.h f1, f17, f9, rtz # perform operation
fmul.h f1, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f17, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfbff)
li x27, 0x2326e95c6f5a5bbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
fmul.h f27, f24, f23, dyn # perform operation
fmul.h f27, f24, f23, rdn # perform operation
fmul.h f27, f24, f23, rmm # perform operation
fmul.h f27, f24, f23, rne # perform operation
fmul.h f27, f24, f23, rtz # perform operation
fmul.h f27, f24, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f24, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f24, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f24, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f24, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f24, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3ff)
li x24, 0xb84ed8d9e9f74a89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f4, 0(x2) # load 0x000003ff from memory into f4
fmul.h f24, f21, f4, dyn # perform operation
fmul.h f24, f21, f4, rdn # perform operation
fmul.h f24, f21, f4, rmm # perform operation
fmul.h f24, f21, f4, rne # perform operation
fmul.h f24, f21, f4, rtz # perform operation
fmul.h f24, f21, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f21, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f21, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f21, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f21, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f21, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x83ff)
li x23, 0xe5cbc1e7725de1b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
fmul.h f23, f29, f12, dyn # perform operation
fmul.h f23, f29, f12, rdn # perform operation
fmul.h f23, f29, f12, rmm # perform operation
fmul.h f23, f29, f12, rne # perform operation
fmul.h f23, f29, f12, rtz # perform operation
fmul.h f23, f29, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f29, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f29, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f29, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f29, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f29, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x200)
li x12, 0x23bab450b891c891 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
fmul.h f12, f22, f14, dyn # perform operation
fmul.h f12, f22, f14, rdn # perform operation
fmul.h f12, f22, f14, rmm # perform operation
fmul.h f12, f22, f14, rne # perform operation
fmul.h f12, f22, f14, rtz # perform operation
fmul.h f12, f22, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f22, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f22, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f22, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f22, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f22, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8200)
li x13, 0x63f51e2f9726a0ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fmul.h f13, f22, f23, dyn # perform operation
fmul.h f13, f22, f23, rdn # perform operation
fmul.h f13, f22, f23, rmm # perform operation
fmul.h f13, f22, f23, rne # perform operation
fmul.h f13, f22, f23, rtz # perform operation
fmul.h f13, f22, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f22, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f22, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f22, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f22, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f22, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x1)
li x14, 0x2285cb3d744a4a26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
fmul.h f14, f18, f1, dyn # perform operation
fmul.h f14, f18, f1, rdn # perform operation
fmul.h f14, f18, f1, rmm # perform operation
fmul.h f14, f18, f1, rne # perform operation
fmul.h f14, f18, f1, rtz # perform operation
fmul.h f14, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8001)
li x29, 0xa84a2dc8e44f48ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
fmul.h f29, f11, f24, dyn # perform operation
fmul.h f29, f11, f24, rdn # perform operation
fmul.h f29, f11, f24, rmm # perform operation
fmul.h f29, f11, f24, rne # perform operation
fmul.h f29, f11, f24, rtz # perform operation
fmul.h f29, f11, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f11, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f11, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f11, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f11, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f11, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c00)
li x9, 0x6ac7c42a4ca9b7e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f31, 0(x2) # load 0x0000c000 from memory into f31
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fmul.h f9, f31, f1, dyn # perform operation
fmul.h f9, f31, f1, rdn # perform operation
fmul.h f9, f31, f1, rmm # perform operation
fmul.h f9, f31, f1, rne # perform operation
fmul.h f9, f31, f1, rtz # perform operation
fmul.h f9, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc00)
li x15, 0xba954425a32c6bd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fmul.h f15, f9, f26, dyn # perform operation
fmul.h f15, f9, f26, rdn # perform operation
fmul.h f15, f9, f26, rmm # perform operation
fmul.h f15, f9, f26, rne # perform operation
fmul.h f15, f9, f26, rtz # perform operation
fmul.h f15, f9, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f9, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f9, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f9, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f9, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f9, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7e00)
li x6, 0x28179a93953e2979 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
fmul.h f6, f11, f12, dyn # perform operation
fmul.h f6, f11, f12, rdn # perform operation
fmul.h f6, f11, f12, rmm # perform operation
fmul.h f6, f11, f12, rne # perform operation
fmul.h f6, f11, f12, rtz # perform operation
fmul.h f6, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7fff)
li x25, 0xdc010f9886c3a86e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
fmul.h f25, f16, f6, dyn # perform operation
fmul.h f25, f16, f6, rdn # perform operation
fmul.h f25, f16, f6, rmm # perform operation
fmul.h f25, f16, f6, rne # perform operation
fmul.h f25, f16, f6, rtz # perform operation
fmul.h f25, f16, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f16, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f16, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f16, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f16, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f16, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c01)
li x16, 0x1cdcb59085be99ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
fmul.h f16, f24, f14, dyn # perform operation
fmul.h f16, f24, f14, rdn # perform operation
fmul.h f16, f24, f14, rmm # perform operation
fmul.h f16, f24, f14, rne # perform operation
fmul.h f16, f24, f14, rtz # perform operation
fmul.h f16, f24, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f24, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f24, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f24, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f24, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f24, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7dff)
li x26, 0x6b9d73643c8ba80b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
fmul.h f26, f17, f10, dyn # perform operation
fmul.h f26, f17, f10, rdn # perform operation
fmul.h f26, f17, f10, rmm # perform operation
fmul.h f26, f17, f10, rne # perform operation
fmul.h f26, f17, f10, rtz # perform operation
fmul.h f26, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x58b4)
li x21, 0xc5980c00a1bf486d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
fmul.h f21, f24, f16, dyn # perform operation
fmul.h f21, f24, f16, rdn # perform operation
fmul.h f21, f24, f16, rmm # perform operation
fmul.h f21, f24, f16, rne # perform operation
fmul.h f21, f24, f16, rtz # perform operation
fmul.h f21, f24, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f24, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f24, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f24, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f24, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f24, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc93a)
li x31, 0xde48fff45caee1af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
fmul.h f31, f3, f8, dyn # perform operation
fmul.h f31, f3, f8, rdn # perform operation
fmul.h f31, f3, f8, rmm # perform operation
fmul.h f31, f3, f8, rne # perform operation
fmul.h f31, f3, f8, rtz # perform operation
fmul.h f31, f3, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f3, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f3, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f3, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f3, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f3, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x0)
li x28, 0x0796ca8a86de944f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
fmul.h f28, f21, f1, dyn # perform operation
fmul.h f28, f21, f1, rdn # perform operation
fmul.h f28, f21, f1, rmm # perform operation
fmul.h f28, f21, f1, rne # perform operation
fmul.h f28, f21, f1, rtz # perform operation
fmul.h f28, f21, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f21, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f21, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f21, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f21, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f21, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8000)
li x2, 0x71b208e64418a47e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f30, 0(x2) # load 0x00008000 from memory into f30
fmul.h f2, f6, f30, dyn # perform operation
fmul.h f2, f6, f30, rdn # perform operation
fmul.h f2, f6, f30, rmm # perform operation
fmul.h f2, f6, f30, rne # perform operation
fmul.h f2, f6, f30, rtz # perform operation
fmul.h f2, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f6, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3c00)
li x10, 0x007cf9e9c3eb82be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f4, 0(x2) # load 0x00003c00 from memory into f4
fmul.h f10, f8, f4, dyn # perform operation
fmul.h f10, f8, f4, rdn # perform operation
fmul.h f10, f8, f4, rmm # perform operation
fmul.h f10, f8, f4, rne # perform operation
fmul.h f10, f8, f4, rtz # perform operation
fmul.h f10, f8, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f8, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f8, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f8, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f8, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f8, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbc00)
li x9, 0xce63846a84c21704 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
fmul.h f9, f10, f3, dyn # perform operation
fmul.h f9, f10, f3, rdn # perform operation
fmul.h f9, f10, f3, rmm # perform operation
fmul.h f9, f10, f3, rne # perform operation
fmul.h f9, f10, f3, rtz # perform operation
fmul.h f9, f10, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f10, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f10, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f10, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f10, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f10, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3e00)
li x30, 0x076a97607b1a2f04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fmul.h f30, f8, f10, dyn # perform operation
fmul.h f30, f8, f10, rdn # perform operation
fmul.h f30, f8, f10, rmm # perform operation
fmul.h f30, f8, f10, rne # perform operation
fmul.h f30, f8, f10, rtz # perform operation
fmul.h f30, f8, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f8, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f8, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f8, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f8, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f8, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbe00)
li x21, 0x5e0bb20421176b6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
fmul.h f21, f3, f5, dyn # perform operation
fmul.h f21, f3, f5, rdn # perform operation
fmul.h f21, f3, f5, rmm # perform operation
fmul.h f21, f3, f5, rne # perform operation
fmul.h f21, f3, f5, rtz # perform operation
fmul.h f21, f3, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f3, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f3, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f3, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f3, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f3, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x4000)
li x14, 0x5c4911777f9f17c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f19, 0(x2) # load 0x00004000 from memory into f19
fmul.h f14, f29, f19, dyn # perform operation
fmul.h f14, f29, f19, rdn # perform operation
fmul.h f14, f29, f19, rmm # perform operation
fmul.h f14, f29, f19, rne # perform operation
fmul.h f14, f29, f19, rtz # perform operation
fmul.h f14, f29, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f29, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f29, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f29, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f29, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc000)
li x30, 0x1e33941e0a44af4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f8, 0(x2) # load 0x00000400 from memory into f8
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
fmul.h f30, f8, f13, dyn # perform operation
fmul.h f30, f8, f13, rdn # perform operation
fmul.h f30, f8, f13, rmm # perform operation
fmul.h f30, f8, f13, rne # perform operation
fmul.h f30, f8, f13, rtz # perform operation
fmul.h f30, f8, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f8, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f8, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f8, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f8, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f8, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x400)
li x27, 0x208e40c950a56937 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
fmul.h f27, f26, f19, dyn # perform operation
fmul.h f27, f26, f19, rdn # perform operation
fmul.h f27, f26, f19, rmm # perform operation
fmul.h f27, f26, f19, rne # perform operation
fmul.h f27, f26, f19, rtz # perform operation
fmul.h f27, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f26, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8400)
li x19, 0x74e424e1519485fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
fmul.h f19, f30, f22, dyn # perform operation
fmul.h f19, f30, f22, rdn # perform operation
fmul.h f19, f30, f22, rmm # perform operation
fmul.h f19, f30, f22, rne # perform operation
fmul.h f19, f30, f22, rtz # perform operation
fmul.h f19, f30, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f30, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f30, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f30, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f30, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7bff)
li x7, 0x30bec50405fa5168 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fmul.h f7, f5, f8, dyn # perform operation
fmul.h f7, f5, f8, rdn # perform operation
fmul.h f7, f5, f8, rmm # perform operation
fmul.h f7, f5, f8, rne # perform operation
fmul.h f7, f5, f8, rtz # perform operation
fmul.h f7, f5, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f5, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f5, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f5, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f5, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f5, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfbff)
li x5, 0x553d609132eeb6de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
fmul.h f5, f12, f15, dyn # perform operation
fmul.h f5, f12, f15, rdn # perform operation
fmul.h f5, f12, f15, rmm # perform operation
fmul.h f5, f12, f15, rne # perform operation
fmul.h f5, f12, f15, rtz # perform operation
fmul.h f5, f12, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f12, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f12, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f12, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f12, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f12, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3ff)
li x19, 0xd7cf0c77a411513d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
fmul.h f19, f18, f1, dyn # perform operation
fmul.h f19, f18, f1, rdn # perform operation
fmul.h f19, f18, f1, rmm # perform operation
fmul.h f19, f18, f1, rne # perform operation
fmul.h f19, f18, f1, rtz # perform operation
fmul.h f19, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x83ff)
li x25, 0x89e7bd75a6361229 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
fmul.h f25, f23, f31, dyn # perform operation
fmul.h f25, f23, f31, rdn # perform operation
fmul.h f25, f23, f31, rmm # perform operation
fmul.h f25, f23, f31, rne # perform operation
fmul.h f25, f23, f31, rtz # perform operation
fmul.h f25, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f23, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x200)
li x3, 0x7b434a621bee9b23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
fmul.h f3, f6, f15, dyn # perform operation
fmul.h f3, f6, f15, rdn # perform operation
fmul.h f3, f6, f15, rmm # perform operation
fmul.h f3, f6, f15, rne # perform operation
fmul.h f3, f6, f15, rtz # perform operation
fmul.h f3, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8200)
li x19, 0x502d8e182bb328d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
fmul.h f19, f1, f15, dyn # perform operation
fmul.h f19, f1, f15, rdn # perform operation
fmul.h f19, f1, f15, rmm # perform operation
fmul.h f19, f1, f15, rne # perform operation
fmul.h f19, f1, f15, rtz # perform operation
fmul.h f19, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f1, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x1)
li x10, 0xf857de209423c3e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fmul.h f10, f20, f16, dyn # perform operation
fmul.h f10, f20, f16, rdn # perform operation
fmul.h f10, f20, f16, rmm # perform operation
fmul.h f10, f20, f16, rne # perform operation
fmul.h f10, f20, f16, rtz # perform operation
fmul.h f10, f20, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f20, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f20, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f20, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f20, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f20, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8001)
li x12, 0x8449f7b73fdf82e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
fmul.h f12, f13, f1, dyn # perform operation
fmul.h f12, f13, f1, rdn # perform operation
fmul.h f12, f13, f1, rmm # perform operation
fmul.h f12, f13, f1, rne # perform operation
fmul.h f12, f13, f1, rtz # perform operation
fmul.h f12, f13, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f13, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f13, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f13, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f13, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c00)
li x3, 0xf96c6b624117e9d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
fmul.h f3, f20, f6, dyn # perform operation
fmul.h f3, f20, f6, rdn # perform operation
fmul.h f3, f20, f6, rmm # perform operation
fmul.h f3, f20, f6, rne # perform operation
fmul.h f3, f20, f6, rtz # perform operation
fmul.h f3, f20, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f20, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f20, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f20, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f20, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f20, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc00)
li x25, 0x4975e45e9de55b6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fmul.h f25, f10, f11, dyn # perform operation
fmul.h f25, f10, f11, rdn # perform operation
fmul.h f25, f10, f11, rmm # perform operation
fmul.h f25, f10, f11, rne # perform operation
fmul.h f25, f10, f11, rtz # perform operation
fmul.h f25, f10, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f10, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f10, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f10, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f10, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f10, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7e00)
li x30, 0x753bba2647be91ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
fmul.h f30, f15, f27, dyn # perform operation
fmul.h f30, f15, f27, rdn # perform operation
fmul.h f30, f15, f27, rmm # perform operation
fmul.h f30, f15, f27, rne # perform operation
fmul.h f30, f15, f27, rtz # perform operation
fmul.h f30, f15, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f15, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f15, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f15, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f15, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f15, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7fff)
li x19, 0xeed913dc433745c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f4, 0(x2) # load 0x00000400 from memory into f4
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fmul.h f19, f4, f24, dyn # perform operation
fmul.h f19, f4, f24, rdn # perform operation
fmul.h f19, f4, f24, rmm # perform operation
fmul.h f19, f4, f24, rne # perform operation
fmul.h f19, f4, f24, rtz # perform operation
fmul.h f19, f4, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f4, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f4, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f4, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f4, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c01)
li x7, 0x168d6444c4d763fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
fmul.h f7, f10, f6, dyn # perform operation
fmul.h f7, f10, f6, rdn # perform operation
fmul.h f7, f10, f6, rmm # perform operation
fmul.h f7, f10, f6, rne # perform operation
fmul.h f7, f10, f6, rtz # perform operation
fmul.h f7, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7dff)
li x30, 0x240e926cc1ee3b84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f28, 0(x2) # load 0x00007dff from memory into f28
fmul.h f30, f6, f28, dyn # perform operation
fmul.h f30, f6, f28, rdn # perform operation
fmul.h f30, f6, f28, rmm # perform operation
fmul.h f30, f6, f28, rne # perform operation
fmul.h f30, f6, f28, rtz # perform operation
fmul.h f30, f6, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f6, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f6, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f6, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f6, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x58b4)
li x19, 0x2fdc34454069f0d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
fmul.h f19, f9, f5, dyn # perform operation
fmul.h f19, f9, f5, rdn # perform operation
fmul.h f19, f9, f5, rmm # perform operation
fmul.h f19, f9, f5, rne # perform operation
fmul.h f19, f9, f5, rtz # perform operation
fmul.h f19, f9, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f9, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f9, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f9, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f9, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f9, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc93a)
li x28, 0x1e1f51827d1bdc19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
fmul.h f28, f7, f2, dyn # perform operation
fmul.h f28, f7, f2, rdn # perform operation
fmul.h f28, f7, f2, rmm # perform operation
fmul.h f28, f7, f2, rne # perform operation
fmul.h f28, f7, f2, rtz # perform operation
fmul.h f28, f7, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f7, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f7, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f7, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f7, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x0)
li x23, 0xc9e7e38b20c31d4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
fmul.h f23, f17, f7, dyn # perform operation
fmul.h f23, f17, f7, rdn # perform operation
fmul.h f23, f17, f7, rmm # perform operation
fmul.h f23, f17, f7, rne # perform operation
fmul.h f23, f17, f7, rtz # perform operation
fmul.h f23, f17, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f17, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f17, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f17, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f17, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8000)
li x3, 0xc57db0de46f54586 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
fmul.h f3, f18, f31, dyn # perform operation
fmul.h f3, f18, f31, rdn # perform operation
fmul.h f3, f18, f31, rmm # perform operation
fmul.h f3, f18, f31, rne # perform operation
fmul.h f3, f18, f31, rtz # perform operation
fmul.h f3, f18, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f18, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f18, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f18, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f18, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f18, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3c00)
li x21, 0x759aebf02c9c68b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
fmul.h f21, f14, f31, dyn # perform operation
fmul.h f21, f14, f31, rdn # perform operation
fmul.h f21, f14, f31, rmm # perform operation
fmul.h f21, f14, f31, rne # perform operation
fmul.h f21, f14, f31, rtz # perform operation
fmul.h f21, f14, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f14, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f14, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f14, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f14, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f14, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbc00)
li x14, 0x01996310812a2825 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
fmul.h f14, f15, f21, dyn # perform operation
fmul.h f14, f15, f21, rdn # perform operation
fmul.h f14, f15, f21, rmm # perform operation
fmul.h f14, f15, f21, rne # perform operation
fmul.h f14, f15, f21, rtz # perform operation
fmul.h f14, f15, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f15, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f15, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f15, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f15, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3e00)
li x19, 0x029b5166b6bdd590 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f4, 0(x2) # load 0x00008400 from memory into f4
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
fmul.h f19, f4, f13, dyn # perform operation
fmul.h f19, f4, f13, rdn # perform operation
fmul.h f19, f4, f13, rmm # perform operation
fmul.h f19, f4, f13, rne # perform operation
fmul.h f19, f4, f13, rtz # perform operation
fmul.h f19, f4, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f4, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f4, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f4, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f4, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f4, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbe00)
li x27, 0xc57486ac2cd5da15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
fmul.h f27, f24, f5, dyn # perform operation
fmul.h f27, f24, f5, rdn # perform operation
fmul.h f27, f24, f5, rmm # perform operation
fmul.h f27, f24, f5, rne # perform operation
fmul.h f27, f24, f5, rtz # perform operation
fmul.h f27, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f24, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x4000)
li x4, 0x49faf32a25638411 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
fmul.h f4, f31, f28, dyn # perform operation
fmul.h f4, f31, f28, rdn # perform operation
fmul.h f4, f31, f28, rmm # perform operation
fmul.h f4, f31, f28, rne # perform operation
fmul.h f4, f31, f28, rtz # perform operation
fmul.h f4, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc000)
li x20, 0xe8cc8aea961d8383 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
fmul.h f20, f28, f26, dyn # perform operation
fmul.h f20, f28, f26, rdn # perform operation
fmul.h f20, f28, f26, rmm # perform operation
fmul.h f20, f28, f26, rne # perform operation
fmul.h f20, f28, f26, rtz # perform operation
fmul.h f20, f28, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f28, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f28, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f28, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f28, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f28, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x400)
li x28, 0x5006b39c3dd12ab0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
fmul.h f28, f30, f20, dyn # perform operation
fmul.h f28, f30, f20, rdn # perform operation
fmul.h f28, f30, f20, rmm # perform operation
fmul.h f28, f30, f20, rne # perform operation
fmul.h f28, f30, f20, rtz # perform operation
fmul.h f28, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f30, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8400)
li x8, 0x97f476e37c1c8573 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
fmul.h f8, f21, f29, dyn # perform operation
fmul.h f8, f21, f29, rdn # perform operation
fmul.h f8, f21, f29, rmm # perform operation
fmul.h f8, f21, f29, rne # perform operation
fmul.h f8, f21, f29, rtz # perform operation
fmul.h f8, f21, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f21, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f21, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f21, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f21, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f21, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7bff)
li x25, 0x905a9207477aa05d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
fmul.h f25, f10, f18, dyn # perform operation
fmul.h f25, f10, f18, rdn # perform operation
fmul.h f25, f10, f18, rmm # perform operation
fmul.h f25, f10, f18, rne # perform operation
fmul.h f25, f10, f18, rtz # perform operation
fmul.h f25, f10, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f10, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f10, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f10, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f10, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfbff)
li x2, 0x61193e0f9aa54489 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fmul.h f2, f22, f16, dyn # perform operation
fmul.h f2, f22, f16, rdn # perform operation
fmul.h f2, f22, f16, rmm # perform operation
fmul.h f2, f22, f16, rne # perform operation
fmul.h f2, f22, f16, rtz # perform operation
fmul.h f2, f22, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f22, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f22, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f22, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f22, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f22, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3ff)
li x18, 0x94e182080bb8efc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
fmul.h f18, f25, f7, dyn # perform operation
fmul.h f18, f25, f7, rdn # perform operation
fmul.h f18, f25, f7, rmm # perform operation
fmul.h f18, f25, f7, rne # perform operation
fmul.h f18, f25, f7, rtz # perform operation
fmul.h f18, f25, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f25, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f25, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f25, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f25, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f25, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x83ff)
li x3, 0xc5df231d3797beca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
fmul.h f3, f23, f4, dyn # perform operation
fmul.h f3, f23, f4, rdn # perform operation
fmul.h f3, f23, f4, rmm # perform operation
fmul.h f3, f23, f4, rne # perform operation
fmul.h f3, f23, f4, rtz # perform operation
fmul.h f3, f23, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f23, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f23, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f23, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f23, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f23, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x200)
li x19, 0xb84b4b315ba490c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fmul.h f19, f6, f25, dyn # perform operation
fmul.h f19, f6, f25, rdn # perform operation
fmul.h f19, f6, f25, rmm # perform operation
fmul.h f19, f6, f25, rne # perform operation
fmul.h f19, f6, f25, rtz # perform operation
fmul.h f19, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f6, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8200)
li x30, 0xa347c40958b2cdc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f26, 0(x2) # load 0x00008400 from memory into f26
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
fmul.h f30, f26, f21, dyn # perform operation
fmul.h f30, f26, f21, rdn # perform operation
fmul.h f30, f26, f21, rmm # perform operation
fmul.h f30, f26, f21, rne # perform operation
fmul.h f30, f26, f21, rtz # perform operation
fmul.h f30, f26, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f26, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f26, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f26, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f26, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x1)
li x15, 0x2301b87bf4a07175 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fmul.h f15, f19, f21, dyn # perform operation
fmul.h f15, f19, f21, rdn # perform operation
fmul.h f15, f19, f21, rmm # perform operation
fmul.h f15, f19, f21, rne # perform operation
fmul.h f15, f19, f21, rtz # perform operation
fmul.h f15, f19, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f19, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f19, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f19, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f19, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8001)
li x14, 0x3a4cabb32c99bdca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
fmul.h f14, f23, f6, dyn # perform operation
fmul.h f14, f23, f6, rdn # perform operation
fmul.h f14, f23, f6, rmm # perform operation
fmul.h f14, f23, f6, rne # perform operation
fmul.h f14, f23, f6, rtz # perform operation
fmul.h f14, f23, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f23, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f23, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f23, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f23, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f23, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c00)
li x12, 0x892494a50e0cedc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f17, 0(x2) # load 0x00008400 from memory into f17
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fmul.h f12, f17, f23, dyn # perform operation
fmul.h f12, f17, f23, rdn # perform operation
fmul.h f12, f17, f23, rmm # perform operation
fmul.h f12, f17, f23, rne # perform operation
fmul.h f12, f17, f23, rtz # perform operation
fmul.h f12, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f17, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc00)
li x1, 0xe999ce202720a408 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f19, 0(x2) # load 0x00008400 from memory into f19
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f30, 0(x2) # load 0x0000fc00 from memory into f30
fmul.h f1, f19, f30, dyn # perform operation
fmul.h f1, f19, f30, rdn # perform operation
fmul.h f1, f19, f30, rmm # perform operation
fmul.h f1, f19, f30, rne # perform operation
fmul.h f1, f19, f30, rtz # perform operation
fmul.h f1, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f19, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7e00)
li x20, 0x17114bffae93c04d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
fmul.h f20, f6, f30, dyn # perform operation
fmul.h f20, f6, f30, rdn # perform operation
fmul.h f20, f6, f30, rmm # perform operation
fmul.h f20, f6, f30, rne # perform operation
fmul.h f20, f6, f30, rtz # perform operation
fmul.h f20, f6, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f6, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f6, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f6, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f6, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f6, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7fff)
li x12, 0xaf7300e101c5dcab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fmul.h f12, f28, f25, dyn # perform operation
fmul.h f12, f28, f25, rdn # perform operation
fmul.h f12, f28, f25, rmm # perform operation
fmul.h f12, f28, f25, rne # perform operation
fmul.h f12, f28, f25, rtz # perform operation
fmul.h f12, f28, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f28, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f28, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f28, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f28, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f28, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c01)
li x14, 0xba787a5bd8616d82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
fmul.h f14, f20, f28, dyn # perform operation
fmul.h f14, f20, f28, rdn # perform operation
fmul.h f14, f20, f28, rmm # perform operation
fmul.h f14, f20, f28, rne # perform operation
fmul.h f14, f20, f28, rtz # perform operation
fmul.h f14, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7dff)
li x26, 0xcb1710faf1950e2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
fmul.h f26, f14, f27, dyn # perform operation
fmul.h f26, f14, f27, rdn # perform operation
fmul.h f26, f14, f27, rmm # perform operation
fmul.h f26, f14, f27, rne # perform operation
fmul.h f26, f14, f27, rtz # perform operation
fmul.h f26, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x58b4)
li x8, 0x3a4db36868ae1e5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
fmul.h f8, f11, f7, dyn # perform operation
fmul.h f8, f11, f7, rdn # perform operation
fmul.h f8, f11, f7, rmm # perform operation
fmul.h f8, f11, f7, rne # perform operation
fmul.h f8, f11, f7, rtz # perform operation
fmul.h f8, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f11, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc93a)
li x12, 0x37c8ad740d039b4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
fmul.h f12, f24, f9, dyn # perform operation
fmul.h f12, f24, f9, rdn # perform operation
fmul.h f12, f24, f9, rmm # perform operation
fmul.h f12, f24, f9, rne # perform operation
fmul.h f12, f24, f9, rtz # perform operation
fmul.h f12, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f24, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x0)
li x23, 0x5da1763f72a59c8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
fmul.h f23, f6, f1, dyn # perform operation
fmul.h f23, f6, f1, rdn # perform operation
fmul.h f23, f6, f1, rmm # perform operation
fmul.h f23, f6, f1, rne # perform operation
fmul.h f23, f6, f1, rtz # perform operation
fmul.h f23, f6, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f6, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f6, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f6, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f6, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f6, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8000)
li x10, 0x0a6527f898ded5a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f20, 0(x2) # load 0x00007bff from memory into f20
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
fmul.h f10, f20, f1, dyn # perform operation
fmul.h f10, f20, f1, rdn # perform operation
fmul.h f10, f20, f1, rmm # perform operation
fmul.h f10, f20, f1, rne # perform operation
fmul.h f10, f20, f1, rtz # perform operation
fmul.h f10, f20, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f20, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f20, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f20, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f20, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f20, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3c00)
li x19, 0x742dd072399c478a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
fmul.h f19, f10, f2, dyn # perform operation
fmul.h f19, f10, f2, rdn # perform operation
fmul.h f19, f10, f2, rmm # perform operation
fmul.h f19, f10, f2, rne # perform operation
fmul.h f19, f10, f2, rtz # perform operation
fmul.h f19, f10, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f10, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f10, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f10, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f10, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f10, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbc00)
li x27, 0xd2bfcdd246f3639b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fmul.h f27, f19, f5, dyn # perform operation
fmul.h f27, f19, f5, rdn # perform operation
fmul.h f27, f19, f5, rmm # perform operation
fmul.h f27, f19, f5, rne # perform operation
fmul.h f27, f19, f5, rtz # perform operation
fmul.h f27, f19, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f19, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f19, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f19, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f19, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3e00)
li x29, 0x07ee2398a74e0654 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
fmul.h f29, f3, f15, dyn # perform operation
fmul.h f29, f3, f15, rdn # perform operation
fmul.h f29, f3, f15, rmm # perform operation
fmul.h f29, f3, f15, rne # perform operation
fmul.h f29, f3, f15, rtz # perform operation
fmul.h f29, f3, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f3, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f3, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f3, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f3, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f3, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbe00)
li x16, 0x57fcf646597ba9de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
fmul.h f16, f14, f6, dyn # perform operation
fmul.h f16, f14, f6, rdn # perform operation
fmul.h f16, f14, f6, rmm # perform operation
fmul.h f16, f14, f6, rne # perform operation
fmul.h f16, f14, f6, rtz # perform operation
fmul.h f16, f14, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f14, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f14, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f14, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f14, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f14, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x4000)
li x16, 0x7b694245b8944d40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
fmul.h f16, f24, f5, dyn # perform operation
fmul.h f16, f24, f5, rdn # perform operation
fmul.h f16, f24, f5, rmm # perform operation
fmul.h f16, f24, f5, rne # perform operation
fmul.h f16, f24, f5, rtz # perform operation
fmul.h f16, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f24, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc000)
li x26, 0x0fb0be3018edab3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f4, 0(x2) # load 0x0000c000 from memory into f4
fmul.h f26, f24, f4, dyn # perform operation
fmul.h f26, f24, f4, rdn # perform operation
fmul.h f26, f24, f4, rmm # perform operation
fmul.h f26, f24, f4, rne # perform operation
fmul.h f26, f24, f4, rtz # perform operation
fmul.h f26, f24, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f24, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f24, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f24, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f24, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x400)
li x20, 0x546c573b610cf9af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
fmul.h f20, f21, f5, dyn # perform operation
fmul.h f20, f21, f5, rdn # perform operation
fmul.h f20, f21, f5, rmm # perform operation
fmul.h f20, f21, f5, rne # perform operation
fmul.h f20, f21, f5, rtz # perform operation
fmul.h f20, f21, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f21, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f21, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f21, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f21, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8400)
li x20, 0x09d06a9610a49efc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f22, 0(x2) # load 0x00008400 from memory into f22
fmul.h f20, f8, f22, dyn # perform operation
fmul.h f20, f8, f22, rdn # perform operation
fmul.h f20, f8, f22, rmm # perform operation
fmul.h f20, f8, f22, rne # perform operation
fmul.h f20, f8, f22, rtz # perform operation
fmul.h f20, f8, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f8, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f8, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f8, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f8, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f8, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7bff)
li x14, 0x8f52db066fe96030 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
fmul.h f14, f8, f31, dyn # perform operation
fmul.h f14, f8, f31, rdn # perform operation
fmul.h f14, f8, f31, rmm # perform operation
fmul.h f14, f8, f31, rne # perform operation
fmul.h f14, f8, f31, rtz # perform operation
fmul.h f14, f8, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f8, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f8, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f8, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f8, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f8, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfbff)
li x2, 0x750f768dc5f05b7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
fmul.h f2, f14, f28, dyn # perform operation
fmul.h f2, f14, f28, rdn # perform operation
fmul.h f2, f14, f28, rmm # perform operation
fmul.h f2, f14, f28, rne # perform operation
fmul.h f2, f14, f28, rtz # perform operation
fmul.h f2, f14, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f14, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f14, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f14, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f14, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f14, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3ff)
li x26, 0xe07df9cccb54b4e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fmul.h f26, f23, f19, dyn # perform operation
fmul.h f26, f23, f19, rdn # perform operation
fmul.h f26, f23, f19, rmm # perform operation
fmul.h f26, f23, f19, rne # perform operation
fmul.h f26, f23, f19, rtz # perform operation
fmul.h f26, f23, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f23, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f23, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f23, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f23, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f23, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x83ff)
li x23, 0xa7a09d2a91d80d6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
fmul.h f23, f28, f4, dyn # perform operation
fmul.h f23, f28, f4, rdn # perform operation
fmul.h f23, f28, f4, rmm # perform operation
fmul.h f23, f28, f4, rne # perform operation
fmul.h f23, f28, f4, rtz # perform operation
fmul.h f23, f28, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f28, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f28, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f28, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f28, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f28, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x200)
li x12, 0x2f7c630bd2aab79c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fmul.h f12, f24, f2, dyn # perform operation
fmul.h f12, f24, f2, rdn # perform operation
fmul.h f12, f24, f2, rmm # perform operation
fmul.h f12, f24, f2, rne # perform operation
fmul.h f12, f24, f2, rtz # perform operation
fmul.h f12, f24, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f24, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f24, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f24, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f24, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8200)
li x8, 0xbfb00dd8b24186f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
fmul.h f8, f24, f9, dyn # perform operation
fmul.h f8, f24, f9, rdn # perform operation
fmul.h f8, f24, f9, rmm # perform operation
fmul.h f8, f24, f9, rne # perform operation
fmul.h f8, f24, f9, rtz # perform operation
fmul.h f8, f24, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f24, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f24, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f24, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f24, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f24, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x1)
li x21, 0xd3faf6c48a3e43a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
fmul.h f21, f3, f6, dyn # perform operation
fmul.h f21, f3, f6, rdn # perform operation
fmul.h f21, f3, f6, rmm # perform operation
fmul.h f21, f3, f6, rne # perform operation
fmul.h f21, f3, f6, rtz # perform operation
fmul.h f21, f3, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f3, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f3, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f3, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f3, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8001)
li x26, 0x6baef649a2922ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
fmul.h f26, f14, f17, dyn # perform operation
fmul.h f26, f14, f17, rdn # perform operation
fmul.h f26, f14, f17, rmm # perform operation
fmul.h f26, f14, f17, rne # perform operation
fmul.h f26, f14, f17, rtz # perform operation
fmul.h f26, f14, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f14, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f14, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f14, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f14, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f14, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c00)
li x10, 0x1c757c524a5f251d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
fmul.h f10, f21, f25, dyn # perform operation
fmul.h f10, f21, f25, rdn # perform operation
fmul.h f10, f21, f25, rmm # perform operation
fmul.h f10, f21, f25, rne # perform operation
fmul.h f10, f21, f25, rtz # perform operation
fmul.h f10, f21, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f21, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f21, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f21, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f21, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f21, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc00)
li x27, 0x0f3e00077122a8a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
fmul.h f27, f18, f11, dyn # perform operation
fmul.h f27, f18, f11, rdn # perform operation
fmul.h f27, f18, f11, rmm # perform operation
fmul.h f27, f18, f11, rne # perform operation
fmul.h f27, f18, f11, rtz # perform operation
fmul.h f27, f18, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f18, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f18, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f18, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f18, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f18, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7e00)
li x23, 0x799eaf63ebaaecf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f4, 0(x2) # load 0x00007e00 from memory into f4
fmul.h f23, f28, f4, dyn # perform operation
fmul.h f23, f28, f4, rdn # perform operation
fmul.h f23, f28, f4, rmm # perform operation
fmul.h f23, f28, f4, rne # perform operation
fmul.h f23, f28, f4, rtz # perform operation
fmul.h f23, f28, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f28, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f28, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f28, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f28, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f28, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7fff)
li x19, 0xed8ad424b15b1e60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fmul.h f19, f17, f23, dyn # perform operation
fmul.h f19, f17, f23, rdn # perform operation
fmul.h f19, f17, f23, rmm # perform operation
fmul.h f19, f17, f23, rne # perform operation
fmul.h f19, f17, f23, rtz # perform operation
fmul.h f19, f17, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f17, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f17, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f17, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f17, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f17, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c01)
li x16, 0xb2916d6b4c65f2cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
fmul.h f16, f3, f24, dyn # perform operation
fmul.h f16, f3, f24, rdn # perform operation
fmul.h f16, f3, f24, rmm # perform operation
fmul.h f16, f3, f24, rne # perform operation
fmul.h f16, f3, f24, rtz # perform operation
fmul.h f16, f3, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f3, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f3, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f3, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f3, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f3, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7dff)
li x20, 0x4acfc3767f70e261 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
fmul.h f20, f22, f18, dyn # perform operation
fmul.h f20, f22, f18, rdn # perform operation
fmul.h f20, f22, f18, rmm # perform operation
fmul.h f20, f22, f18, rne # perform operation
fmul.h f20, f22, f18, rtz # perform operation
fmul.h f20, f22, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f22, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f22, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f22, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f22, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f22, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x58b4)
li x2, 0x03d79c79883c55b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
fmul.h f2, f26, f19, dyn # perform operation
fmul.h f2, f26, f19, rdn # perform operation
fmul.h f2, f26, f19, rmm # perform operation
fmul.h f2, f26, f19, rne # perform operation
fmul.h f2, f26, f19, rtz # perform operation
fmul.h f2, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f26, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc93a)
li x4, 0xe9aeb94e10135376 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f28, 0(x2) # load 0x00007bff from memory into f28
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
fmul.h f4, f28, f22, dyn # perform operation
fmul.h f4, f28, f22, rdn # perform operation
fmul.h f4, f28, f22, rmm # perform operation
fmul.h f4, f28, f22, rne # perform operation
fmul.h f4, f28, f22, rtz # perform operation
fmul.h f4, f28, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f28, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f28, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f28, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f28, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f28, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x0)
li x15, 0xf9dad6295f430b25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
fmul.h f15, f19, f28, dyn # perform operation
fmul.h f15, f19, f28, rdn # perform operation
fmul.h f15, f19, f28, rmm # perform operation
fmul.h f15, f19, f28, rne # perform operation
fmul.h f15, f19, f28, rtz # perform operation
fmul.h f15, f19, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f19, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f19, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f19, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f19, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f19, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8000)
li x25, 0x402959661ab06692 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fmul.h f25, f28, f19, dyn # perform operation
fmul.h f25, f28, f19, rdn # perform operation
fmul.h f25, f28, f19, rmm # perform operation
fmul.h f25, f28, f19, rne # perform operation
fmul.h f25, f28, f19, rtz # perform operation
fmul.h f25, f28, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f28, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f28, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f28, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f28, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f28, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3c00)
li x31, 0x7454dc20d4fcbaa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fmul.h f31, f30, f3, dyn # perform operation
fmul.h f31, f30, f3, rdn # perform operation
fmul.h f31, f30, f3, rmm # perform operation
fmul.h f31, f30, f3, rne # perform operation
fmul.h f31, f30, f3, rtz # perform operation
fmul.h f31, f30, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f30, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f30, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f30, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f30, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbc00)
li x19, 0x89b6a93b0e2cc72c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
fmul.h f19, f16, f17, dyn # perform operation
fmul.h f19, f16, f17, rdn # perform operation
fmul.h f19, f16, f17, rmm # perform operation
fmul.h f19, f16, f17, rne # perform operation
fmul.h f19, f16, f17, rtz # perform operation
fmul.h f19, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3e00)
li x22, 0x6252085318c2288f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
fmul.h f22, f11, f1, dyn # perform operation
fmul.h f22, f11, f1, rdn # perform operation
fmul.h f22, f11, f1, rmm # perform operation
fmul.h f22, f11, f1, rne # perform operation
fmul.h f22, f11, f1, rtz # perform operation
fmul.h f22, f11, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f11, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f11, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f11, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f11, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f11, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbe00)
li x8, 0x4ea0cf95805e278f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fmul.h f8, f21, f26, dyn # perform operation
fmul.h f8, f21, f26, rdn # perform operation
fmul.h f8, f21, f26, rmm # perform operation
fmul.h f8, f21, f26, rne # perform operation
fmul.h f8, f21, f26, rtz # perform operation
fmul.h f8, f21, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f21, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f21, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f21, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f21, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x4000)
li x5, 0x6c8696dc7815bab7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
fmul.h f5, f19, f14, dyn # perform operation
fmul.h f5, f19, f14, rdn # perform operation
fmul.h f5, f19, f14, rmm # perform operation
fmul.h f5, f19, f14, rne # perform operation
fmul.h f5, f19, f14, rtz # perform operation
fmul.h f5, f19, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f19, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f19, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f19, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f19, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc000)
li x26, 0x75077fbf511ebacf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f4, 0(x2) # load 0x0000fbff from memory into f4
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
fmul.h f26, f4, f18, dyn # perform operation
fmul.h f26, f4, f18, rdn # perform operation
fmul.h f26, f4, f18, rmm # perform operation
fmul.h f26, f4, f18, rne # perform operation
fmul.h f26, f4, f18, rtz # perform operation
fmul.h f26, f4, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f4, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f4, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f4, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f4, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f4, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x400)
li x3, 0x26cf35975fa3db89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f21, 0(x2) # load 0x0000fbff from memory into f21
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fmul.h f3, f21, f18, dyn # perform operation
fmul.h f3, f21, f18, rdn # perform operation
fmul.h f3, f21, f18, rmm # perform operation
fmul.h f3, f21, f18, rne # perform operation
fmul.h f3, f21, f18, rtz # perform operation
fmul.h f3, f21, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f21, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f21, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f21, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f21, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f21, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8400)
li x6, 0x61f0d1ca732dab46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
fmul.h f6, f11, f5, dyn # perform operation
fmul.h f6, f11, f5, rdn # perform operation
fmul.h f6, f11, f5, rmm # perform operation
fmul.h f6, f11, f5, rne # perform operation
fmul.h f6, f11, f5, rtz # perform operation
fmul.h f6, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7bff)
li x25, 0x7f1fa9b3faa4d374 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
fmul.h f25, f19, f30, dyn # perform operation
fmul.h f25, f19, f30, rdn # perform operation
fmul.h f25, f19, f30, rmm # perform operation
fmul.h f25, f19, f30, rne # perform operation
fmul.h f25, f19, f30, rtz # perform operation
fmul.h f25, f19, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f19, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f19, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f19, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f19, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f19, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfbff)
li x13, 0x0135e962565913bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f4, 0(x2) # load 0x0000fbff from memory into f4
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
fmul.h f13, f4, f23, dyn # perform operation
fmul.h f13, f4, f23, rdn # perform operation
fmul.h f13, f4, f23, rmm # perform operation
fmul.h f13, f4, f23, rne # perform operation
fmul.h f13, f4, f23, rtz # perform operation
fmul.h f13, f4, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f4, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f4, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f4, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f4, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f4, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3ff)
li x7, 0xb9e999be4c33d633 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
fmul.h f7, f28, f5, dyn # perform operation
fmul.h f7, f28, f5, rdn # perform operation
fmul.h f7, f28, f5, rmm # perform operation
fmul.h f7, f28, f5, rne # perform operation
fmul.h f7, f28, f5, rtz # perform operation
fmul.h f7, f28, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f28, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f28, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f28, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f28, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f28, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x83ff)
li x19, 0x606aff08e2f6fe10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f15, 0(x2) # load 0x0000fbff from memory into f15
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fmul.h f19, f15, f23, dyn # perform operation
fmul.h f19, f15, f23, rdn # perform operation
fmul.h f19, f15, f23, rmm # perform operation
fmul.h f19, f15, f23, rne # perform operation
fmul.h f19, f15, f23, rtz # perform operation
fmul.h f19, f15, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f15, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f15, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f15, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f15, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f15, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x200)
li x26, 0xdd599f507113a98b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
fmul.h f26, f9, f10, dyn # perform operation
fmul.h f26, f9, f10, rdn # perform operation
fmul.h f26, f9, f10, rmm # perform operation
fmul.h f26, f9, f10, rne # perform operation
fmul.h f26, f9, f10, rtz # perform operation
fmul.h f26, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f9, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8200)
li x3, 0x9988c861c533a702 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fmul.h f3, f5, f23, dyn # perform operation
fmul.h f3, f5, f23, rdn # perform operation
fmul.h f3, f5, f23, rmm # perform operation
fmul.h f3, f5, f23, rne # perform operation
fmul.h f3, f5, f23, rtz # perform operation
fmul.h f3, f5, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f5, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f5, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f5, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f5, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x1)
li x20, 0x4aa11799be634715 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fmul.h f20, f31, f16, dyn # perform operation
fmul.h f20, f31, f16, rdn # perform operation
fmul.h f20, f31, f16, rmm # perform operation
fmul.h f20, f31, f16, rne # perform operation
fmul.h f20, f31, f16, rtz # perform operation
fmul.h f20, f31, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f31, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f31, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f31, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f31, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f31, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8001)
li x6, 0x56142210e6847efa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
fmul.h f6, f24, f5, dyn # perform operation
fmul.h f6, f24, f5, rdn # perform operation
fmul.h f6, f24, f5, rmm # perform operation
fmul.h f6, f24, f5, rne # perform operation
fmul.h f6, f24, f5, rtz # perform operation
fmul.h f6, f24, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f24, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f24, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f24, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f24, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f24, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c00)
li x18, 0x5337327db5f2aa1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f1, 0(x2) # load 0x0000fbff from memory into f1
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fmul.h f18, f1, f23, dyn # perform operation
fmul.h f18, f1, f23, rdn # perform operation
fmul.h f18, f1, f23, rmm # perform operation
fmul.h f18, f1, f23, rne # perform operation
fmul.h f18, f1, f23, rtz # perform operation
fmul.h f18, f1, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f1, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f1, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f1, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f1, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc00)
li x18, 0x7123b46352ad722d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fmul.h f18, f7, f26, dyn # perform operation
fmul.h f18, f7, f26, rdn # perform operation
fmul.h f18, f7, f26, rmm # perform operation
fmul.h f18, f7, f26, rne # perform operation
fmul.h f18, f7, f26, rtz # perform operation
fmul.h f18, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f7, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7e00)
li x8, 0xc48cce2ed36c42a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
fmul.h f8, f18, f20, dyn # perform operation
fmul.h f8, f18, f20, rdn # perform operation
fmul.h f8, f18, f20, rmm # perform operation
fmul.h f8, f18, f20, rne # perform operation
fmul.h f8, f18, f20, rtz # perform operation
fmul.h f8, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f18, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7fff)
li x22, 0xf25ce7d39eb96c0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
fmul.h f22, f12, f21, dyn # perform operation
fmul.h f22, f12, f21, rdn # perform operation
fmul.h f22, f12, f21, rmm # perform operation
fmul.h f22, f12, f21, rne # perform operation
fmul.h f22, f12, f21, rtz # perform operation
fmul.h f22, f12, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f12, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f12, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f12, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f12, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f12, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c01)
li x27, 0xde421d312c0ebd58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
fmul.h f27, f10, f4, dyn # perform operation
fmul.h f27, f10, f4, rdn # perform operation
fmul.h f27, f10, f4, rmm # perform operation
fmul.h f27, f10, f4, rne # perform operation
fmul.h f27, f10, f4, rtz # perform operation
fmul.h f27, f10, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f10, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f10, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f10, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f10, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f10, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7dff)
li x20, 0x3a354c947980c44b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
fmul.h f20, f17, f10, dyn # perform operation
fmul.h f20, f17, f10, rdn # perform operation
fmul.h f20, f17, f10, rmm # perform operation
fmul.h f20, f17, f10, rne # perform operation
fmul.h f20, f17, f10, rtz # perform operation
fmul.h f20, f17, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f17, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f17, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f17, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f17, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x58b4)
li x6, 0xe1a8760512701e84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
fmul.h f6, f31, f20, dyn # perform operation
fmul.h f6, f31, f20, rdn # perform operation
fmul.h f6, f31, f20, rmm # perform operation
fmul.h f6, f31, f20, rne # perform operation
fmul.h f6, f31, f20, rtz # perform operation
fmul.h f6, f31, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f31, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f31, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f31, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f31, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc93a)
li x4, 0xef21bbd54f797f23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
fmul.h f4, f16, f22, dyn # perform operation
fmul.h f4, f16, f22, rdn # perform operation
fmul.h f4, f16, f22, rmm # perform operation
fmul.h f4, f16, f22, rne # perform operation
fmul.h f4, f16, f22, rtz # perform operation
fmul.h f4, f16, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f16, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f16, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f16, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f16, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x0)
li x25, 0x79800f0bdb42dbb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
fmul.h f25, f9, f1, dyn # perform operation
fmul.h f25, f9, f1, rdn # perform operation
fmul.h f25, f9, f1, rmm # perform operation
fmul.h f25, f9, f1, rne # perform operation
fmul.h f25, f9, f1, rtz # perform operation
fmul.h f25, f9, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f9, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f9, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f9, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f9, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f9, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8000)
li x10, 0xf3320dd9d9764d39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
fmul.h f10, f15, f20, dyn # perform operation
fmul.h f10, f15, f20, rdn # perform operation
fmul.h f10, f15, f20, rmm # perform operation
fmul.h f10, f15, f20, rne # perform operation
fmul.h f10, f15, f20, rtz # perform operation
fmul.h f10, f15, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f15, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f15, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f15, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f15, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f15, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3c00)
li x6, 0x8fc72699604ddabb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
fmul.h f6, f7, f31, dyn # perform operation
fmul.h f6, f7, f31, rdn # perform operation
fmul.h f6, f7, f31, rmm # perform operation
fmul.h f6, f7, f31, rne # perform operation
fmul.h f6, f7, f31, rtz # perform operation
fmul.h f6, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f7, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbc00)
li x5, 0xcfee61beb7ba3cba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
fmul.h f5, f20, f31, dyn # perform operation
fmul.h f5, f20, f31, rdn # perform operation
fmul.h f5, f20, f31, rmm # perform operation
fmul.h f5, f20, f31, rne # perform operation
fmul.h f5, f20, f31, rtz # perform operation
fmul.h f5, f20, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f20, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f20, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f20, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f20, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3e00)
li x26, 0x2e9dbb5dffbfcf66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
fmul.h f26, f30, f20, dyn # perform operation
fmul.h f26, f30, f20, rdn # perform operation
fmul.h f26, f30, f20, rmm # perform operation
fmul.h f26, f30, f20, rne # perform operation
fmul.h f26, f30, f20, rtz # perform operation
fmul.h f26, f30, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f30, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f30, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f30, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f30, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f30, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbe00)
li x7, 0xf1f973d9abb1fe9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f5, 0(x2) # load 0x000003ff from memory into f5
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fmul.h f7, f5, f20, dyn # perform operation
fmul.h f7, f5, f20, rdn # perform operation
fmul.h f7, f5, f20, rmm # perform operation
fmul.h f7, f5, f20, rne # perform operation
fmul.h f7, f5, f20, rtz # perform operation
fmul.h f7, f5, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f5, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f5, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f5, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f5, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f5, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x4000)
li x29, 0x687189210eba4fb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
fmul.h f29, f7, f12, dyn # perform operation
fmul.h f29, f7, f12, rdn # perform operation
fmul.h f29, f7, f12, rmm # perform operation
fmul.h f29, f7, f12, rne # perform operation
fmul.h f29, f7, f12, rtz # perform operation
fmul.h f29, f7, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f7, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f7, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f7, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f7, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f7, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc000)
li x11, 0x4697a0ff96f94a5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
fmul.h f11, f24, f25, dyn # perform operation
fmul.h f11, f24, f25, rdn # perform operation
fmul.h f11, f24, f25, rmm # perform operation
fmul.h f11, f24, f25, rne # perform operation
fmul.h f11, f24, f25, rtz # perform operation
fmul.h f11, f24, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f24, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f24, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f24, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f24, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f24, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x400)
li x13, 0x0267a92a8e47e369 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fmul.h f13, f27, f15, dyn # perform operation
fmul.h f13, f27, f15, rdn # perform operation
fmul.h f13, f27, f15, rmm # perform operation
fmul.h f13, f27, f15, rne # perform operation
fmul.h f13, f27, f15, rtz # perform operation
fmul.h f13, f27, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f27, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f27, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f27, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f27, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f27, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8400)
li x11, 0x2216263e5ec790c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
fmul.h f11, f26, f2, dyn # perform operation
fmul.h f11, f26, f2, rdn # perform operation
fmul.h f11, f26, f2, rmm # perform operation
fmul.h f11, f26, f2, rne # perform operation
fmul.h f11, f26, f2, rtz # perform operation
fmul.h f11, f26, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f26, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f26, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f26, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f26, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f26, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7bff)
li x16, 0x16a862fc374194de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
fmul.h f16, f26, f29, dyn # perform operation
fmul.h f16, f26, f29, rdn # perform operation
fmul.h f16, f26, f29, rmm # perform operation
fmul.h f16, f26, f29, rne # perform operation
fmul.h f16, f26, f29, rtz # perform operation
fmul.h f16, f26, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f26, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f26, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f26, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f26, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f26, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfbff)
li x10, 0x8afd72da1a19ca5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f11, 0(x2) # load 0x0000fbff from memory into f11
fmul.h f10, f24, f11, dyn # perform operation
fmul.h f10, f24, f11, rdn # perform operation
fmul.h f10, f24, f11, rmm # perform operation
fmul.h f10, f24, f11, rne # perform operation
fmul.h f10, f24, f11, rtz # perform operation
fmul.h f10, f24, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f24, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f24, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f24, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f24, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3ff)
li x13, 0xbbc2f28c90ed5aec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
fmul.h f13, f23, f30, dyn # perform operation
fmul.h f13, f23, f30, rdn # perform operation
fmul.h f13, f23, f30, rmm # perform operation
fmul.h f13, f23, f30, rne # perform operation
fmul.h f13, f23, f30, rtz # perform operation
fmul.h f13, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x83ff)
li x16, 0x1f5dfe9d9019ffbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
fmul.h f16, f18, f4, dyn # perform operation
fmul.h f16, f18, f4, rdn # perform operation
fmul.h f16, f18, f4, rmm # perform operation
fmul.h f16, f18, f4, rne # perform operation
fmul.h f16, f18, f4, rtz # perform operation
fmul.h f16, f18, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f18, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f18, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f18, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f18, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f18, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x200)
li x14, 0x6b6f36eb768b8889 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fmul.h f14, f28, f24, dyn # perform operation
fmul.h f14, f28, f24, rdn # perform operation
fmul.h f14, f28, f24, rmm # perform operation
fmul.h f14, f28, f24, rne # perform operation
fmul.h f14, f28, f24, rtz # perform operation
fmul.h f14, f28, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f28, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f28, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f28, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f28, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f28, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8200)
li x5, 0x64152542157b555f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f17, 0(x2) # load 0x000003ff from memory into f17
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
fmul.h f5, f17, f19, dyn # perform operation
fmul.h f5, f17, f19, rdn # perform operation
fmul.h f5, f17, f19, rmm # perform operation
fmul.h f5, f17, f19, rne # perform operation
fmul.h f5, f17, f19, rtz # perform operation
fmul.h f5, f17, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f17, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f17, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f17, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f17, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f17, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x1)
li x4, 0xf5d6c9ac28732c6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
fmul.h f4, f15, f12, dyn # perform operation
fmul.h f4, f15, f12, rdn # perform operation
fmul.h f4, f15, f12, rmm # perform operation
fmul.h f4, f15, f12, rne # perform operation
fmul.h f4, f15, f12, rtz # perform operation
fmul.h f4, f15, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f15, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f15, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f15, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f15, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f15, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8001)
li x5, 0xf3207cfacee3feec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
fmul.h f5, f1, f15, dyn # perform operation
fmul.h f5, f1, f15, rdn # perform operation
fmul.h f5, f1, f15, rmm # perform operation
fmul.h f5, f1, f15, rne # perform operation
fmul.h f5, f1, f15, rtz # perform operation
fmul.h f5, f1, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f1, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f1, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f1, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f1, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f1, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c00)
li x21, 0x6eb09e29912b8e2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
fmul.h f21, f12, f8, dyn # perform operation
fmul.h f21, f12, f8, rdn # perform operation
fmul.h f21, f12, f8, rmm # perform operation
fmul.h f21, f12, f8, rne # perform operation
fmul.h f21, f12, f8, rtz # perform operation
fmul.h f21, f12, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f12, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f12, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f12, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f12, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f12, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc00)
li x26, 0xbd50b2f2f4392acf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
fmul.h f26, f12, f19, dyn # perform operation
fmul.h f26, f12, f19, rdn # perform operation
fmul.h f26, f12, f19, rmm # perform operation
fmul.h f26, f12, f19, rne # perform operation
fmul.h f26, f12, f19, rtz # perform operation
fmul.h f26, f12, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f12, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f12, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f12, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f12, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f12, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7e00)
li x12, 0x044b168d105bb9d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
fmul.h f12, f25, f11, dyn # perform operation
fmul.h f12, f25, f11, rdn # perform operation
fmul.h f12, f25, f11, rmm # perform operation
fmul.h f12, f25, f11, rne # perform operation
fmul.h f12, f25, f11, rtz # perform operation
fmul.h f12, f25, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f25, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f25, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f25, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f25, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f25, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7fff)
li x5, 0x6dc2dc9ba666b6bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f3, 0(x2) # load 0x000003ff from memory into f3
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
fmul.h f5, f3, f20, dyn # perform operation
fmul.h f5, f3, f20, rdn # perform operation
fmul.h f5, f3, f20, rmm # perform operation
fmul.h f5, f3, f20, rne # perform operation
fmul.h f5, f3, f20, rtz # perform operation
fmul.h f5, f3, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f3, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f3, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f3, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f3, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f3, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c01)
li x28, 0xdd82f4d7a1af9a8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
fmul.h f28, f11, f9, dyn # perform operation
fmul.h f28, f11, f9, rdn # perform operation
fmul.h f28, f11, f9, rmm # perform operation
fmul.h f28, f11, f9, rne # perform operation
fmul.h f28, f11, f9, rtz # perform operation
fmul.h f28, f11, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f11, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f11, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f11, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f11, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f11, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7dff)
li x10, 0x654b54477abd46cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
fmul.h f10, f23, f9, dyn # perform operation
fmul.h f10, f23, f9, rdn # perform operation
fmul.h f10, f23, f9, rmm # perform operation
fmul.h f10, f23, f9, rne # perform operation
fmul.h f10, f23, f9, rtz # perform operation
fmul.h f10, f23, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f23, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f23, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f23, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f23, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f23, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x58b4)
li x8, 0x7e39705de7058252 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fmul.h f8, f11, f23, dyn # perform operation
fmul.h f8, f11, f23, rdn # perform operation
fmul.h f8, f11, f23, rmm # perform operation
fmul.h f8, f11, f23, rne # perform operation
fmul.h f8, f11, f23, rtz # perform operation
fmul.h f8, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc93a)
li x18, 0x4756830e36542d02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fmul.h f18, f27, f20, dyn # perform operation
fmul.h f18, f27, f20, rdn # perform operation
fmul.h f18, f27, f20, rmm # perform operation
fmul.h f18, f27, f20, rne # perform operation
fmul.h f18, f27, f20, rtz # perform operation
fmul.h f18, f27, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f27, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f27, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f27, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f27, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f27, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x0)
li x23, 0xd1f0dc1c0ad2e6e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
fmul.h f23, f5, f15, dyn # perform operation
fmul.h f23, f5, f15, rdn # perform operation
fmul.h f23, f5, f15, rmm # perform operation
fmul.h f23, f5, f15, rne # perform operation
fmul.h f23, f5, f15, rtz # perform operation
fmul.h f23, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8000)
li x21, 0xcdfb32913f4f96c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
fmul.h f21, f3, f12, dyn # perform operation
fmul.h f21, f3, f12, rdn # perform operation
fmul.h f21, f3, f12, rmm # perform operation
fmul.h f21, f3, f12, rne # perform operation
fmul.h f21, f3, f12, rtz # perform operation
fmul.h f21, f3, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f3, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f3, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f3, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f3, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f3, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3c00)
li x4, 0x17b63198cb701f3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
fmul.h f4, f25, f5, dyn # perform operation
fmul.h f4, f25, f5, rdn # perform operation
fmul.h f4, f25, f5, rmm # perform operation
fmul.h f4, f25, f5, rne # perform operation
fmul.h f4, f25, f5, rtz # perform operation
fmul.h f4, f25, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f25, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f25, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f25, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f25, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbc00)
li x18, 0xb3a381e96d518376 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fmul.h f18, f15, f5, dyn # perform operation
fmul.h f18, f15, f5, rdn # perform operation
fmul.h f18, f15, f5, rmm # perform operation
fmul.h f18, f15, f5, rne # perform operation
fmul.h f18, f15, f5, rtz # perform operation
fmul.h f18, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f15, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3e00)
li x19, 0x51ac627ebe46f794 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
fmul.h f19, f2, f11, dyn # perform operation
fmul.h f19, f2, f11, rdn # perform operation
fmul.h f19, f2, f11, rmm # perform operation
fmul.h f19, f2, f11, rne # perform operation
fmul.h f19, f2, f11, rtz # perform operation
fmul.h f19, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f2, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbe00)
li x9, 0x7dcd77a1d5f00df1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fmul.h f9, f19, f26, dyn # perform operation
fmul.h f9, f19, f26, rdn # perform operation
fmul.h f9, f19, f26, rmm # perform operation
fmul.h f9, f19, f26, rne # perform operation
fmul.h f9, f19, f26, rtz # perform operation
fmul.h f9, f19, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f19, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f19, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f19, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f19, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f19, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x4000)
li x24, 0x4d122d0e7205e095 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f30, 0(x2) # load 0x00004000 from memory into f30
fmul.h f24, f9, f30, dyn # perform operation
fmul.h f24, f9, f30, rdn # perform operation
fmul.h f24, f9, f30, rmm # perform operation
fmul.h f24, f9, f30, rne # perform operation
fmul.h f24, f9, f30, rtz # perform operation
fmul.h f24, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f9, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc000)
li x3, 0x472b6a2974bb14f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fmul.h f3, f28, f1, dyn # perform operation
fmul.h f3, f28, f1, rdn # perform operation
fmul.h f3, f28, f1, rmm # perform operation
fmul.h f3, f28, f1, rne # perform operation
fmul.h f3, f28, f1, rtz # perform operation
fmul.h f3, f28, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f28, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f28, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f28, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f28, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f28, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x400)
li x26, 0x5c0e152ed49bb5c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fmul.h f26, f5, f15, dyn # perform operation
fmul.h f26, f5, f15, rdn # perform operation
fmul.h f26, f5, f15, rmm # perform operation
fmul.h f26, f5, f15, rne # perform operation
fmul.h f26, f5, f15, rtz # perform operation
fmul.h f26, f5, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f5, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f5, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f5, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f5, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8400)
li x12, 0xdc6e7c39672e7d96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
fmul.h f12, f6, f16, dyn # perform operation
fmul.h f12, f6, f16, rdn # perform operation
fmul.h f12, f6, f16, rmm # perform operation
fmul.h f12, f6, f16, rne # perform operation
fmul.h f12, f6, f16, rtz # perform operation
fmul.h f12, f6, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f6, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f6, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f6, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f6, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f6, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7bff)
li x13, 0x6a117ec9bfdad90b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fmul.h f13, f31, f8, dyn # perform operation
fmul.h f13, f31, f8, rdn # perform operation
fmul.h f13, f31, f8, rmm # perform operation
fmul.h f13, f31, f8, rne # perform operation
fmul.h f13, f31, f8, rtz # perform operation
fmul.h f13, f31, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f31, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f31, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f31, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f31, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f31, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfbff)
li x11, 0x1a90bd39bdb4ec6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
fmul.h f11, f30, f16, dyn # perform operation
fmul.h f11, f30, f16, rdn # perform operation
fmul.h f11, f30, f16, rmm # perform operation
fmul.h f11, f30, f16, rne # perform operation
fmul.h f11, f30, f16, rtz # perform operation
fmul.h f11, f30, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f30, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f30, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f30, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f30, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3ff)
li x19, 0xd5ae3d325df0bc22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
fmul.h f19, f3, f28, dyn # perform operation
fmul.h f19, f3, f28, rdn # perform operation
fmul.h f19, f3, f28, rmm # perform operation
fmul.h f19, f3, f28, rne # perform operation
fmul.h f19, f3, f28, rtz # perform operation
fmul.h f19, f3, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f3, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f3, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f3, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f3, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f3, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x83ff)
li x10, 0x3efdf4bed9967d3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f17, 0(x2) # load 0x000083ff from memory into f17
fmul.h f10, f16, f17, dyn # perform operation
fmul.h f10, f16, f17, rdn # perform operation
fmul.h f10, f16, f17, rmm # perform operation
fmul.h f10, f16, f17, rne # perform operation
fmul.h f10, f16, f17, rtz # perform operation
fmul.h f10, f16, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f16, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f16, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f16, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f16, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x200)
li x16, 0x15689d331a491fb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
fmul.h f16, f13, f19, dyn # perform operation
fmul.h f16, f13, f19, rdn # perform operation
fmul.h f16, f13, f19, rmm # perform operation
fmul.h f16, f13, f19, rne # perform operation
fmul.h f16, f13, f19, rtz # perform operation
fmul.h f16, f13, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f13, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f13, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f13, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f13, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f13, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8200)
li x22, 0xf72161ed7b384e19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
fmul.h f22, f1, f27, dyn # perform operation
fmul.h f22, f1, f27, rdn # perform operation
fmul.h f22, f1, f27, rmm # perform operation
fmul.h f22, f1, f27, rne # perform operation
fmul.h f22, f1, f27, rtz # perform operation
fmul.h f22, f1, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f1, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f1, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f1, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f1, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x1)
li x26, 0xc7d976179077d33b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
fmul.h f26, f11, f15, dyn # perform operation
fmul.h f26, f11, f15, rdn # perform operation
fmul.h f26, f11, f15, rmm # perform operation
fmul.h f26, f11, f15, rne # perform operation
fmul.h f26, f11, f15, rtz # perform operation
fmul.h f26, f11, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f11, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f11, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f11, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f11, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f11, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8001)
li x15, 0xf3c76922003cb5fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
fmul.h f15, f31, f10, dyn # perform operation
fmul.h f15, f31, f10, rdn # perform operation
fmul.h f15, f31, f10, rmm # perform operation
fmul.h f15, f31, f10, rne # perform operation
fmul.h f15, f31, f10, rtz # perform operation
fmul.h f15, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f31, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c00)
li x12, 0x886785522496156c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
fmul.h f12, f20, f18, dyn # perform operation
fmul.h f12, f20, f18, rdn # perform operation
fmul.h f12, f20, f18, rmm # perform operation
fmul.h f12, f20, f18, rne # perform operation
fmul.h f12, f20, f18, rtz # perform operation
fmul.h f12, f20, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f20, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f20, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f20, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f20, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f20, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc00)
li x30, 0x5d38a450194a2f4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fmul.h f30, f3, f26, dyn # perform operation
fmul.h f30, f3, f26, rdn # perform operation
fmul.h f30, f3, f26, rmm # perform operation
fmul.h f30, f3, f26, rne # perform operation
fmul.h f30, f3, f26, rtz # perform operation
fmul.h f30, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f3, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7e00)
li x23, 0xaff31841381b59ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fmul.h f23, f11, f3, dyn # perform operation
fmul.h f23, f11, f3, rdn # perform operation
fmul.h f23, f11, f3, rmm # perform operation
fmul.h f23, f11, f3, rne # perform operation
fmul.h f23, f11, f3, rtz # perform operation
fmul.h f23, f11, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f11, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f11, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f11, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f11, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f11, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7fff)
li x19, 0xa49084ceea2141a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f21, 0(x2) # load 0x000083ff from memory into f21
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
fmul.h f19, f21, f2, dyn # perform operation
fmul.h f19, f21, f2, rdn # perform operation
fmul.h f19, f21, f2, rmm # perform operation
fmul.h f19, f21, f2, rne # perform operation
fmul.h f19, f21, f2, rtz # perform operation
fmul.h f19, f21, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f21, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f21, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f21, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f21, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c01)
li x15, 0xbbaf245bbc7edfa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f27, 0(x2) # load 0x000083ff from memory into f27
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
fmul.h f15, f27, f7, dyn # perform operation
fmul.h f15, f27, f7, rdn # perform operation
fmul.h f15, f27, f7, rmm # perform operation
fmul.h f15, f27, f7, rne # perform operation
fmul.h f15, f27, f7, rtz # perform operation
fmul.h f15, f27, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f27, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f27, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f27, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f27, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f27, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7dff)
li x24, 0xc3022619e1528a8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
fmul.h f24, f31, f26, dyn # perform operation
fmul.h f24, f31, f26, rdn # perform operation
fmul.h f24, f31, f26, rmm # perform operation
fmul.h f24, f31, f26, rne # perform operation
fmul.h f24, f31, f26, rtz # perform operation
fmul.h f24, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f31, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x58b4)
li x24, 0xcce3405075f15442 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fmul.h f24, f11, f30, dyn # perform operation
fmul.h f24, f11, f30, rdn # perform operation
fmul.h f24, f11, f30, rmm # perform operation
fmul.h f24, f11, f30, rne # perform operation
fmul.h f24, f11, f30, rtz # perform operation
fmul.h f24, f11, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f11, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f11, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f11, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f11, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f11, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc93a)
li x4, 0xca2d36c6a8b0aa9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
fmul.h f4, f19, f15, dyn # perform operation
fmul.h f4, f19, f15, rdn # perform operation
fmul.h f4, f19, f15, rmm # perform operation
fmul.h f4, f19, f15, rne # perform operation
fmul.h f4, f19, f15, rtz # perform operation
fmul.h f4, f19, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f19, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f19, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f19, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f19, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f19, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x0)
li x15, 0x364635d5ad5b00a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
fmul.h f15, f3, f26, dyn # perform operation
fmul.h f15, f3, f26, rdn # perform operation
fmul.h f15, f3, f26, rmm # perform operation
fmul.h f15, f3, f26, rne # perform operation
fmul.h f15, f3, f26, rtz # perform operation
fmul.h f15, f3, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f3, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f3, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f3, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f3, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f3, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8000)
li x4, 0x6ce66a2261516f14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
fmul.h f4, f23, f11, dyn # perform operation
fmul.h f4, f23, f11, rdn # perform operation
fmul.h f4, f23, f11, rmm # perform operation
fmul.h f4, f23, f11, rne # perform operation
fmul.h f4, f23, f11, rtz # perform operation
fmul.h f4, f23, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f23, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f23, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f23, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f23, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f23, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3c00)
li x21, 0x01e2f96c79245214 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
fmul.h f21, f1, f2, dyn # perform operation
fmul.h f21, f1, f2, rdn # perform operation
fmul.h f21, f1, f2, rmm # perform operation
fmul.h f21, f1, f2, rne # perform operation
fmul.h f21, f1, f2, rtz # perform operation
fmul.h f21, f1, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f1, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f1, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f1, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f1, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbc00)
li x19, 0x87904b24cb5b2217 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
fmul.h f19, f26, f31, dyn # perform operation
fmul.h f19, f26, f31, rdn # perform operation
fmul.h f19, f26, f31, rmm # perform operation
fmul.h f19, f26, f31, rne # perform operation
fmul.h f19, f26, f31, rtz # perform operation
fmul.h f19, f26, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f26, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f26, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f26, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f26, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3e00)
li x24, 0x10b39da93ab9ad91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
fmul.h f24, f31, f22, dyn # perform operation
fmul.h f24, f31, f22, rdn # perform operation
fmul.h f24, f31, f22, rmm # perform operation
fmul.h f24, f31, f22, rne # perform operation
fmul.h f24, f31, f22, rtz # perform operation
fmul.h f24, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f31, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbe00)
li x14, 0xc7a9411449114095 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
fmul.h f14, f3, f29, dyn # perform operation
fmul.h f14, f3, f29, rdn # perform operation
fmul.h f14, f3, f29, rmm # perform operation
fmul.h f14, f3, f29, rne # perform operation
fmul.h f14, f3, f29, rtz # perform operation
fmul.h f14, f3, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f3, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f3, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f3, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f3, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x4000)
li x29, 0xdf11b1a69f448bb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f8, 0(x2) # load 0x00004000 from memory into f8
fmul.h f29, f19, f8, dyn # perform operation
fmul.h f29, f19, f8, rdn # perform operation
fmul.h f29, f19, f8, rmm # perform operation
fmul.h f29, f19, f8, rne # perform operation
fmul.h f29, f19, f8, rtz # perform operation
fmul.h f29, f19, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f19, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f19, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f19, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f19, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f19, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc000)
li x24, 0xd79a55ff6114e9ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
fmul.h f24, f15, f10, dyn # perform operation
fmul.h f24, f15, f10, rdn # perform operation
fmul.h f24, f15, f10, rmm # perform operation
fmul.h f24, f15, f10, rne # perform operation
fmul.h f24, f15, f10, rtz # perform operation
fmul.h f24, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f15, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x400)
li x27, 0x323e0d592a2da435 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fmul.h f27, f30, f18, dyn # perform operation
fmul.h f27, f30, f18, rdn # perform operation
fmul.h f27, f30, f18, rmm # perform operation
fmul.h f27, f30, f18, rne # perform operation
fmul.h f27, f30, f18, rtz # perform operation
fmul.h f27, f30, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f30, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f30, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f30, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f30, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f30, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8400)
li x8, 0x40eed928258eb403 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
fmul.h f8, f28, f20, dyn # perform operation
fmul.h f8, f28, f20, rdn # perform operation
fmul.h f8, f28, f20, rmm # perform operation
fmul.h f8, f28, f20, rne # perform operation
fmul.h f8, f28, f20, rtz # perform operation
fmul.h f8, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f28, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7bff)
li x11, 0x826328609ac65039 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f5, 0(x2) # load 0x00007bff from memory into f5
fmul.h f11, f2, f5, dyn # perform operation
fmul.h f11, f2, f5, rdn # perform operation
fmul.h f11, f2, f5, rmm # perform operation
fmul.h f11, f2, f5, rne # perform operation
fmul.h f11, f2, f5, rtz # perform operation
fmul.h f11, f2, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f2, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f2, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f2, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f2, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f2, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfbff)
li x26, 0x5e27639061ec6766 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fmul.h f26, f28, f18, dyn # perform operation
fmul.h f26, f28, f18, rdn # perform operation
fmul.h f26, f28, f18, rmm # perform operation
fmul.h f26, f28, f18, rne # perform operation
fmul.h f26, f28, f18, rtz # perform operation
fmul.h f26, f28, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f28, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f28, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f28, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f28, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f28, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3ff)
li x16, 0x14af96fd22c35557 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
fmul.h f16, f10, f26, dyn # perform operation
fmul.h f16, f10, f26, rdn # perform operation
fmul.h f16, f10, f26, rmm # perform operation
fmul.h f16, f10, f26, rne # perform operation
fmul.h f16, f10, f26, rtz # perform operation
fmul.h f16, f10, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f10, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f10, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f10, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f10, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x83ff)
li x2, 0xb7d8e1b09fd6fdfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
fmul.h f2, f10, f12, dyn # perform operation
fmul.h f2, f10, f12, rdn # perform operation
fmul.h f2, f10, f12, rmm # perform operation
fmul.h f2, f10, f12, rne # perform operation
fmul.h f2, f10, f12, rtz # perform operation
fmul.h f2, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x200)
li x9, 0x382e4b6f7e3f53a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
fmul.h f9, f2, f3, dyn # perform operation
fmul.h f9, f2, f3, rdn # perform operation
fmul.h f9, f2, f3, rmm # perform operation
fmul.h f9, f2, f3, rne # perform operation
fmul.h f9, f2, f3, rtz # perform operation
fmul.h f9, f2, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f2, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f2, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f2, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f2, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f2, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8200)
li x16, 0x33770080e8b35d73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f14, 0(x2) # load 0x00008200 from memory into f14
fmul.h f16, f12, f14, dyn # perform operation
fmul.h f16, f12, f14, rdn # perform operation
fmul.h f16, f12, f14, rmm # perform operation
fmul.h f16, f12, f14, rne # perform operation
fmul.h f16, f12, f14, rtz # perform operation
fmul.h f16, f12, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f12, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f12, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f12, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f12, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f12, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x1)
li x19, 0xe6f35f3970894379 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f27, 0(x2) # load 0x00000001 from memory into f27
fmul.h f19, f22, f27, dyn # perform operation
fmul.h f19, f22, f27, rdn # perform operation
fmul.h f19, f22, f27, rmm # perform operation
fmul.h f19, f22, f27, rne # perform operation
fmul.h f19, f22, f27, rtz # perform operation
fmul.h f19, f22, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f22, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f22, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f22, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f22, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f22, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8001)
li x16, 0xd3d6e1fd07320078 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
fmul.h f16, f18, f2, dyn # perform operation
fmul.h f16, f18, f2, rdn # perform operation
fmul.h f16, f18, f2, rmm # perform operation
fmul.h f16, f18, f2, rne # perform operation
fmul.h f16, f18, f2, rtz # perform operation
fmul.h f16, f18, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f18, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f18, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f18, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f18, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c00)
li x3, 0x04bcf20e3f583083 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f1, 0(x2) # load 0x00000200 from memory into f1
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
fmul.h f3, f1, f24, dyn # perform operation
fmul.h f3, f1, f24, rdn # perform operation
fmul.h f3, f1, f24, rmm # perform operation
fmul.h f3, f1, f24, rne # perform operation
fmul.h f3, f1, f24, rtz # perform operation
fmul.h f3, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f1, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc00)
li x7, 0x7e0bbf119e48c1fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
fmul.h f7, f21, f6, dyn # perform operation
fmul.h f7, f21, f6, rdn # perform operation
fmul.h f7, f21, f6, rmm # perform operation
fmul.h f7, f21, f6, rne # perform operation
fmul.h f7, f21, f6, rtz # perform operation
fmul.h f7, f21, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f21, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f21, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f21, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f21, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7e00)
li x27, 0xda6c15807162fe8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
fmul.h f27, f17, f24, dyn # perform operation
fmul.h f27, f17, f24, rdn # perform operation
fmul.h f27, f17, f24, rmm # perform operation
fmul.h f27, f17, f24, rne # perform operation
fmul.h f27, f17, f24, rtz # perform operation
fmul.h f27, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f17, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7fff)
li x27, 0xdebf1faa7a91a7f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f18, 0(x2) # load 0x00000200 from memory into f18
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
fmul.h f27, f18, f30, dyn # perform operation
fmul.h f27, f18, f30, rdn # perform operation
fmul.h f27, f18, f30, rmm # perform operation
fmul.h f27, f18, f30, rne # perform operation
fmul.h f27, f18, f30, rtz # perform operation
fmul.h f27, f18, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f18, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f18, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f18, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f18, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f18, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c01)
li x5, 0xe9bc6ba9c496be16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
fmul.h f5, f23, f15, dyn # perform operation
fmul.h f5, f23, f15, rdn # perform operation
fmul.h f5, f23, f15, rmm # perform operation
fmul.h f5, f23, f15, rne # perform operation
fmul.h f5, f23, f15, rtz # perform operation
fmul.h f5, f23, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f23, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f23, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f23, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f23, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f23, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7dff)
li x3, 0xc4e7e315f179a9ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
fmul.h f3, f10, f15, dyn # perform operation
fmul.h f3, f10, f15, rdn # perform operation
fmul.h f3, f10, f15, rmm # perform operation
fmul.h f3, f10, f15, rne # perform operation
fmul.h f3, f10, f15, rtz # perform operation
fmul.h f3, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f10, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x58b4)
li x18, 0xd020234ac197d5a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f6, 0(x2) # load 0x000058b4 from memory into f6
fmul.h f18, f8, f6, dyn # perform operation
fmul.h f18, f8, f6, rdn # perform operation
fmul.h f18, f8, f6, rmm # perform operation
fmul.h f18, f8, f6, rne # perform operation
fmul.h f18, f8, f6, rtz # perform operation
fmul.h f18, f8, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f8, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f8, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f8, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f8, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f8, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc93a)
li x1, 0xc1704951f0013211 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
fmul.h f1, f25, f8, dyn # perform operation
fmul.h f1, f25, f8, rdn # perform operation
fmul.h f1, f25, f8, rmm # perform operation
fmul.h f1, f25, f8, rne # perform operation
fmul.h f1, f25, f8, rtz # perform operation
fmul.h f1, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f25, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x0)
li x30, 0x6a50882880a152cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
fmul.h f30, f27, f10, dyn # perform operation
fmul.h f30, f27, f10, rdn # perform operation
fmul.h f30, f27, f10, rmm # perform operation
fmul.h f30, f27, f10, rne # perform operation
fmul.h f30, f27, f10, rtz # perform operation
fmul.h f30, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8000)
li x6, 0x9bd64adb95023278 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f19, 0(x2) # load 0x00008200 from memory into f19
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
fmul.h f6, f19, f10, dyn # perform operation
fmul.h f6, f19, f10, rdn # perform operation
fmul.h f6, f19, f10, rmm # perform operation
fmul.h f6, f19, f10, rne # perform operation
fmul.h f6, f19, f10, rtz # perform operation
fmul.h f6, f19, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f19, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f19, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f19, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f19, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f19, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3c00)
li x7, 0x81c1e5928af506cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f4, 0(x2) # load 0x00003c00 from memory into f4
fmul.h f7, f3, f4, dyn # perform operation
fmul.h f7, f3, f4, rdn # perform operation
fmul.h f7, f3, f4, rmm # perform operation
fmul.h f7, f3, f4, rne # perform operation
fmul.h f7, f3, f4, rtz # perform operation
fmul.h f7, f3, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f3, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f3, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f3, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f3, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f3, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbc00)
li x15, 0xc30c3bac298e71ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
fmul.h f15, f27, f25, dyn # perform operation
fmul.h f15, f27, f25, rdn # perform operation
fmul.h f15, f27, f25, rmm # perform operation
fmul.h f15, f27, f25, rne # perform operation
fmul.h f15, f27, f25, rtz # perform operation
fmul.h f15, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3e00)
li x23, 0xb175a44f6f59aa11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
fmul.h f23, f17, f9, dyn # perform operation
fmul.h f23, f17, f9, rdn # perform operation
fmul.h f23, f17, f9, rmm # perform operation
fmul.h f23, f17, f9, rne # perform operation
fmul.h f23, f17, f9, rtz # perform operation
fmul.h f23, f17, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f17, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f17, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f17, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f17, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f17, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbe00)
li x8, 0x0406f5730734cc55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fmul.h f8, f28, f3, dyn # perform operation
fmul.h f8, f28, f3, rdn # perform operation
fmul.h f8, f28, f3, rmm # perform operation
fmul.h f8, f28, f3, rne # perform operation
fmul.h f8, f28, f3, rtz # perform operation
fmul.h f8, f28, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f28, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f28, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f28, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f28, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x4000)
li x18, 0xbe2b397617ea6474 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
fmul.h f18, f22, f15, dyn # perform operation
fmul.h f18, f22, f15, rdn # perform operation
fmul.h f18, f22, f15, rmm # perform operation
fmul.h f18, f22, f15, rne # perform operation
fmul.h f18, f22, f15, rtz # perform operation
fmul.h f18, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc000)
li x5, 0xf14d8546f81b470d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
fmul.h f5, f17, f18, dyn # perform operation
fmul.h f5, f17, f18, rdn # perform operation
fmul.h f5, f17, f18, rmm # perform operation
fmul.h f5, f17, f18, rne # perform operation
fmul.h f5, f17, f18, rtz # perform operation
fmul.h f5, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f17, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x400)
li x28, 0x20c9cbaf84a1327a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
fmul.h f28, f17, f24, dyn # perform operation
fmul.h f28, f17, f24, rdn # perform operation
fmul.h f28, f17, f24, rmm # perform operation
fmul.h f28, f17, f24, rne # perform operation
fmul.h f28, f17, f24, rtz # perform operation
fmul.h f28, f17, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f17, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f17, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f17, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f17, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f17, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8400)
li x28, 0x7607f52893afe2b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
fmul.h f28, f18, f13, dyn # perform operation
fmul.h f28, f18, f13, rdn # perform operation
fmul.h f28, f18, f13, rmm # perform operation
fmul.h f28, f18, f13, rne # perform operation
fmul.h f28, f18, f13, rtz # perform operation
fmul.h f28, f18, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f18, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f18, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f18, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f18, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f18, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7bff)
li x21, 0x8e9a9f425b2b1cd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
fmul.h f21, f15, f19, dyn # perform operation
fmul.h f21, f15, f19, rdn # perform operation
fmul.h f21, f15, f19, rmm # perform operation
fmul.h f21, f15, f19, rne # perform operation
fmul.h f21, f15, f19, rtz # perform operation
fmul.h f21, f15, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f15, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f15, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f15, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f15, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f15, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfbff)
li x14, 0xe44037c0b188ba83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
fmul.h f14, f7, f20, dyn # perform operation
fmul.h f14, f7, f20, rdn # perform operation
fmul.h f14, f7, f20, rmm # perform operation
fmul.h f14, f7, f20, rne # perform operation
fmul.h f14, f7, f20, rtz # perform operation
fmul.h f14, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f7, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3ff)
li x9, 0x38d643f2d101be8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
fmul.h f9, f16, f1, dyn # perform operation
fmul.h f9, f16, f1, rdn # perform operation
fmul.h f9, f16, f1, rmm # perform operation
fmul.h f9, f16, f1, rne # perform operation
fmul.h f9, f16, f1, rtz # perform operation
fmul.h f9, f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f16, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x83ff)
li x31, 0xec106ef6001bd87e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
fmul.h f31, f13, f18, dyn # perform operation
fmul.h f31, f13, f18, rdn # perform operation
fmul.h f31, f13, f18, rmm # perform operation
fmul.h f31, f13, f18, rne # perform operation
fmul.h f31, f13, f18, rtz # perform operation
fmul.h f31, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f13, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x200)
li x31, 0x465056dd3fc8f495 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f4, 0(x2) # load 0x00008200 from memory into f4
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
fmul.h f31, f4, f3, dyn # perform operation
fmul.h f31, f4, f3, rdn # perform operation
fmul.h f31, f4, f3, rmm # perform operation
fmul.h f31, f4, f3, rne # perform operation
fmul.h f31, f4, f3, rtz # perform operation
fmul.h f31, f4, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f4, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f4, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f4, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f4, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f4, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8200)
li x4, 0x1bb1eeef2e59e317 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fmul.h f4, f11, f23, dyn # perform operation
fmul.h f4, f11, f23, rdn # perform operation
fmul.h f4, f11, f23, rmm # perform operation
fmul.h f4, f11, f23, rne # perform operation
fmul.h f4, f11, f23, rtz # perform operation
fmul.h f4, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x1)
li x13, 0x2c75a26e40eb4f74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f4, 0(x2) # load 0x00008200 from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
fmul.h f13, f4, f14, dyn # perform operation
fmul.h f13, f4, f14, rdn # perform operation
fmul.h f13, f4, f14, rmm # perform operation
fmul.h f13, f4, f14, rne # perform operation
fmul.h f13, f4, f14, rtz # perform operation
fmul.h f13, f4, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f4, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f4, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f4, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f4, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8001)
li x9, 0x87b948e33f7f6568 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
fmul.h f9, f21, f15, dyn # perform operation
fmul.h f9, f21, f15, rdn # perform operation
fmul.h f9, f21, f15, rmm # perform operation
fmul.h f9, f21, f15, rne # perform operation
fmul.h f9, f21, f15, rtz # perform operation
fmul.h f9, f21, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f21, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f21, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f21, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f21, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c00)
li x18, 0xb504a81947fe3af1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f24, 0(x2) # load 0x00008200 from memory into f24
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
fmul.h f18, f24, f28, dyn # perform operation
fmul.h f18, f24, f28, rdn # perform operation
fmul.h f18, f24, f28, rmm # perform operation
fmul.h f18, f24, f28, rne # perform operation
fmul.h f18, f24, f28, rtz # perform operation
fmul.h f18, f24, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f24, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f24, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f24, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f24, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f24, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc00)
li x22, 0xfedae0c1de1d779a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
fmul.h f22, f17, f6, dyn # perform operation
fmul.h f22, f17, f6, rdn # perform operation
fmul.h f22, f17, f6, rmm # perform operation
fmul.h f22, f17, f6, rne # perform operation
fmul.h f22, f17, f6, rtz # perform operation
fmul.h f22, f17, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f17, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f17, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f17, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f17, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f17, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7e00)
li x25, 0x673e93d076fc5625 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
fmul.h f25, f12, f5, dyn # perform operation
fmul.h f25, f12, f5, rdn # perform operation
fmul.h f25, f12, f5, rmm # perform operation
fmul.h f25, f12, f5, rne # perform operation
fmul.h f25, f12, f5, rtz # perform operation
fmul.h f25, f12, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f12, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f12, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f12, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f12, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f12, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7fff)
li x3, 0x466daf5f21b9cc00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fmul.h f3, f20, f27, dyn # perform operation
fmul.h f3, f20, f27, rdn # perform operation
fmul.h f3, f20, f27, rmm # perform operation
fmul.h f3, f20, f27, rne # perform operation
fmul.h f3, f20, f27, rtz # perform operation
fmul.h f3, f20, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f20, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f20, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f20, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f20, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f20, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c01)
li x24, 0x9ddf517141d08107 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
fmul.h f24, f26, f11, dyn # perform operation
fmul.h f24, f26, f11, rdn # perform operation
fmul.h f24, f26, f11, rmm # perform operation
fmul.h f24, f26, f11, rne # perform operation
fmul.h f24, f26, f11, rtz # perform operation
fmul.h f24, f26, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f26, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f26, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f26, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f26, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f26, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7dff)
li x19, 0xb019ef4c995d77ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
fmul.h f19, f8, f11, dyn # perform operation
fmul.h f19, f8, f11, rdn # perform operation
fmul.h f19, f8, f11, rmm # perform operation
fmul.h f19, f8, f11, rne # perform operation
fmul.h f19, f8, f11, rtz # perform operation
fmul.h f19, f8, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f8, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f8, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f8, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f8, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x58b4)
li x25, 0x722911f864e37c52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
fmul.h f25, f31, f29, dyn # perform operation
fmul.h f25, f31, f29, rdn # perform operation
fmul.h f25, f31, f29, rmm # perform operation
fmul.h f25, f31, f29, rne # perform operation
fmul.h f25, f31, f29, rtz # perform operation
fmul.h f25, f31, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f31, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f31, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f31, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f31, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc93a)
li x26, 0xd86905f62abc4fa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fmul.h f26, f11, f20, dyn # perform operation
fmul.h f26, f11, f20, rdn # perform operation
fmul.h f26, f11, f20, rmm # perform operation
fmul.h f26, f11, f20, rne # perform operation
fmul.h f26, f11, f20, rtz # perform operation
fmul.h f26, f11, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f11, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f11, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f11, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f11, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x3, 0x2e577d5451ae7b1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fmul.h f3, f19, f2, dyn # perform operation
fmul.h f3, f19, f2, rdn # perform operation
fmul.h f3, f19, f2, rmm # perform operation
fmul.h f3, f19, f2, rne # perform operation
fmul.h f3, f19, f2, rtz # perform operation
fmul.h f3, f19, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f19, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f19, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f19, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f19, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000)
li x23, 0x89ce85881d1a67b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fmul.h f23, f26, f19, dyn # perform operation
fmul.h f23, f26, f19, rdn # perform operation
fmul.h f23, f26, f19, rmm # perform operation
fmul.h f23, f26, f19, rne # perform operation
fmul.h f23, f26, f19, rtz # perform operation
fmul.h f23, f26, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f26, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f26, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f26, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f26, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f26, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3c00)
li x26, 0x24120011ccb21905 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f5, 0(x2) # load 0x00003c00 from memory into f5
fmul.h f26, f7, f5, dyn # perform operation
fmul.h f26, f7, f5, rdn # perform operation
fmul.h f26, f7, f5, rmm # perform operation
fmul.h f26, f7, f5, rne # perform operation
fmul.h f26, f7, f5, rtz # perform operation
fmul.h f26, f7, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f7, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f7, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f7, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f7, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbc00)
li x9, 0xc58be48fdfd3439d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
fmul.h f9, f15, f23, dyn # perform operation
fmul.h f9, f15, f23, rdn # perform operation
fmul.h f9, f15, f23, rmm # perform operation
fmul.h f9, f15, f23, rne # perform operation
fmul.h f9, f15, f23, rtz # perform operation
fmul.h f9, f15, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f15, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f15, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f15, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f15, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f15, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3e00)
li x5, 0xb9449a7567f96343 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
fmul.h f5, f2, f15, dyn # perform operation
fmul.h f5, f2, f15, rdn # perform operation
fmul.h f5, f2, f15, rmm # perform operation
fmul.h f5, f2, f15, rne # perform operation
fmul.h f5, f2, f15, rtz # perform operation
fmul.h f5, f2, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f2, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f2, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f2, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f2, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f2, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbe00)
li x2, 0x60078470a98d2080 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f25, 0(x2) # load 0x0000be00 from memory into f25
fmul.h f2, f20, f25, dyn # perform operation
fmul.h f2, f20, f25, rdn # perform operation
fmul.h f2, f20, f25, rmm # perform operation
fmul.h f2, f20, f25, rne # perform operation
fmul.h f2, f20, f25, rtz # perform operation
fmul.h f2, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f20, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000)
li x24, 0x618cc553a420e122 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f4, 0(x2) # load 0x00000001 from memory into f4
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fmul.h f24, f4, f6, dyn # perform operation
fmul.h f24, f4, f6, rdn # perform operation
fmul.h f24, f4, f6, rmm # perform operation
fmul.h f24, f4, f6, rne # perform operation
fmul.h f24, f4, f6, rtz # perform operation
fmul.h f24, f4, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f4, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f4, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f4, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f4, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f4, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000)
li x8, 0xcd9bae5e73d5381c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f13, 0(x2) # load 0x0000c000 from memory into f13
fmul.h f8, f16, f13, dyn # perform operation
fmul.h f8, f16, f13, rdn # perform operation
fmul.h f8, f16, f13, rmm # perform operation
fmul.h f8, f16, f13, rne # perform operation
fmul.h f8, f16, f13, rtz # perform operation
fmul.h f8, f16, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f16, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f16, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f16, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f16, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f16, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400)
li x4, 0xede01ec782e8ba08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f6, 0(x2) # load 0x00000400 from memory into f6
fmul.h f4, f13, f6, dyn # perform operation
fmul.h f4, f13, f6, rdn # perform operation
fmul.h f4, f13, f6, rmm # perform operation
fmul.h f4, f13, f6, rne # perform operation
fmul.h f4, f13, f6, rtz # perform operation
fmul.h f4, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8400)
li x23, 0x9f866faf440f6a3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
fmul.h f23, f18, f11, dyn # perform operation
fmul.h f23, f18, f11, rdn # perform operation
fmul.h f23, f18, f11, rmm # perform operation
fmul.h f23, f18, f11, rne # perform operation
fmul.h f23, f18, f11, rtz # perform operation
fmul.h f23, f18, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f18, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f18, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f18, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f18, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f18, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7bff)
li x7, 0xaab346588d04f4e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
fmul.h f7, f13, f15, dyn # perform operation
fmul.h f7, f13, f15, rdn # perform operation
fmul.h f7, f13, f15, rmm # perform operation
fmul.h f7, f13, f15, rne # perform operation
fmul.h f7, f13, f15, rtz # perform operation
fmul.h f7, f13, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f13, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f13, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f13, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f13, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f13, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfbff)
li x3, 0xdd7f47c29ce64933 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
fmul.h f3, f2, f30, dyn # perform operation
fmul.h f3, f2, f30, rdn # perform operation
fmul.h f3, f2, f30, rmm # perform operation
fmul.h f3, f2, f30, rne # perform operation
fmul.h f3, f2, f30, rtz # perform operation
fmul.h f3, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f2, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff)
li x23, 0x0db311d35c747c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fmul.h f23, f30, f19, dyn # perform operation
fmul.h f23, f30, f19, rdn # perform operation
fmul.h f23, f30, f19, rmm # perform operation
fmul.h f23, f30, f19, rne # perform operation
fmul.h f23, f30, f19, rtz # perform operation
fmul.h f23, f30, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f30, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f30, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f30, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f30, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f30, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x83ff)
li x27, 0x0e72ca7a5f66b487 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fmul.h f27, f18, f23, dyn # perform operation
fmul.h f27, f18, f23, rdn # perform operation
fmul.h f27, f18, f23, rmm # perform operation
fmul.h f27, f18, f23, rne # perform operation
fmul.h f27, f18, f23, rtz # perform operation
fmul.h f27, f18, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f18, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f18, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f18, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f18, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x200)
li x19, 0xb3a06d19dc3fac11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
fmul.h f19, f11, f12, dyn # perform operation
fmul.h f19, f11, f12, rdn # perform operation
fmul.h f19, f11, f12, rmm # perform operation
fmul.h f19, f11, f12, rne # perform operation
fmul.h f19, f11, f12, rtz # perform operation
fmul.h f19, f11, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f11, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f11, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f11, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f11, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8200)
li x21, 0x7e56a2b9a9fb4220 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
fmul.h f21, f24, f22, dyn # perform operation
fmul.h f21, f24, f22, rdn # perform operation
fmul.h f21, f24, f22, rmm # perform operation
fmul.h f21, f24, f22, rne # perform operation
fmul.h f21, f24, f22, rtz # perform operation
fmul.h f21, f24, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f24, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f24, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f24, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f24, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f24, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x6, 0x6da342ddbcf8987c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
fmul.h f6, f2, f30, dyn # perform operation
fmul.h f6, f2, f30, rdn # perform operation
fmul.h f6, f2, f30, rmm # perform operation
fmul.h f6, f2, f30, rne # perform operation
fmul.h f6, f2, f30, rtz # perform operation
fmul.h f6, f2, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f2, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f2, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f2, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f2, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f2, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8001)
li x19, 0x07fa006df6d7e2de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
fmul.h f19, f30, f6, dyn # perform operation
fmul.h f19, f30, f6, rdn # perform operation
fmul.h f19, f30, f6, rmm # perform operation
fmul.h f19, f30, f6, rne # perform operation
fmul.h f19, f30, f6, rtz # perform operation
fmul.h f19, f30, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f30, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f30, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f30, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f30, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c00)
li x23, 0xaf0c2b71f68a418a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
fmul.h f23, f24, f29, dyn # perform operation
fmul.h f23, f24, f29, rdn # perform operation
fmul.h f23, f24, f29, rmm # perform operation
fmul.h f23, f24, f29, rne # perform operation
fmul.h f23, f24, f29, rtz # perform operation
fmul.h f23, f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc00)
li x13, 0xddd7cac3f8341a47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
fmul.h f13, f31, f22, dyn # perform operation
fmul.h f13, f31, f22, rdn # perform operation
fmul.h f13, f31, f22, rmm # perform operation
fmul.h f13, f31, f22, rne # perform operation
fmul.h f13, f31, f22, rtz # perform operation
fmul.h f13, f31, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f31, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f31, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f31, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f31, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f31, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7e00)
li x6, 0xd74b1f96f728709a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
fmul.h f6, f15, f17, dyn # perform operation
fmul.h f6, f15, f17, rdn # perform operation
fmul.h f6, f15, f17, rmm # perform operation
fmul.h f6, f15, f17, rne # perform operation
fmul.h f6, f15, f17, rtz # perform operation
fmul.h f6, f15, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f15, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f15, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f15, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f15, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f15, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fff)
li x17, 0xa19daf79b038cba3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
fmul.h f17, f13, f28, dyn # perform operation
fmul.h f17, f13, f28, rdn # perform operation
fmul.h f17, f13, f28, rmm # perform operation
fmul.h f17, f13, f28, rne # perform operation
fmul.h f17, f13, f28, rtz # perform operation
fmul.h f17, f13, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f13, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f13, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f13, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f13, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f13, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c01)
li x18, 0xb2ea0f3c7e6b130c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
fmul.h f18, f20, f19, dyn # perform operation
fmul.h f18, f20, f19, rdn # perform operation
fmul.h f18, f20, f19, rmm # perform operation
fmul.h f18, f20, f19, rne # perform operation
fmul.h f18, f20, f19, rtz # perform operation
fmul.h f18, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f20, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7dff)
li x13, 0x17600ab661e59cf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
fmul.h f13, f7, f31, dyn # perform operation
fmul.h f13, f7, f31, rdn # perform operation
fmul.h f13, f7, f31, rmm # perform operation
fmul.h f13, f7, f31, rne # perform operation
fmul.h f13, f7, f31, rtz # perform operation
fmul.h f13, f7, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f7, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f7, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f7, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f7, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f7, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x58b4)
li x27, 0x5d4edf4dfba87103 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
fmul.h f27, f29, f13, dyn # perform operation
fmul.h f27, f29, f13, rdn # perform operation
fmul.h f27, f29, f13, rmm # perform operation
fmul.h f27, f29, f13, rne # perform operation
fmul.h f27, f29, f13, rtz # perform operation
fmul.h f27, f29, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f29, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f29, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f29, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f29, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f29, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc93a)
li x27, 0x962afc3efa5c5ced # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f4, 0(x2) # load 0x0000c93a from memory into f4
fmul.h f27, f25, f4, dyn # perform operation
fmul.h f27, f25, f4, rdn # perform operation
fmul.h f27, f25, f4, rmm # perform operation
fmul.h f27, f25, f4, rne # perform operation
fmul.h f27, f25, f4, rtz # perform operation
fmul.h f27, f25, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f25, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f25, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f25, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f25, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f25, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x0)
li x3, 0xc06b37df6b180f93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fmul.h f3, f11, f5, dyn # perform operation
fmul.h f3, f11, f5, rdn # perform operation
fmul.h f3, f11, f5, rmm # perform operation
fmul.h f3, f11, f5, rne # perform operation
fmul.h f3, f11, f5, rtz # perform operation
fmul.h f3, f11, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f11, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f11, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f11, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f11, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8000)
li x4, 0x32850528965a4dd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
fmul.h f4, f22, f15, dyn # perform operation
fmul.h f4, f22, f15, rdn # perform operation
fmul.h f4, f22, f15, rmm # perform operation
fmul.h f4, f22, f15, rne # perform operation
fmul.h f4, f22, f15, rtz # perform operation
fmul.h f4, f22, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f22, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f22, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f22, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f22, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3c00)
li x26, 0x67994cd31f7bdf53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
fmul.h f26, f17, f14, dyn # perform operation
fmul.h f26, f17, f14, rdn # perform operation
fmul.h f26, f17, f14, rmm # perform operation
fmul.h f26, f17, f14, rne # perform operation
fmul.h f26, f17, f14, rtz # perform operation
fmul.h f26, f17, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f17, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f17, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f17, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f17, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f17, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbc00)
li x18, 0xd53267e0e94e022c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
fmul.h f18, f24, f10, dyn # perform operation
fmul.h f18, f24, f10, rdn # perform operation
fmul.h f18, f24, f10, rmm # perform operation
fmul.h f18, f24, f10, rne # perform operation
fmul.h f18, f24, f10, rtz # perform operation
fmul.h f18, f24, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f24, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f24, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f24, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f24, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f24, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3e00)
li x9, 0xf9b2833a83fcbaba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
fmul.h f9, f20, f21, dyn # perform operation
fmul.h f9, f20, f21, rdn # perform operation
fmul.h f9, f20, f21, rmm # perform operation
fmul.h f9, f20, f21, rne # perform operation
fmul.h f9, f20, f21, rtz # perform operation
fmul.h f9, f20, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f20, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f20, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f20, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f20, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f20, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbe00)
li x2, 0x48982d228bf5ad19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
fmul.h f2, f8, f16, dyn # perform operation
fmul.h f2, f8, f16, rdn # perform operation
fmul.h f2, f8, f16, rmm # perform operation
fmul.h f2, f8, f16, rne # perform operation
fmul.h f2, f8, f16, rtz # perform operation
fmul.h f2, f8, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f8, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f8, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f8, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f8, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f8, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x4000)
li x14, 0xacbe89b58d79b907 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
fmul.h f14, f2, f31, dyn # perform operation
fmul.h f14, f2, f31, rdn # perform operation
fmul.h f14, f2, f31, rmm # perform operation
fmul.h f14, f2, f31, rne # perform operation
fmul.h f14, f2, f31, rtz # perform operation
fmul.h f14, f2, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f2, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f2, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f2, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f2, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f2, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc000)
li x12, 0xbe274a83a933705d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
fmul.h f12, f14, f9, dyn # perform operation
fmul.h f12, f14, f9, rdn # perform operation
fmul.h f12, f14, f9, rmm # perform operation
fmul.h f12, f14, f9, rne # perform operation
fmul.h f12, f14, f9, rtz # perform operation
fmul.h f12, f14, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f14, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f14, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f14, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f14, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x400)
li x24, 0x59280b375ad3d759 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
fmul.h f24, f31, f5, dyn # perform operation
fmul.h f24, f31, f5, rdn # perform operation
fmul.h f24, f31, f5, rmm # perform operation
fmul.h f24, f31, f5, rne # perform operation
fmul.h f24, f31, f5, rtz # perform operation
fmul.h f24, f31, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f31, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f31, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f31, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f31, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f31, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8400)
li x4, 0x937d5cccbd308e61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f13, 0(x2) # load 0x00008400 from memory into f13
fmul.h f4, f19, f13, dyn # perform operation
fmul.h f4, f19, f13, rdn # perform operation
fmul.h f4, f19, f13, rmm # perform operation
fmul.h f4, f19, f13, rne # perform operation
fmul.h f4, f19, f13, rtz # perform operation
fmul.h f4, f19, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f19, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f19, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f19, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f19, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7bff)
li x29, 0xfff88307d40c2b47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
fmul.h f29, f21, f24, dyn # perform operation
fmul.h f29, f21, f24, rdn # perform operation
fmul.h f29, f21, f24, rmm # perform operation
fmul.h f29, f21, f24, rne # perform operation
fmul.h f29, f21, f24, rtz # perform operation
fmul.h f29, f21, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f21, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f21, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f21, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f21, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfbff)
li x8, 0x89e68b5ceaab886a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
fmul.h f8, f11, f2, dyn # perform operation
fmul.h f8, f11, f2, rdn # perform operation
fmul.h f8, f11, f2, rmm # perform operation
fmul.h f8, f11, f2, rne # perform operation
fmul.h f8, f11, f2, rtz # perform operation
fmul.h f8, f11, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f11, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f11, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f11, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f11, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3ff)
li x14, 0x3318bcea40c8451f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
fmul.h f14, f23, f26, dyn # perform operation
fmul.h f14, f23, f26, rdn # perform operation
fmul.h f14, f23, f26, rmm # perform operation
fmul.h f14, f23, f26, rne # perform operation
fmul.h f14, f23, f26, rtz # perform operation
fmul.h f14, f23, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f23, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f23, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f23, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f23, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f23, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x83ff)
li x7, 0xb07eeea15ad7a6d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
fmul.h f7, f19, f23, dyn # perform operation
fmul.h f7, f19, f23, rdn # perform operation
fmul.h f7, f19, f23, rmm # perform operation
fmul.h f7, f19, f23, rne # perform operation
fmul.h f7, f19, f23, rtz # perform operation
fmul.h f7, f19, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f19, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f19, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f19, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f19, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f19, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x200)
li x16, 0x30924b6f12be7a09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f26, 0(x2) # load 0x00008001 from memory into f26
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
fmul.h f16, f26, f15, dyn # perform operation
fmul.h f16, f26, f15, rdn # perform operation
fmul.h f16, f26, f15, rmm # perform operation
fmul.h f16, f26, f15, rne # perform operation
fmul.h f16, f26, f15, rtz # perform operation
fmul.h f16, f26, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f26, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f26, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f26, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f26, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f26, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8200)
li x11, 0xf9147ef10906adf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
fmul.h f11, f1, f12, dyn # perform operation
fmul.h f11, f1, f12, rdn # perform operation
fmul.h f11, f1, f12, rmm # perform operation
fmul.h f11, f1, f12, rne # perform operation
fmul.h f11, f1, f12, rtz # perform operation
fmul.h f11, f1, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f1, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f1, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f1, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f1, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x1)
li x21, 0x76b166fa25284dbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
fmul.h f21, f6, f17, dyn # perform operation
fmul.h f21, f6, f17, rdn # perform operation
fmul.h f21, f6, f17, rmm # perform operation
fmul.h f21, f6, f17, rne # perform operation
fmul.h f21, f6, f17, rtz # perform operation
fmul.h f21, f6, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f6, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f6, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f6, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f6, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8001)
li x6, 0x514ba33e12d10804 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
fmul.h f6, f31, f10, dyn # perform operation
fmul.h f6, f31, f10, rdn # perform operation
fmul.h f6, f31, f10, rmm # perform operation
fmul.h f6, f31, f10, rne # perform operation
fmul.h f6, f31, f10, rtz # perform operation
fmul.h f6, f31, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f31, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f31, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f31, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f31, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f31, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c00)
li x29, 0x960456f669121001 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
fmul.h f29, f14, f2, dyn # perform operation
fmul.h f29, f14, f2, rdn # perform operation
fmul.h f29, f14, f2, rmm # perform operation
fmul.h f29, f14, f2, rne # perform operation
fmul.h f29, f14, f2, rtz # perform operation
fmul.h f29, f14, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f14, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f14, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f14, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f14, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc00)
li x18, 0xa2c80b7305262dee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
fmul.h f18, f17, f13, dyn # perform operation
fmul.h f18, f17, f13, rdn # perform operation
fmul.h f18, f17, f13, rmm # perform operation
fmul.h f18, f17, f13, rne # perform operation
fmul.h f18, f17, f13, rtz # perform operation
fmul.h f18, f17, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f17, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f17, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f17, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f17, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7e00)
li x15, 0x7fce39f025b335c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
fmul.h f15, f2, f25, dyn # perform operation
fmul.h f15, f2, f25, rdn # perform operation
fmul.h f15, f2, f25, rmm # perform operation
fmul.h f15, f2, f25, rne # perform operation
fmul.h f15, f2, f25, rtz # perform operation
fmul.h f15, f2, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f2, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f2, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f2, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f2, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f2, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7fff)
li x20, 0x0aee7ca8050a61d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f26, 0(x2) # load 0x00007fff from memory into f26
fmul.h f20, f8, f26, dyn # perform operation
fmul.h f20, f8, f26, rdn # perform operation
fmul.h f20, f8, f26, rmm # perform operation
fmul.h f20, f8, f26, rne # perform operation
fmul.h f20, f8, f26, rtz # perform operation
fmul.h f20, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f8, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c01)
li x17, 0xa85eb6038dc09197 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f3, 0(x2) # load 0x00008001 from memory into f3
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
fmul.h f17, f3, f9, dyn # perform operation
fmul.h f17, f3, f9, rdn # perform operation
fmul.h f17, f3, f9, rmm # perform operation
fmul.h f17, f3, f9, rne # perform operation
fmul.h f17, f3, f9, rtz # perform operation
fmul.h f17, f3, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f3, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f3, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f3, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f3, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f3, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7dff)
li x22, 0x7777886b13e97a91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
fmul.h f22, f18, f1, dyn # perform operation
fmul.h f22, f18, f1, rdn # perform operation
fmul.h f22, f18, f1, rmm # perform operation
fmul.h f22, f18, f1, rne # perform operation
fmul.h f22, f18, f1, rtz # perform operation
fmul.h f22, f18, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f18, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f18, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f18, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f18, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x58b4)
li x21, 0x800032e1cc8c5250 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
fmul.h f21, f18, f12, dyn # perform operation
fmul.h f21, f18, f12, rdn # perform operation
fmul.h f21, f18, f12, rmm # perform operation
fmul.h f21, f18, f12, rne # perform operation
fmul.h f21, f18, f12, rtz # perform operation
fmul.h f21, f18, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f18, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f18, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f18, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f18, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc93a)
li x2, 0x600900c79dddfb4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
fmul.h f2, f22, f19, dyn # perform operation
fmul.h f2, f22, f19, rdn # perform operation
fmul.h f2, f22, f19, rmm # perform operation
fmul.h f2, f22, f19, rne # perform operation
fmul.h f2, f22, f19, rtz # perform operation
fmul.h f2, f22, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f22, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f22, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f22, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f22, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x0)
li x7, 0x384b6dd7ee7ebb84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
fmul.h f7, f5, f31, dyn # perform operation
fmul.h f7, f5, f31, rdn # perform operation
fmul.h f7, f5, f31, rmm # perform operation
fmul.h f7, f5, f31, rne # perform operation
fmul.h f7, f5, f31, rtz # perform operation
fmul.h f7, f5, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f5, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f5, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f5, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f5, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8000)
li x11, 0x78b67620c6b1f36b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
fmul.h f11, f8, f12, dyn # perform operation
fmul.h f11, f8, f12, rdn # perform operation
fmul.h f11, f8, f12, rmm # perform operation
fmul.h f11, f8, f12, rne # perform operation
fmul.h f11, f8, f12, rtz # perform operation
fmul.h f11, f8, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f8, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f8, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f8, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f8, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3c00)
li x14, 0x042c2011e3b97247 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
fmul.h f14, f9, f23, dyn # perform operation
fmul.h f14, f9, f23, rdn # perform operation
fmul.h f14, f9, f23, rmm # perform operation
fmul.h f14, f9, f23, rne # perform operation
fmul.h f14, f9, f23, rtz # perform operation
fmul.h f14, f9, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f9, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f9, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f9, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f9, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f9, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbc00)
li x8, 0xfdb18a3ad3b786ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
fmul.h f8, f21, f17, dyn # perform operation
fmul.h f8, f21, f17, rdn # perform operation
fmul.h f8, f21, f17, rmm # perform operation
fmul.h f8, f21, f17, rne # perform operation
fmul.h f8, f21, f17, rtz # perform operation
fmul.h f8, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3e00)
li x18, 0x337225ff86848a95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f13, 0(x2) # load 0x00003e00 from memory into f13
fmul.h f18, f12, f13, dyn # perform operation
fmul.h f18, f12, f13, rdn # perform operation
fmul.h f18, f12, f13, rmm # perform operation
fmul.h f18, f12, f13, rne # perform operation
fmul.h f18, f12, f13, rtz # perform operation
fmul.h f18, f12, f13, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f12, f13 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f12, f13 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f12, f13 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f12, f13 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbe00)
li x5, 0x1956866a35cca1a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fmul.h f5, f7, f26, dyn # perform operation
fmul.h f5, f7, f26, rdn # perform operation
fmul.h f5, f7, f26, rmm # perform operation
fmul.h f5, f7, f26, rne # perform operation
fmul.h f5, f7, f26, rtz # perform operation
fmul.h f5, f7, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f7, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f7, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f7, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f7, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f7, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x4000)
li x8, 0xd2b48fd1fa9f38fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fmul.h f8, f10, f22, dyn # perform operation
fmul.h f8, f10, f22, rdn # perform operation
fmul.h f8, f10, f22, rmm # perform operation
fmul.h f8, f10, f22, rne # perform operation
fmul.h f8, f10, f22, rtz # perform operation
fmul.h f8, f10, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f10, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f10, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f10, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f10, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f10, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc000)
li x12, 0xbd543289b62ba4e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
fmul.h f12, f29, f10, dyn # perform operation
fmul.h f12, f29, f10, rdn # perform operation
fmul.h f12, f29, f10, rmm # perform operation
fmul.h f12, f29, f10, rne # perform operation
fmul.h f12, f29, f10, rtz # perform operation
fmul.h f12, f29, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f29, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f29, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f29, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f29, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f29, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x400)
li x13, 0x2bac10904edcc1cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
fmul.h f13, f8, f27, dyn # perform operation
fmul.h f13, f8, f27, rdn # perform operation
fmul.h f13, f8, f27, rmm # perform operation
fmul.h f13, f8, f27, rne # perform operation
fmul.h f13, f8, f27, rtz # perform operation
fmul.h f13, f8, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f8, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f8, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f8, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f8, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f8, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8400)
li x28, 0xc1caea6230b92f24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
fmul.h f28, f1, f24, dyn # perform operation
fmul.h f28, f1, f24, rdn # perform operation
fmul.h f28, f1, f24, rmm # perform operation
fmul.h f28, f1, f24, rne # perform operation
fmul.h f28, f1, f24, rtz # perform operation
fmul.h f28, f1, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f1, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f1, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f1, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f1, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f1, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7bff)
li x13, 0x78505bb50cd14a9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
fmul.h f13, f6, f22, dyn # perform operation
fmul.h f13, f6, f22, rdn # perform operation
fmul.h f13, f6, f22, rmm # perform operation
fmul.h f13, f6, f22, rne # perform operation
fmul.h f13, f6, f22, rtz # perform operation
fmul.h f13, f6, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f6, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f6, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f6, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f6, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f6, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfbff)
li x14, 0xb55a9c24c846ae05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f22, 0(x2) # load 0x00007c00 from memory into f22
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
fmul.h f14, f22, f25, dyn # perform operation
fmul.h f14, f22, f25, rdn # perform operation
fmul.h f14, f22, f25, rmm # perform operation
fmul.h f14, f22, f25, rne # perform operation
fmul.h f14, f22, f25, rtz # perform operation
fmul.h f14, f22, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f22, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f22, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f22, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f22, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3ff)
li x4, 0x3922459f18635cb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f20, 0(x2) # load 0x00007c00 from memory into f20
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f25, 0(x2) # load 0x000003ff from memory into f25
fmul.h f4, f20, f25, dyn # perform operation
fmul.h f4, f20, f25, rdn # perform operation
fmul.h f4, f20, f25, rmm # perform operation
fmul.h f4, f20, f25, rne # perform operation
fmul.h f4, f20, f25, rtz # perform operation
fmul.h f4, f20, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f20, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f20, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f20, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f20, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f20, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x83ff)
li x6, 0x763676a528c990b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f4, 0(x2) # load 0x00007c00 from memory into f4
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fmul.h f6, f4, f16, dyn # perform operation
fmul.h f6, f4, f16, rdn # perform operation
fmul.h f6, f4, f16, rmm # perform operation
fmul.h f6, f4, f16, rne # perform operation
fmul.h f6, f4, f16, rtz # perform operation
fmul.h f6, f4, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f4, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f4, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f4, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f4, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f4, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x200)
li x20, 0x1978a13e1f7fbacc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f17, 0(x2) # load 0x00000200 from memory into f17
fmul.h f20, f26, f17, dyn # perform operation
fmul.h f20, f26, f17, rdn # perform operation
fmul.h f20, f26, f17, rmm # perform operation
fmul.h f20, f26, f17, rne # perform operation
fmul.h f20, f26, f17, rtz # perform operation
fmul.h f20, f26, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f26, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f26, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f26, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f26, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f26, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8200)
li x28, 0x19da8f0480cf88b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
fmul.h f28, f5, f3, dyn # perform operation
fmul.h f28, f5, f3, rdn # perform operation
fmul.h f28, f5, f3, rmm # perform operation
fmul.h f28, f5, f3, rne # perform operation
fmul.h f28, f5, f3, rtz # perform operation
fmul.h f28, f5, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f5, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f5, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f5, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f5, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x1)
li x10, 0xd11ed2d844ed71a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
fmul.h f10, f25, f29, dyn # perform operation
fmul.h f10, f25, f29, rdn # perform operation
fmul.h f10, f25, f29, rmm # perform operation
fmul.h f10, f25, f29, rne # perform operation
fmul.h f10, f25, f29, rtz # perform operation
fmul.h f10, f25, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f25, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f25, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f25, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f25, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f25, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8001)
li x20, 0x76d67abb8508d049 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f6, 0(x2) # load 0x00007c00 from memory into f6
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
fmul.h f20, f6, f29, dyn # perform operation
fmul.h f20, f6, f29, rdn # perform operation
fmul.h f20, f6, f29, rmm # perform operation
fmul.h f20, f6, f29, rne # perform operation
fmul.h f20, f6, f29, rtz # perform operation
fmul.h f20, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f6, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c00)
li x25, 0xd7203e3734089327 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
fmul.h f25, f14, f27, dyn # perform operation
fmul.h f25, f14, f27, rdn # perform operation
fmul.h f25, f14, f27, rmm # perform operation
fmul.h f25, f14, f27, rne # perform operation
fmul.h f25, f14, f27, rtz # perform operation
fmul.h f25, f14, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f14, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f14, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f14, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f14, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc00)
li x28, 0x3a3ddbed29027f23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
fmul.h f28, f7, f19, dyn # perform operation
fmul.h f28, f7, f19, rdn # perform operation
fmul.h f28, f7, f19, rmm # perform operation
fmul.h f28, f7, f19, rne # perform operation
fmul.h f28, f7, f19, rtz # perform operation
fmul.h f28, f7, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f7, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f7, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f7, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f7, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f7, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7e00)
li x1, 0x7708b54d2459fd58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
fmul.h f1, f2, f23, dyn # perform operation
fmul.h f1, f2, f23, rdn # perform operation
fmul.h f1, f2, f23, rmm # perform operation
fmul.h f1, f2, f23, rne # perform operation
fmul.h f1, f2, f23, rtz # perform operation
fmul.h f1, f2, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f2, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f2, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f2, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f2, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f2, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7fff)
li x5, 0x0c480ac64996fabe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
fmul.h f5, f28, f20, dyn # perform operation
fmul.h f5, f28, f20, rdn # perform operation
fmul.h f5, f28, f20, rmm # perform operation
fmul.h f5, f28, f20, rne # perform operation
fmul.h f5, f28, f20, rtz # perform operation
fmul.h f5, f28, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f28, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f28, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f28, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f28, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f28, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c01)
li x25, 0x50f36c2eeeb3f74f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
fmul.h f25, f1, f4, dyn # perform operation
fmul.h f25, f1, f4, rdn # perform operation
fmul.h f25, f1, f4, rmm # perform operation
fmul.h f25, f1, f4, rne # perform operation
fmul.h f25, f1, f4, rtz # perform operation
fmul.h f25, f1, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f1, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f1, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f1, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f1, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f1, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7dff)
li x4, 0x2021f883a802a07e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
fmul.h f4, f16, f2, dyn # perform operation
fmul.h f4, f16, f2, rdn # perform operation
fmul.h f4, f16, f2, rmm # perform operation
fmul.h f4, f16, f2, rne # perform operation
fmul.h f4, f16, f2, rtz # perform operation
fmul.h f4, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f16, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x58b4)
li x25, 0xeb462ea99df00f6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
fmul.h f25, f14, f18, dyn # perform operation
fmul.h f25, f14, f18, rdn # perform operation
fmul.h f25, f14, f18, rmm # perform operation
fmul.h f25, f14, f18, rne # perform operation
fmul.h f25, f14, f18, rtz # perform operation
fmul.h f25, f14, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f14, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f14, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f14, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f14, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f14, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc93a)
li x30, 0x23e521f7939445a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
fmul.h f30, f29, f11, dyn # perform operation
fmul.h f30, f29, f11, rdn # perform operation
fmul.h f30, f29, f11, rmm # perform operation
fmul.h f30, f29, f11, rne # perform operation
fmul.h f30, f29, f11, rtz # perform operation
fmul.h f30, f29, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f29, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f29, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f29, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f29, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f29, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x0)
li x13, 0xdd32807305c86f9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
fmul.h f13, f18, f29, dyn # perform operation
fmul.h f13, f18, f29, rdn # perform operation
fmul.h f13, f18, f29, rmm # perform operation
fmul.h f13, f18, f29, rne # perform operation
fmul.h f13, f18, f29, rtz # perform operation
fmul.h f13, f18, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f18, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f18, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f18, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f18, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8000)
li x18, 0x57c756ba77313f35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f8, 0(x2) # load 0x00008000 from memory into f8
fmul.h f18, f25, f8, dyn # perform operation
fmul.h f18, f25, f8, rdn # perform operation
fmul.h f18, f25, f8, rmm # perform operation
fmul.h f18, f25, f8, rne # perform operation
fmul.h f18, f25, f8, rtz # perform operation
fmul.h f18, f25, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f25, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f25, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f25, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f25, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f25, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3c00)
li x12, 0xb1d2869e8789577c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fmul.h f12, f22, f30, dyn # perform operation
fmul.h f12, f22, f30, rdn # perform operation
fmul.h f12, f22, f30, rmm # perform operation
fmul.h f12, f22, f30, rne # perform operation
fmul.h f12, f22, f30, rtz # perform operation
fmul.h f12, f22, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f22, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f22, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f22, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f22, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbc00)
li x28, 0xc89435a28db31d1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
fmul.h f28, f3, f16, dyn # perform operation
fmul.h f28, f3, f16, rdn # perform operation
fmul.h f28, f3, f16, rmm # perform operation
fmul.h f28, f3, f16, rne # perform operation
fmul.h f28, f3, f16, rtz # perform operation
fmul.h f28, f3, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f3, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f3, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f3, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f3, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f3, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3e00)
li x7, 0x147b4ef99b47cff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
fmul.h f7, f16, f26, dyn # perform operation
fmul.h f7, f16, f26, rdn # perform operation
fmul.h f7, f16, f26, rmm # perform operation
fmul.h f7, f16, f26, rne # perform operation
fmul.h f7, f16, f26, rtz # perform operation
fmul.h f7, f16, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f16, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f16, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f16, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f16, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbe00)
li x23, 0x543b127b996ab440 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
fmul.h f23, f31, f14, dyn # perform operation
fmul.h f23, f31, f14, rdn # perform operation
fmul.h f23, f31, f14, rmm # perform operation
fmul.h f23, f31, f14, rne # perform operation
fmul.h f23, f31, f14, rtz # perform operation
fmul.h f23, f31, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f31, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f31, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f31, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f31, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f31, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x4000)
li x26, 0xaec82e08298e1e66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
fmul.h f26, f5, f14, dyn # perform operation
fmul.h f26, f5, f14, rdn # perform operation
fmul.h f26, f5, f14, rmm # perform operation
fmul.h f26, f5, f14, rne # perform operation
fmul.h f26, f5, f14, rtz # perform operation
fmul.h f26, f5, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f5, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f5, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f5, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f5, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f5, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc000)
li x16, 0x4e92556fa76ab09b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fmul.h f16, f18, f17, dyn # perform operation
fmul.h f16, f18, f17, rdn # perform operation
fmul.h f16, f18, f17, rmm # perform operation
fmul.h f16, f18, f17, rne # perform operation
fmul.h f16, f18, f17, rtz # perform operation
fmul.h f16, f18, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f18, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f18, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f18, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f18, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f18, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x400)
li x12, 0xebb3d486168ffd19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f15, 0(x2) # load 0x0000fc00 from memory into f15
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f5, 0(x2) # load 0x00000400 from memory into f5
fmul.h f12, f15, f5, dyn # perform operation
fmul.h f12, f15, f5, rdn # perform operation
fmul.h f12, f15, f5, rmm # perform operation
fmul.h f12, f15, f5, rne # perform operation
fmul.h f12, f15, f5, rtz # perform operation
fmul.h f12, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f15, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8400)
li x25, 0x4dd63725e0fa564f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f16, 0(x2) # load 0x00008400 from memory into f16
fmul.h f25, f21, f16, dyn # perform operation
fmul.h f25, f21, f16, rdn # perform operation
fmul.h f25, f21, f16, rmm # perform operation
fmul.h f25, f21, f16, rne # perform operation
fmul.h f25, f21, f16, rtz # perform operation
fmul.h f25, f21, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f21, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f21, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f21, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f21, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f21, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7bff)
li x22, 0x1efc2049428e4b56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f4, 0(x2) # load 0x00007bff from memory into f4
fmul.h f22, f18, f4, dyn # perform operation
fmul.h f22, f18, f4, rdn # perform operation
fmul.h f22, f18, f4, rmm # perform operation
fmul.h f22, f18, f4, rne # perform operation
fmul.h f22, f18, f4, rtz # perform operation
fmul.h f22, f18, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f18, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f18, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f18, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f18, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f18, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfbff)
li x4, 0x21b9a8a748c8e14c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
fmul.h f4, f9, f22, dyn # perform operation
fmul.h f4, f9, f22, rdn # perform operation
fmul.h f4, f9, f22, rmm # perform operation
fmul.h f4, f9, f22, rne # perform operation
fmul.h f4, f9, f22, rtz # perform operation
fmul.h f4, f9, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f9, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f9, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f9, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f9, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f9, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3ff)
li x17, 0x5e9f729797b4866e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f4, 0(x2) # load 0x000003ff from memory into f4
fmul.h f17, f27, f4, dyn # perform operation
fmul.h f17, f27, f4, rdn # perform operation
fmul.h f17, f27, f4, rmm # perform operation
fmul.h f17, f27, f4, rne # perform operation
fmul.h f17, f27, f4, rtz # perform operation
fmul.h f17, f27, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f27, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f27, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f27, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f27, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f27, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x83ff)
li x16, 0x0237a47e1b8375f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
fmul.h f16, f3, f30, dyn # perform operation
fmul.h f16, f3, f30, rdn # perform operation
fmul.h f16, f3, f30, rmm # perform operation
fmul.h f16, f3, f30, rne # perform operation
fmul.h f16, f3, f30, rtz # perform operation
fmul.h f16, f3, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f3, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f3, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f3, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f3, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f3, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x200)
li x20, 0xcb9b1597966495b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f22, 0(x2) # load 0x0000fc00 from memory into f22
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
fmul.h f20, f22, f11, dyn # perform operation
fmul.h f20, f22, f11, rdn # perform operation
fmul.h f20, f22, f11, rmm # perform operation
fmul.h f20, f22, f11, rne # perform operation
fmul.h f20, f22, f11, rtz # perform operation
fmul.h f20, f22, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f22, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f22, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f22, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f22, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8200)
li x28, 0x8f74207a46dfa9c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
fmul.h f28, f23, f7, dyn # perform operation
fmul.h f28, f23, f7, rdn # perform operation
fmul.h f28, f23, f7, rmm # perform operation
fmul.h f28, f23, f7, rne # perform operation
fmul.h f28, f23, f7, rtz # perform operation
fmul.h f28, f23, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f23, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f23, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f23, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f23, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f23, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x1)
li x24, 0xba7f63cec896e536 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
fmul.h f24, f8, f28, dyn # perform operation
fmul.h f24, f8, f28, rdn # perform operation
fmul.h f24, f8, f28, rmm # perform operation
fmul.h f24, f8, f28, rne # perform operation
fmul.h f24, f8, f28, rtz # perform operation
fmul.h f24, f8, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f8, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f8, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f8, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f8, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8001)
li x22, 0x7cc7ab40b81ae10f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
fmul.h f22, f27, f12, dyn # perform operation
fmul.h f22, f27, f12, rdn # perform operation
fmul.h f22, f27, f12, rmm # perform operation
fmul.h f22, f27, f12, rne # perform operation
fmul.h f22, f27, f12, rtz # perform operation
fmul.h f22, f27, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f27, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f27, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f27, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f27, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f27, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c00)
li x3, 0xa74cec03c6fc101f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
fmul.h f3, f4, f30, dyn # perform operation
fmul.h f3, f4, f30, rdn # perform operation
fmul.h f3, f4, f30, rmm # perform operation
fmul.h f3, f4, f30, rne # perform operation
fmul.h f3, f4, f30, rtz # perform operation
fmul.h f3, f4, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f4, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f4, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f4, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f4, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f4, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc00)
li x26, 0xec31f1648ad8ab94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f27, 0(x2) # load 0x0000fc00 from memory into f27
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
fmul.h f26, f27, f21, dyn # perform operation
fmul.h f26, f27, f21, rdn # perform operation
fmul.h f26, f27, f21, rmm # perform operation
fmul.h f26, f27, f21, rne # perform operation
fmul.h f26, f27, f21, rtz # perform operation
fmul.h f26, f27, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f27, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f27, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f27, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f27, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f27, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7e00)
li x4, 0x5e20aa1995d6b3a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fmul.h f4, f3, f21, dyn # perform operation
fmul.h f4, f3, f21, rdn # perform operation
fmul.h f4, f3, f21, rmm # perform operation
fmul.h f4, f3, f21, rne # perform operation
fmul.h f4, f3, f21, rtz # perform operation
fmul.h f4, f3, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f3, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f3, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f3, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f3, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7fff)
li x1, 0x834b0f6951a09e42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
fmul.h f1, f24, f7, dyn # perform operation
fmul.h f1, f24, f7, rdn # perform operation
fmul.h f1, f24, f7, rmm # perform operation
fmul.h f1, f24, f7, rne # perform operation
fmul.h f1, f24, f7, rtz # perform operation
fmul.h f1, f24, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f24, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f24, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f24, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f24, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f24, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c01)
li x10, 0xdf39504f5930700e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
fmul.h f10, f16, f2, dyn # perform operation
fmul.h f10, f16, f2, rdn # perform operation
fmul.h f10, f16, f2, rmm # perform operation
fmul.h f10, f16, f2, rne # perform operation
fmul.h f10, f16, f2, rtz # perform operation
fmul.h f10, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f16, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7dff)
li x30, 0x5ec2b74cc6ab3870 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
fmul.h f30, f2, f11, dyn # perform operation
fmul.h f30, f2, f11, rdn # perform operation
fmul.h f30, f2, f11, rmm # perform operation
fmul.h f30, f2, f11, rne # perform operation
fmul.h f30, f2, f11, rtz # perform operation
fmul.h f30, f2, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f2, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f2, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f2, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f2, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f2, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x58b4)
li x26, 0xf0d9ca62f7c14310 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fmul.h f26, f4, f10, dyn # perform operation
fmul.h f26, f4, f10, rdn # perform operation
fmul.h f26, f4, f10, rmm # perform operation
fmul.h f26, f4, f10, rne # perform operation
fmul.h f26, f4, f10, rtz # perform operation
fmul.h f26, f4, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f4, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f4, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f4, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f4, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f4, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc93a)
li x5, 0x01231e41c2cb0f4b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
fmul.h f5, f26, f6, dyn # perform operation
fmul.h f5, f26, f6, rdn # perform operation
fmul.h f5, f26, f6, rmm # perform operation
fmul.h f5, f26, f6, rne # perform operation
fmul.h f5, f26, f6, rtz # perform operation
fmul.h f5, f26, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f26, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f26, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f26, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f26, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f26, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x0)
li x10, 0x624a9ba5faaca1a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
fmul.h f10, f21, f12, dyn # perform operation
fmul.h f10, f21, f12, rdn # perform operation
fmul.h f10, f21, f12, rmm # perform operation
fmul.h f10, f21, f12, rne # perform operation
fmul.h f10, f21, f12, rtz # perform operation
fmul.h f10, f21, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f21, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f21, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f21, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f21, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f21, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8000)
li x14, 0x86075d2106d1d788 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f23, 0(x2) # load 0x00007e00 from memory into f23
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
fmul.h f14, f23, f22, dyn # perform operation
fmul.h f14, f23, f22, rdn # perform operation
fmul.h f14, f23, f22, rmm # perform operation
fmul.h f14, f23, f22, rne # perform operation
fmul.h f14, f23, f22, rtz # perform operation
fmul.h f14, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f23, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3c00)
li x16, 0x6eabeeba34dee5b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f4, 0(x2) # load 0x00003c00 from memory into f4
fmul.h f16, f1, f4, dyn # perform operation
fmul.h f16, f1, f4, rdn # perform operation
fmul.h f16, f1, f4, rmm # perform operation
fmul.h f16, f1, f4, rne # perform operation
fmul.h f16, f1, f4, rtz # perform operation
fmul.h f16, f1, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f1, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f1, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f1, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f1, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f1, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbc00)
li x9, 0x8fd43e544de3f088 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
fmul.h f9, f29, f31, dyn # perform operation
fmul.h f9, f29, f31, rdn # perform operation
fmul.h f9, f29, f31, rmm # perform operation
fmul.h f9, f29, f31, rne # perform operation
fmul.h f9, f29, f31, rtz # perform operation
fmul.h f9, f29, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f29, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f29, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f29, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f29, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f29, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3e00)
li x17, 0x8f6cc3099b9b52e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f4, 0(x2) # load 0x00007e00 from memory into f4
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fmul.h f17, f4, f10, dyn # perform operation
fmul.h f17, f4, f10, rdn # perform operation
fmul.h f17, f4, f10, rmm # perform operation
fmul.h f17, f4, f10, rne # perform operation
fmul.h f17, f4, f10, rtz # perform operation
fmul.h f17, f4, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f4, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f4, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f4, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f4, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f4, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbe00)
li x15, 0x65b52e53b5d99b60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f4, 0(x2) # load 0x00007e00 from memory into f4
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f3, 0(x2) # load 0x0000be00 from memory into f3
fmul.h f15, f4, f3, dyn # perform operation
fmul.h f15, f4, f3, rdn # perform operation
fmul.h f15, f4, f3, rmm # perform operation
fmul.h f15, f4, f3, rne # perform operation
fmul.h f15, f4, f3, rtz # perform operation
fmul.h f15, f4, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f4, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f4, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f4, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f4, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f4, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x4000)
li x13, 0xf7d31a703eb79c20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fmul.h f13, f14, f23, dyn # perform operation
fmul.h f13, f14, f23, rdn # perform operation
fmul.h f13, f14, f23, rmm # perform operation
fmul.h f13, f14, f23, rne # perform operation
fmul.h f13, f14, f23, rtz # perform operation
fmul.h f13, f14, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f14, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f14, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f14, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f14, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc000)
li x28, 0x43b48fa44c7d9416 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
fmul.h f28, f16, f19, dyn # perform operation
fmul.h f28, f16, f19, rdn # perform operation
fmul.h f28, f16, f19, rmm # perform operation
fmul.h f28, f16, f19, rne # perform operation
fmul.h f28, f16, f19, rtz # perform operation
fmul.h f28, f16, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f16, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f16, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f16, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f16, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f16, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x400)
li x14, 0x462a3a46a9e6ea64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
fmul.h f14, f19, f7, dyn # perform operation
fmul.h f14, f19, f7, rdn # perform operation
fmul.h f14, f19, f7, rmm # perform operation
fmul.h f14, f19, f7, rne # perform operation
fmul.h f14, f19, f7, rtz # perform operation
fmul.h f14, f19, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f19, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f19, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f19, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f19, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f19, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8400)
li x22, 0x8b943dfe9d0641c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
fmul.h f22, f13, f18, dyn # perform operation
fmul.h f22, f13, f18, rdn # perform operation
fmul.h f22, f13, f18, rmm # perform operation
fmul.h f22, f13, f18, rne # perform operation
fmul.h f22, f13, f18, rtz # perform operation
fmul.h f22, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f13, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7bff)
li x18, 0x25d306ad6ff412a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fmul.h f18, f12, f17, dyn # perform operation
fmul.h f18, f12, f17, rdn # perform operation
fmul.h f18, f12, f17, rmm # perform operation
fmul.h f18, f12, f17, rne # perform operation
fmul.h f18, f12, f17, rtz # perform operation
fmul.h f18, f12, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f12, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f12, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f12, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f12, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f12, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfbff)
li x13, 0xb9cfec21cf284936 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
fmul.h f13, f30, f27, dyn # perform operation
fmul.h f13, f30, f27, rdn # perform operation
fmul.h f13, f30, f27, rmm # perform operation
fmul.h f13, f30, f27, rne # perform operation
fmul.h f13, f30, f27, rtz # perform operation
fmul.h f13, f30, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f30, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f30, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f30, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f30, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f30, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3ff)
li x6, 0xe321e24ff6c735e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fmul.h f6, f27, f14, dyn # perform operation
fmul.h f6, f27, f14, rdn # perform operation
fmul.h f6, f27, f14, rmm # perform operation
fmul.h f6, f27, f14, rne # perform operation
fmul.h f6, f27, f14, rtz # perform operation
fmul.h f6, f27, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f27, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f27, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f27, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f27, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f27, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x83ff)
li x20, 0x157d52b44fa1409a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
fmul.h f20, f21, f30, dyn # perform operation
fmul.h f20, f21, f30, rdn # perform operation
fmul.h f20, f21, f30, rmm # perform operation
fmul.h f20, f21, f30, rne # perform operation
fmul.h f20, f21, f30, rtz # perform operation
fmul.h f20, f21, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f21, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f21, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f21, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f21, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f21, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x200)
li x22, 0xaebc4c73eb057032 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
fmul.h f22, f11, f28, dyn # perform operation
fmul.h f22, f11, f28, rdn # perform operation
fmul.h f22, f11, f28, rmm # perform operation
fmul.h f22, f11, f28, rne # perform operation
fmul.h f22, f11, f28, rtz # perform operation
fmul.h f22, f11, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f11, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f11, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f11, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f11, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f11, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8200)
li x21, 0x43be1225b41108a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
fmul.h f21, f15, f5, dyn # perform operation
fmul.h f21, f15, f5, rdn # perform operation
fmul.h f21, f15, f5, rmm # perform operation
fmul.h f21, f15, f5, rne # perform operation
fmul.h f21, f15, f5, rtz # perform operation
fmul.h f21, f15, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f15, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f15, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f15, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f15, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f15, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x1)
li x3, 0x08a32063a48f8d1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
fmul.h f3, f14, f25, dyn # perform operation
fmul.h f3, f14, f25, rdn # perform operation
fmul.h f3, f14, f25, rmm # perform operation
fmul.h f3, f14, f25, rne # perform operation
fmul.h f3, f14, f25, rtz # perform operation
fmul.h f3, f14, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f14, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f14, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f14, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f14, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f14, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8001)
li x12, 0xd612d640df95a403 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fmul.h f12, f2, f14, dyn # perform operation
fmul.h f12, f2, f14, rdn # perform operation
fmul.h f12, f2, f14, rmm # perform operation
fmul.h f12, f2, f14, rne # perform operation
fmul.h f12, f2, f14, rtz # perform operation
fmul.h f12, f2, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f2, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f2, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f2, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f2, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f2, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c00)
li x9, 0xb3cb1f7cbc472641 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f4, 0(x2) # load 0x00007e00 from memory into f4
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
fmul.h f9, f4, f12, dyn # perform operation
fmul.h f9, f4, f12, rdn # perform operation
fmul.h f9, f4, f12, rmm # perform operation
fmul.h f9, f4, f12, rne # perform operation
fmul.h f9, f4, f12, rtz # perform operation
fmul.h f9, f4, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f4, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f4, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f4, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f4, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f4, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc00)
li x10, 0xd339ad3be6b6230f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f13, 0(x2) # load 0x00007e00 from memory into f13
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
fmul.h f10, f13, f8, dyn # perform operation
fmul.h f10, f13, f8, rdn # perform operation
fmul.h f10, f13, f8, rmm # perform operation
fmul.h f10, f13, f8, rne # perform operation
fmul.h f10, f13, f8, rtz # perform operation
fmul.h f10, f13, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f13, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f13, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f13, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f13, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f13, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7e00)
li x1, 0x058fa12c9b808b62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f27, 0(x2) # load 0x00007e00 from memory into f27
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
fmul.h f1, f27, f9, dyn # perform operation
fmul.h f1, f27, f9, rdn # perform operation
fmul.h f1, f27, f9, rmm # perform operation
fmul.h f1, f27, f9, rne # perform operation
fmul.h f1, f27, f9, rtz # perform operation
fmul.h f1, f27, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f27, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f27, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f27, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f27, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f27, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7fff)
li x9, 0x7dd6be664c784b3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
fmul.h f9, f30, f23, dyn # perform operation
fmul.h f9, f30, f23, rdn # perform operation
fmul.h f9, f30, f23, rmm # perform operation
fmul.h f9, f30, f23, rne # perform operation
fmul.h f9, f30, f23, rtz # perform operation
fmul.h f9, f30, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f30, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f30, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f30, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f30, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c01)
li x29, 0xf4bbb4cfad28e2a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f28, 0(x2) # load 0x00007e00 from memory into f28
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
fmul.h f29, f28, f27, dyn # perform operation
fmul.h f29, f28, f27, rdn # perform operation
fmul.h f29, f28, f27, rmm # perform operation
fmul.h f29, f28, f27, rne # perform operation
fmul.h f29, f28, f27, rtz # perform operation
fmul.h f29, f28, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f28, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f28, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f28, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f28, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f28, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7dff)
li x9, 0xb3312abeb0b24e2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
fmul.h f9, f17, f1, dyn # perform operation
fmul.h f9, f17, f1, rdn # perform operation
fmul.h f9, f17, f1, rmm # perform operation
fmul.h f9, f17, f1, rne # perform operation
fmul.h f9, f17, f1, rtz # perform operation
fmul.h f9, f17, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f17, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f17, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f17, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f17, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f17, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x58b4)
li x20, 0x61c3ca03efc8e3ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f6, 0(x2) # load 0x00007e00 from memory into f6
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
fmul.h f20, f6, f29, dyn # perform operation
fmul.h f20, f6, f29, rdn # perform operation
fmul.h f20, f6, f29, rmm # perform operation
fmul.h f20, f6, f29, rne # perform operation
fmul.h f20, f6, f29, rtz # perform operation
fmul.h f20, f6, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f6, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f6, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f6, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f6, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f6, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc93a)
li x23, 0x23f9ab9cad95ff83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f7, 0(x2) # load 0x00007e00 from memory into f7
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f4, 0(x2) # load 0x0000c93a from memory into f4
fmul.h f23, f7, f4, dyn # perform operation
fmul.h f23, f7, f4, rdn # perform operation
fmul.h f23, f7, f4, rmm # perform operation
fmul.h f23, f7, f4, rne # perform operation
fmul.h f23, f7, f4, rtz # perform operation
fmul.h f23, f7, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f7, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f7, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f7, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f7, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f7, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x0)
li x11, 0x95cf63f9b3acfe85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
fmul.h f11, f6, f2, dyn # perform operation
fmul.h f11, f6, f2, rdn # perform operation
fmul.h f11, f6, f2, rmm # perform operation
fmul.h f11, f6, f2, rne # perform operation
fmul.h f11, f6, f2, rtz # perform operation
fmul.h f11, f6, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f6, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f6, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f6, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f6, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f6, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8000)
li x24, 0x67235d55fcaa9462 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
fmul.h f24, f25, f26, dyn # perform operation
fmul.h f24, f25, f26, rdn # perform operation
fmul.h f24, f25, f26, rmm # perform operation
fmul.h f24, f25, f26, rne # perform operation
fmul.h f24, f25, f26, rtz # perform operation
fmul.h f24, f25, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f25, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f25, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f25, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f25, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3c00)
li x27, 0x1920fd86906cc76e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
fmul.h f27, f31, f28, dyn # perform operation
fmul.h f27, f31, f28, rdn # perform operation
fmul.h f27, f31, f28, rmm # perform operation
fmul.h f27, f31, f28, rne # perform operation
fmul.h f27, f31, f28, rtz # perform operation
fmul.h f27, f31, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f31, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f31, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f31, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f31, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbc00)
li x22, 0x478eb953756562b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
fmul.h f22, f11, f7, dyn # perform operation
fmul.h f22, f11, f7, rdn # perform operation
fmul.h f22, f11, f7, rmm # perform operation
fmul.h f22, f11, f7, rne # perform operation
fmul.h f22, f11, f7, rtz # perform operation
fmul.h f22, f11, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f11, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f11, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f11, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f11, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f11, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3e00)
li x6, 0x04f67977de615aa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
fmul.h f6, f10, f25, dyn # perform operation
fmul.h f6, f10, f25, rdn # perform operation
fmul.h f6, f10, f25, rmm # perform operation
fmul.h f6, f10, f25, rne # perform operation
fmul.h f6, f10, f25, rtz # perform operation
fmul.h f6, f10, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f10, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f10, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f10, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f10, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f10, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbe00)
li x6, 0xf52eca05d3c1d19a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fmul.h f6, f5, f26, dyn # perform operation
fmul.h f6, f5, f26, rdn # perform operation
fmul.h f6, f5, f26, rmm # perform operation
fmul.h f6, f5, f26, rne # perform operation
fmul.h f6, f5, f26, rtz # perform operation
fmul.h f6, f5, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f5, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f5, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f5, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f5, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f5, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x4000)
li x22, 0xaa1363cf01034060 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fmul.h f22, f11, f23, dyn # perform operation
fmul.h f22, f11, f23, rdn # perform operation
fmul.h f22, f11, f23, rmm # perform operation
fmul.h f22, f11, f23, rne # perform operation
fmul.h f22, f11, f23, rtz # perform operation
fmul.h f22, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc000)
li x19, 0xe421ce0fce002721 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f26, 0(x2) # load 0x0000c000 from memory into f26
fmul.h f19, f31, f26, dyn # perform operation
fmul.h f19, f31, f26, rdn # perform operation
fmul.h f19, f31, f26, rmm # perform operation
fmul.h f19, f31, f26, rne # perform operation
fmul.h f19, f31, f26, rtz # perform operation
fmul.h f19, f31, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f31, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f31, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f31, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f31, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f31, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x400)
li x3, 0x3e0c3ef6e04cc766 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
fmul.h f3, f23, f31, dyn # perform operation
fmul.h f3, f23, f31, rdn # perform operation
fmul.h f3, f23, f31, rmm # perform operation
fmul.h f3, f23, f31, rne # perform operation
fmul.h f3, f23, f31, rtz # perform operation
fmul.h f3, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f23, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8400)
li x26, 0x31bb4de69ad64626 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
fmul.h f26, f6, f15, dyn # perform operation
fmul.h f26, f6, f15, rdn # perform operation
fmul.h f26, f6, f15, rmm # perform operation
fmul.h f26, f6, f15, rne # perform operation
fmul.h f26, f6, f15, rtz # perform operation
fmul.h f26, f6, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f6, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f6, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f6, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f6, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7bff)
li x30, 0x6af2410975feb979 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f9, 0(x2) # load 0x00007fff from memory into f9
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fmul.h f30, f9, f6, dyn # perform operation
fmul.h f30, f9, f6, rdn # perform operation
fmul.h f30, f9, f6, rmm # perform operation
fmul.h f30, f9, f6, rne # perform operation
fmul.h f30, f9, f6, rtz # perform operation
fmul.h f30, f9, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f9, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f9, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f9, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f9, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfbff)
li x2, 0xf7df05230b5e0bad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
fmul.h f2, f23, f31, dyn # perform operation
fmul.h f2, f23, f31, rdn # perform operation
fmul.h f2, f23, f31, rmm # perform operation
fmul.h f2, f23, f31, rne # perform operation
fmul.h f2, f23, f31, rtz # perform operation
fmul.h f2, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f23, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3ff)
li x2, 0x12da9282dc2147e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
fmul.h f2, f16, f7, dyn # perform operation
fmul.h f2, f16, f7, rdn # perform operation
fmul.h f2, f16, f7, rmm # perform operation
fmul.h f2, f16, f7, rne # perform operation
fmul.h f2, f16, f7, rtz # perform operation
fmul.h f2, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f16, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x83ff)
li x10, 0xdd47b1cad0fcac73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
fmul.h f10, f7, f22, dyn # perform operation
fmul.h f10, f7, f22, rdn # perform operation
fmul.h f10, f7, f22, rmm # perform operation
fmul.h f10, f7, f22, rne # perform operation
fmul.h f10, f7, f22, rtz # perform operation
fmul.h f10, f7, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f7, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f7, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f7, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f7, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x200)
li x10, 0x5d0572de77925823 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
fmul.h f10, f29, f23, dyn # perform operation
fmul.h f10, f29, f23, rdn # perform operation
fmul.h f10, f29, f23, rmm # perform operation
fmul.h f10, f29, f23, rne # perform operation
fmul.h f10, f29, f23, rtz # perform operation
fmul.h f10, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8200)
li x15, 0x8ce98b711d75466c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
fmul.h f15, f25, f30, dyn # perform operation
fmul.h f15, f25, f30, rdn # perform operation
fmul.h f15, f25, f30, rmm # perform operation
fmul.h f15, f25, f30, rne # perform operation
fmul.h f15, f25, f30, rtz # perform operation
fmul.h f15, f25, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f25, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f25, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f25, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f25, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f25, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x1)
li x12, 0x6b3eb2d293917e9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f19, 0(x2) # load 0x00000001 from memory into f19
fmul.h f12, f3, f19, dyn # perform operation
fmul.h f12, f3, f19, rdn # perform operation
fmul.h f12, f3, f19, rmm # perform operation
fmul.h f12, f3, f19, rne # perform operation
fmul.h f12, f3, f19, rtz # perform operation
fmul.h f12, f3, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f3, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f3, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f3, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f3, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f3, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8001)
li x8, 0x7b1472ac0b2c649b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
fmul.h f8, f27, f29, dyn # perform operation
fmul.h f8, f27, f29, rdn # perform operation
fmul.h f8, f27, f29, rmm # perform operation
fmul.h f8, f27, f29, rne # perform operation
fmul.h f8, f27, f29, rtz # perform operation
fmul.h f8, f27, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f27, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f27, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f27, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f27, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f27, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c00)
li x3, 0x982a705d857ce7d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fmul.h f3, f6, f14, dyn # perform operation
fmul.h f3, f6, f14, rdn # perform operation
fmul.h f3, f6, f14, rmm # perform operation
fmul.h f3, f6, f14, rne # perform operation
fmul.h f3, f6, f14, rtz # perform operation
fmul.h f3, f6, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f6, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f6, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f6, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f6, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f6, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc00)
li x19, 0x02fb77d6ed045818 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
fmul.h f19, f5, f16, dyn # perform operation
fmul.h f19, f5, f16, rdn # perform operation
fmul.h f19, f5, f16, rmm # perform operation
fmul.h f19, f5, f16, rne # perform operation
fmul.h f19, f5, f16, rtz # perform operation
fmul.h f19, f5, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f5, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f5, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f5, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f5, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f5, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7e00)
li x23, 0x395d1685382b3475 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f25, 0(x2) # load 0x00007e00 from memory into f25
fmul.h f23, f7, f25, dyn # perform operation
fmul.h f23, f7, f25, rdn # perform operation
fmul.h f23, f7, f25, rmm # perform operation
fmul.h f23, f7, f25, rne # perform operation
fmul.h f23, f7, f25, rtz # perform operation
fmul.h f23, f7, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f7, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f7, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f7, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f7, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f7, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7fff)
li x12, 0xe872a8a7dcb33f72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
fmul.h f12, f24, f30, dyn # perform operation
fmul.h f12, f24, f30, rdn # perform operation
fmul.h f12, f24, f30, rmm # perform operation
fmul.h f12, f24, f30, rne # perform operation
fmul.h f12, f24, f30, rtz # perform operation
fmul.h f12, f24, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f24, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f24, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f24, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f24, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f24, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c01)
li x10, 0x9b8975cba0824e42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
fmul.h f10, f1, f20, dyn # perform operation
fmul.h f10, f1, f20, rdn # perform operation
fmul.h f10, f1, f20, rmm # perform operation
fmul.h f10, f1, f20, rne # perform operation
fmul.h f10, f1, f20, rtz # perform operation
fmul.h f10, f1, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f1, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f1, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f1, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f1, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f1, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7dff)
li x27, 0x07f9bc83b2070712 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fmul.h f27, f23, f30, dyn # perform operation
fmul.h f27, f23, f30, rdn # perform operation
fmul.h f27, f23, f30, rmm # perform operation
fmul.h f27, f23, f30, rne # perform operation
fmul.h f27, f23, f30, rtz # perform operation
fmul.h f27, f23, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f23, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f23, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f23, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f23, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x58b4)
li x12, 0xa8407e974ba25415 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f19, 0(x2) # load 0x00007fff from memory into f19
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fmul.h f12, f19, f23, dyn # perform operation
fmul.h f12, f19, f23, rdn # perform operation
fmul.h f12, f19, f23, rmm # perform operation
fmul.h f12, f19, f23, rne # perform operation
fmul.h f12, f19, f23, rtz # perform operation
fmul.h f12, f19, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f19, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f19, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f19, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f19, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f19, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc93a)
li x9, 0x3bdc1b32c440b16a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f1, 0(x2) # load 0x00007fff from memory into f1
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
fmul.h f9, f1, f28, dyn # perform operation
fmul.h f9, f1, f28, rdn # perform operation
fmul.h f9, f1, f28, rmm # perform operation
fmul.h f9, f1, f28, rne # perform operation
fmul.h f9, f1, f28, rtz # perform operation
fmul.h f9, f1, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f1, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f1, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f1, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f1, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f1, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x0)
li x7, 0x61978b44be4636a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fmul.h f7, f14, f5, dyn # perform operation
fmul.h f7, f14, f5, rdn # perform operation
fmul.h f7, f14, f5, rmm # perform operation
fmul.h f7, f14, f5, rne # perform operation
fmul.h f7, f14, f5, rtz # perform operation
fmul.h f7, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8000)
li x15, 0x42ec132b447a6265 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fmul.h f15, f12, f27, dyn # perform operation
fmul.h f15, f12, f27, rdn # perform operation
fmul.h f15, f12, f27, rmm # perform operation
fmul.h f15, f12, f27, rne # perform operation
fmul.h f15, f12, f27, rtz # perform operation
fmul.h f15, f12, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f12, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f12, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f12, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f12, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f12, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3c00)
li x19, 0x34d3981f3c445819 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
fmul.h f19, f11, f23, dyn # perform operation
fmul.h f19, f11, f23, rdn # perform operation
fmul.h f19, f11, f23, rmm # perform operation
fmul.h f19, f11, f23, rne # perform operation
fmul.h f19, f11, f23, rtz # perform operation
fmul.h f19, f11, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f11, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f11, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f11, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f11, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbc00)
li x25, 0x113700f39e5cda73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
fmul.h f25, f27, f24, dyn # perform operation
fmul.h f25, f27, f24, rdn # perform operation
fmul.h f25, f27, f24, rmm # perform operation
fmul.h f25, f27, f24, rne # perform operation
fmul.h f25, f27, f24, rtz # perform operation
fmul.h f25, f27, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f27, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f27, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f27, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f27, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3e00)
li x31, 0x15943b1513361fe2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
fmul.h f31, f2, f4, dyn # perform operation
fmul.h f31, f2, f4, rdn # perform operation
fmul.h f31, f2, f4, rmm # perform operation
fmul.h f31, f2, f4, rne # perform operation
fmul.h f31, f2, f4, rtz # perform operation
fmul.h f31, f2, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f2, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f2, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f2, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f2, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f2, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbe00)
li x17, 0xcc1622e4af0fa4be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
fmul.h f17, f5, f12, dyn # perform operation
fmul.h f17, f5, f12, rdn # perform operation
fmul.h f17, f5, f12, rmm # perform operation
fmul.h f17, f5, f12, rne # perform operation
fmul.h f17, f5, f12, rtz # perform operation
fmul.h f17, f5, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f5, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f5, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f5, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f5, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f5, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x4000)
li x21, 0x1f1ad5b8ba0954f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fmul.h f21, f6, f23, dyn # perform operation
fmul.h f21, f6, f23, rdn # perform operation
fmul.h f21, f6, f23, rmm # perform operation
fmul.h f21, f6, f23, rne # perform operation
fmul.h f21, f6, f23, rtz # perform operation
fmul.h f21, f6, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f6, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f6, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f6, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f6, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f6, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc000)
li x30, 0x5cf1d4bfb481d5bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fmul.h f30, f19, f17, dyn # perform operation
fmul.h f30, f19, f17, rdn # perform operation
fmul.h f30, f19, f17, rmm # perform operation
fmul.h f30, f19, f17, rne # perform operation
fmul.h f30, f19, f17, rtz # perform operation
fmul.h f30, f19, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f30, f19, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f30, f19, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f30, f19, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f30, f19, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f30, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x400)
li x24, 0x65b405f75940b10b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
fmul.h f24, f6, f20, dyn # perform operation
fmul.h f24, f6, f20, rdn # perform operation
fmul.h f24, f6, f20, rmm # perform operation
fmul.h f24, f6, f20, rne # perform operation
fmul.h f24, f6, f20, rtz # perform operation
fmul.h f24, f6, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f6, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f6, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f6, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f6, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f6, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8400)
li x31, 0x6000d57fcd109986 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
fmul.h f31, f4, f2, dyn # perform operation
fmul.h f31, f4, f2, rdn # perform operation
fmul.h f31, f4, f2, rmm # perform operation
fmul.h f31, f4, f2, rne # perform operation
fmul.h f31, f4, f2, rtz # perform operation
fmul.h f31, f4, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f4, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f4, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f4, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f4, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7bff)
li x9, 0xdf3df5884fa7722e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
fmul.h f9, f10, f27, dyn # perform operation
fmul.h f9, f10, f27, rdn # perform operation
fmul.h f9, f10, f27, rmm # perform operation
fmul.h f9, f10, f27, rne # perform operation
fmul.h f9, f10, f27, rtz # perform operation
fmul.h f9, f10, f27, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f10, f27 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f10, f27 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f10, f27 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f10, f27 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f10, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfbff)
li x24, 0x0e53722c6c0ac84e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f29, 0(x2) # load 0x00007c01 from memory into f29
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
fmul.h f24, f29, f23, dyn # perform operation
fmul.h f24, f29, f23, rdn # perform operation
fmul.h f24, f29, f23, rmm # perform operation
fmul.h f24, f29, f23, rne # perform operation
fmul.h f24, f29, f23, rtz # perform operation
fmul.h f24, f29, f23, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f29, f23 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f29, f23 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f29, f23 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f29, f23 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3ff)
li x15, 0x2777fff59546d003 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
fmul.h f15, f9, f24, dyn # perform operation
fmul.h f15, f9, f24, rdn # perform operation
fmul.h f15, f9, f24, rmm # perform operation
fmul.h f15, f9, f24, rne # perform operation
fmul.h f15, f9, f24, rtz # perform operation
fmul.h f15, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f9, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x83ff)
li x17, 0xb4d24326e5187f81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
fmul.h f17, f27, f25, dyn # perform operation
fmul.h f17, f27, f25, rdn # perform operation
fmul.h f17, f27, f25, rmm # perform operation
fmul.h f17, f27, f25, rne # perform operation
fmul.h f17, f27, f25, rtz # perform operation
fmul.h f17, f27, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f27, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f27, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f27, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f27, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x200)
li x13, 0x991d5229e08694f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
fmul.h f13, f18, f20, dyn # perform operation
fmul.h f13, f18, f20, rdn # perform operation
fmul.h f13, f18, f20, rmm # perform operation
fmul.h f13, f18, f20, rne # perform operation
fmul.h f13, f18, f20, rtz # perform operation
fmul.h f13, f18, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f18, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f18, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f18, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f18, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f18, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8200)
li x8, 0xec12684afc6968b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
fmul.h f8, f7, f20, dyn # perform operation
fmul.h f8, f7, f20, rdn # perform operation
fmul.h f8, f7, f20, rmm # perform operation
fmul.h f8, f7, f20, rne # perform operation
fmul.h f8, f7, f20, rtz # perform operation
fmul.h f8, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f7, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x1)
li x2, 0xde14ba9c7264e92e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f1, 0(x2) # load 0x00000001 from memory into f1
fmul.h f2, f7, f1, dyn # perform operation
fmul.h f2, f7, f1, rdn # perform operation
fmul.h f2, f7, f1, rmm # perform operation
fmul.h f2, f7, f1, rne # perform operation
fmul.h f2, f7, f1, rtz # perform operation
fmul.h f2, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8001)
li x23, 0x49c1b277b70f1435 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
fmul.h f23, f9, f24, dyn # perform operation
fmul.h f23, f9, f24, rdn # perform operation
fmul.h f23, f9, f24, rmm # perform operation
fmul.h f23, f9, f24, rne # perform operation
fmul.h f23, f9, f24, rtz # perform operation
fmul.h f23, f9, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f9, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f9, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f9, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f9, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f9, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c00)
li x12, 0x35d4ae889b3a659a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f4, 0(x2) # load 0x00007c00 from memory into f4
fmul.h f12, f20, f4, dyn # perform operation
fmul.h f12, f20, f4, rdn # perform operation
fmul.h f12, f20, f4, rmm # perform operation
fmul.h f12, f20, f4, rne # perform operation
fmul.h f12, f20, f4, rtz # perform operation
fmul.h f12, f20, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f12, f20, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f12, f20, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f12, f20, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f12, f20, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f12, f20, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc00)
li x18, 0xc7951274410c36ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f16, 0(x2) # load 0x00007c01 from memory into f16
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f7, 0(x2) # load 0x0000fc00 from memory into f7
fmul.h f18, f16, f7, dyn # perform operation
fmul.h f18, f16, f7, rdn # perform operation
fmul.h f18, f16, f7, rmm # perform operation
fmul.h f18, f16, f7, rne # perform operation
fmul.h f18, f16, f7, rtz # perform operation
fmul.h f18, f16, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f16, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f16, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f16, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f16, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f16, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7e00)
li x3, 0x1f837a8ed8bb440a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
fmul.h f3, f21, f10, dyn # perform operation
fmul.h f3, f21, f10, rdn # perform operation
fmul.h f3, f21, f10, rmm # perform operation
fmul.h f3, f21, f10, rne # perform operation
fmul.h f3, f21, f10, rtz # perform operation
fmul.h f3, f21, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f21, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f21, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f21, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f21, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f21, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7fff)
li x19, 0xb17a0b599612853b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f28, 0(x2) # load 0x00007fff from memory into f28
fmul.h f19, f17, f28, dyn # perform operation
fmul.h f19, f17, f28, rdn # perform operation
fmul.h f19, f17, f28, rmm # perform operation
fmul.h f19, f17, f28, rne # perform operation
fmul.h f19, f17, f28, rtz # perform operation
fmul.h f19, f17, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f17, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f17, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f17, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f17, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f17, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c01)
li x26, 0x3e5f8582646b9f03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f11, 0(x2) # load 0x00007c01 from memory into f11
fmul.h f26, f20, f11, dyn # perform operation
fmul.h f26, f20, f11, rdn # perform operation
fmul.h f26, f20, f11, rmm # perform operation
fmul.h f26, f20, f11, rne # perform operation
fmul.h f26, f20, f11, rtz # perform operation
fmul.h f26, f20, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f20, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f20, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f20, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f20, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f20, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7dff)
li x14, 0xa2e3349aea274ddb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fmul.h f14, f5, f7, dyn # perform operation
fmul.h f14, f5, f7, rdn # perform operation
fmul.h f14, f5, f7, rmm # perform operation
fmul.h f14, f5, f7, rne # perform operation
fmul.h f14, f5, f7, rtz # perform operation
fmul.h f14, f5, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f5, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f5, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f5, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f5, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f5, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x58b4)
li x29, 0x17e43708bdad74e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
fmul.h f29, f6, f18, dyn # perform operation
fmul.h f29, f6, f18, rdn # perform operation
fmul.h f29, f6, f18, rmm # perform operation
fmul.h f29, f6, f18, rne # perform operation
fmul.h f29, f6, f18, rtz # perform operation
fmul.h f29, f6, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f6, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f6, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f6, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f6, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f6, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc93a)
li x20, 0xda296edad78893f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
fmul.h f20, f30, f31, dyn # perform operation
fmul.h f20, f30, f31, rdn # perform operation
fmul.h f20, f30, f31, rmm # perform operation
fmul.h f20, f30, f31, rne # perform operation
fmul.h f20, f30, f31, rtz # perform operation
fmul.h f20, f30, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f30, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f30, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f30, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f30, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f30, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x0)
li x3, 0x5ed95d098a88bd31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fmul.h f3, f31, f6, dyn # perform operation
fmul.h f3, f31, f6, rdn # perform operation
fmul.h f3, f31, f6, rmm # perform operation
fmul.h f3, f31, f6, rne # perform operation
fmul.h f3, f31, f6, rtz # perform operation
fmul.h f3, f31, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f31, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f31, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f31, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f31, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f31, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8000)
li x19, 0x6f59a8c76d334647 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f1, 0(x2) # load 0x00008000 from memory into f1
fmul.h f19, f7, f1, dyn # perform operation
fmul.h f19, f7, f1, rdn # perform operation
fmul.h f19, f7, f1, rmm # perform operation
fmul.h f19, f7, f1, rne # perform operation
fmul.h f19, f7, f1, rtz # perform operation
fmul.h f19, f7, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f7, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f7, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f7, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f7, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3c00)
li x17, 0x23c03f4e46fcd1f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f9, 0(x2) # load 0x00003c00 from memory into f9
fmul.h f17, f5, f9, dyn # perform operation
fmul.h f17, f5, f9, rdn # perform operation
fmul.h f17, f5, f9, rmm # perform operation
fmul.h f17, f5, f9, rne # perform operation
fmul.h f17, f5, f9, rtz # perform operation
fmul.h f17, f5, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f5, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f5, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f5, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f5, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f5, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbc00)
li x19, 0x91209e1adf3c832f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fmul.h f19, f30, f18, dyn # perform operation
fmul.h f19, f30, f18, rdn # perform operation
fmul.h f19, f30, f18, rmm # perform operation
fmul.h f19, f30, f18, rne # perform operation
fmul.h f19, f30, f18, rtz # perform operation
fmul.h f19, f30, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f30, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f30, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f30, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f30, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f30, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3e00)
li x17, 0x3358984f581af57e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fmul.h f17, f15, f10, dyn # perform operation
fmul.h f17, f15, f10, rdn # perform operation
fmul.h f17, f15, f10, rmm # perform operation
fmul.h f17, f15, f10, rne # perform operation
fmul.h f17, f15, f10, rtz # perform operation
fmul.h f17, f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f15, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbe00)
li x15, 0xe00b0d13cfee817d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f2, 0(x2) # load 0x0000be00 from memory into f2
fmul.h f15, f16, f2, dyn # perform operation
fmul.h f15, f16, f2, rdn # perform operation
fmul.h f15, f16, f2, rmm # perform operation
fmul.h f15, f16, f2, rne # perform operation
fmul.h f15, f16, f2, rtz # perform operation
fmul.h f15, f16, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f15, f16, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f15, f16, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f15, f16, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f15, f16, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f15, f16, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x4000)
li x2, 0x1d235984df86e1e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
fmul.h f2, f26, f18, dyn # perform operation
fmul.h f2, f26, f18, rdn # perform operation
fmul.h f2, f26, f18, rmm # perform operation
fmul.h f2, f26, f18, rne # perform operation
fmul.h f2, f26, f18, rtz # perform operation
fmul.h f2, f26, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f26, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f26, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f26, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f26, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f26, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc000)
li x27, 0x3cfb3735ec77facf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
fmul.h f27, f30, f10, dyn # perform operation
fmul.h f27, f30, f10, rdn # perform operation
fmul.h f27, f30, f10, rmm # perform operation
fmul.h f27, f30, f10, rne # perform operation
fmul.h f27, f30, f10, rtz # perform operation
fmul.h f27, f30, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f30, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f30, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f30, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f30, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f30, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x400)
li x5, 0x164a0354bf6981b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f23, 0(x2) # load 0x00007dff from memory into f23
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
fmul.h f5, f23, f22, dyn # perform operation
fmul.h f5, f23, f22, rdn # perform operation
fmul.h f5, f23, f22, rmm # perform operation
fmul.h f5, f23, f22, rne # perform operation
fmul.h f5, f23, f22, rtz # perform operation
fmul.h f5, f23, f22, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f23, f22 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f23, f22 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f23, f22 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f23, f22 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f23, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8400)
li x28, 0xa8b9ecea3b3aa530 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f4, 0(x2) # load 0x00008400 from memory into f4
fmul.h f28, f29, f4, dyn # perform operation
fmul.h f28, f29, f4, rdn # perform operation
fmul.h f28, f29, f4, rmm # perform operation
fmul.h f28, f29, f4, rne # perform operation
fmul.h f28, f29, f4, rtz # perform operation
fmul.h f28, f29, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f29, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f29, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f29, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f29, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f29, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7bff)
li x16, 0x7a6d77964bac029d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
fmul.h f16, f20, f29, dyn # perform operation
fmul.h f16, f20, f29, rdn # perform operation
fmul.h f16, f20, f29, rmm # perform operation
fmul.h f16, f20, f29, rne # perform operation
fmul.h f16, f20, f29, rtz # perform operation
fmul.h f16, f20, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f16, f20, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f16, f20, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f16, f20, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f16, f20, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f16, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfbff)
li x1, 0x7ce542d87ac11d3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
fmul.h f1, f27, f10, dyn # perform operation
fmul.h f1, f27, f10, rdn # perform operation
fmul.h f1, f27, f10, rmm # perform operation
fmul.h f1, f27, f10, rne # perform operation
fmul.h f1, f27, f10, rtz # perform operation
fmul.h f1, f27, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f27, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f27, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f27, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f27, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3ff)
li x23, 0xfd675fabdb4c00a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
fmul.h f23, f11, f15, dyn # perform operation
fmul.h f23, f11, f15, rdn # perform operation
fmul.h f23, f11, f15, rmm # perform operation
fmul.h f23, f11, f15, rne # perform operation
fmul.h f23, f11, f15, rtz # perform operation
fmul.h f23, f11, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f11, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f11, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f11, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f11, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f11, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x83ff)
li x10, 0x00dfe982e1c70659 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
fmul.h f10, f17, f15, dyn # perform operation
fmul.h f10, f17, f15, rdn # perform operation
fmul.h f10, f17, f15, rmm # perform operation
fmul.h f10, f17, f15, rne # perform operation
fmul.h f10, f17, f15, rtz # perform operation
fmul.h f10, f17, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f17, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f17, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f17, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f17, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f17, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x200)
li x17, 0x5f66bc400196bac4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
fmul.h f17, f13, f6, dyn # perform operation
fmul.h f17, f13, f6, rdn # perform operation
fmul.h f17, f13, f6, rmm # perform operation
fmul.h f17, f13, f6, rne # perform operation
fmul.h f17, f13, f6, rtz # perform operation
fmul.h f17, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8200)
li x4, 0xb91142544dc8672a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
fmul.h f4, f21, f28, dyn # perform operation
fmul.h f4, f21, f28, rdn # perform operation
fmul.h f4, f21, f28, rmm # perform operation
fmul.h f4, f21, f28, rne # perform operation
fmul.h f4, f21, f28, rtz # perform operation
fmul.h f4, f21, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f21, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f21, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f21, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f21, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f21, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x1)
li x4, 0x3e66af105ef0db5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
fmul.h f4, f10, f12, dyn # perform operation
fmul.h f4, f10, f12, rdn # perform operation
fmul.h f4, f10, f12, rmm # perform operation
fmul.h f4, f10, f12, rne # perform operation
fmul.h f4, f10, f12, rtz # perform operation
fmul.h f4, f10, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f10, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f10, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f10, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f10, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8001)
li x24, 0x434728ca5fa18af5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
fmul.h f24, f10, f15, dyn # perform operation
fmul.h f24, f10, f15, rdn # perform operation
fmul.h f24, f10, f15, rmm # perform operation
fmul.h f24, f10, f15, rne # perform operation
fmul.h f24, f10, f15, rtz # perform operation
fmul.h f24, f10, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f10, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f10, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f10, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f10, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f10, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c00)
li x11, 0x08eecb02126ceb2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
fmul.h f11, f8, f15, dyn # perform operation
fmul.h f11, f8, f15, rdn # perform operation
fmul.h f11, f8, f15, rmm # perform operation
fmul.h f11, f8, f15, rne # perform operation
fmul.h f11, f8, f15, rtz # perform operation
fmul.h f11, f8, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f8, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f8, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f8, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f8, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f8, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc00)
li x25, 0xa0e2e82a72552ce0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f10, 0(x2) # load 0x0000fc00 from memory into f10
fmul.h f25, f22, f10, dyn # perform operation
fmul.h f25, f22, f10, rdn # perform operation
fmul.h f25, f22, f10, rmm # perform operation
fmul.h f25, f22, f10, rne # perform operation
fmul.h f25, f22, f10, rtz # perform operation
fmul.h f25, f22, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f25, f22, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f25, f22, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f25, f22, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f25, f22, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f25, f22, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7e00)
li x26, 0x95a27ab96c143dc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
fmul.h f26, f24, f14, dyn # perform operation
fmul.h f26, f24, f14, rdn # perform operation
fmul.h f26, f24, f14, rmm # perform operation
fmul.h f26, f24, f14, rne # perform operation
fmul.h f26, f24, f14, rtz # perform operation
fmul.h f26, f24, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f24, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f24, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f24, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f24, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f24, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7fff)
li x2, 0xc6ae22977e9dad7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
fmul.h f2, f17, f18, dyn # perform operation
fmul.h f2, f17, f18, rdn # perform operation
fmul.h f2, f17, f18, rmm # perform operation
fmul.h f2, f17, f18, rne # perform operation
fmul.h f2, f17, f18, rtz # perform operation
fmul.h f2, f17, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f17, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f17, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f17, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f17, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f17, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c01)
li x24, 0x2ec2041be06f8ef4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f31, 0(x2) # load 0x00007c01 from memory into f31
fmul.h f24, f1, f31, dyn # perform operation
fmul.h f24, f1, f31, rdn # perform operation
fmul.h f24, f1, f31, rmm # perform operation
fmul.h f24, f1, f31, rne # perform operation
fmul.h f24, f1, f31, rtz # perform operation
fmul.h f24, f1, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f1, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f1, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f1, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f1, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f1, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7dff)
li x2, 0xcca24d57da2ff2df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f26, 0(x2) # load 0x00007dff from memory into f26
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
fmul.h f2, f26, f30, dyn # perform operation
fmul.h f2, f26, f30, rdn # perform operation
fmul.h f2, f26, f30, rmm # perform operation
fmul.h f2, f26, f30, rne # perform operation
fmul.h f2, f26, f30, rtz # perform operation
fmul.h f2, f26, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f26, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f26, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f26, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f26, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x58b4)
li x4, 0x3d08704c5afddf95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
fmul.h f4, f21, f17, dyn # perform operation
fmul.h f4, f21, f17, rdn # perform operation
fmul.h f4, f21, f17, rmm # perform operation
fmul.h f4, f21, f17, rne # perform operation
fmul.h f4, f21, f17, rtz # perform operation
fmul.h f4, f21, f17, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f21, f17 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f21, f17 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f21, f17 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f21, f17 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc93a)
li x22, 0x3aa38e16d53c95fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f4, 0(x2) # load 0x00007dff from memory into f4
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
fmul.h f22, f4, f15, dyn # perform operation
fmul.h f22, f4, f15, rdn # perform operation
fmul.h f22, f4, f15, rmm # perform operation
fmul.h f22, f4, f15, rne # perform operation
fmul.h f22, f4, f15, rtz # perform operation
fmul.h f22, f4, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f4, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f4, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f4, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f4, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f4, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x0)
li x9, 0xe5482b11def83d21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f19, 0(x2) # load 0x00000000 from memory into f19
fmul.h f9, f25, f19, dyn # perform operation
fmul.h f9, f25, f19, rdn # perform operation
fmul.h f9, f25, f19, rmm # perform operation
fmul.h f9, f25, f19, rne # perform operation
fmul.h f9, f25, f19, rtz # perform operation
fmul.h f9, f25, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f25, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f25, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f25, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f25, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f25, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8000)
li x2, 0xa596c11fa379dd08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
fmul.h f2, f16, f31, dyn # perform operation
fmul.h f2, f16, f31, rdn # perform operation
fmul.h f2, f16, f31, rmm # perform operation
fmul.h f2, f16, f31, rne # perform operation
fmul.h f2, f16, f31, rtz # perform operation
fmul.h f2, f16, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f16, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f16, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f16, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f16, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f16, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3c00)
li x26, 0xe8d9a22de86309d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
fmul.h f26, f10, f21, dyn # perform operation
fmul.h f26, f10, f21, rdn # perform operation
fmul.h f26, f10, f21, rmm # perform operation
fmul.h f26, f10, f21, rne # perform operation
fmul.h f26, f10, f21, rtz # perform operation
fmul.h f26, f10, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f26, f10, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f26, f10, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f26, f10, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f26, f10, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f26, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbc00)
li x14, 0xcd22440180ff16a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fmul.h f14, f9, f18, dyn # perform operation
fmul.h f14, f9, f18, rdn # perform operation
fmul.h f14, f9, f18, rmm # perform operation
fmul.h f14, f9, f18, rne # perform operation
fmul.h f14, f9, f18, rtz # perform operation
fmul.h f14, f9, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f9, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f9, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f9, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f9, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f9, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3e00)
li x10, 0xc47ca9f3ae69b9e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
fmul.h f10, f23, f2, dyn # perform operation
fmul.h f10, f23, f2, rdn # perform operation
fmul.h f10, f23, f2, rmm # perform operation
fmul.h f10, f23, f2, rne # perform operation
fmul.h f10, f23, f2, rtz # perform operation
fmul.h f10, f23, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f23, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f23, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f23, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f23, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbe00)
li x3, 0x90d0e466973bdf01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
fmul.h f3, f23, f29, dyn # perform operation
fmul.h f3, f23, f29, rdn # perform operation
fmul.h f3, f23, f29, rmm # perform operation
fmul.h f3, f23, f29, rne # perform operation
fmul.h f3, f23, f29, rtz # perform operation
fmul.h f3, f23, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f23, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f23, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f23, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f23, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x4000)
li x11, 0xd7200486b31489d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f3, 0(x2) # load 0x00004000 from memory into f3
fmul.h f11, f14, f3, dyn # perform operation
fmul.h f11, f14, f3, rdn # perform operation
fmul.h f11, f14, f3, rmm # perform operation
fmul.h f11, f14, f3, rne # perform operation
fmul.h f11, f14, f3, rtz # perform operation
fmul.h f11, f14, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f14, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f14, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f14, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f14, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc000)
li x5, 0x0c00948db0faf377 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
fmul.h f5, f10, f19, dyn # perform operation
fmul.h f5, f10, f19, rdn # perform operation
fmul.h f5, f10, f19, rmm # perform operation
fmul.h f5, f10, f19, rne # perform operation
fmul.h f5, f10, f19, rtz # perform operation
fmul.h f5, f10, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f5, f10, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f5, f10, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f5, f10, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f5, f10, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f5, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x400)
li x10, 0xd503813a16e7298d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
fmul.h f10, f20, f28, dyn # perform operation
fmul.h f10, f20, f28, rdn # perform operation
fmul.h f10, f20, f28, rmm # perform operation
fmul.h f10, f20, f28, rne # perform operation
fmul.h f10, f20, f28, rtz # perform operation
fmul.h f10, f20, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f20, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f20, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f20, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f20, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8400)
li x20, 0x115106d6b980a3f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
fmul.h f20, f22, f28, dyn # perform operation
fmul.h f20, f22, f28, rdn # perform operation
fmul.h f20, f22, f28, rmm # perform operation
fmul.h f20, f22, f28, rne # perform operation
fmul.h f20, f22, f28, rtz # perform operation
fmul.h f20, f22, f28, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f22, f28 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f22, f28 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f22, f28 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f22, f28 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f22, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7bff)
li x9, 0xa2ca6227475f4488 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
fmul.h f9, f10, f16, dyn # perform operation
fmul.h f9, f10, f16, rdn # perform operation
fmul.h f9, f10, f16, rmm # perform operation
fmul.h f9, f10, f16, rne # perform operation
fmul.h f9, f10, f16, rtz # perform operation
fmul.h f9, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfbff)
li x17, 0x5de66a84435b60e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
fmul.h f17, f9, f14, dyn # perform operation
fmul.h f17, f9, f14, rdn # perform operation
fmul.h f17, f9, f14, rmm # perform operation
fmul.h f17, f9, f14, rne # perform operation
fmul.h f17, f9, f14, rtz # perform operation
fmul.h f17, f9, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f9, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f9, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f9, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f9, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f9, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3ff)
li x21, 0xea9bf8a1400493ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
fmul.h f21, f9, f10, dyn # perform operation
fmul.h f21, f9, f10, rdn # perform operation
fmul.h f21, f9, f10, rmm # perform operation
fmul.h f21, f9, f10, rne # perform operation
fmul.h f21, f9, f10, rtz # perform operation
fmul.h f21, f9, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f9, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f9, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f9, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f9, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f9, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x83ff)
li x8, 0xa3665844d24ab9db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
fmul.h f8, f14, f5, dyn # perform operation
fmul.h f8, f14, f5, rdn # perform operation
fmul.h f8, f14, f5, rmm # perform operation
fmul.h f8, f14, f5, rne # perform operation
fmul.h f8, f14, f5, rtz # perform operation
fmul.h f8, f14, f5, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f14, f5 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f14, f5 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f14, f5 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f14, f5 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x200)
li x14, 0x9f31a288d38ae518 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
fmul.h f14, f9, f31, dyn # perform operation
fmul.h f14, f9, f31, rdn # perform operation
fmul.h f14, f9, f31, rmm # perform operation
fmul.h f14, f9, f31, rne # perform operation
fmul.h f14, f9, f31, rtz # perform operation
fmul.h f14, f9, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f9, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f9, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f9, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f9, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f9, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8200)
li x2, 0xe6caf41309ecff00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f6, 0(x2) # load 0x00008200 from memory into f6
fmul.h f2, f13, f6, dyn # perform operation
fmul.h f2, f13, f6, rdn # perform operation
fmul.h f2, f13, f6, rmm # perform operation
fmul.h f2, f13, f6, rne # perform operation
fmul.h f2, f13, f6, rtz # perform operation
fmul.h f2, f13, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f13, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f13, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f13, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f13, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f13, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x1)
li x3, 0x7d702bcfa52d0b27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
fmul.h f3, f13, f18, dyn # perform operation
fmul.h f3, f13, f18, rdn # perform operation
fmul.h f3, f13, f18, rmm # perform operation
fmul.h f3, f13, f18, rne # perform operation
fmul.h f3, f13, f18, rtz # perform operation
fmul.h f3, f13, f18, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f13, f18 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f13, f18 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f13, f18 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f13, f18 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f13, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8001)
li x3, 0x2d9715d21472ad56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fmul.h f3, f8, f21, dyn # perform operation
fmul.h f3, f8, f21, rdn # perform operation
fmul.h f3, f8, f21, rmm # perform operation
fmul.h f3, f8, f21, rne # perform operation
fmul.h f3, f8, f21, rtz # perform operation
fmul.h f3, f8, f21, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f8, f21 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f8, f21 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f8, f21 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f8, f21 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c00)
li x8, 0xa9816d6c56c6c8d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f21, 0(x2) # load 0x000058b4 from memory into f21
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
fmul.h f8, f21, f7, dyn # perform operation
fmul.h f8, f21, f7, rdn # perform operation
fmul.h f8, f21, f7, rmm # perform operation
fmul.h f8, f21, f7, rne # perform operation
fmul.h f8, f21, f7, rtz # perform operation
fmul.h f8, f21, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f21, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f21, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f21, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f21, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f21, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc00)
li x14, 0x0994942af32a44db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
fmul.h f14, f25, f6, dyn # perform operation
fmul.h f14, f25, f6, rdn # perform operation
fmul.h f14, f25, f6, rmm # perform operation
fmul.h f14, f25, f6, rne # perform operation
fmul.h f14, f25, f6, rtz # perform operation
fmul.h f14, f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7e00)
li x18, 0x0686649ddcc9a86f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
fmul.h f18, f10, f8, dyn # perform operation
fmul.h f18, f10, f8, rdn # perform operation
fmul.h f18, f10, f8, rmm # perform operation
fmul.h f18, f10, f8, rne # perform operation
fmul.h f18, f10, f8, rtz # perform operation
fmul.h f18, f10, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f18, f10, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f18, f10, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f18, f10, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f18, f10, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f18, f10, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7fff)
li x20, 0xcd9de48dd771468e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f26, 0(x2) # load 0x000058b4 from memory into f26
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
fmul.h f20, f26, f7, dyn # perform operation
fmul.h f20, f26, f7, rdn # perform operation
fmul.h f20, f26, f7, rmm # perform operation
fmul.h f20, f26, f7, rne # perform operation
fmul.h f20, f26, f7, rtz # perform operation
fmul.h f20, f26, f7, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f20, f26, f7 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f20, f26, f7 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f20, f26, f7 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f20, f26, f7 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f20, f26, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c01)
li x24, 0xf70424d8aa419aa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
fmul.h f24, f31, f1, dyn # perform operation
fmul.h f24, f31, f1, rdn # perform operation
fmul.h f24, f31, f1, rmm # perform operation
fmul.h f24, f31, f1, rne # perform operation
fmul.h f24, f31, f1, rtz # perform operation
fmul.h f24, f31, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f31, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f31, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f31, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f31, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7dff)
li x6, 0x7185681fa7871346 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
fmul.h f6, f8, f24, dyn # perform operation
fmul.h f6, f8, f24, rdn # perform operation
fmul.h f6, f8, f24, rmm # perform operation
fmul.h f6, f8, f24, rne # perform operation
fmul.h f6, f8, f24, rtz # perform operation
fmul.h f6, f8, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f6, f8, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f6, f8, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f6, f8, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f6, f8, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f6, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x58b4)
li x8, 0xb151a36938185f38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f29, 0(x2) # load 0x000058b4 from memory into f29
fmul.h f8, f17, f29, dyn # perform operation
fmul.h f8, f17, f29, rdn # perform operation
fmul.h f8, f17, f29, rmm # perform operation
fmul.h f8, f17, f29, rne # perform operation
fmul.h f8, f17, f29, rtz # perform operation
fmul.h f8, f17, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f8, f17, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f8, f17, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f8, f17, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f8, f17, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f8, f17, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc93a)
li x9, 0xe205c9fce31c42f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
fmul.h f9, f8, f26, dyn # perform operation
fmul.h f9, f8, f26, rdn # perform operation
fmul.h f9, f8, f26, rmm # perform operation
fmul.h f9, f8, f26, rne # perform operation
fmul.h f9, f8, f26, rtz # perform operation
fmul.h f9, f8, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f8, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f8, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f8, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f8, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f8, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x0)
li x4, 0xf37b43e559731c77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
fmul.h f4, f23, f31, dyn # perform operation
fmul.h f4, f23, f31, rdn # perform operation
fmul.h f4, f23, f31, rmm # perform operation
fmul.h f4, f23, f31, rne # perform operation
fmul.h f4, f23, f31, rtz # perform operation
fmul.h f4, f23, f31, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f23, f31 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f23, f31 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f23, f31 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f23, f31 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f23, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8000)
li x22, 0x3309210f7783c1db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f31, 0(x2) # load 0x0000c93a from memory into f31
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
fmul.h f22, f31, f19, dyn # perform operation
fmul.h f22, f31, f19, rdn # perform operation
fmul.h f22, f31, f19, rmm # perform operation
fmul.h f22, f31, f19, rne # perform operation
fmul.h f22, f31, f19, rtz # perform operation
fmul.h f22, f31, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f22, f31, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f22, f31, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f22, f31, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f22, f31, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f22, f31, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3c00)
li x31, 0x83a584f0aaee6013 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
fmul.h f31, f9, f8, dyn # perform operation
fmul.h f31, f9, f8, rdn # perform operation
fmul.h f31, f9, f8, rmm # perform operation
fmul.h f31, f9, f8, rne # perform operation
fmul.h f31, f9, f8, rtz # perform operation
fmul.h f31, f9, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f31, f9, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f31, f9, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f31, f9, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f31, f9, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f31, f9, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbc00)
li x17, 0x4347913d8611350c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
fmul.h f17, f18, f15, dyn # perform operation
fmul.h f17, f18, f15, rdn # perform operation
fmul.h f17, f18, f15, rmm # perform operation
fmul.h f17, f18, f15, rne # perform operation
fmul.h f17, f18, f15, rtz # perform operation
fmul.h f17, f18, f15, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f18, f15 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f18, f15 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f18, f15 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f18, f15 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f18, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3e00)
li x13, 0x12fc2bc214f24643 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f4, 0(x2) # load 0x0000c93a from memory into f4
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
fmul.h f13, f4, f9, dyn # perform operation
fmul.h f13, f4, f9, rdn # perform operation
fmul.h f13, f4, f9, rmm # perform operation
fmul.h f13, f4, f9, rne # perform operation
fmul.h f13, f4, f9, rtz # perform operation
fmul.h f13, f4, f9, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f13, f4, f9 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f13, f4, f9 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f13, f4, f9 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f13, f4, f9 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f13, f4, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbe00)
li x23, 0xf9c89f7584028da1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f19, 0(x2) # load 0x0000be00 from memory into f19
fmul.h f23, f20, f19, dyn # perform operation
fmul.h f23, f20, f19, rdn # perform operation
fmul.h f23, f20, f19, rmm # perform operation
fmul.h f23, f20, f19, rne # perform operation
fmul.h f23, f20, f19, rtz # perform operation
fmul.h f23, f20, f19, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f23, f20, f19 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f23, f20, f19 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f23, f20, f19 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f23, f20, f19 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f23, f20, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x4000)
li x7, 0x36a396a47d2f18ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fmul.h f7, f10, f6, dyn # perform operation
fmul.h f7, f10, f6, rdn # perform operation
fmul.h f7, f10, f6, rmm # perform operation
fmul.h f7, f10, f6, rne # perform operation
fmul.h f7, f10, f6, rtz # perform operation
fmul.h f7, f10, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f7, f10, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f7, f10, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f7, f10, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f7, f10, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f7, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc000)
li x21, 0x5809bffb90a31f76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
fmul.h f21, f24, f29, dyn # perform operation
fmul.h f21, f24, f29, rdn # perform operation
fmul.h f21, f24, f29, rmm # perform operation
fmul.h f21, f24, f29, rne # perform operation
fmul.h f21, f24, f29, rtz # perform operation
fmul.h f21, f24, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f21, f24, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f21, f24, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f21, f24, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f21, f24, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f21, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x400)
li x2, 0x9cbecb00106884bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
fmul.h f2, f16, f11, dyn # perform operation
fmul.h f2, f16, f11, rdn # perform operation
fmul.h f2, f16, f11, rmm # perform operation
fmul.h f2, f16, f11, rne # perform operation
fmul.h f2, f16, f11, rtz # perform operation
fmul.h f2, f16, f11, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f2, f16, f11 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f2, f16, f11 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f2, f16, f11 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f2, f16, f11 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f2, f16, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8400)
li x4, 0x3024a0ecd954dad9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
fmul.h f4, f13, f3, dyn # perform operation
fmul.h f4, f13, f3, rdn # perform operation
fmul.h f4, f13, f3, rmm # perform operation
fmul.h f4, f13, f3, rne # perform operation
fmul.h f4, f13, f3, rtz # perform operation
fmul.h f4, f13, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f13, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f13, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f13, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f13, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f13, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7bff)
li x19, 0x52b5abada8b52c43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fmul.h f19, f8, f2, dyn # perform operation
fmul.h f19, f8, f2, rdn # perform operation
fmul.h f19, f8, f2, rmm # perform operation
fmul.h f19, f8, f2, rne # perform operation
fmul.h f19, f8, f2, rtz # perform operation
fmul.h f19, f8, f2, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f19, f8, f2 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f19, f8, f2 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f19, f8, f2 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f19, f8, f2 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f19, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfbff)
li x29, 0x20d2432442ab6328 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
fmul.h f29, f28, f8, dyn # perform operation
fmul.h f29, f28, f8, rdn # perform operation
fmul.h f29, f28, f8, rmm # perform operation
fmul.h f29, f28, f8, rne # perform operation
fmul.h f29, f28, f8, rtz # perform operation
fmul.h f29, f28, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f29, f28, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f29, f28, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f29, f28, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f29, f28, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f29, f28, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3ff)
li x24, 0x4cb8005848adcaa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f20, 0(x2) # load 0x000003ff from memory into f20
fmul.h f24, f7, f20, dyn # perform operation
fmul.h f24, f7, f20, rdn # perform operation
fmul.h f24, f7, f20, rmm # perform operation
fmul.h f24, f7, f20, rne # perform operation
fmul.h f24, f7, f20, rtz # perform operation
fmul.h f24, f7, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f24, f7, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f24, f7, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f24, f7, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f24, f7, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f24, f7, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x83ff)
li x14, 0xca29d41efe6b0aa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
fmul.h f14, f29, f24, dyn # perform operation
fmul.h f14, f29, f24, rdn # perform operation
fmul.h f14, f29, f24, rmm # perform operation
fmul.h f14, f29, f24, rne # perform operation
fmul.h f14, f29, f24, rtz # perform operation
fmul.h f14, f29, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f14, f29, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f14, f29, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f14, f29, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f14, f29, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f14, f29, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x200)
li x17, 0x972c80c0a3bfa251 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f4, 0(x2) # load 0x00000200 from memory into f4
fmul.h f17, f28, f4, dyn # perform operation
fmul.h f17, f28, f4, rdn # perform operation
fmul.h f17, f28, f4, rmm # perform operation
fmul.h f17, f28, f4, rne # perform operation
fmul.h f17, f28, f4, rtz # perform operation
fmul.h f17, f28, f4, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f17, f28, f4 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f17, f28, f4 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f17, f28, f4 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f17, f28, f4 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f17, f28, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8200)
li x3, 0x39ebeec2f5890d55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
fmul.h f3, f22, f29, dyn # perform operation
fmul.h f3, f22, f29, rdn # perform operation
fmul.h f3, f22, f29, rmm # perform operation
fmul.h f3, f22, f29, rne # perform operation
fmul.h f3, f22, f29, rtz # perform operation
fmul.h f3, f22, f29, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f3, f22, f29 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f3, f22, f29 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f3, f22, f29 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f3, f22, f29 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f3, f22, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x1)
li x10, 0xecbb997efb431264 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f9, 0(x2) # load 0x0000c93a from memory into f9
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
fmul.h f10, f9, f30, dyn # perform operation
fmul.h f10, f9, f30, rdn # perform operation
fmul.h f10, f9, f30, rmm # perform operation
fmul.h f10, f9, f30, rne # perform operation
fmul.h f10, f9, f30, rtz # perform operation
fmul.h f10, f9, f30, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f10, f9, f30 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f10, f9, f30 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f10, f9, f30 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f10, f9, f30 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f10, f9, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8001)
li x27, 0x127fe545c06153c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
fmul.h f27, f12, f10, dyn # perform operation
fmul.h f27, f12, f10, rdn # perform operation
fmul.h f27, f12, f10, rmm # perform operation
fmul.h f27, f12, f10, rne # perform operation
fmul.h f27, f12, f10, rtz # perform operation
fmul.h f27, f12, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f12, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f12, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f12, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f12, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c00)
li x9, 0xd6d40abb6b146653 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
fmul.h f9, f10, f16, dyn # perform operation
fmul.h f9, f10, f16, rdn # perform operation
fmul.h f9, f10, f16, rmm # perform operation
fmul.h f9, f10, f16, rne # perform operation
fmul.h f9, f10, f16, rtz # perform operation
fmul.h f9, f10, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f9, f10, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f9, f10, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f9, f10, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f9, f10, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f9, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc00)
li x4, 0x93569f80fde1bd7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f25, 0(x2) # load 0x0000c93a from memory into f25
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
fmul.h f4, f25, f3, dyn # perform operation
fmul.h f4, f25, f3, rdn # perform operation
fmul.h f4, f25, f3, rmm # perform operation
fmul.h f4, f25, f3, rne # perform operation
fmul.h f4, f25, f3, rtz # perform operation
fmul.h f4, f25, f3, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f25, f3 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f25, f3 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f25, f3 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f25, f3 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f25, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7e00)
li x11, 0x8fe6cdb7b3f66dd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f20, 0(x2) # load 0x00007e00 from memory into f20
fmul.h f11, f22, f20, dyn # perform operation
fmul.h f11, f22, f20, rdn # perform operation
fmul.h f11, f22, f20, rmm # perform operation
fmul.h f11, f22, f20, rne # perform operation
fmul.h f11, f22, f20, rtz # perform operation
fmul.h f11, f22, f20, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f11, f22, f20 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f11, f22, f20 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f11, f22, f20 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f11, f22, f20 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f11, f22, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7fff)
li x4, 0x24b682f283cb979f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
fmul.h f4, f2, f8, dyn # perform operation
fmul.h f4, f2, f8, rdn # perform operation
fmul.h f4, f2, f8, rmm # perform operation
fmul.h f4, f2, f8, rne # perform operation
fmul.h f4, f2, f8, rtz # perform operation
fmul.h f4, f2, f8, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f4, f2, f8 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f4, f2, f8 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f4, f2, f8 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f4, f2, f8 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f4, f2, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c01)
li x28, 0xe2cb273df5098a7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f26, 0(x2) # load 0x0000c93a from memory into f26
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
fmul.h f28, f26, f10, dyn # perform operation
fmul.h f28, f26, f10, rdn # perform operation
fmul.h f28, f26, f10, rmm # perform operation
fmul.h f28, f26, f10, rne # perform operation
fmul.h f28, f26, f10, rtz # perform operation
fmul.h f28, f26, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f28, f26, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f28, f26, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f28, f26, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f28, f26, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f28, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7dff)
li x1, 0x2cc30e97c6b03449 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f16, 0(x2) # load 0x00007dff from memory into f16
fmul.h f1, f29, f16, dyn # perform operation
fmul.h f1, f29, f16, rdn # perform operation
fmul.h f1, f29, f16, rmm # perform operation
fmul.h f1, f29, f16, rne # perform operation
fmul.h f1, f29, f16, rtz # perform operation
fmul.h f1, f29, f16, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f29, f16 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f29, f16 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f29, f16 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f29, f16 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f29, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x58b4)
li x27, 0x0eaa0e73fe3a2d59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
fmul.h f27, f6, f25, dyn # perform operation
fmul.h f27, f6, f25, rdn # perform operation
fmul.h f27, f6, f25, rmm # perform operation
fmul.h f27, f6, f25, rne # perform operation
fmul.h f27, f6, f25, rtz # perform operation
fmul.h f27, f6, f25, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f27, f6, f25 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f27, f6, f25 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f27, f6, f25 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f27, f6, f25 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f27, f6, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc93a)
li x1, 0x4168d41bb6e91390 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f4, 0(x2) # load 0x0000c93a from memory into f4
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
fmul.h f1, f4, f24, dyn # perform operation
fmul.h f1, f4, f24, rdn # perform operation
fmul.h f1, f4, f24, rmm # perform operation
fmul.h f1, f4, f24, rne # perform operation
fmul.h f1, f4, f24, rtz # perform operation
fmul.h f1, f4, f24, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fmul.h f1, f4, f24 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fmul.h f1, f4, f24 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fmul.h f1, f4, f24 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fmul.h f1, f4, f24 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fmul.h f1, f4, f24 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x197d165cfcab1681 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb9a3f681a7640d6c # load x3 with value 0xb9a3f681a7640d6c
sw x3, 0(x2) # store 0xb9a3f681a7640d6c in memory
flh f2, 0(x2) # load 0xb9a3f681a7640d6c from memory into f2
li x3, 0x960ff1053243bc7 # load x3 with value 0x960ff1053243bc7
sw x3, 0(x2) # store 0x960ff1053243bc7 in memory
flh f25, 0(x2) # load 0x960ff1053243bc7 from memory into f25
fmul.h f0, f2, f25 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xf4770ab8de4c3ad8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9c546d84fdd4afac # load x3 with value 0x9c546d84fdd4afac
sw x3, 0(x2) # store 0x9c546d84fdd4afac in memory
flh f17, 0(x2) # load 0x9c546d84fdd4afac from memory into f17
li x3, 0x8c6f2d8fb553b869 # load x3 with value 0x8c6f2d8fb553b869
sw x3, 0(x2) # store 0x8c6f2d8fb553b869 in memory
flh f30, 0(x2) # load 0x8c6f2d8fb553b869 from memory into f30
fmul.h f1, f17, f30 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x2495ac044325bfef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8bb819fddde699a # load x3 with value 0x8bb819fddde699a
sw x3, 0(x2) # store 0x8bb819fddde699a in memory
flh f28, 0(x2) # load 0x8bb819fddde699a from memory into f28
li x3, 0x84e48a61fcdb9ca9 # load x3 with value 0x84e48a61fcdb9ca9
sw x3, 0(x2) # store 0x84e48a61fcdb9ca9 in memory
flh f15, 0(x2) # load 0x84e48a61fcdb9ca9 from memory into f15
fmul.h f2, f28, f15 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x0def5fd2b2f05fda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x150fcfa9705b0410 # load x3 with value 0x150fcfa9705b0410
sw x3, 0(x2) # store 0x150fcfa9705b0410 in memory
flh f6, 0(x2) # load 0x150fcfa9705b0410 from memory into f6
li x3, 0x9537301c5e08d3df # load x3 with value 0x9537301c5e08d3df
sw x3, 0(x2) # store 0x9537301c5e08d3df in memory
flh f18, 0(x2) # load 0x9537301c5e08d3df from memory into f18
fmul.h f3, f6, f18 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x55ef18d524a1399e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a789814be9c0f83 # load x3 with value 0x8a789814be9c0f83
sw x3, 0(x2) # store 0x8a789814be9c0f83 in memory
flh f1, 0(x2) # load 0x8a789814be9c0f83 from memory into f1
li x3, 0x23653d4da3371860 # load x3 with value 0x23653d4da3371860
sw x3, 0(x2) # store 0x23653d4da3371860 in memory
flh f14, 0(x2) # load 0x23653d4da3371860 from memory into f14
fmul.h f4, f1, f14 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xaefe080c91ea887e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe9809c6473e81e87 # load x3 with value 0xe9809c6473e81e87
sw x3, 0(x2) # store 0xe9809c6473e81e87 in memory
flh f3, 0(x2) # load 0xe9809c6473e81e87 from memory into f3
li x3, 0x92c28b33d98b76fd # load x3 with value 0x92c28b33d98b76fd
sw x3, 0(x2) # store 0x92c28b33d98b76fd in memory
flh f6, 0(x2) # load 0x92c28b33d98b76fd from memory into f6
fmul.h f5, f3, f6 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xd8aeabeb0544bb47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf69bd051ecf6167 # load x3 with value 0xcf69bd051ecf6167
sw x3, 0(x2) # store 0xcf69bd051ecf6167 in memory
flh f23, 0(x2) # load 0xcf69bd051ecf6167 from memory into f23
li x3, 0xca151534bfc54714 # load x3 with value 0xca151534bfc54714
sw x3, 0(x2) # store 0xca151534bfc54714 in memory
flh f12, 0(x2) # load 0xca151534bfc54714 from memory into f12
fmul.h f6, f23, f12 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x7669b75d8f963eb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb02f10a66da2653 # load x3 with value 0xdb02f10a66da2653
sw x3, 0(x2) # store 0xdb02f10a66da2653 in memory
flh f19, 0(x2) # load 0xdb02f10a66da2653 from memory into f19
li x3, 0xea1edca25e5c3949 # load x3 with value 0xea1edca25e5c3949
sw x3, 0(x2) # store 0xea1edca25e5c3949 in memory
flh f18, 0(x2) # load 0xea1edca25e5c3949 from memory into f18
fmul.h f7, f19, f18 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x2a24905e3679d11b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f0b6ac1b3b07568 # load x3 with value 0x7f0b6ac1b3b07568
sw x3, 0(x2) # store 0x7f0b6ac1b3b07568 in memory
flh f25, 0(x2) # load 0x7f0b6ac1b3b07568 from memory into f25
li x3, 0xa580ac37cedbb6db # load x3 with value 0xa580ac37cedbb6db
sw x3, 0(x2) # store 0xa580ac37cedbb6db in memory
flh f7, 0(x2) # load 0xa580ac37cedbb6db from memory into f7
fmul.h f8, f25, f7 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xcb98130bbf5b4422 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa448f1ddf21ed78d # load x3 with value 0xa448f1ddf21ed78d
sw x3, 0(x2) # store 0xa448f1ddf21ed78d in memory
flh f11, 0(x2) # load 0xa448f1ddf21ed78d from memory into f11
li x3, 0xf8f27e6403d7b32e # load x3 with value 0xf8f27e6403d7b32e
sw x3, 0(x2) # store 0xf8f27e6403d7b32e in memory
flh f19, 0(x2) # load 0xf8f27e6403d7b32e from memory into f19
fmul.h f9, f11, f19 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xe6f4d67bd964297f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeb04ee0c512b8f14 # load x3 with value 0xeb04ee0c512b8f14
sw x3, 0(x2) # store 0xeb04ee0c512b8f14 in memory
flh f21, 0(x2) # load 0xeb04ee0c512b8f14 from memory into f21
li x3, 0x86f334efc6fa25d0 # load x3 with value 0x86f334efc6fa25d0
sw x3, 0(x2) # store 0x86f334efc6fa25d0 in memory
flh f27, 0(x2) # load 0x86f334efc6fa25d0 from memory into f27
fmul.h f10, f21, f27 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xfd0e1e1621fa5f47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c21fbb2bffec5ab # load x3 with value 0x7c21fbb2bffec5ab
sw x3, 0(x2) # store 0x7c21fbb2bffec5ab in memory
flh f21, 0(x2) # load 0x7c21fbb2bffec5ab from memory into f21
li x3, 0x18a7ff273e9dbad6 # load x3 with value 0x18a7ff273e9dbad6
sw x3, 0(x2) # store 0x18a7ff273e9dbad6 in memory
flh f29, 0(x2) # load 0x18a7ff273e9dbad6 from memory into f29
fmul.h f11, f21, f29 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xaf36ca5fae57cc09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbcac2559016786b8 # load x3 with value 0xbcac2559016786b8
sw x3, 0(x2) # store 0xbcac2559016786b8 in memory
flh f3, 0(x2) # load 0xbcac2559016786b8 from memory into f3
li x3, 0xd024723216a36f20 # load x3 with value 0xd024723216a36f20
sw x3, 0(x2) # store 0xd024723216a36f20 in memory
flh f21, 0(x2) # load 0xd024723216a36f20 from memory into f21
fmul.h f12, f3, f21 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xd6d4bb62fc481c08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6e3d030a588dbfd # load x3 with value 0xb6e3d030a588dbfd
sw x3, 0(x2) # store 0xb6e3d030a588dbfd in memory
flh f12, 0(x2) # load 0xb6e3d030a588dbfd from memory into f12
li x3, 0x996efd77101cc981 # load x3 with value 0x996efd77101cc981
sw x3, 0(x2) # store 0x996efd77101cc981 in memory
flh f30, 0(x2) # load 0x996efd77101cc981 from memory into f30
fmul.h f13, f12, f30 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x3de1e490e80f8692 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x97fd7c5f6861501c # load x3 with value 0x97fd7c5f6861501c
sw x3, 0(x2) # store 0x97fd7c5f6861501c in memory
flh f27, 0(x2) # load 0x97fd7c5f6861501c from memory into f27
li x3, 0x20d25176a4985891 # load x3 with value 0x20d25176a4985891
sw x3, 0(x2) # store 0x20d25176a4985891 in memory
flh f13, 0(x2) # load 0x20d25176a4985891 from memory into f13
fmul.h f14, f27, f13 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x2a178552c1bd2d09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa0e0a74b9371d3f # load x3 with value 0xaa0e0a74b9371d3f
sw x3, 0(x2) # store 0xaa0e0a74b9371d3f in memory
flh f20, 0(x2) # load 0xaa0e0a74b9371d3f from memory into f20
li x3, 0xccdc0c67bc7c1827 # load x3 with value 0xccdc0c67bc7c1827
sw x3, 0(x2) # store 0xccdc0c67bc7c1827 in memory
flh f16, 0(x2) # load 0xccdc0c67bc7c1827 from memory into f16
fmul.h f15, f20, f16 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x547f6f25200dd672 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x288311275e03e2f8 # load x3 with value 0x288311275e03e2f8
sw x3, 0(x2) # store 0x288311275e03e2f8 in memory
flh f27, 0(x2) # load 0x288311275e03e2f8 from memory into f27
li x3, 0xf5a9addcf66f2a04 # load x3 with value 0xf5a9addcf66f2a04
sw x3, 0(x2) # store 0xf5a9addcf66f2a04 in memory
flh f7, 0(x2) # load 0xf5a9addcf66f2a04 from memory into f7
fmul.h f16, f27, f7 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x2f18dcef03801c6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe6286400ccb268fc # load x3 with value 0xe6286400ccb268fc
sw x3, 0(x2) # store 0xe6286400ccb268fc in memory
flh f28, 0(x2) # load 0xe6286400ccb268fc from memory into f28
li x3, 0x28f63ccf92242697 # load x3 with value 0x28f63ccf92242697
sw x3, 0(x2) # store 0x28f63ccf92242697 in memory
flh f27, 0(x2) # load 0x28f63ccf92242697 from memory into f27
fmul.h f17, f28, f27 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x121919642e8dea8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6a427240e4c7abb # load x3 with value 0xa6a427240e4c7abb
sw x3, 0(x2) # store 0xa6a427240e4c7abb in memory
flh f6, 0(x2) # load 0xa6a427240e4c7abb from memory into f6
li x3, 0x8718826923d0c25a # load x3 with value 0x8718826923d0c25a
sw x3, 0(x2) # store 0x8718826923d0c25a in memory
flh f14, 0(x2) # load 0x8718826923d0c25a from memory into f14
fmul.h f18, f6, f14 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xe8a6d88def94abf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c39261530050dc7 # load x3 with value 0x7c39261530050dc7
sw x3, 0(x2) # store 0x7c39261530050dc7 in memory
flh f7, 0(x2) # load 0x7c39261530050dc7 from memory into f7
li x3, 0x69381f88678777a6 # load x3 with value 0x69381f88678777a6
sw x3, 0(x2) # store 0x69381f88678777a6 in memory
flh f3, 0(x2) # load 0x69381f88678777a6 from memory into f3
fmul.h f19, f7, f3 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xcf056ebb6a2409e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2378784d95f06b12 # load x3 with value 0x2378784d95f06b12
sw x3, 0(x2) # store 0x2378784d95f06b12 in memory
flh f7, 0(x2) # load 0x2378784d95f06b12 from memory into f7
li x3, 0xe7483db564b5c2dc # load x3 with value 0xe7483db564b5c2dc
sw x3, 0(x2) # store 0xe7483db564b5c2dc in memory
flh f30, 0(x2) # load 0xe7483db564b5c2dc from memory into f30
fmul.h f20, f7, f30 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xf5b0bc936dd96b33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd640a64d2ada89a0 # load x3 with value 0xd640a64d2ada89a0
sw x3, 0(x2) # store 0xd640a64d2ada89a0 in memory
flh f14, 0(x2) # load 0xd640a64d2ada89a0 from memory into f14
li x3, 0x78a2c2486a70e2e0 # load x3 with value 0x78a2c2486a70e2e0
sw x3, 0(x2) # store 0x78a2c2486a70e2e0 in memory
flh f17, 0(x2) # load 0x78a2c2486a70e2e0 from memory into f17
fmul.h f21, f14, f17 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xcedbd012904b038b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x428d7b2b36b28d7f # load x3 with value 0x428d7b2b36b28d7f
sw x3, 0(x2) # store 0x428d7b2b36b28d7f in memory
flh f29, 0(x2) # load 0x428d7b2b36b28d7f from memory into f29
li x3, 0xef3d95b291a8d317 # load x3 with value 0xef3d95b291a8d317
sw x3, 0(x2) # store 0xef3d95b291a8d317 in memory
flh f19, 0(x2) # load 0xef3d95b291a8d317 from memory into f19
fmul.h f22, f29, f19 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x70fa0f68305887ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x37079a8ff01500b7 # load x3 with value 0x37079a8ff01500b7
sw x3, 0(x2) # store 0x37079a8ff01500b7 in memory
flh f13, 0(x2) # load 0x37079a8ff01500b7 from memory into f13
li x3, 0x8618274bd31f3498 # load x3 with value 0x8618274bd31f3498
sw x3, 0(x2) # store 0x8618274bd31f3498 in memory
flh f23, 0(x2) # load 0x8618274bd31f3498 from memory into f23
fmul.h f23, f13, f23 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x8aca228fe4408a4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x51112caf3d569a7f # load x3 with value 0x51112caf3d569a7f
sw x3, 0(x2) # store 0x51112caf3d569a7f in memory
flh f14, 0(x2) # load 0x51112caf3d569a7f from memory into f14
li x3, 0xb6f8fb7cb472c91a # load x3 with value 0xb6f8fb7cb472c91a
sw x3, 0(x2) # store 0xb6f8fb7cb472c91a in memory
flh f15, 0(x2) # load 0xb6f8fb7cb472c91a from memory into f15
fmul.h f24, f14, f15 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x972722242d7ea5c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa3c4f8fb929468cb # load x3 with value 0xa3c4f8fb929468cb
sw x3, 0(x2) # store 0xa3c4f8fb929468cb in memory
flh f11, 0(x2) # load 0xa3c4f8fb929468cb from memory into f11
li x3, 0x3e5b785f0f199955 # load x3 with value 0x3e5b785f0f199955
sw x3, 0(x2) # store 0x3e5b785f0f199955 in memory
flh f18, 0(x2) # load 0x3e5b785f0f199955 from memory into f18
fmul.h f25, f11, f18 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x8752a10ff7697eda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13c8a5e7798ee882 # load x3 with value 0x13c8a5e7798ee882
sw x3, 0(x2) # store 0x13c8a5e7798ee882 in memory
flh f18, 0(x2) # load 0x13c8a5e7798ee882 from memory into f18
li x3, 0x40f3e55d39a51166 # load x3 with value 0x40f3e55d39a51166
sw x3, 0(x2) # store 0x40f3e55d39a51166 in memory
flh f14, 0(x2) # load 0x40f3e55d39a51166 from memory into f14
fmul.h f26, f18, f14 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xd94f7a0cc9a26413 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x73b4d96a8deee425 # load x3 with value 0x73b4d96a8deee425
sw x3, 0(x2) # store 0x73b4d96a8deee425 in memory
flh f7, 0(x2) # load 0x73b4d96a8deee425 from memory into f7
li x3, 0x344afd0103f082a1 # load x3 with value 0x344afd0103f082a1
sw x3, 0(x2) # store 0x344afd0103f082a1 in memory
flh f14, 0(x2) # load 0x344afd0103f082a1 from memory into f14
fmul.h f27, f7, f14 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x6cc6d70c59f8cde8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd601e4fd518a37d # load x3 with value 0xdd601e4fd518a37d
sw x3, 0(x2) # store 0xdd601e4fd518a37d in memory
flh f6, 0(x2) # load 0xdd601e4fd518a37d from memory into f6
li x3, 0xe712bdc035a8241c # load x3 with value 0xe712bdc035a8241c
sw x3, 0(x2) # store 0xe712bdc035a8241c in memory
flh f11, 0(x2) # load 0xe712bdc035a8241c from memory into f11
fmul.h f28, f6, f11 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xec670cbee8061e56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x658c545dae26c01f # load x3 with value 0x658c545dae26c01f
sw x3, 0(x2) # store 0x658c545dae26c01f in memory
flh f15, 0(x2) # load 0x658c545dae26c01f from memory into f15
li x3, 0x3d9c489d1cc92150 # load x3 with value 0x3d9c489d1cc92150
sw x3, 0(x2) # store 0x3d9c489d1cc92150 in memory
flh f8, 0(x2) # load 0x3d9c489d1cc92150 from memory into f8
fmul.h f29, f15, f8 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x2311f641dedf70bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9282034dc1644b37 # load x3 with value 0x9282034dc1644b37
sw x3, 0(x2) # store 0x9282034dc1644b37 in memory
flh f31, 0(x2) # load 0x9282034dc1644b37 from memory into f31
li x3, 0xe630f27e80c073f6 # load x3 with value 0xe630f27e80c073f6
sw x3, 0(x2) # store 0xe630f27e80c073f6 in memory
flh f3, 0(x2) # load 0xe630f27e80c073f6 from memory into f3
fmul.h f30, f31, f3 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xe0a4b1ae127a0046 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4c50f7fb4bdfb13 # load x3 with value 0xb4c50f7fb4bdfb13
sw x3, 0(x2) # store 0xb4c50f7fb4bdfb13 in memory
flh f14, 0(x2) # load 0xb4c50f7fb4bdfb13 from memory into f14
li x3, 0xd14dc69865039990 # load x3 with value 0xd14dc69865039990
sw x3, 0(x2) # store 0xd14dc69865039990 in memory
flh f21, 0(x2) # load 0xd14dc69865039990 from memory into f21
fmul.h f31, f14, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x29, 0xf29739dc62ea6e4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f954373bf94a341 # load x3 with value 0x2f954373bf94a341
sw x3, 0(x2) # store 0x2f954373bf94a341 in memory
flh f0, 0(x2) # load 0x2f954373bf94a341 from memory into f0
li x3, 0x3428abfb5c1aa29b # load x3 with value 0x3428abfb5c1aa29b
sw x3, 0(x2) # store 0x3428abfb5c1aa29b in memory
flh f5, 0(x2) # load 0x3428abfb5c1aa29b from memory into f5
fmul.h f29, f0, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x30, 0x3b995ac7930502e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6eae2761398815f9 # load x3 with value 0x6eae2761398815f9
sw x3, 0(x2) # store 0x6eae2761398815f9 in memory
flh f1, 0(x2) # load 0x6eae2761398815f9 from memory into f1
li x3, 0x6614f386f76e8227 # load x3 with value 0x6614f386f76e8227
sw x3, 0(x2) # store 0x6614f386f76e8227 in memory
flh f26, 0(x2) # load 0x6614f386f76e8227 from memory into f26
fmul.h f30, f1, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x8, 0x696167cc57b81aab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x822331949fc9a6bc # load x3 with value 0x822331949fc9a6bc
sw x3, 0(x2) # store 0x822331949fc9a6bc in memory
flh f2, 0(x2) # load 0x822331949fc9a6bc from memory into f2
li x3, 0x752b6300e1b0c43a # load x3 with value 0x752b6300e1b0c43a
sw x3, 0(x2) # store 0x752b6300e1b0c43a in memory
flh f11, 0(x2) # load 0x752b6300e1b0c43a from memory into f11
fmul.h f8, f2, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x7, 0x937964ceb8ff5419 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a9fb2c3935f4c78 # load x3 with value 0x4a9fb2c3935f4c78
sw x3, 0(x2) # store 0x4a9fb2c3935f4c78 in memory
flh f3, 0(x2) # load 0x4a9fb2c3935f4c78 from memory into f3
li x3, 0x7652dcf05443f345 # load x3 with value 0x7652dcf05443f345
sw x3, 0(x2) # store 0x7652dcf05443f345 in memory
flh f1, 0(x2) # load 0x7652dcf05443f345 from memory into f1
fmul.h f7, f3, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x17, 0x7c9a66d4c3e13b57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6c42c5395212ced # load x3 with value 0xd6c42c5395212ced
sw x3, 0(x2) # store 0xd6c42c5395212ced in memory
flh f4, 0(x2) # load 0xd6c42c5395212ced from memory into f4
li x3, 0x2a906c229d365d15 # load x3 with value 0x2a906c229d365d15
sw x3, 0(x2) # store 0x2a906c229d365d15 in memory
flh f28, 0(x2) # load 0x2a906c229d365d15 from memory into f28
fmul.h f17, f4, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x5, 0x7716b295deefa846 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5db4c80cf513978f # load x3 with value 0x5db4c80cf513978f
sw x3, 0(x2) # store 0x5db4c80cf513978f in memory
flh f5, 0(x2) # load 0x5db4c80cf513978f from memory into f5
li x3, 0xb117111d02c291ef # load x3 with value 0xb117111d02c291ef
sw x3, 0(x2) # store 0xb117111d02c291ef in memory
flh f9, 0(x2) # load 0xb117111d02c291ef from memory into f9
fmul.h f5, f5, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x10, 0xe3b314b816eda313 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa7e91603f84e5f85 # load x3 with value 0xa7e91603f84e5f85
sw x3, 0(x2) # store 0xa7e91603f84e5f85 in memory
flh f6, 0(x2) # load 0xa7e91603f84e5f85 from memory into f6
li x3, 0xb980ae8b62519283 # load x3 with value 0xb980ae8b62519283
sw x3, 0(x2) # store 0xb980ae8b62519283 in memory
flh f15, 0(x2) # load 0xb980ae8b62519283 from memory into f15
fmul.h f10, f6, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x24, 0x03250bedb85cba55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7cb8e91f9a1aacb6 # load x3 with value 0x7cb8e91f9a1aacb6
sw x3, 0(x2) # store 0x7cb8e91f9a1aacb6 in memory
flh f7, 0(x2) # load 0x7cb8e91f9a1aacb6 from memory into f7
li x3, 0x94249d3cbecb6f # load x3 with value 0x94249d3cbecb6f
sw x3, 0(x2) # store 0x94249d3cbecb6f in memory
flh f29, 0(x2) # load 0x94249d3cbecb6f from memory into f29
fmul.h f24, f7, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x14, 0x5689db31f3e1d8dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfc46dabb2b6d8a27 # load x3 with value 0xfc46dabb2b6d8a27
sw x3, 0(x2) # store 0xfc46dabb2b6d8a27 in memory
flh f8, 0(x2) # load 0xfc46dabb2b6d8a27 from memory into f8
li x3, 0xb64e3acf85327f6a # load x3 with value 0xb64e3acf85327f6a
sw x3, 0(x2) # store 0xb64e3acf85327f6a in memory
flh f12, 0(x2) # load 0xb64e3acf85327f6a from memory into f12
fmul.h f14, f8, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x18, 0x163eb13807a84266 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa71490493a017f1e # load x3 with value 0xa71490493a017f1e
sw x3, 0(x2) # store 0xa71490493a017f1e in memory
flh f9, 0(x2) # load 0xa71490493a017f1e from memory into f9
li x3, 0x738af5a760ddab0f # load x3 with value 0x738af5a760ddab0f
sw x3, 0(x2) # store 0x738af5a760ddab0f in memory
flh f2, 0(x2) # load 0x738af5a760ddab0f from memory into f2
fmul.h f18, f9, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x29, 0x01298a780b91d263 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x43138067a9024e8c # load x3 with value 0x43138067a9024e8c
sw x3, 0(x2) # store 0x43138067a9024e8c in memory
flh f10, 0(x2) # load 0x43138067a9024e8c from memory into f10
li x3, 0xc43099745161b720 # load x3 with value 0xc43099745161b720
sw x3, 0(x2) # store 0xc43099745161b720 in memory
flh f25, 0(x2) # load 0xc43099745161b720 from memory into f25
fmul.h f29, f10, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x22, 0x5ae4815fdd649531 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x906c808ce71bf65f # load x3 with value 0x906c808ce71bf65f
sw x3, 0(x2) # store 0x906c808ce71bf65f in memory
flh f11, 0(x2) # load 0x906c808ce71bf65f from memory into f11
li x3, 0x5f41449ce66920f2 # load x3 with value 0x5f41449ce66920f2
sw x3, 0(x2) # store 0x5f41449ce66920f2 in memory
flh f10, 0(x2) # load 0x5f41449ce66920f2 from memory into f10
fmul.h f22, f11, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x6, 0xb2dc43ef85a7e16b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa5999182d16ab9cd # load x3 with value 0xa5999182d16ab9cd
sw x3, 0(x2) # store 0xa5999182d16ab9cd in memory
flh f12, 0(x2) # load 0xa5999182d16ab9cd from memory into f12
li x3, 0x7513e9f91c56e7ed # load x3 with value 0x7513e9f91c56e7ed
sw x3, 0(x2) # store 0x7513e9f91c56e7ed in memory
flh f27, 0(x2) # load 0x7513e9f91c56e7ed from memory into f27
fmul.h f6, f12, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x27, 0x7e9629d8ea5bcac8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0a32351d4a4bb4c # load x3 with value 0xb0a32351d4a4bb4c
sw x3, 0(x2) # store 0xb0a32351d4a4bb4c in memory
flh f13, 0(x2) # load 0xb0a32351d4a4bb4c from memory into f13
li x3, 0x5533657799628350 # load x3 with value 0x5533657799628350
sw x3, 0(x2) # store 0x5533657799628350 in memory
flh f25, 0(x2) # load 0x5533657799628350 from memory into f25
fmul.h f27, f13, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x28, 0xbcab5a665a7c74d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6051bbf5f99a46ee # load x3 with value 0x6051bbf5f99a46ee
sw x3, 0(x2) # store 0x6051bbf5f99a46ee in memory
flh f14, 0(x2) # load 0x6051bbf5f99a46ee from memory into f14
li x3, 0x5d73537446041186 # load x3 with value 0x5d73537446041186
sw x3, 0(x2) # store 0x5d73537446041186 in memory
flh f13, 0(x2) # load 0x5d73537446041186 from memory into f13
fmul.h f28, f14, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x14, 0xd140af6c635a53f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe31657011fd29cfa # load x3 with value 0xe31657011fd29cfa
sw x3, 0(x2) # store 0xe31657011fd29cfa in memory
flh f15, 0(x2) # load 0xe31657011fd29cfa from memory into f15
li x3, 0x179a23d0d05aa093 # load x3 with value 0x179a23d0d05aa093
sw x3, 0(x2) # store 0x179a23d0d05aa093 in memory
flh f25, 0(x2) # load 0x179a23d0d05aa093 from memory into f25
fmul.h f14, f15, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x27, 0x870cdd67d904cd07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a84212f4dcd21dc # load x3 with value 0x2a84212f4dcd21dc
sw x3, 0(x2) # store 0x2a84212f4dcd21dc in memory
flh f16, 0(x2) # load 0x2a84212f4dcd21dc from memory into f16
li x3, 0x1ff500c048f3944b # load x3 with value 0x1ff500c048f3944b
sw x3, 0(x2) # store 0x1ff500c048f3944b in memory
flh f14, 0(x2) # load 0x1ff500c048f3944b from memory into f14
fmul.h f27, f16, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x22, 0x083fc55c733f35b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x59857568e8ad26c2 # load x3 with value 0x59857568e8ad26c2
sw x3, 0(x2) # store 0x59857568e8ad26c2 in memory
flh f17, 0(x2) # load 0x59857568e8ad26c2 from memory into f17
li x3, 0x682656b403b7444c # load x3 with value 0x682656b403b7444c
sw x3, 0(x2) # store 0x682656b403b7444c in memory
flh f1, 0(x2) # load 0x682656b403b7444c from memory into f1
fmul.h f22, f17, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x31, 0x80004a1decfc47df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x46dc3e599413ec06 # load x3 with value 0x46dc3e599413ec06
sw x3, 0(x2) # store 0x46dc3e599413ec06 in memory
flh f18, 0(x2) # load 0x46dc3e599413ec06 from memory into f18
li x3, 0x629020cfa0d280ff # load x3 with value 0x629020cfa0d280ff
sw x3, 0(x2) # store 0x629020cfa0d280ff in memory
flh f7, 0(x2) # load 0x629020cfa0d280ff from memory into f7
fmul.h f31, f18, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x25, 0x542e482189ec0109 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1cf23930b0b9b9c5 # load x3 with value 0x1cf23930b0b9b9c5
sw x3, 0(x2) # store 0x1cf23930b0b9b9c5 in memory
flh f19, 0(x2) # load 0x1cf23930b0b9b9c5 from memory into f19
li x3, 0xb95accaed0058b63 # load x3 with value 0xb95accaed0058b63
sw x3, 0(x2) # store 0xb95accaed0058b63 in memory
flh f13, 0(x2) # load 0xb95accaed0058b63 from memory into f13
fmul.h f25, f19, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x4, 0xa10eb797e112e359 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1efc11f3b0d70f02 # load x3 with value 0x1efc11f3b0d70f02
sw x3, 0(x2) # store 0x1efc11f3b0d70f02 in memory
flh f20, 0(x2) # load 0x1efc11f3b0d70f02 from memory into f20
li x3, 0xf76e0ecd77f0177b # load x3 with value 0xf76e0ecd77f0177b
sw x3, 0(x2) # store 0xf76e0ecd77f0177b in memory
flh f12, 0(x2) # load 0xf76e0ecd77f0177b from memory into f12
fmul.h f4, f20, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x3, 0xcd2941a514432a27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x15e6b24d971c63d1 # load x3 with value 0x15e6b24d971c63d1
sw x3, 0(x2) # store 0x15e6b24d971c63d1 in memory
flh f21, 0(x2) # load 0x15e6b24d971c63d1 from memory into f21
li x3, 0xc3a45fa60ad17ff2 # load x3 with value 0xc3a45fa60ad17ff2
sw x3, 0(x2) # store 0xc3a45fa60ad17ff2 in memory
flh f7, 0(x2) # load 0xc3a45fa60ad17ff2 from memory into f7
fmul.h f3, f21, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x14, 0x46598341719f9666 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x410b85ea2d09845e # load x3 with value 0x410b85ea2d09845e
sw x3, 0(x2) # store 0x410b85ea2d09845e in memory
flh f22, 0(x2) # load 0x410b85ea2d09845e from memory into f22
li x3, 0xfd64d3d23f81ba4c # load x3 with value 0xfd64d3d23f81ba4c
sw x3, 0(x2) # store 0xfd64d3d23f81ba4c in memory
flh f2, 0(x2) # load 0xfd64d3d23f81ba4c from memory into f2
fmul.h f14, f22, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x18, 0x81319afa99d701fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd685bd0fc5145e66 # load x3 with value 0xd685bd0fc5145e66
sw x3, 0(x2) # store 0xd685bd0fc5145e66 in memory
flh f23, 0(x2) # load 0xd685bd0fc5145e66 from memory into f23
li x3, 0x8b2b2d8a08427d82 # load x3 with value 0x8b2b2d8a08427d82
sw x3, 0(x2) # store 0x8b2b2d8a08427d82 in memory
flh f4, 0(x2) # load 0x8b2b2d8a08427d82 from memory into f4
fmul.h f18, f23, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x29, 0xc91711c9a5048e7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x911815608440b79d # load x3 with value 0x911815608440b79d
sw x3, 0(x2) # store 0x911815608440b79d in memory
flh f24, 0(x2) # load 0x911815608440b79d from memory into f24
li x3, 0x8986e49457cb229 # load x3 with value 0x8986e49457cb229
sw x3, 0(x2) # store 0x8986e49457cb229 in memory
flh f30, 0(x2) # load 0x8986e49457cb229 from memory into f30
fmul.h f29, f24, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x11, 0x7cdd37e4154d60b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe079fcdc1239e89d # load x3 with value 0xe079fcdc1239e89d
sw x3, 0(x2) # store 0xe079fcdc1239e89d in memory
flh f25, 0(x2) # load 0xe079fcdc1239e89d from memory into f25
li x3, 0x4cda6718bec17c44 # load x3 with value 0x4cda6718bec17c44
sw x3, 0(x2) # store 0x4cda6718bec17c44 in memory
flh f4, 0(x2) # load 0x4cda6718bec17c44 from memory into f4
fmul.h f11, f25, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x7, 0x951548fed8d9aec1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xec8ad3b2d19698c7 # load x3 with value 0xec8ad3b2d19698c7
sw x3, 0(x2) # store 0xec8ad3b2d19698c7 in memory
flh f26, 0(x2) # load 0xec8ad3b2d19698c7 from memory into f26
li x3, 0x11903423507dbf8c # load x3 with value 0x11903423507dbf8c
sw x3, 0(x2) # store 0x11903423507dbf8c in memory
flh f28, 0(x2) # load 0x11903423507dbf8c from memory into f28
fmul.h f7, f26, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x5, 0x73a32b7059cfdd0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa4291abef5fbea4 # load x3 with value 0xaa4291abef5fbea4
sw x3, 0(x2) # store 0xaa4291abef5fbea4 in memory
flh f27, 0(x2) # load 0xaa4291abef5fbea4 from memory into f27
li x3, 0xe66222abef22b7ff # load x3 with value 0xe66222abef22b7ff
sw x3, 0(x2) # store 0xe66222abef22b7ff in memory
flh f16, 0(x2) # load 0xe66222abef22b7ff from memory into f16
fmul.h f5, f27, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x15, 0x92b73046303cc606 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb011301e2b92a68e # load x3 with value 0xb011301e2b92a68e
sw x3, 0(x2) # store 0xb011301e2b92a68e in memory
flh f28, 0(x2) # load 0xb011301e2b92a68e from memory into f28
li x3, 0xc30e8bcea998c4b8 # load x3 with value 0xc30e8bcea998c4b8
sw x3, 0(x2) # store 0xc30e8bcea998c4b8 in memory
flh f7, 0(x2) # load 0xc30e8bcea998c4b8 from memory into f7
fmul.h f15, f28, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x2, 0x3ef0ce10aa152624 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c33e1952d405d8b # load x3 with value 0x2c33e1952d405d8b
sw x3, 0(x2) # store 0x2c33e1952d405d8b in memory
flh f29, 0(x2) # load 0x2c33e1952d405d8b from memory into f29
li x3, 0x2cd6b10eaf647c8d # load x3 with value 0x2cd6b10eaf647c8d
sw x3, 0(x2) # store 0x2cd6b10eaf647c8d in memory
flh f16, 0(x2) # load 0x2cd6b10eaf647c8d from memory into f16
fmul.h f2, f29, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x12, 0x0b5cbe14c00bb00e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf314e85f997f5864 # load x3 with value 0xf314e85f997f5864
sw x3, 0(x2) # store 0xf314e85f997f5864 in memory
flh f30, 0(x2) # load 0xf314e85f997f5864 from memory into f30
li x3, 0xbbb847d2e520bb3e # load x3 with value 0xbbb847d2e520bb3e
sw x3, 0(x2) # store 0xbbb847d2e520bb3e in memory
flh f26, 0(x2) # load 0xbbb847d2e520bb3e from memory into f26
fmul.h f12, f30, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x17, 0xd15af5886ff8b983 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x496f7af885d3e987 # load x3 with value 0x496f7af885d3e987
sw x3, 0(x2) # store 0x496f7af885d3e987 in memory
flh f31, 0(x2) # load 0x496f7af885d3e987 from memory into f31
li x3, 0x68a76dea115effce # load x3 with value 0x68a76dea115effce
sw x3, 0(x2) # store 0x68a76dea115effce in memory
flh f24, 0(x2) # load 0x68a76dea115effce from memory into f24
fmul.h f17, f31, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x9, 0x01a5884aa4ec4f6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x16cdaea14f13a91e # load x3 with value 0x16cdaea14f13a91e
sw x3, 0(x2) # store 0x16cdaea14f13a91e in memory
flh f14, 0(x2) # load 0x16cdaea14f13a91e from memory into f14
li x3, 0xac56606f8cdcb73c # load x3 with value 0xac56606f8cdcb73c
sw x3, 0(x2) # store 0xac56606f8cdcb73c in memory
flh f0, 0(x2) # load 0xac56606f8cdcb73c from memory into f0
fmul.h f9, f14, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x31, 0xbfcf4bd60083196d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5c1923a105c93f1 # load x3 with value 0xe5c1923a105c93f1
sw x3, 0(x2) # store 0xe5c1923a105c93f1 in memory
flh f19, 0(x2) # load 0xe5c1923a105c93f1 from memory into f19
li x3, 0xc99fa91e6b74448b # load x3 with value 0xc99fa91e6b74448b
sw x3, 0(x2) # store 0xc99fa91e6b74448b in memory
flh f1, 0(x2) # load 0xc99fa91e6b74448b from memory into f1
fmul.h f31, f19, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x1, 0x9f1cc65b6e33fbcd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa1d4cd3e57f71698 # load x3 with value 0xa1d4cd3e57f71698
sw x3, 0(x2) # store 0xa1d4cd3e57f71698 in memory
flh f5, 0(x2) # load 0xa1d4cd3e57f71698 from memory into f5
li x3, 0x1e70f23ad851d554 # load x3 with value 0x1e70f23ad851d554
sw x3, 0(x2) # store 0x1e70f23ad851d554 in memory
flh f2, 0(x2) # load 0x1e70f23ad851d554 from memory into f2
fmul.h f1, f5, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x28, 0x1171e9e6a00c881f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde9cc0e9d09841ba # load x3 with value 0xde9cc0e9d09841ba
sw x3, 0(x2) # store 0xde9cc0e9d09841ba in memory
flh f11, 0(x2) # load 0xde9cc0e9d09841ba from memory into f11
li x3, 0x631764879d6d7dcb # load x3 with value 0x631764879d6d7dcb
sw x3, 0(x2) # store 0x631764879d6d7dcb in memory
flh f3, 0(x2) # load 0x631764879d6d7dcb from memory into f3
fmul.h f28, f11, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x20, 0xc181eedd79ea4567 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x718ddeaa8010548 # load x3 with value 0x718ddeaa8010548
sw x3, 0(x2) # store 0x718ddeaa8010548 in memory
flh f26, 0(x2) # load 0x718ddeaa8010548 from memory into f26
li x3, 0xfd1f39e023eccb20 # load x3 with value 0xfd1f39e023eccb20
sw x3, 0(x2) # store 0xfd1f39e023eccb20 in memory
flh f4, 0(x2) # load 0xfd1f39e023eccb20 from memory into f4
fmul.h f20, f26, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x7, 0x50f8d438395b8657 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd48741c9ab4b4fe1 # load x3 with value 0xd48741c9ab4b4fe1
sw x3, 0(x2) # store 0xd48741c9ab4b4fe1 in memory
flh f1, 0(x2) # load 0xd48741c9ab4b4fe1 from memory into f1
li x3, 0x68d6ba591145a791 # load x3 with value 0x68d6ba591145a791
sw x3, 0(x2) # store 0x68d6ba591145a791 in memory
flh f5, 0(x2) # load 0x68d6ba591145a791 from memory into f5
fmul.h f7, f1, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x8, 0x57d990ce53f8babb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x85f670a3a0b2d01d # load x3 with value 0x85f670a3a0b2d01d
sw x3, 0(x2) # store 0x85f670a3a0b2d01d in memory
flh f23, 0(x2) # load 0x85f670a3a0b2d01d from memory into f23
li x3, 0xdd3d7c0a89615d24 # load x3 with value 0xdd3d7c0a89615d24
sw x3, 0(x2) # store 0xdd3d7c0a89615d24 in memory
flh f6, 0(x2) # load 0xdd3d7c0a89615d24 from memory into f6
fmul.h f8, f23, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x12, 0x79b7eb90528101bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b24d85e5a6c3416 # load x3 with value 0x5b24d85e5a6c3416
sw x3, 0(x2) # store 0x5b24d85e5a6c3416 in memory
flh f4, 0(x2) # load 0x5b24d85e5a6c3416 from memory into f4
li x3, 0x9411229ecf382a7d # load x3 with value 0x9411229ecf382a7d
sw x3, 0(x2) # store 0x9411229ecf382a7d in memory
flh f7, 0(x2) # load 0x9411229ecf382a7d from memory into f7
fmul.h f12, f4, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x12, 0x1332602cf53d7edb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcf997629488e0021 # load x3 with value 0xcf997629488e0021
sw x3, 0(x2) # store 0xcf997629488e0021 in memory
flh f24, 0(x2) # load 0xcf997629488e0021 from memory into f24
li x3, 0xac3d16e11d329abc # load x3 with value 0xac3d16e11d329abc
sw x3, 0(x2) # store 0xac3d16e11d329abc in memory
flh f8, 0(x2) # load 0xac3d16e11d329abc from memory into f8
fmul.h f12, f24, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x23, 0xff48993917826a76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2b40f426da55ff3d # load x3 with value 0x2b40f426da55ff3d
sw x3, 0(x2) # store 0x2b40f426da55ff3d in memory
flh f29, 0(x2) # load 0x2b40f426da55ff3d from memory into f29
li x3, 0xf06b5488f42216a3 # load x3 with value 0xf06b5488f42216a3
sw x3, 0(x2) # store 0xf06b5488f42216a3 in memory
flh f9, 0(x2) # load 0xf06b5488f42216a3 from memory into f9
fmul.h f23, f29, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x7, 0x9eb8f53963fddf13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23549b4b31f319bd # load x3 with value 0x23549b4b31f319bd
sw x3, 0(x2) # store 0x23549b4b31f319bd in memory
flh f22, 0(x2) # load 0x23549b4b31f319bd from memory into f22
li x3, 0x55e887afcfa2f8d9 # load x3 with value 0x55e887afcfa2f8d9
sw x3, 0(x2) # store 0x55e887afcfa2f8d9 in memory
flh f10, 0(x2) # load 0x55e887afcfa2f8d9 from memory into f10
fmul.h f7, f22, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x11, 0x43c87d63c68a7954 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x158e8a61a592c920 # load x3 with value 0x158e8a61a592c920
sw x3, 0(x2) # store 0x158e8a61a592c920 in memory
flh f24, 0(x2) # load 0x158e8a61a592c920 from memory into f24
li x3, 0x1b3e11f055923b0d # load x3 with value 0x1b3e11f055923b0d
sw x3, 0(x2) # store 0x1b3e11f055923b0d in memory
flh f11, 0(x2) # load 0x1b3e11f055923b0d from memory into f11
fmul.h f11, f24, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x14, 0xbc54ef453cb5b579 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd1e0e63e0383f0ba # load x3 with value 0xd1e0e63e0383f0ba
sw x3, 0(x2) # store 0xd1e0e63e0383f0ba in memory
flh f6, 0(x2) # load 0xd1e0e63e0383f0ba from memory into f6
li x3, 0x240746645b8daa2e # load x3 with value 0x240746645b8daa2e
sw x3, 0(x2) # store 0x240746645b8daa2e in memory
flh f12, 0(x2) # load 0x240746645b8daa2e from memory into f12
fmul.h f14, f6, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x17, 0xa179893622b7859f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe22d2c56d1a3610a # load x3 with value 0xe22d2c56d1a3610a
sw x3, 0(x2) # store 0xe22d2c56d1a3610a in memory
flh f28, 0(x2) # load 0xe22d2c56d1a3610a from memory into f28
li x3, 0xb2f7682d2c9a49b # load x3 with value 0xb2f7682d2c9a49b
sw x3, 0(x2) # store 0xb2f7682d2c9a49b in memory
flh f13, 0(x2) # load 0xb2f7682d2c9a49b from memory into f13
fmul.h f17, f28, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x17, 0x23592f907ebb3049 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd03939b21af36e8 # load x3 with value 0xfd03939b21af36e8
sw x3, 0(x2) # store 0xfd03939b21af36e8 in memory
flh f11, 0(x2) # load 0xfd03939b21af36e8 from memory into f11
li x3, 0xbed5f693d37f7a56 # load x3 with value 0xbed5f693d37f7a56
sw x3, 0(x2) # store 0xbed5f693d37f7a56 in memory
flh f14, 0(x2) # load 0xbed5f693d37f7a56 from memory into f14
fmul.h f17, f11, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x30, 0x4f5ef3f4db473a8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd56916d336cbd794 # load x3 with value 0xd56916d336cbd794
sw x3, 0(x2) # store 0xd56916d336cbd794 in memory
flh f8, 0(x2) # load 0xd56916d336cbd794 from memory into f8
li x3, 0x852c2d288161edf8 # load x3 with value 0x852c2d288161edf8
sw x3, 0(x2) # store 0x852c2d288161edf8 in memory
flh f15, 0(x2) # load 0x852c2d288161edf8 from memory into f15
fmul.h f30, f8, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x12, 0x09097cd95ae9ac9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a26c60ba8bdee3 # load x3 with value 0x3a26c60ba8bdee3
sw x3, 0(x2) # store 0x3a26c60ba8bdee3 in memory
flh f15, 0(x2) # load 0x3a26c60ba8bdee3 from memory into f15
li x3, 0xf6c9c9226fed176c # load x3 with value 0xf6c9c9226fed176c
sw x3, 0(x2) # store 0xf6c9c9226fed176c in memory
flh f16, 0(x2) # load 0xf6c9c9226fed176c from memory into f16
fmul.h f12, f15, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x9, 0xb8731e1618f35182 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0a447547f35c46f # load x3 with value 0xc0a447547f35c46f
sw x3, 0(x2) # store 0xc0a447547f35c46f in memory
flh f30, 0(x2) # load 0xc0a447547f35c46f from memory into f30
li x3, 0x99b1171a6ff7d51e # load x3 with value 0x99b1171a6ff7d51e
sw x3, 0(x2) # store 0x99b1171a6ff7d51e in memory
flh f17, 0(x2) # load 0x99b1171a6ff7d51e from memory into f17
fmul.h f9, f30, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x16, 0x2a75cf2f4977e020 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1aed7ba5859b8627 # load x3 with value 0x1aed7ba5859b8627
sw x3, 0(x2) # store 0x1aed7ba5859b8627 in memory
flh f10, 0(x2) # load 0x1aed7ba5859b8627 from memory into f10
li x3, 0x6e47802f0c77e10d # load x3 with value 0x6e47802f0c77e10d
sw x3, 0(x2) # store 0x6e47802f0c77e10d in memory
flh f18, 0(x2) # load 0x6e47802f0c77e10d from memory into f18
fmul.h f16, f10, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x29, 0xeccf257a507a34aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ab6cdd5eef58c3e # load x3 with value 0x5ab6cdd5eef58c3e
sw x3, 0(x2) # store 0x5ab6cdd5eef58c3e in memory
flh f16, 0(x2) # load 0x5ab6cdd5eef58c3e from memory into f16
li x3, 0x956f46354cda947b # load x3 with value 0x956f46354cda947b
sw x3, 0(x2) # store 0x956f46354cda947b in memory
flh f19, 0(x2) # load 0x956f46354cda947b from memory into f19
fmul.h f29, f16, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x14, 0x9d4e95543ed8ac43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc06d27ec5f16e868 # load x3 with value 0xc06d27ec5f16e868
sw x3, 0(x2) # store 0xc06d27ec5f16e868 in memory
flh f24, 0(x2) # load 0xc06d27ec5f16e868 from memory into f24
li x3, 0xfc3aef7915c27666 # load x3 with value 0xfc3aef7915c27666
sw x3, 0(x2) # store 0xfc3aef7915c27666 in memory
flh f20, 0(x2) # load 0xfc3aef7915c27666 from memory into f20
fmul.h f14, f24, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x5, 0xddedac4547d98245 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6750722202e69dd # load x3 with value 0xd6750722202e69dd
sw x3, 0(x2) # store 0xd6750722202e69dd in memory
flh f20, 0(x2) # load 0xd6750722202e69dd from memory into f20
li x3, 0xd7d164c971af9de3 # load x3 with value 0xd7d164c971af9de3
sw x3, 0(x2) # store 0xd7d164c971af9de3 in memory
flh f21, 0(x2) # load 0xd7d164c971af9de3 from memory into f21
fmul.h f5, f20, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x6, 0x8fedf8b9e5083924 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa18f862c82269104 # load x3 with value 0xa18f862c82269104
sw x3, 0(x2) # store 0xa18f862c82269104 in memory
flh f10, 0(x2) # load 0xa18f862c82269104 from memory into f10
li x3, 0x8e869a1f9f6d0ee6 # load x3 with value 0x8e869a1f9f6d0ee6
sw x3, 0(x2) # store 0x8e869a1f9f6d0ee6 in memory
flh f22, 0(x2) # load 0x8e869a1f9f6d0ee6 from memory into f22
fmul.h f6, f10, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x12, 0xed8eabe359bc0aff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6eaee545f45a5f2b # load x3 with value 0x6eaee545f45a5f2b
sw x3, 0(x2) # store 0x6eaee545f45a5f2b in memory
flh f20, 0(x2) # load 0x6eaee545f45a5f2b from memory into f20
li x3, 0xe580243804c72065 # load x3 with value 0xe580243804c72065
sw x3, 0(x2) # store 0xe580243804c72065 in memory
flh f23, 0(x2) # load 0xe580243804c72065 from memory into f23
fmul.h f12, f20, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x25, 0x8c6ce5e2fa933636 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x67d11ffe36cd2eae # load x3 with value 0x67d11ffe36cd2eae
sw x3, 0(x2) # store 0x67d11ffe36cd2eae in memory
flh f30, 0(x2) # load 0x67d11ffe36cd2eae from memory into f30
li x3, 0x59a3f07d1c4eccd2 # load x3 with value 0x59a3f07d1c4eccd2
sw x3, 0(x2) # store 0x59a3f07d1c4eccd2 in memory
flh f24, 0(x2) # load 0x59a3f07d1c4eccd2 from memory into f24
fmul.h f25, f30, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x25, 0x53f772262af72034 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc8f350dfb0f4f3c0 # load x3 with value 0xc8f350dfb0f4f3c0
sw x3, 0(x2) # store 0xc8f350dfb0f4f3c0 in memory
flh f15, 0(x2) # load 0xc8f350dfb0f4f3c0 from memory into f15
li x3, 0x5c74b14f28c7addd # load x3 with value 0x5c74b14f28c7addd
sw x3, 0(x2) # store 0x5c74b14f28c7addd in memory
flh f25, 0(x2) # load 0x5c74b14f28c7addd from memory into f25
fmul.h f25, f15, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x21, 0x7f76e1ee4c69644a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x620218928deb44ea # load x3 with value 0x620218928deb44ea
sw x3, 0(x2) # store 0x620218928deb44ea in memory
flh f29, 0(x2) # load 0x620218928deb44ea from memory into f29
li x3, 0x75b315308de547b9 # load x3 with value 0x75b315308de547b9
sw x3, 0(x2) # store 0x75b315308de547b9 in memory
flh f26, 0(x2) # load 0x75b315308de547b9 from memory into f26
fmul.h f21, f29, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x11, 0x7d2c84011a5cc05e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8b14dc18bd7cc6cb # load x3 with value 0x8b14dc18bd7cc6cb
sw x3, 0(x2) # store 0x8b14dc18bd7cc6cb in memory
flh f13, 0(x2) # load 0x8b14dc18bd7cc6cb from memory into f13
li x3, 0xad03b21868350b91 # load x3 with value 0xad03b21868350b91
sw x3, 0(x2) # store 0xad03b21868350b91 in memory
flh f27, 0(x2) # load 0xad03b21868350b91 from memory into f27
fmul.h f11, f13, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x18, 0xb74a2d1f7c33251d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x218abd1b543e038b # load x3 with value 0x218abd1b543e038b
sw x3, 0(x2) # store 0x218abd1b543e038b in memory
flh f1, 0(x2) # load 0x218abd1b543e038b from memory into f1
li x3, 0x42d3ae2e8b32d0f # load x3 with value 0x42d3ae2e8b32d0f
sw x3, 0(x2) # store 0x42d3ae2e8b32d0f in memory
flh f28, 0(x2) # load 0x42d3ae2e8b32d0f from memory into f28
fmul.h f18, f1, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x9, 0x3cf5ac6d16878265 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff4da5eda90d4e79 # load x3 with value 0xff4da5eda90d4e79
sw x3, 0(x2) # store 0xff4da5eda90d4e79 in memory
flh f22, 0(x2) # load 0xff4da5eda90d4e79 from memory into f22
li x3, 0x928270dc1120a415 # load x3 with value 0x928270dc1120a415
sw x3, 0(x2) # store 0x928270dc1120a415 in memory
flh f29, 0(x2) # load 0x928270dc1120a415 from memory into f29
fmul.h f9, f22, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x14, 0x6af2dd1b6fc927bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9c88d5088df7bfb3 # load x3 with value 0x9c88d5088df7bfb3
sw x3, 0(x2) # store 0x9c88d5088df7bfb3 in memory
flh f20, 0(x2) # load 0x9c88d5088df7bfb3 from memory into f20
li x3, 0xdae5e88b9efcbf44 # load x3 with value 0xdae5e88b9efcbf44
sw x3, 0(x2) # store 0xdae5e88b9efcbf44 in memory
flh f30, 0(x2) # load 0xdae5e88b9efcbf44 from memory into f30
fmul.h f14, f20, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x4, 0xf891593bde5b593c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9650ff08cc7aada # load x3 with value 0xf9650ff08cc7aada
sw x3, 0(x2) # store 0xf9650ff08cc7aada in memory
flh f19, 0(x2) # load 0xf9650ff08cc7aada from memory into f19
li x3, 0xa5d9e35f8442e9ae # load x3 with value 0xa5d9e35f8442e9ae
sw x3, 0(x2) # store 0xa5d9e35f8442e9ae in memory
flh f31, 0(x2) # load 0xa5d9e35f8442e9ae from memory into f31
fmul.h f4, f19, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
