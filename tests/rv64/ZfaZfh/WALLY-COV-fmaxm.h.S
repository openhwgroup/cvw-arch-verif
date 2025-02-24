///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/ZfaZfh//WALLY-COV-fmaxm.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:24.079820
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
fmaxm.h f26, f11, f7 # perform first operation
fmaxm.h f23, f26, f31 # perform second operation

# Testcase cmp_gpr_hazard raw test
fmaxm.h f31, f23, f1 # perform first operation
fmaxm.h f8, f10, f31 # perform second operation

# Testcase cmp_gpr_hazard waw test
fmaxm.h f22, f11, f26 # perform first operation
fmaxm.h f22, f25, f30 # perform second operation

# Testcase cmp_gpr_hazard waw test
fmaxm.h f24, f30, f15 # perform first operation
fmaxm.h f24, f16, f31 # perform second operation

# Testcase cmp_gpr_hazard war test
fmaxm.h f23, f20, f17 # perform first operation
fmaxm.h f20, f7, f13 # perform second operation

# Testcase cmp_gpr_hazard war test
fmaxm.h f20, f13, f21 # perform first operation
fmaxm.h f21, f17, f24 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x8dac4e81c6b5ebef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x804c1ffb600bfade # load x3 with value 0x804c1ffb600bfade
sw x3, 0(x2) # store 0x804c1ffb600bfade in memory
flh f0, 0(x2) # load 0x804c1ffb600bfade from memory into f0
li x3, 0x1f040ca697e96c30 # load x3 with value 0x1f040ca697e96c30
sw x3, 0(x2) # store 0x1f040ca697e96c30 in memory
flh f12, 0(x2) # load 0x1f040ca697e96c30 from memory into f12
fmaxm.h f0, f0, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x471d4167d3622ccc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe406699aa56ae782 # load x3 with value 0xe406699aa56ae782
sw x3, 0(x2) # store 0xe406699aa56ae782 in memory
flh f1, 0(x2) # load 0xe406699aa56ae782 from memory into f1
li x3, 0xa3578413dc650220 # load x3 with value 0xa3578413dc650220
sw x3, 0(x2) # store 0xa3578413dc650220 in memory
flh f10, 0(x2) # load 0xa3578413dc650220 from memory into f10
fmaxm.h f1, f1, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x196e3a84e4943bc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x59dcd30751d9e0f2 # load x3 with value 0x59dcd30751d9e0f2
sw x3, 0(x2) # store 0x59dcd30751d9e0f2 in memory
flh f2, 0(x2) # load 0x59dcd30751d9e0f2 from memory into f2
li x3, 0xd7dc1986ac4d998a # load x3 with value 0xd7dc1986ac4d998a
sw x3, 0(x2) # store 0xd7dc1986ac4d998a in memory
flh f19, 0(x2) # load 0xd7dc1986ac4d998a from memory into f19
fmaxm.h f2, f2, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0xf6bf75ca3d70196a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x481123598ccbeaf4 # load x3 with value 0x481123598ccbeaf4
sw x3, 0(x2) # store 0x481123598ccbeaf4 in memory
flh f3, 0(x2) # load 0x481123598ccbeaf4 from memory into f3
li x3, 0x40cb563ff05c280 # load x3 with value 0x40cb563ff05c280
sw x3, 0(x2) # store 0x40cb563ff05c280 in memory
flh f13, 0(x2) # load 0x40cb563ff05c280 from memory into f13
fmaxm.h f3, f3, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0xb4c4ad1d3b66d590 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5092d2cd3d63ea81 # load x3 with value 0x5092d2cd3d63ea81
sw x3, 0(x2) # store 0x5092d2cd3d63ea81 in memory
flh f4, 0(x2) # load 0x5092d2cd3d63ea81 from memory into f4
li x3, 0x222177b9e430d2d7 # load x3 with value 0x222177b9e430d2d7
sw x3, 0(x2) # store 0x222177b9e430d2d7 in memory
flh f8, 0(x2) # load 0x222177b9e430d2d7 from memory into f8
fmaxm.h f4, f4, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x413b3882f0887b4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a3910cc968113a8 # load x3 with value 0x8a3910cc968113a8
sw x3, 0(x2) # store 0x8a3910cc968113a8 in memory
flh f5, 0(x2) # load 0x8a3910cc968113a8 from memory into f5
li x3, 0xde476f6e1763dd45 # load x3 with value 0xde476f6e1763dd45
sw x3, 0(x2) # store 0xde476f6e1763dd45 in memory
flh f9, 0(x2) # load 0xde476f6e1763dd45 from memory into f9
fmaxm.h f5, f5, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x2708eddf98ec92c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x55c96ef75877e546 # load x3 with value 0x55c96ef75877e546
sw x3, 0(x2) # store 0x55c96ef75877e546 in memory
flh f6, 0(x2) # load 0x55c96ef75877e546 from memory into f6
li x3, 0x4c81ef62b5ca0097 # load x3 with value 0x4c81ef62b5ca0097
sw x3, 0(x2) # store 0x4c81ef62b5ca0097 in memory
flh f20, 0(x2) # load 0x4c81ef62b5ca0097 from memory into f20
fmaxm.h f6, f6, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x99e4f2a631accf06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d751209cccbcc41 # load x3 with value 0x3d751209cccbcc41
sw x3, 0(x2) # store 0x3d751209cccbcc41 in memory
flh f7, 0(x2) # load 0x3d751209cccbcc41 from memory into f7
li x3, 0x169724acd5cbed79 # load x3 with value 0x169724acd5cbed79
sw x3, 0(x2) # store 0x169724acd5cbed79 in memory
flh f20, 0(x2) # load 0x169724acd5cbed79 from memory into f20
fmaxm.h f7, f7, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x090d26c3d78090d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda2bf56147fbd8f8 # load x3 with value 0xda2bf56147fbd8f8
sw x3, 0(x2) # store 0xda2bf56147fbd8f8 in memory
flh f8, 0(x2) # load 0xda2bf56147fbd8f8 from memory into f8
li x3, 0x74dc32c8b9fd8cec # load x3 with value 0x74dc32c8b9fd8cec
sw x3, 0(x2) # store 0x74dc32c8b9fd8cec in memory
flh f30, 0(x2) # load 0x74dc32c8b9fd8cec from memory into f30
fmaxm.h f8, f8, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0x0846c81a9715913f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x548469cfc19ba7f # load x3 with value 0x548469cfc19ba7f
sw x3, 0(x2) # store 0x548469cfc19ba7f in memory
flh f9, 0(x2) # load 0x548469cfc19ba7f from memory into f9
li x3, 0x23938f8737cc4fba # load x3 with value 0x23938f8737cc4fba
sw x3, 0(x2) # store 0x23938f8737cc4fba in memory
flh f14, 0(x2) # load 0x23938f8737cc4fba from memory into f14
fmaxm.h f9, f9, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x181de4506b0617f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x823bc5e8954802c8 # load x3 with value 0x823bc5e8954802c8
sw x3, 0(x2) # store 0x823bc5e8954802c8 in memory
flh f10, 0(x2) # load 0x823bc5e8954802c8 from memory into f10
li x3, 0x64b3187f52deeacb # load x3 with value 0x64b3187f52deeacb
sw x3, 0(x2) # store 0x64b3187f52deeacb in memory
flh f22, 0(x2) # load 0x64b3187f52deeacb from memory into f22
fmaxm.h f10, f10, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x0f75835fe1887aa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47cc23747f40269 # load x3 with value 0x47cc23747f40269
sw x3, 0(x2) # store 0x47cc23747f40269 in memory
flh f11, 0(x2) # load 0x47cc23747f40269 from memory into f11
li x3, 0x4f62e4a0bc8852d # load x3 with value 0x4f62e4a0bc8852d
sw x3, 0(x2) # store 0x4f62e4a0bc8852d in memory
flh f12, 0(x2) # load 0x4f62e4a0bc8852d from memory into f12
fmaxm.h f11, f11, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x6c2cf223288229ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed28efc7b3b4a5f7 # load x3 with value 0xed28efc7b3b4a5f7
sw x3, 0(x2) # store 0xed28efc7b3b4a5f7 in memory
flh f12, 0(x2) # load 0xed28efc7b3b4a5f7 from memory into f12
li x3, 0xf9d46b640f60a4b8 # load x3 with value 0xf9d46b640f60a4b8
sw x3, 0(x2) # store 0xf9d46b640f60a4b8 in memory
flh f27, 0(x2) # load 0xf9d46b640f60a4b8 from memory into f27
fmaxm.h f12, f12, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0x302880af87c0be13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x20cf2cbf48ff8688 # load x3 with value 0x20cf2cbf48ff8688
sw x3, 0(x2) # store 0x20cf2cbf48ff8688 in memory
flh f13, 0(x2) # load 0x20cf2cbf48ff8688 from memory into f13
li x3, 0x8dfe7e752ab61faa # load x3 with value 0x8dfe7e752ab61faa
sw x3, 0(x2) # store 0x8dfe7e752ab61faa in memory
flh f3, 0(x2) # load 0x8dfe7e752ab61faa from memory into f3
fmaxm.h f13, f13, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0x4b8d73e2b85e4b13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc536b853c8ec19bb # load x3 with value 0xc536b853c8ec19bb
sw x3, 0(x2) # store 0xc536b853c8ec19bb in memory
flh f14, 0(x2) # load 0xc536b853c8ec19bb from memory into f14
li x3, 0xfddc80b520aa461a # load x3 with value 0xfddc80b520aa461a
sw x3, 0(x2) # store 0xfddc80b520aa461a in memory
flh f31, 0(x2) # load 0xfddc80b520aa461a from memory into f31
fmaxm.h f14, f14, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0xbcd7c3cd531c8ebc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f8f8afeef15aac9 # load x3 with value 0x3f8f8afeef15aac9
sw x3, 0(x2) # store 0x3f8f8afeef15aac9 in memory
flh f15, 0(x2) # load 0x3f8f8afeef15aac9 from memory into f15
li x3, 0xe19a3ccc5bf5280f # load x3 with value 0xe19a3ccc5bf5280f
sw x3, 0(x2) # store 0xe19a3ccc5bf5280f in memory
flh f24, 0(x2) # load 0xe19a3ccc5bf5280f from memory into f24
fmaxm.h f15, f15, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0xe75e950cbb131780 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x740d59cd4b666e73 # load x3 with value 0x740d59cd4b666e73
sw x3, 0(x2) # store 0x740d59cd4b666e73 in memory
flh f16, 0(x2) # load 0x740d59cd4b666e73 from memory into f16
li x3, 0x1a7990fba75a8205 # load x3 with value 0x1a7990fba75a8205
sw x3, 0(x2) # store 0x1a7990fba75a8205 in memory
flh f28, 0(x2) # load 0x1a7990fba75a8205 from memory into f28
fmaxm.h f16, f16, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0xc0323d3309be5088 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda7a8d5eb57715da # load x3 with value 0xda7a8d5eb57715da
sw x3, 0(x2) # store 0xda7a8d5eb57715da in memory
flh f17, 0(x2) # load 0xda7a8d5eb57715da from memory into f17
li x3, 0x82061145a2016d2d # load x3 with value 0x82061145a2016d2d
sw x3, 0(x2) # store 0x82061145a2016d2d in memory
flh f16, 0(x2) # load 0x82061145a2016d2d from memory into f16
fmaxm.h f17, f17, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0xbb664b4de0a90fb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf12571e635f9ec # load x3 with value 0xaf12571e635f9ec
sw x3, 0(x2) # store 0xaf12571e635f9ec in memory
flh f18, 0(x2) # load 0xaf12571e635f9ec from memory into f18
li x3, 0xce347dca2d529c # load x3 with value 0xce347dca2d529c
sw x3, 0(x2) # store 0xce347dca2d529c in memory
flh f23, 0(x2) # load 0xce347dca2d529c from memory into f23
fmaxm.h f18, f18, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x5afa4c9fdedbf213 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x389fe02c79fe8d56 # load x3 with value 0x389fe02c79fe8d56
sw x3, 0(x2) # store 0x389fe02c79fe8d56 in memory
flh f19, 0(x2) # load 0x389fe02c79fe8d56 from memory into f19
li x3, 0xca7e9d011782692c # load x3 with value 0xca7e9d011782692c
sw x3, 0(x2) # store 0xca7e9d011782692c in memory
flh f8, 0(x2) # load 0xca7e9d011782692c from memory into f8
fmaxm.h f19, f19, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0xc4ff8ad978901ab9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f340f94e5ccf13e # load x3 with value 0x5f340f94e5ccf13e
sw x3, 0(x2) # store 0x5f340f94e5ccf13e in memory
flh f20, 0(x2) # load 0x5f340f94e5ccf13e from memory into f20
li x3, 0x94baf4fc3d6bd758 # load x3 with value 0x94baf4fc3d6bd758
sw x3, 0(x2) # store 0x94baf4fc3d6bd758 in memory
flh f13, 0(x2) # load 0x94baf4fc3d6bd758 from memory into f13
fmaxm.h f20, f20, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0xb7b5ce0b54a3b21b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c8b32154682454d # load x3 with value 0x3c8b32154682454d
sw x3, 0(x2) # store 0x3c8b32154682454d in memory
flh f21, 0(x2) # load 0x3c8b32154682454d from memory into f21
li x3, 0x837af99f151d640 # load x3 with value 0x837af99f151d640
sw x3, 0(x2) # store 0x837af99f151d640 in memory
flh f28, 0(x2) # load 0x837af99f151d640 from memory into f28
fmaxm.h f21, f21, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0x81ebff7e878568d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2145b51db81b9ec9 # load x3 with value 0x2145b51db81b9ec9
sw x3, 0(x2) # store 0x2145b51db81b9ec9 in memory
flh f22, 0(x2) # load 0x2145b51db81b9ec9 from memory into f22
li x3, 0x52af54996439fa2a # load x3 with value 0x52af54996439fa2a
sw x3, 0(x2) # store 0x52af54996439fa2a in memory
flh f8, 0(x2) # load 0x52af54996439fa2a from memory into f8
fmaxm.h f22, f22, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0xa22cd48c6a13e0a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1915da20869fc050 # load x3 with value 0x1915da20869fc050
sw x3, 0(x2) # store 0x1915da20869fc050 in memory
flh f23, 0(x2) # load 0x1915da20869fc050 from memory into f23
li x3, 0xa8f0c53e8a363454 # load x3 with value 0xa8f0c53e8a363454
sw x3, 0(x2) # store 0xa8f0c53e8a363454 in memory
flh f19, 0(x2) # load 0xa8f0c53e8a363454 from memory into f19
fmaxm.h f23, f23, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0xa08d0ae804897bf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x543ae0c9d9e25e59 # load x3 with value 0x543ae0c9d9e25e59
sw x3, 0(x2) # store 0x543ae0c9d9e25e59 in memory
flh f24, 0(x2) # load 0x543ae0c9d9e25e59 from memory into f24
li x3, 0x4a106431b6e0e621 # load x3 with value 0x4a106431b6e0e621
sw x3, 0(x2) # store 0x4a106431b6e0e621 in memory
flh f11, 0(x2) # load 0x4a106431b6e0e621 from memory into f11
fmaxm.h f24, f24, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x1dcfd4d8f0f26dbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x54f1eb2b76af4b1d # load x3 with value 0x54f1eb2b76af4b1d
sw x3, 0(x2) # store 0x54f1eb2b76af4b1d in memory
flh f25, 0(x2) # load 0x54f1eb2b76af4b1d from memory into f25
li x3, 0x26224991f439131f # load x3 with value 0x26224991f439131f
sw x3, 0(x2) # store 0x26224991f439131f in memory
flh f26, 0(x2) # load 0x26224991f439131f from memory into f26
fmaxm.h f25, f25, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x8d15db99e739cc32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x615bb708fd09e4ee # load x3 with value 0x615bb708fd09e4ee
sw x3, 0(x2) # store 0x615bb708fd09e4ee in memory
flh f26, 0(x2) # load 0x615bb708fd09e4ee from memory into f26
li x3, 0xa3c3eab5d310ca5e # load x3 with value 0xa3c3eab5d310ca5e
sw x3, 0(x2) # store 0xa3c3eab5d310ca5e in memory
flh f14, 0(x2) # load 0xa3c3eab5d310ca5e from memory into f14
fmaxm.h f26, f26, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x12f8b0c36dbf59ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x43e6f351232e2079 # load x3 with value 0x43e6f351232e2079
sw x3, 0(x2) # store 0x43e6f351232e2079 in memory
flh f27, 0(x2) # load 0x43e6f351232e2079 from memory into f27
li x3, 0x8fbc0365a80bd7d0 # load x3 with value 0x8fbc0365a80bd7d0
sw x3, 0(x2) # store 0x8fbc0365a80bd7d0 in memory
flh f10, 0(x2) # load 0x8fbc0365a80bd7d0 from memory into f10
fmaxm.h f27, f27, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0xde6d158448abaca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x521db1dcbd81a5a9 # load x3 with value 0x521db1dcbd81a5a9
sw x3, 0(x2) # store 0x521db1dcbd81a5a9 in memory
flh f28, 0(x2) # load 0x521db1dcbd81a5a9 from memory into f28
li x3, 0x1e3d2ca01251d57 # load x3 with value 0x1e3d2ca01251d57
sw x3, 0(x2) # store 0x1e3d2ca01251d57 in memory
flh f8, 0(x2) # load 0x1e3d2ca01251d57 from memory into f8
fmaxm.h f28, f28, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0xd78bbfcffe306670 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x684206ea1c03974e # load x3 with value 0x684206ea1c03974e
sw x3, 0(x2) # store 0x684206ea1c03974e in memory
flh f29, 0(x2) # load 0x684206ea1c03974e from memory into f29
li x3, 0xa1114459945edaeb # load x3 with value 0xa1114459945edaeb
sw x3, 0(x2) # store 0xa1114459945edaeb in memory
flh f14, 0(x2) # load 0xa1114459945edaeb from memory into f14
fmaxm.h f29, f29, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x2559f5a58a8dbe6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe785bc129e8215a3 # load x3 with value 0xe785bc129e8215a3
sw x3, 0(x2) # store 0xe785bc129e8215a3 in memory
flh f30, 0(x2) # load 0xe785bc129e8215a3 from memory into f30
li x3, 0xb01a13676e6b0c0d # load x3 with value 0xb01a13676e6b0c0d
sw x3, 0(x2) # store 0xb01a13676e6b0c0d in memory
flh f8, 0(x2) # load 0xb01a13676e6b0c0d from memory into f8
fmaxm.h f30, f30, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0xb001b6602c68358f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb6f029ac2fdd20b0 # load x3 with value 0xb6f029ac2fdd20b0
sw x3, 0(x2) # store 0xb6f029ac2fdd20b0 in memory
flh f31, 0(x2) # load 0xb6f029ac2fdd20b0 from memory into f31
li x3, 0xf62780b2df044c68 # load x3 with value 0xf62780b2df044c68
sw x3, 0(x2) # store 0xf62780b2df044c68 in memory
flh f22, 0(x2) # load 0xf62780b2df044c68 from memory into f22
fmaxm.h f31, f31, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0xdd11e9e832accabd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xee1d2f8e4fd4ff30 # load x3 with value 0xee1d2f8e4fd4ff30
sw x3, 0(x2) # store 0xee1d2f8e4fd4ff30 in memory
flh f5, 0(x2) # load 0xee1d2f8e4fd4ff30 from memory into f5
li x3, 0x7342dc9c27eb9449 # load x3 with value 0x7342dc9c27eb9449
sw x3, 0(x2) # store 0x7342dc9c27eb9449 in memory
flh f0, 0(x2) # load 0x7342dc9c27eb9449 from memory into f0
fmaxm.h f0, f5, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0x3233efde3a9b8ad8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2f70c00386144f3 # load x3 with value 0xf2f70c00386144f3
sw x3, 0(x2) # store 0xf2f70c00386144f3 in memory
flh f17, 0(x2) # load 0xf2f70c00386144f3 from memory into f17
li x3, 0xc74c8e480aa6b16d # load x3 with value 0xc74c8e480aa6b16d
sw x3, 0(x2) # store 0xc74c8e480aa6b16d in memory
flh f1, 0(x2) # load 0xc74c8e480aa6b16d from memory into f1
fmaxm.h f1, f17, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x0e0872749acb9496 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x61691f9238e80552 # load x3 with value 0x61691f9238e80552
sw x3, 0(x2) # store 0x61691f9238e80552 in memory
flh f27, 0(x2) # load 0x61691f9238e80552 from memory into f27
li x3, 0x36d94873c793939 # load x3 with value 0x36d94873c793939
sw x3, 0(x2) # store 0x36d94873c793939 in memory
flh f2, 0(x2) # load 0x36d94873c793939 from memory into f2
fmaxm.h f2, f27, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0xf4b31692b3b83528 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5da95ba2b1d42a5 # load x3 with value 0xe5da95ba2b1d42a5
sw x3, 0(x2) # store 0xe5da95ba2b1d42a5 in memory
flh f20, 0(x2) # load 0xe5da95ba2b1d42a5 from memory into f20
li x3, 0x6a3db5bd40617cf9 # load x3 with value 0x6a3db5bd40617cf9
sw x3, 0(x2) # store 0x6a3db5bd40617cf9 in memory
flh f3, 0(x2) # load 0x6a3db5bd40617cf9 from memory into f3
fmaxm.h f3, f20, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0x7f68384cb889b187 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfabd263c65ffafe5 # load x3 with value 0xfabd263c65ffafe5
sw x3, 0(x2) # store 0xfabd263c65ffafe5 in memory
flh f13, 0(x2) # load 0xfabd263c65ffafe5 from memory into f13
li x3, 0x1b4f0389427df1e7 # load x3 with value 0x1b4f0389427df1e7
sw x3, 0(x2) # store 0x1b4f0389427df1e7 in memory
flh f4, 0(x2) # load 0x1b4f0389427df1e7 from memory into f4
fmaxm.h f4, f13, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x164e7a840aaff387 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0cf4005cf83c753 # load x3 with value 0xb0cf4005cf83c753
sw x3, 0(x2) # store 0xb0cf4005cf83c753 in memory
flh f9, 0(x2) # load 0xb0cf4005cf83c753 from memory into f9
li x3, 0x77bc2c815308121f # load x3 with value 0x77bc2c815308121f
sw x3, 0(x2) # store 0x77bc2c815308121f in memory
flh f5, 0(x2) # load 0x77bc2c815308121f from memory into f5
fmaxm.h f5, f9, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0x72dfd4ee7e34214c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe43b50dcc6fc5357 # load x3 with value 0xe43b50dcc6fc5357
sw x3, 0(x2) # store 0xe43b50dcc6fc5357 in memory
flh f7, 0(x2) # load 0xe43b50dcc6fc5357 from memory into f7
li x3, 0xa2ee2b4a0b1a9605 # load x3 with value 0xa2ee2b4a0b1a9605
sw x3, 0(x2) # store 0xa2ee2b4a0b1a9605 in memory
flh f6, 0(x2) # load 0xa2ee2b4a0b1a9605 from memory into f6
fmaxm.h f6, f7, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0x79a59eea080746e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xacd04b3539d807ef # load x3 with value 0xacd04b3539d807ef
sw x3, 0(x2) # store 0xacd04b3539d807ef in memory
flh f29, 0(x2) # load 0xacd04b3539d807ef from memory into f29
li x3, 0xaceff5941b2f6607 # load x3 with value 0xaceff5941b2f6607
sw x3, 0(x2) # store 0xaceff5941b2f6607 in memory
flh f7, 0(x2) # load 0xaceff5941b2f6607 from memory into f7
fmaxm.h f7, f29, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0xb3c5483ff6288bac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa19ceb1554fbb62 # load x3 with value 0xa19ceb1554fbb62
sw x3, 0(x2) # store 0xa19ceb1554fbb62 in memory
flh f20, 0(x2) # load 0xa19ceb1554fbb62 from memory into f20
li x3, 0xeaa3905714c1d4d5 # load x3 with value 0xeaa3905714c1d4d5
sw x3, 0(x2) # store 0xeaa3905714c1d4d5 in memory
flh f8, 0(x2) # load 0xeaa3905714c1d4d5 from memory into f8
fmaxm.h f8, f20, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x0878a7dcc70b47ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x94be874a65d24141 # load x3 with value 0x94be874a65d24141
sw x3, 0(x2) # store 0x94be874a65d24141 in memory
flh f20, 0(x2) # load 0x94be874a65d24141 from memory into f20
li x3, 0x51bcf00353926616 # load x3 with value 0x51bcf00353926616
sw x3, 0(x2) # store 0x51bcf00353926616 in memory
flh f9, 0(x2) # load 0x51bcf00353926616 from memory into f9
fmaxm.h f9, f20, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0xc8fae7f690479152 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e326730adf1dcb8 # load x3 with value 0x3e326730adf1dcb8
sw x3, 0(x2) # store 0x3e326730adf1dcb8 in memory
flh f3, 0(x2) # load 0x3e326730adf1dcb8 from memory into f3
li x3, 0x5518005d99a7f18a # load x3 with value 0x5518005d99a7f18a
sw x3, 0(x2) # store 0x5518005d99a7f18a in memory
flh f10, 0(x2) # load 0x5518005d99a7f18a from memory into f10
fmaxm.h f10, f3, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x0b5415f2fe4cd406 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4432d4ed908475e2 # load x3 with value 0x4432d4ed908475e2
sw x3, 0(x2) # store 0x4432d4ed908475e2 in memory
flh f26, 0(x2) # load 0x4432d4ed908475e2 from memory into f26
li x3, 0x946e1ca40fb0ec21 # load x3 with value 0x946e1ca40fb0ec21
sw x3, 0(x2) # store 0x946e1ca40fb0ec21 in memory
flh f11, 0(x2) # load 0x946e1ca40fb0ec21 from memory into f11
fmaxm.h f11, f26, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x545b4772033e666f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9353d7698cc882d5 # load x3 with value 0x9353d7698cc882d5
sw x3, 0(x2) # store 0x9353d7698cc882d5 in memory
flh f26, 0(x2) # load 0x9353d7698cc882d5 from memory into f26
li x3, 0xdfab5a41d2ef4d95 # load x3 with value 0xdfab5a41d2ef4d95
sw x3, 0(x2) # store 0xdfab5a41d2ef4d95 in memory
flh f12, 0(x2) # load 0xdfab5a41d2ef4d95 from memory into f12
fmaxm.h f12, f26, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0x9fe367e447262340 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x284cde1021beba00 # load x3 with value 0x284cde1021beba00
sw x3, 0(x2) # store 0x284cde1021beba00 in memory
flh f19, 0(x2) # load 0x284cde1021beba00 from memory into f19
li x3, 0xf971b430ac5da1bb # load x3 with value 0xf971b430ac5da1bb
sw x3, 0(x2) # store 0xf971b430ac5da1bb in memory
flh f13, 0(x2) # load 0xf971b430ac5da1bb from memory into f13
fmaxm.h f13, f19, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0xd03b6abeaa7656d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x32307f8cb35f1751 # load x3 with value 0x32307f8cb35f1751
sw x3, 0(x2) # store 0x32307f8cb35f1751 in memory
flh f30, 0(x2) # load 0x32307f8cb35f1751 from memory into f30
li x3, 0x2946de6eee087810 # load x3 with value 0x2946de6eee087810
sw x3, 0(x2) # store 0x2946de6eee087810 in memory
flh f14, 0(x2) # load 0x2946de6eee087810 from memory into f14
fmaxm.h f14, f30, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0xa90bb564cc407649 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc507eec959b4a075 # load x3 with value 0xc507eec959b4a075
sw x3, 0(x2) # store 0xc507eec959b4a075 in memory
flh f27, 0(x2) # load 0xc507eec959b4a075 from memory into f27
li x3, 0x9e335f6df8d5183d # load x3 with value 0x9e335f6df8d5183d
sw x3, 0(x2) # store 0x9e335f6df8d5183d in memory
flh f15, 0(x2) # load 0x9e335f6df8d5183d from memory into f15
fmaxm.h f15, f27, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0x98ee920c534a8424 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e97cd5045faf11b # load x3 with value 0x4e97cd5045faf11b
sw x3, 0(x2) # store 0x4e97cd5045faf11b in memory
flh f14, 0(x2) # load 0x4e97cd5045faf11b from memory into f14
li x3, 0xa587009e9c23e404 # load x3 with value 0xa587009e9c23e404
sw x3, 0(x2) # store 0xa587009e9c23e404 in memory
flh f16, 0(x2) # load 0xa587009e9c23e404 from memory into f16
fmaxm.h f16, f14, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x085d7b5785402602 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4eece177761d8917 # load x3 with value 0x4eece177761d8917
sw x3, 0(x2) # store 0x4eece177761d8917 in memory
flh f23, 0(x2) # load 0x4eece177761d8917 from memory into f23
li x3, 0x11046260c9d3441c # load x3 with value 0x11046260c9d3441c
sw x3, 0(x2) # store 0x11046260c9d3441c in memory
flh f17, 0(x2) # load 0x11046260c9d3441c from memory into f17
fmaxm.h f17, f23, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0x2c756b90e32467ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc2d9978b65f3d537 # load x3 with value 0xc2d9978b65f3d537
sw x3, 0(x2) # store 0xc2d9978b65f3d537 in memory
flh f26, 0(x2) # load 0xc2d9978b65f3d537 from memory into f26
li x3, 0x1463104eeca057a1 # load x3 with value 0x1463104eeca057a1
sw x3, 0(x2) # store 0x1463104eeca057a1 in memory
flh f18, 0(x2) # load 0x1463104eeca057a1 from memory into f18
fmaxm.h f18, f26, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0x3264e616e74c4bf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd73e74a16faeac33 # load x3 with value 0xd73e74a16faeac33
sw x3, 0(x2) # store 0xd73e74a16faeac33 in memory
flh f12, 0(x2) # load 0xd73e74a16faeac33 from memory into f12
li x3, 0xcafd0f8547b5ac00 # load x3 with value 0xcafd0f8547b5ac00
sw x3, 0(x2) # store 0xcafd0f8547b5ac00 in memory
flh f19, 0(x2) # load 0xcafd0f8547b5ac00 from memory into f19
fmaxm.h f19, f12, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0xcfcd497633d0f805 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbcb088e4a69d9fd1 # load x3 with value 0xbcb088e4a69d9fd1
sw x3, 0(x2) # store 0xbcb088e4a69d9fd1 in memory
flh f13, 0(x2) # load 0xbcb088e4a69d9fd1 from memory into f13
li x3, 0x7fd45d78b2e8b72f # load x3 with value 0x7fd45d78b2e8b72f
sw x3, 0(x2) # store 0x7fd45d78b2e8b72f in memory
flh f20, 0(x2) # load 0x7fd45d78b2e8b72f from memory into f20
fmaxm.h f20, f13, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x37d8d5378cc5581a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14d5559e70767ebd # load x3 with value 0x14d5559e70767ebd
sw x3, 0(x2) # store 0x14d5559e70767ebd in memory
flh f2, 0(x2) # load 0x14d5559e70767ebd from memory into f2
li x3, 0x197ab1a05c2095c # load x3 with value 0x197ab1a05c2095c
sw x3, 0(x2) # store 0x197ab1a05c2095c in memory
flh f21, 0(x2) # load 0x197ab1a05c2095c from memory into f21
fmaxm.h f21, f2, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0xacf3f1fff20796a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6706a3d0e2948f00 # load x3 with value 0x6706a3d0e2948f00
sw x3, 0(x2) # store 0x6706a3d0e2948f00 in memory
flh f28, 0(x2) # load 0x6706a3d0e2948f00 from memory into f28
li x3, 0x673242f39c637850 # load x3 with value 0x673242f39c637850
sw x3, 0(x2) # store 0x673242f39c637850 in memory
flh f22, 0(x2) # load 0x673242f39c637850 from memory into f22
fmaxm.h f22, f28, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0x73d1fb9352576ef9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5fc6d1a59500d765 # load x3 with value 0x5fc6d1a59500d765
sw x3, 0(x2) # store 0x5fc6d1a59500d765 in memory
flh f22, 0(x2) # load 0x5fc6d1a59500d765 from memory into f22
li x3, 0x1a6b06c359690f64 # load x3 with value 0x1a6b06c359690f64
sw x3, 0(x2) # store 0x1a6b06c359690f64 in memory
flh f23, 0(x2) # load 0x1a6b06c359690f64 from memory into f23
fmaxm.h f23, f22, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x55f84c3e1f618117 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x64d84b1b6d01eccf # load x3 with value 0x64d84b1b6d01eccf
sw x3, 0(x2) # store 0x64d84b1b6d01eccf in memory
flh f28, 0(x2) # load 0x64d84b1b6d01eccf from memory into f28
li x3, 0x2436c9ff8fbbd6e7 # load x3 with value 0x2436c9ff8fbbd6e7
sw x3, 0(x2) # store 0x2436c9ff8fbbd6e7 in memory
flh f24, 0(x2) # load 0x2436c9ff8fbbd6e7 from memory into f24
fmaxm.h f24, f28, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0x6226db74decc112d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a0705d438bea8b6 # load x3 with value 0x4a0705d438bea8b6
sw x3, 0(x2) # store 0x4a0705d438bea8b6 in memory
flh f23, 0(x2) # load 0x4a0705d438bea8b6 from memory into f23
li x3, 0x30a7a8eecbc8e2fc # load x3 with value 0x30a7a8eecbc8e2fc
sw x3, 0(x2) # store 0x30a7a8eecbc8e2fc in memory
flh f25, 0(x2) # load 0x30a7a8eecbc8e2fc from memory into f25
fmaxm.h f25, f23, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x18c4fcec5d510df4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75956df4000b8161 # load x3 with value 0x75956df4000b8161
sw x3, 0(x2) # store 0x75956df4000b8161 in memory
flh f7, 0(x2) # load 0x75956df4000b8161 from memory into f7
li x3, 0x1ccfbb8e03acc034 # load x3 with value 0x1ccfbb8e03acc034
sw x3, 0(x2) # store 0x1ccfbb8e03acc034 in memory
flh f26, 0(x2) # load 0x1ccfbb8e03acc034 from memory into f26
fmaxm.h f26, f7, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0xc6d4cd60810be107 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd2b173a575e627 # load x3 with value 0xcd2b173a575e627
sw x3, 0(x2) # store 0xcd2b173a575e627 in memory
flh f24, 0(x2) # load 0xcd2b173a575e627 from memory into f24
li x3, 0x27dc23a6c63d7ff9 # load x3 with value 0x27dc23a6c63d7ff9
sw x3, 0(x2) # store 0x27dc23a6c63d7ff9 in memory
flh f27, 0(x2) # load 0x27dc23a6c63d7ff9 from memory into f27
fmaxm.h f27, f24, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0x16ceb6fadf9015be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf0889327110221a4 # load x3 with value 0xf0889327110221a4
sw x3, 0(x2) # store 0xf0889327110221a4 in memory
flh f13, 0(x2) # load 0xf0889327110221a4 from memory into f13
li x3, 0xbc5cce6ea25f6c3f # load x3 with value 0xbc5cce6ea25f6c3f
sw x3, 0(x2) # store 0xbc5cce6ea25f6c3f in memory
flh f28, 0(x2) # load 0xbc5cce6ea25f6c3f from memory into f28
fmaxm.h f28, f13, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0xfc45e9b4aebc0186 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4754e1d907184e98 # load x3 with value 0x4754e1d907184e98
sw x3, 0(x2) # store 0x4754e1d907184e98 in memory
flh f24, 0(x2) # load 0x4754e1d907184e98 from memory into f24
li x3, 0x78dac72f3bd2669b # load x3 with value 0x78dac72f3bd2669b
sw x3, 0(x2) # store 0x78dac72f3bd2669b in memory
flh f29, 0(x2) # load 0x78dac72f3bd2669b from memory into f29
fmaxm.h f29, f24, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0x469b4fbf3def6347 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae31b6a9a7fb2d33 # load x3 with value 0xae31b6a9a7fb2d33
sw x3, 0(x2) # store 0xae31b6a9a7fb2d33 in memory
flh f30, 0(x2) # load 0xae31b6a9a7fb2d33 from memory into f30
li x3, 0x367f3864c0cafd80 # load x3 with value 0x367f3864c0cafd80
sw x3, 0(x2) # store 0x367f3864c0cafd80 in memory
flh f30, 0(x2) # load 0x367f3864c0cafd80 from memory into f30
fmaxm.h f30, f30, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0xf07e74e6c680921c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5efe834874552480 # load x3 with value 0x5efe834874552480
sw x3, 0(x2) # store 0x5efe834874552480 in memory
flh f4, 0(x2) # load 0x5efe834874552480 from memory into f4
li x3, 0x74c426aae56e127 # load x3 with value 0x74c426aae56e127
sw x3, 0(x2) # store 0x74c426aae56e127 in memory
flh f31, 0(x2) # load 0x74c426aae56e127 from memory into f31
fmaxm.h f31, f4, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x9, 0x99a07a292caabcea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f2, 0(x2) # load 0x00000000 from memory into f2
li x3, 0x5f56d276bb8f546f # load x3 with value 0x5f56d276bb8f546f
sw x3, 0(x2) # store 0x5f56d276bb8f546f in memory
flh f5, 0(x2) # load 0x5f56d276bb8f546f from memory into f5
fmaxm.h f9, f2, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x7, 0x4a2b6da97caf90e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
li x3, 0x402c5605bd85b901 # load x3 with value 0x402c5605bd85b901
sw x3, 0(x2) # store 0x402c5605bd85b901 in memory
flh f22, 0(x2) # load 0x402c5605bd85b901 from memory into f22
fmaxm.h f7, f10, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x27, 0xc06f0f2ce85fcf9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
li x3, 0x3f2857f6bd8d69d7 # load x3 with value 0x3f2857f6bd8d69d7
sw x3, 0(x2) # store 0x3f2857f6bd8d69d7 in memory
flh f16, 0(x2) # load 0x3f2857f6bd8d69d7 from memory into f16
fmaxm.h f27, f8, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x7, 0xdf6d8f668351ff9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
li x3, 0x46e8322d82072d62 # load x3 with value 0x46e8322d82072d62
sw x3, 0(x2) # store 0x46e8322d82072d62 in memory
flh f16, 0(x2) # load 0x46e8322d82072d62 from memory into f16
fmaxm.h f7, f15, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x28, 0x2f42e3b224c98f16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f25, 0(x2) # load 0x00003e00 from memory into f25
li x3, 0x1f00673b1e1c11c # load x3 with value 0x1f00673b1e1c11c
sw x3, 0(x2) # store 0x1f00673b1e1c11c in memory
flh f4, 0(x2) # load 0x1f00673b1e1c11c from memory into f4
fmaxm.h f28, f25, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x1, 0xc25ce9999258b1fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
li x3, 0xe93d6a9f195a163b # load x3 with value 0xe93d6a9f195a163b
sw x3, 0(x2) # store 0xe93d6a9f195a163b in memory
flh f3, 0(x2) # load 0xe93d6a9f195a163b from memory into f3
fmaxm.h f1, f8, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x12, 0x2d944e43f7219334 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
li x3, 0x27419e73d29bef1 # load x3 with value 0x27419e73d29bef1
sw x3, 0(x2) # store 0x27419e73d29bef1 in memory
flh f2, 0(x2) # load 0x27419e73d29bef1 from memory into f2
fmaxm.h f12, f10, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x5, 0x49762f4dd6402030 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
li x3, 0x489959594a48a89a # load x3 with value 0x489959594a48a89a
sw x3, 0(x2) # store 0x489959594a48a89a in memory
flh f7, 0(x2) # load 0x489959594a48a89a from memory into f7
fmaxm.h f5, f1, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x14, 0x52aa90a7ca80141b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
li x3, 0x4da97498b7636776 # load x3 with value 0x4da97498b7636776
sw x3, 0(x2) # store 0x4da97498b7636776 in memory
flh f16, 0(x2) # load 0x4da97498b7636776 from memory into f16
fmaxm.h f14, f9, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x27, 0x5962c5b10d57f53b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
li x3, 0x6c30039ec8587e53 # load x3 with value 0x6c30039ec8587e53
sw x3, 0(x2) # store 0x6c30039ec8587e53 in memory
flh f19, 0(x2) # load 0x6c30039ec8587e53 from memory into f19
fmaxm.h f27, f5, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x9, 0x85e37907051050e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
li x3, 0xba59665e9052c495 # load x3 with value 0xba59665e9052c495
sw x3, 0(x2) # store 0xba59665e9052c495 in memory
flh f28, 0(x2) # load 0xba59665e9052c495 from memory into f28
fmaxm.h f9, f13, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x20, 0x15595cc81d993fb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
li x3, 0x2f7f2b1ae57c6f47 # load x3 with value 0x2f7f2b1ae57c6f47
sw x3, 0(x2) # store 0x2f7f2b1ae57c6f47 in memory
flh f26, 0(x2) # load 0x2f7f2b1ae57c6f47 from memory into f26
fmaxm.h f20, f23, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x30, 0xae9fcbf1ad896462 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
li x3, 0x9bdbc635e49d48e8 # load x3 with value 0x9bdbc635e49d48e8
sw x3, 0(x2) # store 0x9bdbc635e49d48e8 in memory
flh f7, 0(x2) # load 0x9bdbc635e49d48e8 from memory into f7
fmaxm.h f30, f14, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x2, 0x936d9c56e63137bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
li x3, 0xc2e53a3f0b69ac52 # load x3 with value 0xc2e53a3f0b69ac52
sw x3, 0(x2) # store 0xc2e53a3f0b69ac52 in memory
flh f18, 0(x2) # load 0xc2e53a3f0b69ac52 from memory into f18
fmaxm.h f2, f16, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x6, 0xc42d0de970359966 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
li x3, 0x4ab075671095a060 # load x3 with value 0x4ab075671095a060
sw x3, 0(x2) # store 0x4ab075671095a060 in memory
flh f21, 0(x2) # load 0x4ab075671095a060 from memory into f21
fmaxm.h f6, f22, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x5, 0xd6dea7a7aafe5dbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
li x3, 0x634ab40ebcf89136 # load x3 with value 0x634ab40ebcf89136
sw x3, 0(x2) # store 0x634ab40ebcf89136 in memory
flh f22, 0(x2) # load 0x634ab40ebcf89136 from memory into f22
fmaxm.h f5, f29, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x4, 0xdc2ff1d7c8b61a3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
li x3, 0xb1a946fa236c7502 # load x3 with value 0xb1a946fa236c7502
sw x3, 0(x2) # store 0xb1a946fa236c7502 in memory
flh f1, 0(x2) # load 0xb1a946fa236c7502 from memory into f1
fmaxm.h f4, f31, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x12, 0xd8d63b8bd3a65be4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f31, 0(x2) # load 0x00008001 from memory into f31
li x3, 0xe0e61bedc39ce0da # load x3 with value 0xe0e61bedc39ce0da
sw x3, 0(x2) # store 0xe0e61bedc39ce0da in memory
flh f23, 0(x2) # load 0xe0e61bedc39ce0da from memory into f23
fmaxm.h f12, f31, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x13, 0x6e5a9dc0985dbe9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
li x3, 0xfc161a345fce8f4b # load x3 with value 0xfc161a345fce8f4b
sw x3, 0(x2) # store 0xfc161a345fce8f4b in memory
flh f10, 0(x2) # load 0xfc161a345fce8f4b from memory into f10
fmaxm.h f13, f9, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x31, 0x653910027c17178b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
li x3, 0xefbfb8517797632e # load x3 with value 0xefbfb8517797632e
sw x3, 0(x2) # store 0xefbfb8517797632e in memory
flh f25, 0(x2) # load 0xefbfb8517797632e from memory into f25
fmaxm.h f31, f5, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x24, 0x8a2e3dacc718ec3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
li x3, 0x4a054c3107e8ed4d # load x3 with value 0x4a054c3107e8ed4d
sw x3, 0(x2) # store 0x4a054c3107e8ed4d in memory
flh f2, 0(x2) # load 0x4a054c3107e8ed4d from memory into f2
fmaxm.h f24, f1, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x29, 0x60803c0b13b6423c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
li x3, 0xd56e5d549cd3373 # load x3 with value 0xd56e5d549cd3373
sw x3, 0(x2) # store 0xd56e5d549cd3373 in memory
flh f8, 0(x2) # load 0xd56e5d549cd3373 from memory into f8
fmaxm.h f29, f11, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x30, 0xfd4ce8618d52413e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f10, 0(x2) # load 0x00007c01 from memory into f10
li x3, 0x27a07ce2a9cba126 # load x3 with value 0x27a07ce2a9cba126
sw x3, 0(x2) # store 0x27a07ce2a9cba126 in memory
flh f17, 0(x2) # load 0x27a07ce2a9cba126 from memory into f17
fmaxm.h f30, f10, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x25, 0x754fc488b2295e69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
li x3, 0x451139198161aa8b # load x3 with value 0x451139198161aa8b
sw x3, 0(x2) # store 0x451139198161aa8b in memory
flh f24, 0(x2) # load 0x451139198161aa8b from memory into f24
fmaxm.h f25, f20, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x3, 0x651eb89603793693 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
li x3, 0x1a570fedbf3f03e5 # load x3 with value 0x1a570fedbf3f03e5
sw x3, 0(x2) # store 0x1a570fedbf3f03e5 in memory
flh f24, 0(x2) # load 0x1a570fedbf3f03e5 from memory into f24
fmaxm.h f3, f17, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x5, 0x87a44a97a78977f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
li x3, 0xfa2f3159deb5971 # load x3 with value 0xfa2f3159deb5971
sw x3, 0(x2) # store 0xfa2f3159deb5971 in memory
flh f1, 0(x2) # load 0xfa2f3159deb5971 from memory into f1
fmaxm.h f5, f3, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x1, 0x89ff10324d965847 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa62eaf983c81b86b # load x3 with value 0xa62eaf983c81b86b
sw x3, 0(x2) # store 0xa62eaf983c81b86b in memory
flh f18, 0(x2) # load 0xa62eaf983c81b86b from memory into f18
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
fmaxm.h f1, f18, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000)
li x17, 0xf84067c45a58a50d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa30d7fc3dd97d203 # load x3 with value 0xa30d7fc3dd97d203
sw x3, 0(x2) # store 0xa30d7fc3dd97d203 in memory
flh f25, 0(x2) # load 0xa30d7fc3dd97d203 from memory into f25
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
fmaxm.h f17, f25, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3c00)
li x1, 0x087a2a2a17b4c26c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6f0fdff24c69bc53 # load x3 with value 0x6f0fdff24c69bc53
sw x3, 0(x2) # store 0x6f0fdff24c69bc53 in memory
flh f10, 0(x2) # load 0x6f0fdff24c69bc53 from memory into f10
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
fmaxm.h f1, f10, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbc00)
li x1, 0x883ec48fdaadcd15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x67c390758a9025d2 # load x3 with value 0x67c390758a9025d2
sw x3, 0(x2) # store 0x67c390758a9025d2 in memory
flh f11, 0(x2) # load 0x67c390758a9025d2 from memory into f11
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
fmaxm.h f1, f11, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3e00)
li x7, 0x9579e9538bae3b3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd85ea403a2eae14 # load x3 with value 0xdd85ea403a2eae14
sw x3, 0(x2) # store 0xdd85ea403a2eae14 in memory
flh f6, 0(x2) # load 0xdd85ea403a2eae14 from memory into f6
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
fmaxm.h f7, f6, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbe00)
li x5, 0x7a9347c4bcd2e0a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6790241aff59c8f0 # load x3 with value 0x6790241aff59c8f0
sw x3, 0(x2) # store 0x6790241aff59c8f0 in memory
flh f16, 0(x2) # load 0x6790241aff59c8f0 from memory into f16
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
fmaxm.h f5, f16, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000)
li x19, 0xca42d2f3f0bc8c05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x618b6328232539c # load x3 with value 0x618b6328232539c
sw x3, 0(x2) # store 0x618b6328232539c in memory
flh f16, 0(x2) # load 0x618b6328232539c from memory into f16
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fmaxm.h f19, f16, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000)
li x24, 0x07fb464651eb6661 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x46c4eb5aa7a67bd7 # load x3 with value 0x46c4eb5aa7a67bd7
sw x3, 0(x2) # store 0x46c4eb5aa7a67bd7 in memory
flh f3, 0(x2) # load 0x46c4eb5aa7a67bd7 from memory into f3
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
fmaxm.h f24, f3, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x400)
li x28, 0x1e2641d214c5798d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe2a23a424ce4f279 # load x3 with value 0xe2a23a424ce4f279
sw x3, 0(x2) # store 0xe2a23a424ce4f279 in memory
flh f26, 0(x2) # load 0xe2a23a424ce4f279 from memory into f26
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
fmaxm.h f28, f26, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8400)
li x11, 0xa4ba5d2992cf3e9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa95dfb326141ac48 # load x3 with value 0xa95dfb326141ac48
sw x3, 0(x2) # store 0xa95dfb326141ac48 in memory
flh f10, 0(x2) # load 0xa95dfb326141ac48 from memory into f10
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f14, 0(x2) # load 0x00008400 from memory into f14
fmaxm.h f11, f10, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7bff)
li x31, 0xcd5262c6c38b4fa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2cb817c63408c910 # load x3 with value 0x2cb817c63408c910
sw x3, 0(x2) # store 0x2cb817c63408c910 in memory
flh f20, 0(x2) # load 0x2cb817c63408c910 from memory into f20
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f30, 0(x2) # load 0x00007bff from memory into f30
fmaxm.h f31, f20, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfbff)
li x4, 0x0b290fe049fce7b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5fbcd349a0687256 # load x3 with value 0x5fbcd349a0687256
sw x3, 0(x2) # store 0x5fbcd349a0687256 in memory
flh f5, 0(x2) # load 0x5fbcd349a0687256 from memory into f5
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
fmaxm.h f4, f5, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff)
li x14, 0xd700ea8a66cb7184 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x688d68f2815b303 # load x3 with value 0x688d68f2815b303
sw x3, 0(x2) # store 0x688d68f2815b303 in memory
flh f3, 0(x2) # load 0x688d68f2815b303 from memory into f3
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
fmaxm.h f14, f3, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x83ff)
li x6, 0x1053cd2a1d9a10b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fee5559186fe3ff # load x3 with value 0x3fee5559186fe3ff
sw x3, 0(x2) # store 0x3fee5559186fe3ff in memory
flh f31, 0(x2) # load 0x3fee5559186fe3ff from memory into f31
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
fmaxm.h f6, f31, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x200)
li x28, 0xd42d7891119fdd35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9cabcde96b27a59 # load x3 with value 0xf9cabcde96b27a59
sw x3, 0(x2) # store 0xf9cabcde96b27a59 in memory
flh f30, 0(x2) # load 0xf9cabcde96b27a59 from memory into f30
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
fmaxm.h f28, f30, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8200)
li x19, 0x5ecb0ea16f823c26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ca10130c7d6b923 # load x3 with value 0x7ca10130c7d6b923
sw x3, 0(x2) # store 0x7ca10130c7d6b923 in memory
flh f4, 0(x2) # load 0x7ca10130c7d6b923 from memory into f4
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
fmaxm.h f19, f4, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x23, 0x24c86b150ed9a8de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf0b3d92a70da113c # load x3 with value 0xf0b3d92a70da113c
sw x3, 0(x2) # store 0xf0b3d92a70da113c in memory
flh f3, 0(x2) # load 0xf0b3d92a70da113c from memory into f3
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
fmaxm.h f23, f3, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8001)
li x23, 0x0db64962c0e8a202 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4899a67a4a1475c # load x3 with value 0x4899a67a4a1475c
sw x3, 0(x2) # store 0x4899a67a4a1475c in memory
flh f26, 0(x2) # load 0x4899a67a4a1475c from memory into f26
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
fmaxm.h f23, f26, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c00)
li x6, 0xbd4569daf1d1cc79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x69134d985a4cdebd # load x3 with value 0x69134d985a4cdebd
sw x3, 0(x2) # store 0x69134d985a4cdebd in memory
flh f9, 0(x2) # load 0x69134d985a4cdebd from memory into f9
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
fmaxm.h f6, f9, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfc00)
li x2, 0x9d3841a2c585ff52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e859137ab5947c6 # load x3 with value 0x5e859137ab5947c6
sw x3, 0(x2) # store 0x5e859137ab5947c6 in memory
flh f8, 0(x2) # load 0x5e859137ab5947c6 from memory into f8
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
fmaxm.h f2, f8, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e00)
li x28, 0x39d08fab632562ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e0257dfdfbb3c9e # load x3 with value 0x1e0257dfdfbb3c9e
sw x3, 0(x2) # store 0x1e0257dfdfbb3c9e in memory
flh f11, 0(x2) # load 0x1e0257dfdfbb3c9e from memory into f11
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fmaxm.h f28, f11, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fff)
li x3, 0xfb0e23df4569d336 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb0f27383213e97f # load x3 with value 0xcb0f27383213e97f
sw x3, 0(x2) # store 0xcb0f27383213e97f in memory
flh f31, 0(x2) # load 0xcb0f27383213e97f from memory into f31
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
fmaxm.h f3, f31, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7c01)
li x9, 0xb4aca29f4d3b2b65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x214f65e8ddfe1998 # load x3 with value 0x214f65e8ddfe1998
sw x3, 0(x2) # store 0x214f65e8ddfe1998 in memory
flh f20, 0(x2) # load 0x214f65e8ddfe1998 from memory into f20
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
fmaxm.h f9, f20, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7dff)
li x27, 0x80c39855d2c10695 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x762f95c399f9e5c8 # load x3 with value 0x762f95c399f9e5c8
sw x3, 0(x2) # store 0x762f95c399f9e5c8 in memory
flh f24, 0(x2) # load 0x762f95c399f9e5c8 from memory into f24
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
fmaxm.h f27, f24, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x58b4)
li x31, 0x0bb7fcfdbfe8de42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8abb809b4fba8db9 # load x3 with value 0x8abb809b4fba8db9
sw x3, 0(x2) # store 0x8abb809b4fba8db9 in memory
flh f5, 0(x2) # load 0x8abb809b4fba8db9 from memory into f5
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
fmaxm.h f31, f5, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc93a)
li x13, 0xe99f8fb46306032b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x58fbdaf5643a9fa7 # load x3 with value 0x58fbdaf5643a9fa7
sw x3, 0(x2) # store 0x58fbdaf5643a9fa7 in memory
flh f4, 0(x2) # load 0x58fbdaf5643a9fa7 from memory into f4
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
fmaxm.h f13, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x17, 0x333e30387aea0932 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
fmaxm.h f17, f29, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000)
li x22, 0xb4acd5a150e9449e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
fmaxm.h f22, f17, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3c00)
li x15, 0x97505fc7eff6b11c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
fmaxm.h f15, f8, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbc00)
li x7, 0xad57221108aa0a54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f4, 0(x2) # load 0x0000bc00 from memory into f4
fmaxm.h f7, f28, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3e00)
li x9, 0x9f5084549a549909 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
fmaxm.h f9, f12, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbe00)
li x31, 0xe0b8e3efb4c8985e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
fmaxm.h f31, f17, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000)
li x4, 0x04d441ae84a7494f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f3, 0(x2) # load 0x00000000 from memory into f3
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f11, 0(x2) # load 0x00004000 from memory into f11
fmaxm.h f4, f3, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000)
li x6, 0x7f15976ca08b8404 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
fmaxm.h f6, f18, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x400)
li x12, 0x47b02ee7126ee257 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
fmaxm.h f12, f16, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8400)
li x22, 0x4e316c9d00a7abcd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
fmaxm.h f22, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7bff)
li x7, 0x6457feabe41fc60f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
fmaxm.h f7, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfbff)
li x11, 0xe3ffba61ddd0a776 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
fmaxm.h f11, f10, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff)
li x5, 0xa0fff07d7c3356f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
fmaxm.h f5, f29, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x83ff)
li x14, 0xd80bf70520324c41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
fmaxm.h f14, f6, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x200)
li x8, 0x8fe785a7d4475a61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f9, 0(x2) # load 0x00000000 from memory into f9
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fmaxm.h f8, f9, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8200)
li x3, 0x85b57746d2ac5fc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f6, 0(x2) # load 0x00000000 from memory into f6
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
fmaxm.h f3, f6, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x14, 0xd9b0ba08dc7ba1b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f12, 0(x2) # load 0x00000000 from memory into f12
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
fmaxm.h f14, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8001)
li x23, 0xf7648278ce16d6ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f14, 0(x2) # load 0x00000000 from memory into f14
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f5, 0(x2) # load 0x00008001 from memory into f5
fmaxm.h f23, f14, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c00)
li x11, 0x1a2e63c0808bc1b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f25, 0(x2) # load 0x00000000 from memory into f25
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
fmaxm.h f11, f25, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfc00)
li x2, 0x806ef08658f91b97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
fmaxm.h f2, f18, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7e00)
li x27, 0xb0763e0e73837413 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f26, 0(x2) # load 0x00000000 from memory into f26
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f12, 0(x2) # load 0x00007e00 from memory into f12
fmaxm.h f27, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fff)
li x9, 0x9331c65ff4590c8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f4, 0(x2) # load 0x00000000 from memory into f4
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
fmaxm.h f9, f4, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7c01)
li x28, 0xbba25ef7b8b265e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f23, 0(x2) # load 0x00000000 from memory into f23
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
fmaxm.h f28, f23, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7dff)
li x3, 0x50e8651d3156a495 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
fmaxm.h f3, f22, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x58b4)
li x2, 0x9b70d74933661790 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
fmaxm.h f2, f18, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc93a)
li x22, 0x76072ff8cd4dc3cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f10, 0(x2) # load 0x00000000 from memory into f10
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
fmaxm.h f22, f10, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x0)
li x26, 0x7fc3f65715be10d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f19, 0(x2) # load 0x00008000 from memory into f19
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
fmaxm.h f26, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8000)
li x8, 0x7c2c2d24738ac6e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fmaxm.h f8, f26, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3c00)
li x31, 0x31f0785940194a7f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
fmaxm.h f31, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbc00)
li x8, 0xc2206857a0958311 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f22, 0(x2) # load 0x00008000 from memory into f22
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
fmaxm.h f8, f22, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3e00)
li x27, 0x7a757f92751e70d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
fmaxm.h f27, f10, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xbe00)
li x3, 0xd1d3d91cb0d68221 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
fmaxm.h f3, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x4000)
li x2, 0x8bad855d35b6ccf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
fmaxm.h f2, f3, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc000)
li x5, 0x6ec6caa72f137dd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f10, 0(x2) # load 0x00008000 from memory into f10
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fmaxm.h f5, f10, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x400)
li x2, 0xa95bbbd05aa3bd79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
fmaxm.h f2, f25, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8400)
li x22, 0x91810f383d26b605 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f21, 0(x2) # load 0x00008000 from memory into f21
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
fmaxm.h f22, f21, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7bff)
li x6, 0x271c7d964dd41c1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
fmaxm.h f6, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfbff)
li x31, 0x31045a27a28f9826 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
fmaxm.h f31, f23, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x3ff)
li x4, 0xd8a1914f3540076a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f29, 0(x2) # load 0x000003ff from memory into f29
fmaxm.h f4, f5, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x83ff)
li x12, 0x917646b50c368029 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f17, 0(x2) # load 0x00008000 from memory into f17
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
fmaxm.h f12, f17, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x200)
li x5, 0xfa27b654979216aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
fmaxm.h f5, f29, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8200)
li x12, 0xb6e8a58036f78077 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f15, 0(x2) # load 0x00008000 from memory into f15
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f4, 0(x2) # load 0x00008200 from memory into f4
fmaxm.h f12, f15, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x1)
li x25, 0x2757a3f7d7f92e73 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f28, 0(x2) # load 0x00000001 from memory into f28
fmaxm.h f25, f29, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x8001)
li x31, 0x924372415770f284 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
fmaxm.h f31, f28, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c00)
li x11, 0xd49ba557ba44c2d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f25, 0(x2) # load 0x00008000 from memory into f25
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fmaxm.h f11, f25, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xfc00)
li x4, 0xe1dcdb3224ca8b18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f20, 0(x2) # load 0x00008000 from memory into f20
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
fmaxm.h f4, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7e00)
li x1, 0xba75dde16d29faa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
fmaxm.h f1, f4, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7fff)
li x21, 0x5e06bab1dd3b7d90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
fmaxm.h f21, f31, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7c01)
li x5, 0xdb48dd974721f978 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f22, 0(x2) # load 0x00007c01 from memory into f22
fmaxm.h f5, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x7dff)
li x20, 0x21e83d7178649f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f26, 0(x2) # load 0x00008000 from memory into f26
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
fmaxm.h f20, f26, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0x58b4)
li x26, 0x26ffc0ae6a95ea4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f6, 0(x2) # load 0x00008000 from memory into f6
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f20, 0(x2) # load 0x000058b4 from memory into f20
fmaxm.h f26, f6, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000 fs2 = 0xc93a)
li x9, 0x65506e4f4ee77fdf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
fmaxm.h f9, f3, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x0)
li x19, 0x762e3777db27e2de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f30, 0(x2) # load 0x00000000 from memory into f30
fmaxm.h f19, f11, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8000)
li x2, 0xc5cdc640229bcb54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
fmaxm.h f2, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3c00)
li x31, 0x79a6fe8a51f6faa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
fmaxm.h f31, f25, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbc00)
li x18, 0x1a2de4c50361905c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f29, 0(x2) # load 0x0000bc00 from memory into f29
fmaxm.h f18, f26, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3e00)
li x1, 0x4e4c261516e3eb35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f17, 0(x2) # load 0x00003c00 from memory into f17
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fmaxm.h f1, f17, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xbe00)
li x6, 0x5719a6eeb54afefa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f15, 0(x2) # load 0x0000be00 from memory into f15
fmaxm.h f6, f16, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x4000)
li x19, 0x29cc55299f16d5c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
fmaxm.h f19, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc000)
li x17, 0x548744b6b602c566 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f7, 0(x2) # load 0x00003c00 from memory into f7
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fmaxm.h f17, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x400)
li x31, 0x23d4480ba1153e27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f24, 0(x2) # load 0x00003c00 from memory into f24
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
fmaxm.h f31, f24, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8400)
li x4, 0xeeb87e255d7c3d3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f10, 0(x2) # load 0x00008400 from memory into f10
fmaxm.h f4, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7bff)
li x17, 0x2cb3247492e7934d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
fmaxm.h f17, f15, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfbff)
li x6, 0x31512aa8a8f10f04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
fmaxm.h f6, f27, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x3ff)
li x4, 0xfc6b7f08e19a8799 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f15, 0(x2) # load 0x00003c00 from memory into f15
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f13, 0(x2) # load 0x000003ff from memory into f13
fmaxm.h f4, f15, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x83ff)
li x26, 0xaef0875f9e15d3ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
fmaxm.h f26, f21, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x200)
li x29, 0x60cdf938f9fa025c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
fmaxm.h f29, f16, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8200)
li x29, 0xb4a3c2cc5bf7ce6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
fmaxm.h f29, f22, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x1)
li x26, 0x33964e1b6611d41f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f4, 0(x2) # load 0x00000001 from memory into f4
fmaxm.h f26, f18, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x8001)
li x13, 0x9af14212b106d743 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f12, 0(x2) # load 0x00003c00 from memory into f12
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
fmaxm.h f13, f12, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c00)
li x24, 0x5e98a26d9ab7e58b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
fmaxm.h f24, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xfc00)
li x21, 0xb499d18fa8a927e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f18, 0(x2) # load 0x00003c00 from memory into f18
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
fmaxm.h f21, f18, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7e00)
li x10, 0x2f97b102c5cb8835 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f8, 0(x2) # load 0x00003c00 from memory into f8
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fmaxm.h f10, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7fff)
li x30, 0x0175dd4163ece3e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
fmaxm.h f30, f19, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7c01)
li x17, 0x43b9395ef7e69e72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f14, 0(x2) # load 0x00003c00 from memory into f14
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
fmaxm.h f17, f14, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x7dff)
li x1, 0xd24613e3442bab56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f11, 0(x2) # load 0x00003c00 from memory into f11
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
fmaxm.h f1, f11, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0x58b4)
li x24, 0x658ddf7a3dfcb772 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
fmaxm.h f24, f22, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3c00 fs2 = 0xc93a)
li x27, 0x1e4da646b7303bda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f26, 0(x2) # load 0x00003c00 from memory into f26
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
fmaxm.h f27, f26, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x0)
li x5, 0x3cb3d5533fd1c108 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f23, 0(x2) # load 0x0000bc00 from memory into f23
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
fmaxm.h f5, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8000)
li x2, 0x6afe8cd1e05204c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
fmaxm.h f2, f3, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3c00)
li x7, 0xd7ad969da1fc55e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
fmaxm.h f7, f8, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbc00)
li x21, 0x15d579c9439cc519 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
fmaxm.h f21, f9, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3e00)
li x10, 0x27b6ac7c1e940b94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f20, 0(x2) # load 0x0000bc00 from memory into f20
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
fmaxm.h f10, f20, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xbe00)
li x10, 0xfa0c377c3be28405 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fmaxm.h f10, f19, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x4000)
li x8, 0x6a1d059d39b6bd46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
fmaxm.h f8, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc000)
li x4, 0x3578030f134503fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fmaxm.h f4, f9, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x400)
li x14, 0xf94fa964216054e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f15, 0(x2) # load 0x0000bc00 from memory into f15
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
fmaxm.h f14, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8400)
li x16, 0x4fd8d30a8a19a679 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f22, 0(x2) # load 0x0000bc00 from memory into f22
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
fmaxm.h f16, f22, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7bff)
li x22, 0x54c6291ef0bdfb10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
fmaxm.h f22, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfbff)
li x22, 0xcd153a05911aae19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
fmaxm.h f22, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x3ff)
li x28, 0x1aecf96707fe6c5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f26, 0(x2) # load 0x0000bc00 from memory into f26
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
fmaxm.h f28, f26, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x83ff)
li x29, 0xa77fed9ef9b51f22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
fmaxm.h f29, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x200)
li x1, 0x700efaf5c99e5c9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f6, 0(x2) # load 0x0000bc00 from memory into f6
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
fmaxm.h f1, f6, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8200)
li x11, 0x7fc107fc31c62b82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
fmaxm.h f11, f7, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x1)
li x12, 0xee5b45df9a8305ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f25, 0(x2) # load 0x0000bc00 from memory into f25
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
fmaxm.h f12, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x8001)
li x28, 0x053cebce6231da93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fmaxm.h f28, f17, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c00)
li x5, 0xfc49563e778ec3dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
fmaxm.h f5, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xfc00)
li x9, 0x05c9dd8052375058 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
fmaxm.h f9, f30, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7e00)
li x7, 0xa4a235b822b7da04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
fmaxm.h f7, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7fff)
li x8, 0xa300457765205eb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
fmaxm.h f8, f30, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7c01)
li x14, 0xef23f0264fb18a0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f12, 0(x2) # load 0x0000bc00 from memory into f12
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
fmaxm.h f14, f12, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x7dff)
li x9, 0x494f8e2c4a44016a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f28, 0(x2) # load 0x0000bc00 from memory into f28
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
fmaxm.h f9, f28, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0x58b4)
li x6, 0x24cfbd3d466758f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f13, 0(x2) # load 0x0000bc00 from memory into f13
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fmaxm.h f6, f13, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbc00 fs2 = 0xc93a)
li x11, 0x6c65880fab5adaa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
fmaxm.h f11, f9, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x0)
li x29, 0xce1079ac1806747e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f14, 0(x2) # load 0x00003e00 from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
fmaxm.h f29, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8000)
li x27, 0xf9f59c191e51ecfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f11, 0(x2) # load 0x00008000 from memory into f11
fmaxm.h f27, f2, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3c00)
li x22, 0x860f24edb1b7843e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
fmaxm.h f22, f17, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbc00)
li x25, 0xe157717d8cfb7daf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f10, 0(x2) # load 0x0000bc00 from memory into f10
fmaxm.h f25, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3e00)
li x2, 0x0256c7f1a941f8a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
fmaxm.h f2, f7, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xbe00)
li x9, 0xa755f7c52e6cba30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fmaxm.h f9, f10, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x4000)
li x21, 0xc9ec7c20291d9192 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f6, 0(x2) # load 0x00004000 from memory into f6
fmaxm.h f21, f17, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc000)
li x26, 0x92c74cc20c5e0346 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
fmaxm.h f26, f5, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x400)
li x16, 0x2ae7fb0e8a9ea2b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f26, 0(x2) # load 0x00003e00 from memory into f26
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
fmaxm.h f16, f26, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8400)
li x31, 0xa715c65469c9ce35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f16, 0(x2) # load 0x00003e00 from memory into f16
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
fmaxm.h f31, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7bff)
li x28, 0xd6ce0dc26418c1be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
fmaxm.h f28, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfbff)
li x12, 0xf73c98733a236ce4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
fmaxm.h f12, f24, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x3ff)
li x12, 0xfd9c6b31f47e43ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f22, 0(x2) # load 0x00003e00 from memory into f22
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
fmaxm.h f12, f22, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x83ff)
li x11, 0x75486d8b772ada6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f4, 0(x2) # load 0x00003e00 from memory into f4
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f14, 0(x2) # load 0x000083ff from memory into f14
fmaxm.h f11, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x200)
li x15, 0x7be5e13eb2eca9ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f2, 0(x2) # load 0x00003e00 from memory into f2
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f6, 0(x2) # load 0x00000200 from memory into f6
fmaxm.h f15, f2, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8200)
li x21, 0x483dc092e374f2da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
fmaxm.h f21, f19, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x1)
li x28, 0x703aeaa3bb9a1549 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
fmaxm.h f28, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x8001)
li x9, 0x904c5bb67ca08cec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
fmaxm.h f9, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c00)
li x17, 0x02744b504bb5cfd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f26, 0(x2) # load 0x00007c00 from memory into f26
fmaxm.h f17, f9, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xfc00)
li x14, 0xc92c2597dc154938 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f1, 0(x2) # load 0x00003e00 from memory into f1
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
fmaxm.h f14, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7e00)
li x26, 0x06ffa8c1e7ca0581 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
fmaxm.h f26, f10, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7fff)
li x15, 0x6058e80aedfd2ffa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f19, 0(x2) # load 0x00003e00 from memory into f19
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f24, 0(x2) # load 0x00007fff from memory into f24
fmaxm.h f15, f19, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7c01)
li x24, 0xad9d3a9565135928 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
fmaxm.h f24, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x7dff)
li x12, 0x72d6c33faf61387e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f30, 0(x2) # load 0x00003e00 from memory into f30
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
fmaxm.h f12, f30, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0x58b4)
li x2, 0x6f50dde93f4457d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f14, 0(x2) # load 0x000058b4 from memory into f14
fmaxm.h f2, f28, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3e00 fs2 = 0xc93a)
li x3, 0xb6690fa12e205ae1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
fmaxm.h f3, f17, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x0)
li x13, 0xb3dfb2b988bb2653 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
fmaxm.h f13, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8000)
li x5, 0x00e7bb0af5d9d023 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f23, 0(x2) # load 0x00008000 from memory into f23
fmaxm.h f5, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3c00)
li x31, 0x795d6f05b9cbeac6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f6, 0(x2) # load 0x00003c00 from memory into f6
fmaxm.h f31, f20, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbc00)
li x13, 0xf2b1e3544a7bcc55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f1, 0(x2) # load 0x0000bc00 from memory into f1
fmaxm.h f13, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3e00)
li x4, 0x651bbbd021df722d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f12, 0(x2) # load 0x0000be00 from memory into f12
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
fmaxm.h f4, f12, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xbe00)
li x25, 0xf2ac2515ec534344 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fmaxm.h f25, f10, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x4000)
li x23, 0x938693ed4deffa09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f8, 0(x2) # load 0x0000be00 from memory into f8
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
fmaxm.h f23, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc000)
li x18, 0xe95fd05e16baea46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
fmaxm.h f18, f5, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x400)
li x31, 0xa6049bdfd4894f22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f17, 0(x2) # load 0x0000be00 from memory into f17
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
fmaxm.h f31, f17, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8400)
li x17, 0x3ee8f186715c3889 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
fmaxm.h f17, f13, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7bff)
li x24, 0xd5f91e6397183437 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f1, 0(x2) # load 0x0000be00 from memory into f1
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
fmaxm.h f24, f1, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfbff)
li x1, 0x4757cf2394fd68d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f18, 0(x2) # load 0x0000be00 from memory into f18
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
fmaxm.h f1, f18, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x3ff)
li x21, 0xe4277c39bcaef8db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fmaxm.h f21, f27, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x83ff)
li x8, 0x8bae888f40dc2a9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fmaxm.h f8, f29, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x200)
li x16, 0x3fee2bb7648aef0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f22, 0(x2) # load 0x00000200 from memory into f22
fmaxm.h f16, f27, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8200)
li x3, 0xd326a2dcce4ee464 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
fmaxm.h f3, f30, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x1)
li x11, 0x2c35bf1f0a486ca5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
fmaxm.h f11, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x8001)
li x28, 0x6de0352714897d3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
fmaxm.h f28, f11, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c00)
li x6, 0x3dad375a6ee2bf50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f24, 0(x2) # load 0x0000be00 from memory into f24
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
fmaxm.h f6, f24, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xfc00)
li x12, 0xf020b0111eaaf423 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f11, 0(x2) # load 0x0000be00 from memory into f11
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
fmaxm.h f12, f11, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7e00)
li x15, 0xa7a2263ea8177929 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
fmaxm.h f15, f5, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7fff)
li x30, 0x527be7a8885987b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
fmaxm.h f30, f14, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7c01)
li x9, 0x43721189224981e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f4, 0(x2) # load 0x0000be00 from memory into f4
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
fmaxm.h f9, f4, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x7dff)
li x11, 0xfd7fc1cb689b15cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
fmaxm.h f11, f30, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0x58b4)
li x29, 0xc991d90243365be6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f30, 0(x2) # load 0x0000be00 from memory into f30
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
fmaxm.h f29, f30, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbe00 fs2 = 0xc93a)
li x17, 0x20c08e0e8b2510a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
fmaxm.h f17, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x0)
li x28, 0xc0afb3f81c5eabd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f15, 0(x2) # load 0x00000000 from memory into f15
fmaxm.h f28, f14, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8000)
li x12, 0x63c882eda2898079 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
fmaxm.h f12, f21, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3c00)
li x16, 0x63f1a01f67b468e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f25, 0(x2) # load 0x00003c00 from memory into f25
fmaxm.h f16, f31, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbc00)
li x1, 0xe3377b341842023f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f9, 0(x2) # load 0x00004000 from memory into f9
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
fmaxm.h f1, f9, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3e00)
li x8, 0x2c86e978af0f042b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f28, 0(x2) # load 0x00003e00 from memory into f28
fmaxm.h f8, f25, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xbe00)
li x4, 0x159e58cbc4c52ef0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f22, 0(x2) # load 0x0000be00 from memory into f22
fmaxm.h f4, f31, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x4000)
li x28, 0xad76477f5270e3e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f4, 0(x2) # load 0x00004000 from memory into f4
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fmaxm.h f28, f4, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc000)
li x17, 0x2ff64183c08731a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
fmaxm.h f17, f29, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x400)
li x1, 0xa5aed52bd35c2c12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f28, 0(x2) # load 0x00000400 from memory into f28
fmaxm.h f1, f5, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8400)
li x30, 0xe074e8a6f0b6293e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f25, 0(x2) # load 0x00004000 from memory into f25
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
fmaxm.h f30, f25, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7bff)
li x6, 0xa00dd7761150a463 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f23, 0(x2) # load 0x00007bff from memory into f23
fmaxm.h f6, f24, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfbff)
li x30, 0xee3e4bc8e2135552 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
fmaxm.h f30, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x3ff)
li x22, 0x6485a6c62492e924 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f1, 0(x2) # load 0x000003ff from memory into f1
fmaxm.h f22, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x83ff)
li x22, 0x61324241b99b8c60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f26, 0(x2) # load 0x00004000 from memory into f26
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
fmaxm.h f22, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x200)
li x31, 0x13d70d1dc526a5ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f2, 0(x2) # load 0x00004000 from memory into f2
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
fmaxm.h f31, f2, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8200)
li x17, 0x91a22f2134699158 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f2, 0(x2) # load 0x00008200 from memory into f2
fmaxm.h f17, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x1)
li x17, 0x904113a7a5e779f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f1, 0(x2) # load 0x00004000 from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fmaxm.h f17, f1, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x8001)
li x4, 0x2f82ac4557631a0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
fmaxm.h f4, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c00)
li x18, 0x9a821497c864e950 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fmaxm.h f18, f12, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xfc00)
li x7, 0xc9914ab18a86316b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
fmaxm.h f7, f27, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7e00)
li x29, 0xb42c9f1dd5570209 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
fmaxm.h f29, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7fff)
li x27, 0x259e3bfc4de2b44e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f29, 0(x2) # load 0x00004000 from memory into f29
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
fmaxm.h f27, f29, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7c01)
li x18, 0x20682568c1883820 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
fmaxm.h f18, f28, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x7dff)
li x15, 0x5f04fdff67fe9ff5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
fmaxm.h f15, f18, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0x58b4)
li x4, 0xd49a4077800ad535 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fmaxm.h f4, f15, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000 fs2 = 0xc93a)
li x6, 0xf5cd5144b685c037 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
fmaxm.h f6, f31, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x0)
li x20, 0xd637f1d1cdc37655 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
fmaxm.h f20, f27, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8000)
li x11, 0x0c04d18aebb904f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f12, 0(x2) # load 0x00008000 from memory into f12
fmaxm.h f11, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3c00)
li x5, 0xc997fde4d6ed68f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f4, 0(x2) # load 0x0000c000 from memory into f4
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fmaxm.h f5, f4, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbc00)
li x16, 0x6458ca12d026d1ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f7, 0(x2) # load 0x0000bc00 from memory into f7
fmaxm.h f16, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3e00)
li x31, 0x4d3739b47b997bd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f16, 0(x2) # load 0x0000c000 from memory into f16
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
fmaxm.h f31, f16, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xbe00)
li x16, 0xab257439d61503ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f7, 0(x2) # load 0x0000c000 from memory into f7
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f31, 0(x2) # load 0x0000be00 from memory into f31
fmaxm.h f16, f7, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x4000)
li x16, 0x9880e9408210947c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f4, 0(x2) # load 0x00004000 from memory into f4
fmaxm.h f16, f2, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc000)
li x10, 0x946e48f6f5f14619 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f4, 0(x2) # load 0x0000c000 from memory into f4
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
fmaxm.h f10, f4, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x400)
li x13, 0x8beec4a7a89440a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
fmaxm.h f13, f23, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8400)
li x9, 0xc293f35fe3cd8de0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f29, 0(x2) # load 0x0000c000 from memory into f29
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f2, 0(x2) # load 0x00008400 from memory into f2
fmaxm.h f9, f29, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7bff)
li x27, 0xa77ba0ec6eb7a0f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f23, 0(x2) # load 0x0000c000 from memory into f23
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fmaxm.h f27, f23, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfbff)
li x12, 0xba201d4c6680149e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f5, 0(x2) # load 0x0000fbff from memory into f5
fmaxm.h f12, f28, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x3ff)
li x30, 0x7e41a26058ba5179 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fmaxm.h f30, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x83ff)
li x19, 0x409c2d5fbb962879 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f28, 0(x2) # load 0x0000c000 from memory into f28
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
fmaxm.h f19, f28, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x200)
li x21, 0x6928fe652621718e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
fmaxm.h f21, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8200)
li x19, 0x74d8593c13577608 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fmaxm.h f19, f27, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x1)
li x12, 0xc9e85dec035a62e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
fmaxm.h f12, f20, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x8001)
li x23, 0x47a8151589c20110 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
fmaxm.h f23, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c00)
li x15, 0x4884b3444b1cc9b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f12, 0(x2) # load 0x0000c000 from memory into f12
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
fmaxm.h f15, f12, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xfc00)
li x17, 0x646c708b4b377a24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fmaxm.h f17, f21, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7e00)
li x1, 0x3394bbfa3e7c2e47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fmaxm.h f1, f10, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7fff)
li x15, 0x564ac7c55c9e4a84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f24, 0(x2) # load 0x0000c000 from memory into f24
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
fmaxm.h f15, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7c01)
li x29, 0xc0a310988eef8a25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
fmaxm.h f29, f22, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x7dff)
li x5, 0xf12790e52a67a732 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f19, 0(x2) # load 0x0000c000 from memory into f19
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
fmaxm.h f5, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0x58b4)
li x10, 0x8dbd67bb104206b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f25, 0(x2) # load 0x0000c000 from memory into f25
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f5, 0(x2) # load 0x000058b4 from memory into f5
fmaxm.h f10, f25, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000 fs2 = 0xc93a)
li x23, 0x92cf2b01f70bac8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f15, 0(x2) # load 0x0000c93a from memory into f15
fmaxm.h f23, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x0)
li x24, 0xcfeeb03d2a091dfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f9, 0(x2) # load 0x00000400 from memory into f9
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fmaxm.h f24, f9, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8000)
li x16, 0x8bb37eb5795f4090 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
fmaxm.h f16, f3, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3c00)
li x9, 0x6320a5e1fe3008d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
fmaxm.h f9, f29, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbc00)
li x28, 0x7a8dc3898008d977 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f20, 0(x2) # load 0x00000400 from memory into f20
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f17, 0(x2) # load 0x0000bc00 from memory into f17
fmaxm.h f28, f20, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3e00)
li x26, 0xa537cf82f4344c5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
fmaxm.h f26, f1, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xbe00)
li x14, 0xbe5351f916417203 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fmaxm.h f14, f24, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x4000)
li x19, 0x3f9533dbb1c84eb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f24, 0(x2) # load 0x00000400 from memory into f24
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f21, 0(x2) # load 0x00004000 from memory into f21
fmaxm.h f19, f24, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc000)
li x25, 0xed13548567f84233 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f15, 0(x2) # load 0x0000c000 from memory into f15
fmaxm.h f25, f11, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x400)
li x14, 0x664a6e3d9af365d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
fmaxm.h f14, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8400)
li x7, 0xb2b9c5b6f10cc5d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
fmaxm.h f7, f2, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7bff)
li x26, 0xab6236cd0708df10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f12, 0(x2) # load 0x00000400 from memory into f12
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f4, 0(x2) # load 0x00007bff from memory into f4
fmaxm.h f26, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfbff)
li x14, 0x50557dafe896ec78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
fmaxm.h f14, f13, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x3ff)
li x26, 0x696430998ae79263 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f28, 0(x2) # load 0x000003ff from memory into f28
fmaxm.h f26, f15, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x83ff)
li x4, 0x6dd107fa60ddc288 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
fmaxm.h f4, f3, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x200)
li x5, 0x7cf0da7e306a7ffe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f30, 0(x2) # load 0x00000400 from memory into f30
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
fmaxm.h f5, f30, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8200)
li x25, 0x44cbb4dbfa74fdb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fmaxm.h f25, f3, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x1)
li x3, 0x6aee9262c1b540eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f16, 0(x2) # load 0x00000400 from memory into f16
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
fmaxm.h f3, f16, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x8001)
li x9, 0xcf2bdbc855ff9e7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
fmaxm.h f9, f1, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c00)
li x1, 0x2e8e493fd127fa30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f4, 0(x2) # load 0x00000400 from memory into f4
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
fmaxm.h f1, f4, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xfc00)
li x19, 0x647dc1a8d5d61c96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f25, 0(x2) # load 0x0000fc00 from memory into f25
fmaxm.h f19, f18, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7e00)
li x12, 0x75a2a3b081f3c9c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f25, 0(x2) # load 0x00000400 from memory into f25
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
fmaxm.h f12, f25, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7fff)
li x26, 0xbec4358b7a90747b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
fmaxm.h f26, f11, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7c01)
li x28, 0x74796f9d65fcd856 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f31, 0(x2) # load 0x00000400 from memory into f31
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
fmaxm.h f28, f31, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x7dff)
li x11, 0x26105326fe98cb30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f10, 0(x2) # load 0x00000400 from memory into f10
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f22, 0(x2) # load 0x00007dff from memory into f22
fmaxm.h f11, f10, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0x58b4)
li x13, 0x21fa70d28cd23e8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
fmaxm.h f13, f22, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x400 fs2 = 0xc93a)
li x30, 0x2724ea07f4ebad82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f22, 0(x2) # load 0x00000400 from memory into f22
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
fmaxm.h f30, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x0)
li x29, 0xf9989b6f732214bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
fmaxm.h f29, f30, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8000)
li x6, 0xdf5f2fcd2ac0add3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f2, 0(x2) # load 0x00008000 from memory into f2
fmaxm.h f6, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3c00)
li x18, 0x9f04b2ca1bc5dadc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
fmaxm.h f18, f12, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbc00)
li x19, 0x3a9cfe9f7e95ead2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fmaxm.h f19, f29, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3e00)
li x23, 0x6415178f03aa0c2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f18, 0(x2) # load 0x00008400 from memory into f18
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f8, 0(x2) # load 0x00003e00 from memory into f8
fmaxm.h f23, f18, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xbe00)
li x22, 0x41781b6c8a5f479a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f16, 0(x2) # load 0x0000be00 from memory into f16
fmaxm.h f22, f1, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x4000)
li x19, 0x6039b9e4606175fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
fmaxm.h f19, f7, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc000)
li x13, 0x940a5c1c96753429 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f24, 0(x2) # load 0x00008400 from memory into f24
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f11, 0(x2) # load 0x0000c000 from memory into f11
fmaxm.h f13, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x400)
li x10, 0x4fff07530ba4fcbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f14, 0(x2) # load 0x00000400 from memory into f14
fmaxm.h f10, f6, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8400)
li x16, 0xc913c1991b01d06f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f9, 0(x2) # load 0x00008400 from memory into f9
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
fmaxm.h f16, f9, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7bff)
li x28, 0xd841f833d390b0c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
fmaxm.h f28, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfbff)
li x19, 0x737375edbf5fc0a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f4, 0(x2) # load 0x0000fbff from memory into f4
fmaxm.h f19, f11, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x3ff)
li x1, 0x5659ccf74e9f84a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
fmaxm.h f1, f12, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x83ff)
li x12, 0x16135a0c3c1c1782 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
fmaxm.h f12, f8, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x200)
li x23, 0x6369155334c0c6f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
fmaxm.h f23, f15, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8200)
li x26, 0xed1f50ddb8fe77e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f29, 0(x2) # load 0x00008200 from memory into f29
fmaxm.h f26, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x1)
li x17, 0x7de8b2357e942c06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f15, 0(x2) # load 0x00008400 from memory into f15
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
fmaxm.h f17, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x8001)
li x7, 0xd9409c5436377f56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
fmaxm.h f7, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c00)
li x9, 0xa60eae8e8273f4b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fmaxm.h f9, f29, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xfc00)
li x13, 0x781901402908420f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
fmaxm.h f13, f27, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7e00)
li x13, 0x1ed56411e7a5ae7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
fmaxm.h f13, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7fff)
li x27, 0x50ed4c372852cefe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f3, 0(x2) # load 0x00008400 from memory into f3
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
fmaxm.h f27, f3, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7c01)
li x28, 0xa9778a1acfec0f49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f31, 0(x2) # load 0x00008400 from memory into f31
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
fmaxm.h f28, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x7dff)
li x10, 0xdc41bec7eafb4ffb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f19, 0(x2) # load 0x00007dff from memory into f19
fmaxm.h f10, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0x58b4)
li x6, 0x71261fecbc7be286 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f16, 0(x2) # load 0x000058b4 from memory into f16
fmaxm.h f6, f25, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8400 fs2 = 0xc93a)
li x12, 0x1086804eb6b78899 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f20, 0(x2) # load 0x00008400 from memory into f20
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
fmaxm.h f12, f20, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x0)
li x2, 0x62c0915afba0b5dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f7, 0(x2) # load 0x00000000 from memory into f7
fmaxm.h f2, f31, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8000)
li x2, 0x92a3150fef740339 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f18, 0(x2) # load 0x00008000 from memory into f18
fmaxm.h f2, f8, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3c00)
li x4, 0xd0ca104eca73ad45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
fmaxm.h f4, f12, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbc00)
li x9, 0xfede1cd2eb300ff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f4, 0(x2) # load 0x00007bff from memory into f4
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fmaxm.h f9, f4, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3e00)
li x29, 0x8596e5e9bff54998 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f1, 0(x2) # load 0x00007bff from memory into f1
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f24, 0(x2) # load 0x00003e00 from memory into f24
fmaxm.h f29, f1, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xbe00)
li x18, 0x2118097cb2ed5ce4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
fmaxm.h f18, f15, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x4000)
li x22, 0x70ad29164db5b8d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f4, 0(x2) # load 0x00007bff from memory into f4
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f31, 0(x2) # load 0x00004000 from memory into f31
fmaxm.h f22, f4, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc000)
li x14, 0xe3c86c0e23e8cb5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fmaxm.h f14, f21, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x400)
li x11, 0x8e5ab9695482c38c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f13, 0(x2) # load 0x00007bff from memory into f13
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fmaxm.h f11, f13, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8400)
li x16, 0x6d87d13f632bf93a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f4, 0(x2) # load 0x00008400 from memory into f4
fmaxm.h f16, f7, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7bff)
li x18, 0xf00f2693cd1c324d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
fmaxm.h f18, f2, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfbff)
li x17, 0x8c0108ddafc0b42c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f15, 0(x2) # load 0x00007bff from memory into f15
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
fmaxm.h f17, f15, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x3ff)
li x13, 0x2a20c9541060d8c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f6, 0(x2) # load 0x00007bff from memory into f6
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f19, 0(x2) # load 0x000003ff from memory into f19
fmaxm.h f13, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x83ff)
li x22, 0xdc792f5905c04e64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f28, 0(x2) # load 0x000083ff from memory into f28
fmaxm.h f22, f8, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x200)
li x19, 0x7c815adc983112e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
fmaxm.h f19, f14, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8200)
li x11, 0x737937a5cae8e748 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
fmaxm.h f11, f24, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x1)
li x22, 0x2929f65a9dbdb2b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
fmaxm.h f22, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x8001)
li x17, 0xb628443f96bd31aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
fmaxm.h f17, f24, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c00)
li x14, 0x77a172c79bf3eb38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f1, 0(x2) # load 0x00007c00 from memory into f1
fmaxm.h f14, f29, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xfc00)
li x3, 0x97c7fc30f12c4568 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
fmaxm.h f3, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7e00)
li x1, 0x31495e2bef8910e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f14, 0(x2) # load 0x00007bff from memory into f14
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fmaxm.h f1, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7fff)
li x14, 0xa9908ee3c99e6074 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f27, 0(x2) # load 0x00007bff from memory into f27
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f4, 0(x2) # load 0x00007fff from memory into f4
fmaxm.h f14, f27, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7c01)
li x27, 0x95cf63aca7faf450 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
fmaxm.h f27, f16, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x7dff)
li x22, 0xd436d19c95227d24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f24, 0(x2) # load 0x00007bff from memory into f24
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
fmaxm.h f22, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0x58b4)
li x6, 0x63fe8c70926ab165 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
fmaxm.h f6, f10, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7bff fs2 = 0xc93a)
li x20, 0x8804804f02f19fda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f19, 0(x2) # load 0x00007bff from memory into f19
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
fmaxm.h f20, f19, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x0)
li x13, 0x0a07ec93c5c3924b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f31, 0(x2) # load 0x00000000 from memory into f31
fmaxm.h f13, f7, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8000)
li x11, 0xf6076a581d6a2d09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
fmaxm.h f11, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3c00)
li x1, 0x487c8c92ca5f7862 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f14, 0(x2) # load 0x0000fbff from memory into f14
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
fmaxm.h f1, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbc00)
li x16, 0x82bfca33b851d616 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f9, 0(x2) # load 0x0000fbff from memory into f9
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f31, 0(x2) # load 0x0000bc00 from memory into f31
fmaxm.h f16, f9, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3e00)
li x20, 0x3348665cad42e319 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f11, 0(x2) # load 0x00003e00 from memory into f11
fmaxm.h f20, f23, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xbe00)
li x9, 0xb82294db73b53924 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f31, 0(x2) # load 0x0000fbff from memory into f31
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f5, 0(x2) # load 0x0000be00 from memory into f5
fmaxm.h f9, f31, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x4000)
li x21, 0x44c2c9b828d710ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f28, 0(x2) # load 0x00004000 from memory into f28
fmaxm.h f21, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc000)
li x30, 0xfc2d01c2325ceaa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fmaxm.h f30, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x400)
li x5, 0x48104236b0e7452e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f16, 0(x2) # load 0x0000fbff from memory into f16
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f29, 0(x2) # load 0x00000400 from memory into f29
fmaxm.h f5, f16, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8400)
li x23, 0x81014ac6c9b525c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f25, 0(x2) # load 0x00008400 from memory into f25
fmaxm.h f23, f28, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7bff)
li x6, 0xbbe70885aefa87b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
fmaxm.h f6, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfbff)
li x15, 0xf584ceb25ac00e44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f8, 0(x2) # load 0x0000fbff from memory into f8
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
fmaxm.h f15, f8, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x3ff)
li x20, 0x3f73b0566416ed9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
fmaxm.h f20, f6, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x83ff)
li x24, 0xce01c67ab7158e8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f16, 0(x2) # load 0x000083ff from memory into f16
fmaxm.h f24, f13, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x200)
li x26, 0xdeac99142bd740a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
fmaxm.h f26, f17, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8200)
li x8, 0x0bc785d7d763983c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f27, 0(x2) # load 0x0000fbff from memory into f27
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
fmaxm.h f8, f27, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x1)
li x11, 0x97e053fbe1610325 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f18, 0(x2) # load 0x0000fbff from memory into f18
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f3, 0(x2) # load 0x00000001 from memory into f3
fmaxm.h f11, f18, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x8001)
li x16, 0x90295c56d7bac148 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f20, 0(x2) # load 0x0000fbff from memory into f20
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
fmaxm.h f16, f20, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c00)
li x10, 0x639852b7ccb73819 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fmaxm.h f10, f12, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xfc00)
li x7, 0x79b20587de18f803 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
fmaxm.h f7, f22, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7e00)
li x4, 0xdf276524cbf0bf23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fmaxm.h f4, f12, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7fff)
li x1, 0xf8feceda5ec44ef3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f4, 0(x2) # load 0x0000fbff from memory into f4
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
fmaxm.h f1, f4, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7c01)
li x16, 0x70c8b1527479c25e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
fmaxm.h f16, f25, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x7dff)
li x30, 0xe0114be8daa0b605 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f13, 0(x2) # load 0x0000fbff from memory into f13
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
fmaxm.h f30, f13, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0x58b4)
li x1, 0x3dde1f55c45b3f06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f10, 0(x2) # load 0x0000fbff from memory into f10
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fmaxm.h f1, f10, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfbff fs2 = 0xc93a)
li x18, 0xaf246d907caabb54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f25, 0(x2) # load 0x0000fbff from memory into f25
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
fmaxm.h f18, f25, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x0)
li x25, 0x61a064e76cb25f01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
fmaxm.h f25, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8000)
li x15, 0x72af4d8edb849275 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f16, 0(x2) # load 0x000003ff from memory into f16
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
fmaxm.h f15, f16, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3c00)
li x11, 0x91b2b814d5295167 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f19, 0(x2) # load 0x00003c00 from memory into f19
fmaxm.h f11, f26, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbc00)
li x21, 0x52e6180bf0b0c5c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f9, 0(x2) # load 0x0000bc00 from memory into f9
fmaxm.h f21, f15, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3e00)
li x9, 0xae70b3ef7344136b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f31, 0(x2) # load 0x000003ff from memory into f31
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fmaxm.h f9, f31, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xbe00)
li x28, 0xea47f60f897555aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f7, 0(x2) # load 0x0000be00 from memory into f7
fmaxm.h f28, f23, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x4000)
li x27, 0x2b26bd57d0eb0764 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f14, 0(x2) # load 0x00004000 from memory into f14
fmaxm.h f27, f10, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc000)
li x26, 0x7218af9ede440dba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f18, 0(x2) # load 0x0000c000 from memory into f18
fmaxm.h f26, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x400)
li x24, 0x870d182fb7a96824 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f18, 0(x2) # load 0x00000400 from memory into f18
fmaxm.h f24, f21, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8400)
li x11, 0x30e1c41bad2818f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f6, 0(x2) # load 0x000003ff from memory into f6
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
fmaxm.h f11, f6, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7bff)
li x28, 0x318405edd8c8fda0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f26, 0(x2) # load 0x000003ff from memory into f26
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f2, 0(x2) # load 0x00007bff from memory into f2
fmaxm.h f28, f26, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfbff)
li x19, 0xcd3b4214c1e97b27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
fmaxm.h f19, f12, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x3ff)
li x13, 0xd583f126a7cce95f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f21, 0(x2) # load 0x000003ff from memory into f21
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f15, 0(x2) # load 0x000003ff from memory into f15
fmaxm.h f13, f21, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x83ff)
li x20, 0xaaa90ef2c71954da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
fmaxm.h f20, f14, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x200)
li x19, 0x80daf7a8e4a1fb90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
fmaxm.h f19, f14, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8200)
li x10, 0x9bcb935b94f862ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f30, 0(x2) # load 0x00008200 from memory into f30
fmaxm.h f10, f11, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x1)
li x29, 0xab899320fb250a51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f24, 0(x2) # load 0x000003ff from memory into f24
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
fmaxm.h f29, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x8001)
li x7, 0x9e29df8e5ac1c47d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f18, 0(x2) # load 0x000003ff from memory into f18
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fmaxm.h f7, f18, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c00)
li x30, 0x6a9555d2b21b86f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f12, 0(x2) # load 0x00007c00 from memory into f12
fmaxm.h f30, f27, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xfc00)
li x6, 0x56608b79a397fdf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f29, 0(x2) # load 0x0000fc00 from memory into f29
fmaxm.h f6, f23, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7e00)
li x29, 0x10c0f06772d94962 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
fmaxm.h f29, f27, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7fff)
li x24, 0x6e0fd7790379eb7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
fmaxm.h f24, f10, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7c01)
li x21, 0x269e07c053776b77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
fmaxm.h f21, f7, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x7dff)
li x4, 0xe13e9480220714cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f30, 0(x2) # load 0x000003ff from memory into f30
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f29, 0(x2) # load 0x00007dff from memory into f29
fmaxm.h f4, f30, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0x58b4)
li x4, 0x4e6149eccd61fcc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f9, 0(x2) # load 0x000003ff from memory into f9
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
fmaxm.h f4, f9, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff fs2 = 0xc93a)
li x19, 0xba071b5a9a6130d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f16, 0(x2) # load 0x0000c93a from memory into f16
fmaxm.h f19, f11, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x0)
li x26, 0xd25333cabfc1e907 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
fmaxm.h f26, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8000)
li x20, 0x464355b127e6324a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f23, 0(x2) # load 0x000083ff from memory into f23
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
fmaxm.h f20, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3c00)
li x13, 0x5d1488a0736f485c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f30, 0(x2) # load 0x00003c00 from memory into f30
fmaxm.h f13, f11, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbc00)
li x31, 0x054c8847ed41aaa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f24, 0(x2) # load 0x000083ff from memory into f24
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f16, 0(x2) # load 0x0000bc00 from memory into f16
fmaxm.h f31, f24, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3e00)
li x5, 0x7f0333d2aff653a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f26, 0(x2) # load 0x000083ff from memory into f26
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f12, 0(x2) # load 0x00003e00 from memory into f12
fmaxm.h f5, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xbe00)
li x30, 0xdbcf361c169ee91b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f28, 0(x2) # load 0x0000be00 from memory into f28
fmaxm.h f30, f3, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x4000)
li x24, 0x0139e58fe7b7fef0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f7, 0(x2) # load 0x000083ff from memory into f7
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f4, 0(x2) # load 0x00004000 from memory into f4
fmaxm.h f24, f7, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc000)
li x29, 0xda784ffa4a74c3ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f11, 0(x2) # load 0x000083ff from memory into f11
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f17, 0(x2) # load 0x0000c000 from memory into f17
fmaxm.h f29, f11, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x400)
li x13, 0xa00cd97937d49b58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f30, 0(x2) # load 0x000083ff from memory into f30
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
fmaxm.h f13, f30, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8400)
li x9, 0xa2dd3213a536491e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
fmaxm.h f9, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7bff)
li x9, 0x9740869c717d173e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
fmaxm.h f9, f12, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfbff)
li x5, 0x3fc065482b0abc97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f19, 0(x2) # load 0x000083ff from memory into f19
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
fmaxm.h f5, f19, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x3ff)
li x16, 0x98f45425aecd5e7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f20, 0(x2) # load 0x000083ff from memory into f20
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f14, 0(x2) # load 0x000003ff from memory into f14
fmaxm.h f16, f20, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x83ff)
li x12, 0x7b2c8856ce844f01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
fmaxm.h f12, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x200)
li x5, 0xfe20ca33b35b5825 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f12, 0(x2) # load 0x000083ff from memory into f12
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f26, 0(x2) # load 0x00000200 from memory into f26
fmaxm.h f5, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8200)
li x23, 0x08f60ec208248694 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f29, 0(x2) # load 0x000083ff from memory into f29
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
fmaxm.h f23, f29, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x1)
li x15, 0x50a500538087b638 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f16, 0(x2) # load 0x00000001 from memory into f16
fmaxm.h f15, f9, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x8001)
li x26, 0xb8864704a255bfb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f25, 0(x2) # load 0x000083ff from memory into f25
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
fmaxm.h f26, f25, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c00)
li x31, 0xec407a7b13758a6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
fmaxm.h f31, f3, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xfc00)
li x23, 0xd20c225bd8f7499e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
fmaxm.h f23, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7e00)
li x10, 0x42f8fa79cdb65f85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f13, 0(x2) # load 0x000083ff from memory into f13
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
fmaxm.h f10, f13, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7fff)
li x9, 0xb6fecbf8d3cca3c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f5, 0(x2) # load 0x000083ff from memory into f5
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
fmaxm.h f9, f5, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7c01)
li x1, 0x114e809f5bbe0b95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f2, 0(x2) # load 0x000083ff from memory into f2
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f15, 0(x2) # load 0x00007c01 from memory into f15
fmaxm.h f1, f2, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x7dff)
li x18, 0x527c72f6b16c5def # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
fmaxm.h f18, f22, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0x58b4)
li x2, 0x167a0b6e86c097b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f8, 0(x2) # load 0x000083ff from memory into f8
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
fmaxm.h f2, f8, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x83ff fs2 = 0xc93a)
li x4, 0x65a95b9a048d5689 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
fmaxm.h f4, f9, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x0)
li x8, 0xfb177ade77e1f9ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f28, 0(x2) # load 0x00000000 from memory into f28
fmaxm.h f8, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8000)
li x8, 0xfcfc66ea38accd12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fmaxm.h f8, f28, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3c00)
li x2, 0xdb2d17ee82d8c0c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f23, 0(x2) # load 0x00003c00 from memory into f23
fmaxm.h f2, f20, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbc00)
li x6, 0x983682f92dfc7378 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f9, 0(x2) # load 0x00000200 from memory into f9
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
fmaxm.h f6, f9, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3e00)
li x3, 0x335a95e9147bb640 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f13, 0(x2) # load 0x00000200 from memory into f13
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
fmaxm.h f3, f13, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xbe00)
li x26, 0x2f3ed31aaef9a5e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f6, 0(x2) # load 0x0000be00 from memory into f6
fmaxm.h f26, f19, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x4000)
li x24, 0xbd63254cf2258b35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f25, 0(x2) # load 0x00000200 from memory into f25
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
fmaxm.h f24, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc000)
li x20, 0x7d6c74d2730ae6cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f27, 0(x2) # load 0x0000c000 from memory into f27
fmaxm.h f20, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x400)
li x25, 0x8bf6ee0d76574c0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f7, 0(x2) # load 0x00000400 from memory into f7
fmaxm.h f25, f16, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8400)
li x4, 0x5fd57afe192d2166 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f28, 0(x2) # load 0x00008400 from memory into f28
fmaxm.h f4, f20, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7bff)
li x11, 0x2e4b9488b454b174 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f8, 0(x2) # load 0x00007bff from memory into f8
fmaxm.h f11, f7, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfbff)
li x15, 0x6104580a5546d02a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f14, 0(x2) # load 0x00000200 from memory into f14
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
fmaxm.h f15, f14, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x3ff)
li x4, 0x9b0874791a0e91b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
fmaxm.h f4, f28, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x83ff)
li x28, 0xf3bfcd5c3534b8a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f29, 0(x2) # load 0x00000200 from memory into f29
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f9, 0(x2) # load 0x000083ff from memory into f9
fmaxm.h f28, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x200)
li x16, 0x20edb1bff7e20a17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f7, 0(x2) # load 0x00000200 from memory into f7
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
fmaxm.h f16, f7, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8200)
li x4, 0x6478d593d49a6b6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
fmaxm.h f4, f3, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x1)
li x23, 0x1b328044e42aad06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f28, 0(x2) # load 0x00000200 from memory into f28
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
fmaxm.h f23, f28, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x8001)
li x22, 0xce7b0f202dca178c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f11, 0(x2) # load 0x00000200 from memory into f11
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
fmaxm.h f22, f11, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c00)
li x24, 0xf08f7fefddd97e37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
fmaxm.h f24, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xfc00)
li x19, 0x9d8e574e55ed2db0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
fmaxm.h f19, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7e00)
li x2, 0xe74007ae63815c36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f21, 0(x2) # load 0x00000200 from memory into f21
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
fmaxm.h f2, f21, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7fff)
li x19, 0xe0e5b6a87b37fb88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f30, 0(x2) # load 0x00000200 from memory into f30
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
fmaxm.h f19, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7c01)
li x20, 0x72550bf517c6f2c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f12, 0(x2) # load 0x00000200 from memory into f12
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
fmaxm.h f20, f12, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x7dff)
li x13, 0x9830558800ee811d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f3, 0(x2) # load 0x00000200 from memory into f3
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
fmaxm.h f13, f3, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0x58b4)
li x1, 0x9a62725efa4caf26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f24, 0(x2) # load 0x00000200 from memory into f24
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
fmaxm.h f1, f24, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x200 fs2 = 0xc93a)
li x10, 0x0379f2c1d3360deb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f5, 0(x2) # load 0x0000c93a from memory into f5
fmaxm.h f10, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x0)
li x6, 0x7b1efb75764a0a18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f22, 0(x2) # load 0x00000000 from memory into f22
fmaxm.h f6, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8000)
li x17, 0x65aad5e61de30dab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f4, 0(x2) # load 0x00008200 from memory into f4
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f27, 0(x2) # load 0x00008000 from memory into f27
fmaxm.h f17, f4, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3c00)
li x19, 0xe92427150d87f553 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f13, 0(x2) # load 0x00003c00 from memory into f13
fmaxm.h f19, f23, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbc00)
li x28, 0x0fb32c9175235dad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fmaxm.h f28, f5, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3e00)
li x6, 0x32ef0d9927fd5f50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f21, 0(x2) # load 0x00003e00 from memory into f21
fmaxm.h f6, f17, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xbe00)
li x19, 0xdeeb6959796ab14e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
fmaxm.h f19, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x4000)
li x30, 0x4c327dc15871269b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f27, 0(x2) # load 0x00008200 from memory into f27
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f15, 0(x2) # load 0x00004000 from memory into f15
fmaxm.h f30, f27, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc000)
li x12, 0xca2a86a224b2d6c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f14, 0(x2) # load 0x0000c000 from memory into f14
fmaxm.h f12, f8, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x400)
li x12, 0x1ccc63043735b8d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f5, 0(x2) # load 0x00008200 from memory into f5
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
fmaxm.h f12, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8400)
li x13, 0x9345206c6da88a5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f11, 0(x2) # load 0x00008400 from memory into f11
fmaxm.h f13, f18, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7bff)
li x8, 0x2ca956e955f9e2f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f10, 0(x2) # load 0x00007bff from memory into f10
fmaxm.h f8, f22, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfbff)
li x6, 0x897c2b03d6e24749 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f16, 0(x2) # load 0x00008200 from memory into f16
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f24, 0(x2) # load 0x0000fbff from memory into f24
fmaxm.h f6, f16, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x3ff)
li x29, 0xa0eb1d1015828dab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f4, 0(x2) # load 0x000003ff from memory into f4
fmaxm.h f29, f22, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x83ff)
li x30, 0xc7f23ffbaaf30f33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f7, 0(x2) # load 0x00008200 from memory into f7
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
fmaxm.h f30, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x200)
li x6, 0xf6a644eb6b5bebe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f18, 0(x2) # load 0x00008200 from memory into f18
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f10, 0(x2) # load 0x00000200 from memory into f10
fmaxm.h f6, f18, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8200)
li x11, 0x021258d9fdc9f70d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f1, 0(x2) # load 0x00008200 from memory into f1
fmaxm.h f11, f12, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x1)
li x11, 0xa41d09a0b13aa49b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f31, 0(x2) # load 0x00008200 from memory into f31
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
fmaxm.h f11, f31, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x8001)
li x21, 0xc6b1505ee8a193e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
fmaxm.h f21, f13, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c00)
li x17, 0xc77d77357fc8373a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f20, 0(x2) # load 0x00008200 from memory into f20
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f19, 0(x2) # load 0x00007c00 from memory into f19
fmaxm.h f17, f20, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xfc00)
li x16, 0x0ff57c28c6a80ce7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f3, 0(x2) # load 0x00008200 from memory into f3
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f31, 0(x2) # load 0x0000fc00 from memory into f31
fmaxm.h f16, f3, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7e00)
li x31, 0x8d36987e296c1a2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f13, 0(x2) # load 0x00008200 from memory into f13
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
fmaxm.h f31, f13, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7fff)
li x30, 0x64fd3b28b2728cf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
fmaxm.h f30, f23, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7c01)
li x15, 0x10007ea18ac25ed7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f22, 0(x2) # load 0x00008200 from memory into f22
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
fmaxm.h f15, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x7dff)
li x24, 0x104428ae6e5dad7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
fmaxm.h f24, f23, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0x58b4)
li x23, 0xd8479d0f296f973a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f8, 0(x2) # load 0x00008200 from memory into f8
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fmaxm.h f23, f8, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8200 fs2 = 0xc93a)
li x6, 0x6d95f312c229a3bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f25, 0(x2) # load 0x00008200 from memory into f25
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
fmaxm.h f6, f25, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x3, 0xcc5a0e607b523e0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
fmaxm.h f3, f5, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000)
li x14, 0xc40fd5b360181b6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
fmaxm.h f14, f20, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3c00)
li x8, 0x7da98d7c5a8a77a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fmaxm.h f8, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbc00)
li x22, 0xc40c103525a2f850 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f30, 0(x2) # load 0x00000001 from memory into f30
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f8, 0(x2) # load 0x0000bc00 from memory into f8
fmaxm.h f22, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3e00)
li x6, 0x23bc83b6fffd58e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f11, 0(x2) # load 0x00000001 from memory into f11
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
fmaxm.h f6, f11, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbe00)
li x30, 0x8a2b14c507ce6c8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f10, 0(x2) # load 0x0000be00 from memory into f10
fmaxm.h f30, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000)
li x16, 0x9f683f1b0d1a4b7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f10, 0(x2) # load 0x00004000 from memory into f10
fmaxm.h f16, f15, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000)
li x22, 0x93c49a22243ee96e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f20, 0(x2) # load 0x0000c000 from memory into f20
fmaxm.h f22, f13, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x400)
li x30, 0x95549ceb8a44b829 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f10, 0(x2) # load 0x00000001 from memory into f10
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f1, 0(x2) # load 0x00000400 from memory into f1
fmaxm.h f30, f10, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8400)
li x26, 0xc3c2da8236a7ae87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f15, 0(x2) # load 0x00000001 from memory into f15
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f30, 0(x2) # load 0x00008400 from memory into f30
fmaxm.h f26, f15, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7bff)
li x2, 0x874f010e631a8ba3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
fmaxm.h f2, f20, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfbff)
li x27, 0x4d3e29a36bdb0a49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f9, 0(x2) # load 0x00000001 from memory into f9
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
fmaxm.h f27, f9, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff)
li x13, 0x11aa05094963a70b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
fmaxm.h f13, f6, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x83ff)
li x11, 0x13dfea247e463edb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
fmaxm.h f11, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x200)
li x21, 0xb4bbabb9c5b418e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f13, 0(x2) # load 0x00000001 from memory into f13
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
fmaxm.h f21, f13, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8200)
li x15, 0x946555b6ccb7ebbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
fmaxm.h f15, f6, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x25, 0xe09cb2d4b1f98077 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f29, 0(x2) # load 0x00000001 from memory into f29
fmaxm.h f25, f5, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8001)
li x24, 0x7b6d95317d1c96c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
fmaxm.h f24, f5, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c00)
li x29, 0x46cecc809c7fd9eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f24, 0(x2) # load 0x00000001 from memory into f24
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f4, 0(x2) # load 0x00007c00 from memory into f4
fmaxm.h f29, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfc00)
li x5, 0x80af2118defac6d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f18, 0(x2) # load 0x00000001 from memory into f18
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
fmaxm.h f5, f18, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7e00)
li x24, 0x8806be2d2e0983a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f23, 0(x2) # load 0x00000001 from memory into f23
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
fmaxm.h f24, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fff)
li x1, 0xe0151c22876ce271 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f6, 0(x2) # load 0x00000001 from memory into f6
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
fmaxm.h f1, f6, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7c01)
li x30, 0x719c5026c72d544c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f8, 0(x2) # load 0x00000001 from memory into f8
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
fmaxm.h f30, f8, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7dff)
li x24, 0x1df005a74d17f2f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f25, 0(x2) # load 0x00000001 from memory into f25
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f13, 0(x2) # load 0x00007dff from memory into f13
fmaxm.h f24, f25, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x58b4)
li x30, 0xa82ad3146ac5bc62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f12, 0(x2) # load 0x00000001 from memory into f12
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
fmaxm.h f30, f12, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc93a)
li x30, 0x972b0e4eaf6e4e42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
fmaxm.h f30, f2, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x0)
li x26, 0x6a7bd189f73c78c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
fmaxm.h f26, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8000)
li x16, 0x9d8d3cafbcdd3287 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f6, 0(x2) # load 0x00008001 from memory into f6
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f28, 0(x2) # load 0x00008000 from memory into f28
fmaxm.h f16, f6, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3c00)
li x8, 0x0d4eb95cecbbf262 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f27, 0(x2) # load 0x00003c00 from memory into f27
fmaxm.h f8, f11, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbc00)
li x26, 0xf72c8ef2661ddeaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f14, 0(x2) # load 0x0000bc00 from memory into f14
fmaxm.h f26, f13, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3e00)
li x21, 0xa5f8a42a3b29393a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f13, 0(x2) # load 0x00008001 from memory into f13
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f10, 0(x2) # load 0x00003e00 from memory into f10
fmaxm.h f21, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xbe00)
li x6, 0xacb62a3f1cfd8d00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
fmaxm.h f6, f17, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x4000)
li x29, 0x65fdb30acb339f48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f27, 0(x2) # load 0x00004000 from memory into f27
fmaxm.h f29, f19, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc000)
li x27, 0xe641eedd9de99f6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f29, 0(x2) # load 0x00008001 from memory into f29
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f30, 0(x2) # load 0x0000c000 from memory into f30
fmaxm.h f27, f29, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x400)
li x2, 0x38dfd16be7c578e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f21, 0(x2) # load 0x00000400 from memory into f21
fmaxm.h f2, f15, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8400)
li x4, 0x54215d94ad4afec7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f20, 0(x2) # load 0x00008001 from memory into f20
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f27, 0(x2) # load 0x00008400 from memory into f27
fmaxm.h f4, f20, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7bff)
li x30, 0x64581854209b6aff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f2, 0(x2) # load 0x00008001 from memory into f2
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f29, 0(x2) # load 0x00007bff from memory into f29
fmaxm.h f30, f2, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfbff)
li x26, 0x5cb440729e72f651 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f22, 0(x2) # load 0x0000fbff from memory into f22
fmaxm.h f26, f12, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x3ff)
li x22, 0xdd6570256cd33ecc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f8, 0(x2) # load 0x00008001 from memory into f8
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
fmaxm.h f22, f8, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x83ff)
li x17, 0x0851f16df49277e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f18, 0(x2) # load 0x000083ff from memory into f18
fmaxm.h f17, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x200)
li x17, 0xde5b042e73f4dbad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f27, 0(x2) # load 0x00008001 from memory into f27
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f8, 0(x2) # load 0x00000200 from memory into f8
fmaxm.h f17, f27, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8200)
li x9, 0xb67f9dfa371aa45a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f18, 0(x2) # load 0x00008001 from memory into f18
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f23, 0(x2) # load 0x00008200 from memory into f23
fmaxm.h f9, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x1)
li x14, 0x5580a95221170795 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f17, 0(x2) # load 0x00000001 from memory into f17
fmaxm.h f14, f1, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x8001)
li x25, 0xfb7bb4b427217aba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f10, 0(x2) # load 0x00008001 from memory into f10
fmaxm.h f25, f23, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c00)
li x1, 0xf87d69c7f7214c12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f22, 0(x2) # load 0x00008001 from memory into f22
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
fmaxm.h f1, f22, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xfc00)
li x3, 0xb3d872a943a649d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f7, 0(x2) # load 0x00008001 from memory into f7
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
fmaxm.h f3, f7, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7e00)
li x27, 0xd41ff94e84d326f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
fmaxm.h f27, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7fff)
li x26, 0x68d2cd277122c318 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f19, 0(x2) # load 0x00008001 from memory into f19
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f10, 0(x2) # load 0x00007fff from memory into f10
fmaxm.h f26, f19, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7c01)
li x30, 0xe08e9ef5f39ab29f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f15, 0(x2) # load 0x00008001 from memory into f15
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
fmaxm.h f30, f15, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x7dff)
li x16, 0xde66e0f3f6136664 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f11, 0(x2) # load 0x00008001 from memory into f11
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f31, 0(x2) # load 0x00007dff from memory into f31
fmaxm.h f16, f11, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0x58b4)
li x14, 0x5cdf2133fcbb3a24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f25, 0(x2) # load 0x000058b4 from memory into f25
fmaxm.h f14, f23, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8001 fs2 = 0xc93a)
li x29, 0xf7c1701347313946 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f11, 0(x2) # load 0x0000c93a from memory into f11
fmaxm.h f29, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x0)
li x8, 0x98e2a151a731a319 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f25, 0(x2) # load 0x00007c00 from memory into f25
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f17, 0(x2) # load 0x00000000 from memory into f17
fmaxm.h f8, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8000)
li x9, 0x9758acc280edc6f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
fmaxm.h f9, f28, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3c00)
li x12, 0x507de07cbac1c9f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f10, 0(x2) # load 0x00007c00 from memory into f10
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f21, 0(x2) # load 0x00003c00 from memory into f21
fmaxm.h f12, f10, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbc00)
li x25, 0x8327ca3b55250899 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f3, 0(x2) # load 0x0000bc00 from memory into f3
fmaxm.h f25, f11, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3e00)
li x5, 0x770afdca71b9c385 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f20, 0(x2) # load 0x00003e00 from memory into f20
fmaxm.h f5, f7, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xbe00)
li x4, 0x594687f66e4a302b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f5, 0(x2) # load 0x00007c00 from memory into f5
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f21, 0(x2) # load 0x0000be00 from memory into f21
fmaxm.h f4, f5, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x4000)
li x28, 0xf82373118d6a9365 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f29, 0(x2) # load 0x00007c00 from memory into f29
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fmaxm.h f28, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc000)
li x28, 0x1bfa5f9ee6e36e6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f9, 0(x2) # load 0x0000c000 from memory into f9
fmaxm.h f28, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x400)
li x10, 0x9253a01421db6b4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f11, 0(x2) # load 0x00000400 from memory into f11
fmaxm.h f10, f2, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8400)
li x23, 0x93ce957845cf8af6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f12, 0(x2) # load 0x00008400 from memory into f12
fmaxm.h f23, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7bff)
li x12, 0xc01e1fc915e62417 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f16, 0(x2) # load 0x00007bff from memory into f16
fmaxm.h f12, f27, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfbff)
li x4, 0xd5d8e2250974b5ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f21, 0(x2) # load 0x00007c00 from memory into f21
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f12, 0(x2) # load 0x0000fbff from memory into f12
fmaxm.h f4, f21, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x3ff)
li x26, 0x0f55d75d7cdcd196 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f23, 0(x2) # load 0x000003ff from memory into f23
fmaxm.h f26, f27, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x83ff)
li x1, 0xacbf06a95dd24c59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
fmaxm.h f1, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x200)
li x12, 0xf02e91bd3358f6bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f28, 0(x2) # load 0x00007c00 from memory into f28
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f20, 0(x2) # load 0x00000200 from memory into f20
fmaxm.h f12, f28, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8200)
li x28, 0x2355ff92e17ac147 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f2, 0(x2) # load 0x00007c00 from memory into f2
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
fmaxm.h f28, f2, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x1)
li x11, 0x9137dd15dccd9448 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f16, 0(x2) # load 0x00007c00 from memory into f16
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
fmaxm.h f11, f16, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x8001)
li x15, 0xa7d5a4fafdac7505 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f23, 0(x2) # load 0x00008001 from memory into f23
fmaxm.h f15, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c00)
li x18, 0x58f2b01ad8b3e33c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f14, 0(x2) # load 0x00007c00 from memory into f14
fmaxm.h f18, f11, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xfc00)
li x5, 0xa77710404526c0dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f9, 0(x2) # load 0x00007c00 from memory into f9
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fmaxm.h f5, f9, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7e00)
li x9, 0x4af9f420ff6a81a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f4, 0(x2) # load 0x00007e00 from memory into f4
fmaxm.h f9, f18, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7fff)
li x10, 0x2688c4b0e7ac1534 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
fmaxm.h f10, f11, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7c01)
li x26, 0x6c00226f1ada3576 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f7, 0(x2) # load 0x00007c00 from memory into f7
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f9, 0(x2) # load 0x00007c01 from memory into f9
fmaxm.h f26, f7, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x7dff)
li x18, 0x5a80f64f7bfb4036 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f15, 0(x2) # load 0x00007c00 from memory into f15
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f4, 0(x2) # load 0x00007dff from memory into f4
fmaxm.h f18, f15, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0x58b4)
li x21, 0x51f841b48b82470e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f18, 0(x2) # load 0x00007c00 from memory into f18
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
fmaxm.h f21, f18, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c00 fs2 = 0xc93a)
li x26, 0xbe3f95e1deec369d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f31, 0(x2) # load 0x00007c00 from memory into f31
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
fmaxm.h f26, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x0)
li x30, 0x6ebb23c33a25b219 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f5, 0(x2) # load 0x00000000 from memory into f5
fmaxm.h f30, f2, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8000)
li x30, 0xec81e1d4981f14c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f7, 0(x2) # load 0x00008000 from memory into f7
fmaxm.h f30, f3, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3c00)
li x21, 0x73ad0f2d5aa73361 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f1, 0(x2) # load 0x00003c00 from memory into f1
fmaxm.h f21, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbc00)
li x9, 0x29c188320c370963 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
fmaxm.h f9, f20, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3e00)
li x21, 0xe013fe820584108d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f15, 0(x2) # load 0x00003e00 from memory into f15
fmaxm.h f21, f19, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xbe00)
li x1, 0xfbfd9955e916b353 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f2, 0(x2) # load 0x0000fc00 from memory into f2
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f20, 0(x2) # load 0x0000be00 from memory into f20
fmaxm.h f1, f2, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x4000)
li x24, 0xbd60574f0f2ee0a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f12, 0(x2) # load 0x00004000 from memory into f12
fmaxm.h f24, f28, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc000)
li x18, 0x7198d5fa9c71b09f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f28, 0(x2) # load 0x0000fc00 from memory into f28
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f22, 0(x2) # load 0x0000c000 from memory into f22
fmaxm.h f18, f28, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x400)
li x17, 0x1f47f7a09960bb3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f12, 0(x2) # load 0x0000fc00 from memory into f12
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f13, 0(x2) # load 0x00000400 from memory into f13
fmaxm.h f17, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8400)
li x16, 0xdedcd4e3cd7fae49 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f21, 0(x2) # load 0x0000fc00 from memory into f21
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f8, 0(x2) # load 0x00008400 from memory into f8
fmaxm.h f16, f21, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7bff)
li x14, 0xc330148f0c8f193e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f7, 0(x2) # load 0x00007bff from memory into f7
fmaxm.h f14, f23, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfbff)
li x21, 0x3c4a1234d9505f4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f11, 0(x2) # load 0x0000fc00 from memory into f11
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f28, 0(x2) # load 0x0000fbff from memory into f28
fmaxm.h f21, f11, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x3ff)
li x25, 0x97bcacf86b2d2e83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f4, 0(x2) # load 0x000003ff from memory into f4
fmaxm.h f25, f13, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x83ff)
li x25, 0x6e49b64aeb359485 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f31, 0(x2) # load 0x000083ff from memory into f31
fmaxm.h f25, f6, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x200)
li x29, 0xba73dd5522fc5cc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
fmaxm.h f29, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8200)
li x12, 0x6167697245a71968 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f21, 0(x2) # load 0x00008200 from memory into f21
fmaxm.h f12, f20, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x1)
li x6, 0x717a7abdad648669 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f9, 0(x2) # load 0x0000fc00 from memory into f9
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f20, 0(x2) # load 0x00000001 from memory into f20
fmaxm.h f6, f9, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x8001)
li x13, 0x1e1ff02948a5c4c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f24, 0(x2) # load 0x00008001 from memory into f24
fmaxm.h f13, f8, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c00)
li x3, 0x99b26d89b2912dda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f19, 0(x2) # load 0x0000fc00 from memory into f19
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
fmaxm.h f3, f19, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xfc00)
li x17, 0x9bd55ca4daa6aad9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f24, 0(x2) # load 0x0000fc00 from memory into f24
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f3, 0(x2) # load 0x0000fc00 from memory into f3
fmaxm.h f17, f24, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7e00)
li x14, 0x4f755b7973e68a36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f23, 0(x2) # load 0x0000fc00 from memory into f23
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f15, 0(x2) # load 0x00007e00 from memory into f15
fmaxm.h f14, f23, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7fff)
li x13, 0x22546c218d27033b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f26, 0(x2) # load 0x0000fc00 from memory into f26
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
fmaxm.h f13, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7c01)
li x15, 0x2bc4a5909362b2a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f1, 0(x2) # load 0x0000fc00 from memory into f1
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
fmaxm.h f15, f1, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x7dff)
li x3, 0xc2a80769c77a6e1e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f14, 0(x2) # load 0x0000fc00 from memory into f14
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f27, 0(x2) # load 0x00007dff from memory into f27
fmaxm.h f3, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0x58b4)
li x8, 0x9c94c60b7f324994 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f5, 0(x2) # load 0x0000fc00 from memory into f5
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
fmaxm.h f8, f5, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfc00 fs2 = 0xc93a)
li x10, 0xde440707c3a2b550 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f8, 0(x2) # load 0x0000fc00 from memory into f8
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
fmaxm.h f10, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x0)
li x29, 0x8277ab796e0d16ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f20, 0(x2) # load 0x00000000 from memory into f20
fmaxm.h f29, f16, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8000)
li x23, 0x078cd34023f23393 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f5, 0(x2) # load 0x00008000 from memory into f5
fmaxm.h f23, f11, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3c00)
li x27, 0xf4d5dec303b545b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f2, 0(x2) # load 0x00003c00 from memory into f2
fmaxm.h f27, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbc00)
li x4, 0x9539d0ef15841b24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
fmaxm.h f4, f29, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3e00)
li x10, 0x6b9746810991390c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f17, 0(x2) # load 0x00003e00 from memory into f17
fmaxm.h f10, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xbe00)
li x7, 0x8edc60552921cc3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f9, 0(x2) # load 0x00007e00 from memory into f9
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f23, 0(x2) # load 0x0000be00 from memory into f23
fmaxm.h f7, f9, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x4000)
li x5, 0xe7fcf07ceccb298c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f22, 0(x2) # load 0x00004000 from memory into f22
fmaxm.h f5, f21, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc000)
li x13, 0x21fd609b13ad36d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
fmaxm.h f13, f3, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x400)
li x15, 0x1618630bb06e9ff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
fmaxm.h f15, f24, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8400)
li x13, 0xbe6c51a1220ac27f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f1, 0(x2) # load 0x00007e00 from memory into f1
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f4, 0(x2) # load 0x00008400 from memory into f4
fmaxm.h f13, f1, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7bff)
li x19, 0x4475411d0f8ef37f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f3, 0(x2) # load 0x00007bff from memory into f3
fmaxm.h f19, f26, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfbff)
li x21, 0xe1fda1b2aed3690b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f7, 0(x2) # load 0x0000fbff from memory into f7
fmaxm.h f21, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x3ff)
li x23, 0xe7f75c9a6a8c12b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f19, 0(x2) # load 0x00007e00 from memory into f19
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
fmaxm.h f23, f19, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x83ff)
li x20, 0xeb692715e92d06f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f22, 0(x2) # load 0x00007e00 from memory into f22
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
fmaxm.h f20, f22, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x200)
li x26, 0x361a3d5d619e4441 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f14, 0(x2) # load 0x00007e00 from memory into f14
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
fmaxm.h f26, f14, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8200)
li x27, 0xbdb4c66f5ea04c32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f11, 0(x2) # load 0x00007e00 from memory into f11
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f12, 0(x2) # load 0x00008200 from memory into f12
fmaxm.h f27, f11, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x1)
li x18, 0xcae24e133e108e8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f10, 0(x2) # load 0x00007e00 from memory into f10
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f14, 0(x2) # load 0x00000001 from memory into f14
fmaxm.h f18, f10, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x8001)
li x25, 0xbdd46ee866426b62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f17, 0(x2) # load 0x00007e00 from memory into f17
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f16, 0(x2) # load 0x00008001 from memory into f16
fmaxm.h f25, f17, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c00)
li x4, 0x673cc8bbb19fa569 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f24, 0(x2) # load 0x00007e00 from memory into f24
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f13, 0(x2) # load 0x00007c00 from memory into f13
fmaxm.h f4, f24, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xfc00)
li x2, 0x6152cac588051cf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f17, 0(x2) # load 0x0000fc00 from memory into f17
fmaxm.h f2, f26, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7e00)
li x28, 0x794662b9a148d6f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fmaxm.h f28, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7fff)
li x3, 0x58bb8b3672e14dc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f26, 0(x2) # load 0x00007e00 from memory into f26
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
fmaxm.h f3, f26, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7c01)
li x10, 0x30aa05bb6b288268 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f31, 0(x2) # load 0x00007e00 from memory into f31
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
fmaxm.h f10, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x7dff)
li x15, 0x7ddb7baa246c0466 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
fmaxm.h f15, f2, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0x58b4)
li x7, 0x17a9bf29a60fcf96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f3, 0(x2) # load 0x00007e00 from memory into f3
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f23, 0(x2) # load 0x000058b4 from memory into f23
fmaxm.h f7, f3, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7e00 fs2 = 0xc93a)
li x7, 0xdf6b978c27ac4187 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f5, 0(x2) # load 0x00007e00 from memory into f5
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
fmaxm.h f7, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x0)
li x8, 0x4ee2a3dbb6c8eb46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f1, 0(x2) # load 0x00000000 from memory into f1
fmaxm.h f8, f27, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8000)
li x25, 0x38da48f04ece3ab8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f11, 0(x2) # load 0x00007fff from memory into f11
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f14, 0(x2) # load 0x00008000 from memory into f14
fmaxm.h f25, f11, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3c00)
li x24, 0x2e63e54ee83792b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f25, 0(x2) # load 0x00007fff from memory into f25
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f31, 0(x2) # load 0x00003c00 from memory into f31
fmaxm.h f24, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbc00)
li x20, 0x398e0320c0369439 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f24, 0(x2) # load 0x0000bc00 from memory into f24
fmaxm.h f20, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3e00)
li x27, 0x7e6ca6c5a1524c85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f22, 0(x2) # load 0x00007fff from memory into f22
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f31, 0(x2) # load 0x00003e00 from memory into f31
fmaxm.h f27, f22, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xbe00)
li x26, 0x41794d9f9dd81087 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f27, 0(x2) # load 0x0000be00 from memory into f27
fmaxm.h f26, f18, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x4000)
li x13, 0xeb365dabd40cdbec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f18, 0(x2) # load 0x00007fff from memory into f18
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f24, 0(x2) # load 0x00004000 from memory into f24
fmaxm.h f13, f18, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc000)
li x29, 0x18d3d0e06d124e1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f5, 0(x2) # load 0x0000c000 from memory into f5
fmaxm.h f29, f8, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x400)
li x24, 0x23f5f95600522799 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f31, 0(x2) # load 0x00007fff from memory into f31
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f15, 0(x2) # load 0x00000400 from memory into f15
fmaxm.h f24, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8400)
li x17, 0x9d1c0812b843c7c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f7, 0(x2) # load 0x00008400 from memory into f7
fmaxm.h f17, f5, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7bff)
li x21, 0x5201c1b8877dffb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f18, 0(x2) # load 0x00007bff from memory into f18
fmaxm.h f21, f5, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfbff)
li x1, 0xb629b4487456711f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f26, 0(x2) # load 0x0000fbff from memory into f26
fmaxm.h f1, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x3ff)
li x26, 0x005e3fc2cd7c366c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f11, 0(x2) # load 0x000003ff from memory into f11
fmaxm.h f26, f7, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x83ff)
li x1, 0x1c70a06b98dc2f4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f2, 0(x2) # load 0x00007fff from memory into f2
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f10, 0(x2) # load 0x000083ff from memory into f10
fmaxm.h f1, f2, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x200)
li x5, 0x18fce556d01ec252 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f4, 0(x2) # load 0x00007fff from memory into f4
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f15, 0(x2) # load 0x00000200 from memory into f15
fmaxm.h f5, f4, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8200)
li x16, 0xecc8ac68bf8861e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f21, 0(x2) # load 0x00007fff from memory into f21
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f26, 0(x2) # load 0x00008200 from memory into f26
fmaxm.h f16, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x1)
li x18, 0x8d27c6adfdefc7ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f29, 0(x2) # load 0x00007fff from memory into f29
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f7, 0(x2) # load 0x00000001 from memory into f7
fmaxm.h f18, f29, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x8001)
li x30, 0x7a754296612668b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f15, 0(x2) # load 0x00007fff from memory into f15
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f1, 0(x2) # load 0x00008001 from memory into f1
fmaxm.h f30, f15, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c00)
li x6, 0x5c37fe2890d99e53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f8, 0(x2) # load 0x00007fff from memory into f8
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f27, 0(x2) # load 0x00007c00 from memory into f27
fmaxm.h f6, f8, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xfc00)
li x6, 0x0d5078d855149dbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f7, 0(x2) # load 0x00007fff from memory into f7
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f18, 0(x2) # load 0x0000fc00 from memory into f18
fmaxm.h f6, f7, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7e00)
li x21, 0xe37b5de62dddf8de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f6, 0(x2) # load 0x00007fff from memory into f6
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f16, 0(x2) # load 0x00007e00 from memory into f16
fmaxm.h f21, f6, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7fff)
li x14, 0x75aeb279cd95fad5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f4, 0(x2) # load 0x00007fff from memory into f4
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
fmaxm.h f14, f4, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7c01)
li x2, 0x8fe3561ed8231031 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f30, 0(x2) # load 0x00007fff from memory into f30
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
fmaxm.h f2, f30, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x7dff)
li x12, 0x4edd63602be080f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f3, 0(x2) # load 0x00007fff from memory into f3
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
fmaxm.h f12, f3, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0x58b4)
li x25, 0x153445a4f21b750a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f20, 0(x2) # load 0x00007fff from memory into f20
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
fmaxm.h f25, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fff fs2 = 0xc93a)
li x20, 0x84f89ca4eff3c7d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f4, 0(x2) # load 0x0000c93a from memory into f4
fmaxm.h f20, f13, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x0)
li x5, 0x27a4866b81c684a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f13, 0(x2) # load 0x00007c01 from memory into f13
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f8, 0(x2) # load 0x00000000 from memory into f8
fmaxm.h f5, f13, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8000)
li x29, 0x4468fc575f91cf08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f1, 0(x2) # load 0x00007c01 from memory into f1
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f3, 0(x2) # load 0x00008000 from memory into f3
fmaxm.h f29, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3c00)
li x27, 0x11e045f35246718c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f3, 0(x2) # load 0x00003c00 from memory into f3
fmaxm.h f27, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbc00)
li x9, 0xb39587af5f310581 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f26, 0(x2) # load 0x00007c01 from memory into f26
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f21, 0(x2) # load 0x0000bc00 from memory into f21
fmaxm.h f9, f26, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3e00)
li x2, 0x62687af558e504b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f21, 0(x2) # load 0x00007c01 from memory into f21
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f6, 0(x2) # load 0x00003e00 from memory into f6
fmaxm.h f2, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xbe00)
li x31, 0xd1d7b51aa4fbf462 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f20, 0(x2) # load 0x00007c01 from memory into f20
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f29, 0(x2) # load 0x0000be00 from memory into f29
fmaxm.h f31, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x4000)
li x11, 0x2399a424fe5d2153 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f5, 0(x2) # load 0x00007c01 from memory into f5
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f13, 0(x2) # load 0x00004000 from memory into f13
fmaxm.h f11, f5, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc000)
li x13, 0x5752cc59ef7913b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f4, 0(x2) # load 0x00007c01 from memory into f4
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
fmaxm.h f13, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x400)
li x28, 0xdc511f11c1ae0517 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f23, 0(x2) # load 0x00000400 from memory into f23
fmaxm.h f28, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8400)
li x14, 0x65c92a174592e2fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f6, 0(x2) # load 0x00008400 from memory into f6
fmaxm.h f14, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7bff)
li x14, 0x498ecc4e0691ac1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f19, 0(x2) # load 0x00007c01 from memory into f19
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f21, 0(x2) # load 0x00007bff from memory into f21
fmaxm.h f14, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfbff)
li x17, 0xdc2815f703c984aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f19, 0(x2) # load 0x0000fbff from memory into f19
fmaxm.h f17, f18, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x3ff)
li x27, 0xe02914837b1d8fd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f17, 0(x2) # load 0x00007c01 from memory into f17
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f7, 0(x2) # load 0x000003ff from memory into f7
fmaxm.h f27, f17, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x83ff)
li x13, 0x7b1169d33b6bf7cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f3, 0(x2) # load 0x000083ff from memory into f3
fmaxm.h f13, f24, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x200)
li x11, 0xc2cdff76152537b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f30, 0(x2) # load 0x00007c01 from memory into f30
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fmaxm.h f11, f30, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8200)
li x6, 0x7d53034b43eb696f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f15, 0(x2) # load 0x00008200 from memory into f15
fmaxm.h f6, f27, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x1)
li x15, 0xc3e0190d7434f07d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f26, 0(x2) # load 0x00000001 from memory into f26
fmaxm.h f15, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x8001)
li x2, 0x4bdf366c873459f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
fmaxm.h f2, f6, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c00)
li x28, 0x2fb8fe1540c52c35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f24, 0(x2) # load 0x00007c00 from memory into f24
fmaxm.h f28, f6, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xfc00)
li x26, 0x33f13bd3c7475e89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f25, 0(x2) # load 0x00007c01 from memory into f25
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f20, 0(x2) # load 0x0000fc00 from memory into f20
fmaxm.h f26, f25, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7e00)
li x26, 0xeee11af44de10a74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f7, 0(x2) # load 0x00007c01 from memory into f7
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f8, 0(x2) # load 0x00007e00 from memory into f8
fmaxm.h f26, f7, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7fff)
li x30, 0xb8ec33bb24ffcbe7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f8, 0(x2) # load 0x00007c01 from memory into f8
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f13, 0(x2) # load 0x00007fff from memory into f13
fmaxm.h f30, f8, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7c01)
li x11, 0xdeffcd8fff122973 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f14, 0(x2) # load 0x00007c01 from memory into f14
fmaxm.h f11, f6, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x7dff)
li x18, 0xdfa55d92b228d2c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f2, 0(x2) # load 0x00007c01 from memory into f2
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
fmaxm.h f18, f2, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0x58b4)
li x1, 0x37e714e0a25c053f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f23, 0(x2) # load 0x00007c01 from memory into f23
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f31, 0(x2) # load 0x000058b4 from memory into f31
fmaxm.h f1, f23, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7c01 fs2 = 0xc93a)
li x22, 0xb732e869ac74ab28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f28, 0(x2) # load 0x00007c01 from memory into f28
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f4, 0(x2) # load 0x0000c93a from memory into f4
fmaxm.h f22, f28, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x0)
li x14, 0x1fe9acab71ff169f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f18, 0(x2) # load 0x00000000 from memory into f18
fmaxm.h f14, f21, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8000)
li x15, 0x18630ae2ba473d28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f29, 0(x2) # load 0x00008000 from memory into f29
fmaxm.h f15, f1, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3c00)
li x14, 0x0f7f5f5011686784 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
fmaxm.h f14, f1, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbc00)
li x16, 0xbbbe346a6a3fb3c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f4, 0(x2) # load 0x0000bc00 from memory into f4
fmaxm.h f16, f15, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3e00)
li x5, 0xc3c27ffc56217de4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f14, 0(x2) # load 0x00007dff from memory into f14
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f27, 0(x2) # load 0x00003e00 from memory into f27
fmaxm.h f5, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xbe00)
li x14, 0xde68c7fde0ca3be4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f15, 0(x2) # load 0x00007dff from memory into f15
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
fmaxm.h f14, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x4000)
li x23, 0xe25b9e53988eec69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f21, 0(x2) # load 0x00007dff from memory into f21
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f18, 0(x2) # load 0x00004000 from memory into f18
fmaxm.h f23, f21, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc000)
li x22, 0xaec58ca2b00cc72a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f11, 0(x2) # load 0x00007dff from memory into f11
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f3, 0(x2) # load 0x0000c000 from memory into f3
fmaxm.h f22, f11, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x400)
li x5, 0x38414c1e427229dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f17, 0(x2) # load 0x00007dff from memory into f17
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f27, 0(x2) # load 0x00000400 from memory into f27
fmaxm.h f5, f17, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8400)
li x11, 0xb04aa2f6672d6126 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f23, 0(x2) # load 0x00008400 from memory into f23
fmaxm.h f11, f2, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7bff)
li x5, 0x193a4187f0d9240b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f17, 0(x2) # load 0x00007bff from memory into f17
fmaxm.h f5, f2, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfbff)
li x28, 0xd5ad8bfc021f77aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f17, 0(x2) # load 0x0000fbff from memory into f17
fmaxm.h f28, f24, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x3ff)
li x7, 0x22567b7eb270d286 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f12, 0(x2) # load 0x00007dff from memory into f12
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f27, 0(x2) # load 0x000003ff from memory into f27
fmaxm.h f7, f12, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x83ff)
li x19, 0xcdb0b9fdf0edf2ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f20, 0(x2) # load 0x00007dff from memory into f20
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f4, 0(x2) # load 0x000083ff from memory into f4
fmaxm.h f19, f20, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x200)
li x15, 0xf3e321316df94830 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f2, 0(x2) # load 0x00000200 from memory into f2
fmaxm.h f15, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8200)
li x11, 0xc82d304ba5c3b5ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f9, 0(x2) # load 0x00008200 from memory into f9
fmaxm.h f11, f3, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x1)
li x12, 0xc3e91b69bbf2a621 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f8, 0(x2) # load 0x00007dff from memory into f8
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f2, 0(x2) # load 0x00000001 from memory into f2
fmaxm.h f12, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x8001)
li x31, 0x0e452c5dd3aeee20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f17, 0(x2) # load 0x00008001 from memory into f17
fmaxm.h f31, f18, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c00)
li x28, 0x6b43d8f0c0ae6d4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f17, 0(x2) # load 0x00007c00 from memory into f17
fmaxm.h f28, f6, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xfc00)
li x21, 0x23564e98ba96c8eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f6, 0(x2) # load 0x00007dff from memory into f6
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f13, 0(x2) # load 0x0000fc00 from memory into f13
fmaxm.h f21, f6, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7e00)
li x29, 0x4c9ef14a4a820a96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f7, 0(x2) # load 0x00007dff from memory into f7
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f30, 0(x2) # load 0x00007e00 from memory into f30
fmaxm.h f29, f7, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7fff)
li x28, 0x2ca05966f6f2ffd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f18, 0(x2) # load 0x00007dff from memory into f18
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f5, 0(x2) # load 0x00007fff from memory into f5
fmaxm.h f28, f18, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7c01)
li x14, 0x38d2c63aba3b2d28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f24, 0(x2) # load 0x00007dff from memory into f24
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f12, 0(x2) # load 0x00007c01 from memory into f12
fmaxm.h f14, f24, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x7dff)
li x9, 0x791e3bd11bbb94ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f2, 0(x2) # load 0x00007dff from memory into f2
fmaxm.h f9, f5, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0x58b4)
li x14, 0x9f1881d2e5ec6d9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f10, 0(x2) # load 0x00007dff from memory into f10
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
fmaxm.h f14, f10, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7dff fs2 = 0xc93a)
li x14, 0xfafbe728c6631502 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f5, 0(x2) # load 0x00007dff from memory into f5
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f24, 0(x2) # load 0x0000c93a from memory into f24
fmaxm.h f14, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x0)
li x14, 0xd96a0b59eaed1a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f27, 0(x2) # load 0x00000000 from memory into f27
fmaxm.h f14, f7, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8000)
li x19, 0xa506b2b9f11ad8c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f18, 0(x2) # load 0x000058b4 from memory into f18
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f9, 0(x2) # load 0x00008000 from memory into f9
fmaxm.h f19, f18, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3c00)
li x16, 0x76f0344a3e1fe813 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f13, 0(x2) # load 0x000058b4 from memory into f13
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f22, 0(x2) # load 0x00003c00 from memory into f22
fmaxm.h f16, f13, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbc00)
li x19, 0xefbb74a042bd6dd6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f30, 0(x2) # load 0x0000bc00 from memory into f30
fmaxm.h f19, f7, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3e00)
li x29, 0xfcd84102d4d8fd33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f7, 0(x2) # load 0x00003e00 from memory into f7
fmaxm.h f29, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xbe00)
li x21, 0xfd9db8dd61cc2af1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f14, 0(x2) # load 0x0000be00 from memory into f14
fmaxm.h f21, f27, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x4000)
li x21, 0x463dd4d0caa5f933 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fmaxm.h f21, f10, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc000)
li x17, 0x569e326fc0dbf13d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f1, 0(x2) # load 0x0000c000 from memory into f1
fmaxm.h f17, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x400)
li x14, 0x1f9cd4845993ed1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f3, 0(x2) # load 0x00000400 from memory into f3
fmaxm.h f14, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8400)
li x6, 0x4e0c0b7f456edb89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f1, 0(x2) # load 0x00008400 from memory into f1
fmaxm.h f6, f30, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7bff)
li x12, 0x2d24c2b1466f1e2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f31, 0(x2) # load 0x00007bff from memory into f31
fmaxm.h f12, f19, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfbff)
li x7, 0xb6cc381f118bed93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f22, 0(x2) # load 0x000058b4 from memory into f22
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f2, 0(x2) # load 0x0000fbff from memory into f2
fmaxm.h f7, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x3ff)
li x1, 0x9a3e94de32d3dbb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f19, 0(x2) # load 0x000058b4 from memory into f19
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
fmaxm.h f1, f19, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x83ff)
li x31, 0x5e2189a8b1101d05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f11, 0(x2) # load 0x000058b4 from memory into f11
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f1, 0(x2) # load 0x000083ff from memory into f1
fmaxm.h f31, f11, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x200)
li x20, 0xf033b6831a0258cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f10, 0(x2) # load 0x000058b4 from memory into f10
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f16, 0(x2) # load 0x00000200 from memory into f16
fmaxm.h f20, f10, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8200)
li x19, 0xe4b3d78b27303f14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f9, 0(x2) # load 0x000058b4 from memory into f9
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f28, 0(x2) # load 0x00008200 from memory into f28
fmaxm.h f19, f9, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x1)
li x14, 0x82689f2d223fb37e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
fmaxm.h f14, f4, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x8001)
li x10, 0xd904fdbbacaf6424 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fmaxm.h f10, f15, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c00)
li x10, 0x7e0ffb6548b39ad6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f15, 0(x2) # load 0x000058b4 from memory into f15
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f11, 0(x2) # load 0x00007c00 from memory into f11
fmaxm.h f10, f15, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xfc00)
li x24, 0xfe57c0396c2cf7d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f15, 0(x2) # load 0x0000fc00 from memory into f15
fmaxm.h f24, f2, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7e00)
li x2, 0xc30aaba30884d371 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f30, 0(x2) # load 0x000058b4 from memory into f30
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f21, 0(x2) # load 0x00007e00 from memory into f21
fmaxm.h f2, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7fff)
li x2, 0x43dd07c5bd8028a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f12, 0(x2) # load 0x000058b4 from memory into f12
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f27, 0(x2) # load 0x00007fff from memory into f27
fmaxm.h f2, f12, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7c01)
li x21, 0xeac815ba59860502 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f17, 0(x2) # load 0x000058b4 from memory into f17
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f27, 0(x2) # load 0x00007c01 from memory into f27
fmaxm.h f21, f17, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x7dff)
li x29, 0xd21b7558d65a4bc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f3, 0(x2) # load 0x000058b4 from memory into f3
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f9, 0(x2) # load 0x00007dff from memory into f9
fmaxm.h f29, f3, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0x58b4)
li x24, 0xd2c93b860a38e9d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f2, 0(x2) # load 0x000058b4 from memory into f2
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f28, 0(x2) # load 0x000058b4 from memory into f28
fmaxm.h f24, f2, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x58b4 fs2 = 0xc93a)
li x17, 0xa348b95267442f62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f8, 0(x2) # load 0x000058b4 from memory into f8
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
fmaxm.h f17, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x0)
li x26, 0xadf6df2e79e71fc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f16, 0(x2) # load 0x00000000 from memory into f16
fmaxm.h f26, f23, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8000)
li x14, 0x528eb0b72f8bffe3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f3, 0(x2) # load 0x0000c93a from memory into f3
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f31, 0(x2) # load 0x00008000 from memory into f31
fmaxm.h f14, f3, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3c00)
li x15, 0xa2fdbc7d4d784ecd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f19, 0(x2) # load 0x0000c93a from memory into f19
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f20, 0(x2) # load 0x00003c00 from memory into f20
fmaxm.h f15, f19, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbc00)
li x12, 0xff590fb215aacfec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f5, 0(x2) # load 0x0000bc00 from memory into f5
fmaxm.h f12, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3e00)
li x13, 0x90e2acaa9566a2b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f29, 0(x2) # load 0x00003e00 from memory into f29
fmaxm.h f13, f22, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xbe00)
li x19, 0xd1c8eafe22e9c88e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f9, 0(x2) # load 0x0000be00 from memory into f9
fmaxm.h f19, f29, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x4000)
li x29, 0x863e91c14ccbbb42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f2, 0(x2) # load 0x0000c93a from memory into f2
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f5, 0(x2) # load 0x00004000 from memory into f5
fmaxm.h f29, f2, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc000)
li x13, 0xd409914bd2fa52d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f2, 0(x2) # load 0x0000c000 from memory into f2
fmaxm.h f13, f22, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x400)
li x31, 0x7edd575babcb13d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f8, 0(x2) # load 0x0000c93a from memory into f8
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f2, 0(x2) # load 0x00000400 from memory into f2
fmaxm.h f31, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8400)
li x14, 0xea57728f34f02f55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f29, 0(x2) # load 0x00008400 from memory into f29
fmaxm.h f14, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7bff)
li x27, 0xe046a3e879fbde4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f20, 0(x2) # load 0x0000c93a from memory into f20
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f26, 0(x2) # load 0x00007bff from memory into f26
fmaxm.h f27, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfbff)
li x28, 0xa73f42d995e26af6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f4, 0(x2) # load 0x0000c93a from memory into f4
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f30, 0(x2) # load 0x0000fbff from memory into f30
fmaxm.h f28, f4, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x3ff)
li x18, 0xcab42926642312d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f17, 0(x2) # load 0x0000c93a from memory into f17
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f12, 0(x2) # load 0x000003ff from memory into f12
fmaxm.h f18, f17, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x83ff)
li x12, 0x214be4388df2c2b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f13, 0(x2) # load 0x0000c93a from memory into f13
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f15, 0(x2) # load 0x000083ff from memory into f15
fmaxm.h f12, f13, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x200)
li x10, 0xf8e77af0781d79a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f6, 0(x2) # load 0x0000c93a from memory into f6
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f19, 0(x2) # load 0x00000200 from memory into f19
fmaxm.h f10, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8200)
li x29, 0xf8382b897f78fefd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f12, 0(x2) # load 0x0000c93a from memory into f12
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
fmaxm.h f29, f12, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x1)
li x24, 0x3281a9c95fc38e72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f31, 0(x2) # load 0x00000001 from memory into f31
fmaxm.h f24, f10, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x8001)
li x3, 0x688510ccd556ac39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f4, 0(x2) # load 0x0000c93a from memory into f4
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f14, 0(x2) # load 0x00008001 from memory into f14
fmaxm.h f3, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c00)
li x30, 0x0eb79698e340b1d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f28, 0(x2) # load 0x0000c93a from memory into f28
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f23, 0(x2) # load 0x00007c00 from memory into f23
fmaxm.h f30, f28, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xfc00)
li x8, 0x04891bf76d6fe621 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f16, 0(x2) # load 0x0000fc00 from memory into f16
fmaxm.h f8, f30, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7e00)
li x1, 0xa9d666e639882a42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f7, 0(x2) # load 0x0000c93a from memory into f7
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f18, 0(x2) # load 0x00007e00 from memory into f18
fmaxm.h f1, f7, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7fff)
li x4, 0x9d305b0ac7efd8bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f23, 0(x2) # load 0x0000c93a from memory into f23
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f14, 0(x2) # load 0x00007fff from memory into f14
fmaxm.h f4, f23, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7c01)
li x5, 0xd2feb112b6b7cad9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f10, 0(x2) # load 0x0000c93a from memory into f10
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f24, 0(x2) # load 0x00007c01 from memory into f24
fmaxm.h f5, f10, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x7dff)
li x11, 0x4f131c59c9eaacbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f29, 0(x2) # load 0x0000c93a from memory into f29
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f3, 0(x2) # load 0x00007dff from memory into f3
fmaxm.h f11, f29, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0x58b4)
li x5, 0xf6f3a6e251da2bab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f18, 0(x2) # load 0x0000c93a from memory into f18
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f7, 0(x2) # load 0x000058b4 from memory into f7
fmaxm.h f5, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc93a fs2 = 0xc93a)
li x27, 0x8e7cc6709bc6173a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f1, 0(x2) # load 0x0000c93a from memory into f1
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f22, 0(x2) # load 0x0000c93a from memory into f22
fmaxm.h f27, f1, f22 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xde9effa5655f714b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c615110fde95a28 # load x3 with value 0x6c615110fde95a28
sw x3, 0(x2) # store 0x6c615110fde95a28 in memory
flh f10, 0(x2) # load 0x6c615110fde95a28 from memory into f10
li x3, 0xfe1a2663c173de4c # load x3 with value 0xfe1a2663c173de4c
sw x3, 0(x2) # store 0xfe1a2663c173de4c in memory
flh f11, 0(x2) # load 0xfe1a2663c173de4c from memory into f11
fmaxm.h f0, f10, f11 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x1cac4613e761989a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1c0d8de9ddb3dc3 # load x3 with value 0xf1c0d8de9ddb3dc3
sw x3, 0(x2) # store 0xf1c0d8de9ddb3dc3 in memory
flh f13, 0(x2) # load 0xf1c0d8de9ddb3dc3 from memory into f13
li x3, 0x7787fe4132422d25 # load x3 with value 0x7787fe4132422d25
sw x3, 0(x2) # store 0x7787fe4132422d25 in memory
flh f25, 0(x2) # load 0x7787fe4132422d25 from memory into f25
fmaxm.h f1, f13, f25 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xb5dac204747ce877 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa67ae8f0ad836acb # load x3 with value 0xa67ae8f0ad836acb
sw x3, 0(x2) # store 0xa67ae8f0ad836acb in memory
flh f10, 0(x2) # load 0xa67ae8f0ad836acb from memory into f10
li x3, 0x589752746650555e # load x3 with value 0x589752746650555e
sw x3, 0(x2) # store 0x589752746650555e in memory
flh f23, 0(x2) # load 0x589752746650555e from memory into f23
fmaxm.h f2, f10, f23 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x31a96f697103e405 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x91cd35c3e513e857 # load x3 with value 0x91cd35c3e513e857
sw x3, 0(x2) # store 0x91cd35c3e513e857 in memory
flh f30, 0(x2) # load 0x91cd35c3e513e857 from memory into f30
li x3, 0x4a50048fa80c647a # load x3 with value 0x4a50048fa80c647a
sw x3, 0(x2) # store 0x4a50048fa80c647a in memory
flh f23, 0(x2) # load 0x4a50048fa80c647a from memory into f23
fmaxm.h f3, f30, f23 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xe39f33186fb4c6b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x24b6140c5c7e506d # load x3 with value 0x24b6140c5c7e506d
sw x3, 0(x2) # store 0x24b6140c5c7e506d in memory
flh f20, 0(x2) # load 0x24b6140c5c7e506d from memory into f20
li x3, 0x6d397c6b14fca38d # load x3 with value 0x6d397c6b14fca38d
sw x3, 0(x2) # store 0x6d397c6b14fca38d in memory
flh f1, 0(x2) # load 0x6d397c6b14fca38d from memory into f1
fmaxm.h f4, f20, f1 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x2469efd0e9cddcee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x71a6c394c930577f # load x3 with value 0x71a6c394c930577f
sw x3, 0(x2) # store 0x71a6c394c930577f in memory
flh f8, 0(x2) # load 0x71a6c394c930577f from memory into f8
li x3, 0x5354eb5aec038f8a # load x3 with value 0x5354eb5aec038f8a
sw x3, 0(x2) # store 0x5354eb5aec038f8a in memory
flh f13, 0(x2) # load 0x5354eb5aec038f8a from memory into f13
fmaxm.h f5, f8, f13 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xb0296eb627c1b448 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x70e5c8c36ccb77df # load x3 with value 0x70e5c8c36ccb77df
sw x3, 0(x2) # store 0x70e5c8c36ccb77df in memory
flh f10, 0(x2) # load 0x70e5c8c36ccb77df from memory into f10
li x3, 0x5657f4bf186f01e7 # load x3 with value 0x5657f4bf186f01e7
sw x3, 0(x2) # store 0x5657f4bf186f01e7 in memory
flh f16, 0(x2) # load 0x5657f4bf186f01e7 from memory into f16
fmaxm.h f6, f10, f16 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xde072dd4992727b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53d8029eed34ed47 # load x3 with value 0x53d8029eed34ed47
sw x3, 0(x2) # store 0x53d8029eed34ed47 in memory
flh f18, 0(x2) # load 0x53d8029eed34ed47 from memory into f18
li x3, 0xb16d7af11ca64ac8 # load x3 with value 0xb16d7af11ca64ac8
sw x3, 0(x2) # store 0xb16d7af11ca64ac8 in memory
flh f14, 0(x2) # load 0xb16d7af11ca64ac8 from memory into f14
fmaxm.h f7, f18, f14 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x84be74456d122f3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde5d54f7653971b1 # load x3 with value 0xde5d54f7653971b1
sw x3, 0(x2) # store 0xde5d54f7653971b1 in memory
flh f23, 0(x2) # load 0xde5d54f7653971b1 from memory into f23
li x3, 0xd07e9682728cf61e # load x3 with value 0xd07e9682728cf61e
sw x3, 0(x2) # store 0xd07e9682728cf61e in memory
flh f7, 0(x2) # load 0xd07e9682728cf61e from memory into f7
fmaxm.h f8, f23, f7 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x8ab6afd6309cfee1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xafe276cded276425 # load x3 with value 0xafe276cded276425
sw x3, 0(x2) # store 0xafe276cded276425 in memory
flh f14, 0(x2) # load 0xafe276cded276425 from memory into f14
li x3, 0x343cd6ccc6b363fe # load x3 with value 0x343cd6ccc6b363fe
sw x3, 0(x2) # store 0x343cd6ccc6b363fe in memory
flh f10, 0(x2) # load 0x343cd6ccc6b363fe from memory into f10
fmaxm.h f9, f14, f10 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x0b63b57a59347df1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7aa334bc9630a0f7 # load x3 with value 0x7aa334bc9630a0f7
sw x3, 0(x2) # store 0x7aa334bc9630a0f7 in memory
flh f26, 0(x2) # load 0x7aa334bc9630a0f7 from memory into f26
li x3, 0xf26b1b8edc59d9cc # load x3 with value 0xf26b1b8edc59d9cc
sw x3, 0(x2) # store 0xf26b1b8edc59d9cc in memory
flh f14, 0(x2) # load 0xf26b1b8edc59d9cc from memory into f14
fmaxm.h f10, f26, f14 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xf629169487bbfefc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa81409c716f27351 # load x3 with value 0xa81409c716f27351
sw x3, 0(x2) # store 0xa81409c716f27351 in memory
flh f1, 0(x2) # load 0xa81409c716f27351 from memory into f1
li x3, 0x377a28ffe0654c99 # load x3 with value 0x377a28ffe0654c99
sw x3, 0(x2) # store 0x377a28ffe0654c99 in memory
flh f26, 0(x2) # load 0x377a28ffe0654c99 from memory into f26
fmaxm.h f11, f1, f26 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x67f584a435c52dd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbbcc8564b3039e3 # load x3 with value 0xbbcc8564b3039e3
sw x3, 0(x2) # store 0xbbcc8564b3039e3 in memory
flh f24, 0(x2) # load 0xbbcc8564b3039e3 from memory into f24
li x3, 0x9dfe497e34281a60 # load x3 with value 0x9dfe497e34281a60
sw x3, 0(x2) # store 0x9dfe497e34281a60 in memory
flh f7, 0(x2) # load 0x9dfe497e34281a60 from memory into f7
fmaxm.h f12, f24, f7 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x8dbdeac7cb026366 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x38d3f61b6654be1 # load x3 with value 0x38d3f61b6654be1
sw x3, 0(x2) # store 0x38d3f61b6654be1 in memory
flh f21, 0(x2) # load 0x38d3f61b6654be1 from memory into f21
li x3, 0x98f2ab81ed94f8a0 # load x3 with value 0x98f2ab81ed94f8a0
sw x3, 0(x2) # store 0x98f2ab81ed94f8a0 in memory
flh f14, 0(x2) # load 0x98f2ab81ed94f8a0 from memory into f14
fmaxm.h f13, f21, f14 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xe30b604ecabd217f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x32532d213293f8a4 # load x3 with value 0x32532d213293f8a4
sw x3, 0(x2) # store 0x32532d213293f8a4 in memory
flh f5, 0(x2) # load 0x32532d213293f8a4 from memory into f5
li x3, 0x1de1e6df361179c # load x3 with value 0x1de1e6df361179c
sw x3, 0(x2) # store 0x1de1e6df361179c in memory
flh f22, 0(x2) # load 0x1de1e6df361179c from memory into f22
fmaxm.h f14, f5, f22 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x83986c640d9a9dfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd86d79cf521bb1e6 # load x3 with value 0xd86d79cf521bb1e6
sw x3, 0(x2) # store 0xd86d79cf521bb1e6 in memory
flh f22, 0(x2) # load 0xd86d79cf521bb1e6 from memory into f22
li x3, 0xae30ae8598713a37 # load x3 with value 0xae30ae8598713a37
sw x3, 0(x2) # store 0xae30ae8598713a37 in memory
flh f21, 0(x2) # load 0xae30ae8598713a37 from memory into f21
fmaxm.h f15, f22, f21 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x22485daa35569a6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5c325bba4e38705e # load x3 with value 0x5c325bba4e38705e
sw x3, 0(x2) # store 0x5c325bba4e38705e in memory
flh f21, 0(x2) # load 0x5c325bba4e38705e from memory into f21
li x3, 0xbf91b5f0ed023e79 # load x3 with value 0xbf91b5f0ed023e79
sw x3, 0(x2) # store 0xbf91b5f0ed023e79 in memory
flh f29, 0(x2) # load 0xbf91b5f0ed023e79 from memory into f29
fmaxm.h f16, f21, f29 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xe577271bf8e3b320 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f5ae5f2aa3ca70c # load x3 with value 0x2f5ae5f2aa3ca70c
sw x3, 0(x2) # store 0x2f5ae5f2aa3ca70c in memory
flh f20, 0(x2) # load 0x2f5ae5f2aa3ca70c from memory into f20
li x3, 0xe6380f52c6c6b3f9 # load x3 with value 0xe6380f52c6c6b3f9
sw x3, 0(x2) # store 0xe6380f52c6c6b3f9 in memory
flh f19, 0(x2) # load 0xe6380f52c6c6b3f9 from memory into f19
fmaxm.h f17, f20, f19 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x0f2f1c5eb9a0aa58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d477a1c5c29cc2c # load x3 with value 0x1d477a1c5c29cc2c
sw x3, 0(x2) # store 0x1d477a1c5c29cc2c in memory
flh f19, 0(x2) # load 0x1d477a1c5c29cc2c from memory into f19
li x3, 0xe9ff0ee4df08460f # load x3 with value 0xe9ff0ee4df08460f
sw x3, 0(x2) # store 0xe9ff0ee4df08460f in memory
flh f21, 0(x2) # load 0xe9ff0ee4df08460f from memory into f21
fmaxm.h f18, f19, f21 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xfa5d8076566c5971 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x579d2af28a6a1614 # load x3 with value 0x579d2af28a6a1614
sw x3, 0(x2) # store 0x579d2af28a6a1614 in memory
flh f23, 0(x2) # load 0x579d2af28a6a1614 from memory into f23
li x3, 0xe966a9750820dd3a # load x3 with value 0xe966a9750820dd3a
sw x3, 0(x2) # store 0xe966a9750820dd3a in memory
flh f9, 0(x2) # load 0xe966a9750820dd3a from memory into f9
fmaxm.h f19, f23, f9 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xe67aa40b3ebe05f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8fef780091468205 # load x3 with value 0x8fef780091468205
sw x3, 0(x2) # store 0x8fef780091468205 in memory
flh f10, 0(x2) # load 0x8fef780091468205 from memory into f10
li x3, 0x2c72005b4bcff696 # load x3 with value 0x2c72005b4bcff696
sw x3, 0(x2) # store 0x2c72005b4bcff696 in memory
flh f15, 0(x2) # load 0x2c72005b4bcff696 from memory into f15
fmaxm.h f20, f10, f15 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xbdee4445faeb9b10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x10741fdac40bd141 # load x3 with value 0x10741fdac40bd141
sw x3, 0(x2) # store 0x10741fdac40bd141 in memory
flh f4, 0(x2) # load 0x10741fdac40bd141 from memory into f4
li x3, 0x76f2b443876207e4 # load x3 with value 0x76f2b443876207e4
sw x3, 0(x2) # store 0x76f2b443876207e4 in memory
flh f23, 0(x2) # load 0x76f2b443876207e4 from memory into f23
fmaxm.h f21, f4, f23 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x5d30eef07d60d420 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfc3e1e626438f99a # load x3 with value 0xfc3e1e626438f99a
sw x3, 0(x2) # store 0xfc3e1e626438f99a in memory
flh f27, 0(x2) # load 0xfc3e1e626438f99a from memory into f27
li x3, 0xb22d38913e33e014 # load x3 with value 0xb22d38913e33e014
sw x3, 0(x2) # store 0xb22d38913e33e014 in memory
flh f9, 0(x2) # load 0xb22d38913e33e014 from memory into f9
fmaxm.h f22, f27, f9 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x351fd4ba05eef868 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x41229a884948aeaa # load x3 with value 0x41229a884948aeaa
sw x3, 0(x2) # store 0x41229a884948aeaa in memory
flh f3, 0(x2) # load 0x41229a884948aeaa from memory into f3
li x3, 0xea92ebcb67ad662c # load x3 with value 0xea92ebcb67ad662c
sw x3, 0(x2) # store 0xea92ebcb67ad662c in memory
flh f29, 0(x2) # load 0xea92ebcb67ad662c from memory into f29
fmaxm.h f23, f3, f29 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x410459ecb3a20304 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x537b1585b0caf4db # load x3 with value 0x537b1585b0caf4db
sw x3, 0(x2) # store 0x537b1585b0caf4db in memory
flh f13, 0(x2) # load 0x537b1585b0caf4db from memory into f13
li x3, 0x336a7cda3cda086f # load x3 with value 0x336a7cda3cda086f
sw x3, 0(x2) # store 0x336a7cda3cda086f in memory
flh f20, 0(x2) # load 0x336a7cda3cda086f from memory into f20
fmaxm.h f24, f13, f20 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xfd062dceaa677484 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3f0ff8f4d26f886 # load x3 with value 0xb3f0ff8f4d26f886
sw x3, 0(x2) # store 0xb3f0ff8f4d26f886 in memory
flh f4, 0(x2) # load 0xb3f0ff8f4d26f886 from memory into f4
li x3, 0xe447ee4feaa2178 # load x3 with value 0xe447ee4feaa2178
sw x3, 0(x2) # store 0xe447ee4feaa2178 in memory
flh f18, 0(x2) # load 0xe447ee4feaa2178 from memory into f18
fmaxm.h f25, f4, f18 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xc6791f1657052d92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x258cca2279034b30 # load x3 with value 0x258cca2279034b30
sw x3, 0(x2) # store 0x258cca2279034b30 in memory
flh f11, 0(x2) # load 0x258cca2279034b30 from memory into f11
li x3, 0xd4f46dbddd7cb21f # load x3 with value 0xd4f46dbddd7cb21f
sw x3, 0(x2) # store 0xd4f46dbddd7cb21f in memory
flh f21, 0(x2) # load 0xd4f46dbddd7cb21f from memory into f21
fmaxm.h f26, f11, f21 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xb0a6141c46835133 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd046990eab59b280 # load x3 with value 0xd046990eab59b280
sw x3, 0(x2) # store 0xd046990eab59b280 in memory
flh f2, 0(x2) # load 0xd046990eab59b280 from memory into f2
li x3, 0xb727d7c85362e2ee # load x3 with value 0xb727d7c85362e2ee
sw x3, 0(x2) # store 0xb727d7c85362e2ee in memory
flh f8, 0(x2) # load 0xb727d7c85362e2ee from memory into f8
fmaxm.h f27, f2, f8 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x59db8a309baa42fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd28d4bd676593ebc # load x3 with value 0xd28d4bd676593ebc
sw x3, 0(x2) # store 0xd28d4bd676593ebc in memory
flh f9, 0(x2) # load 0xd28d4bd676593ebc from memory into f9
li x3, 0xf0377ae98a9d72a8 # load x3 with value 0xf0377ae98a9d72a8
sw x3, 0(x2) # store 0xf0377ae98a9d72a8 in memory
flh f19, 0(x2) # load 0xf0377ae98a9d72a8 from memory into f19
fmaxm.h f28, f9, f19 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x139aa154663ac4f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e5bad52cd11c044 # load x3 with value 0x5e5bad52cd11c044
sw x3, 0(x2) # store 0x5e5bad52cd11c044 in memory
flh f1, 0(x2) # load 0x5e5bad52cd11c044 from memory into f1
li x3, 0x73e76deacd8cb8b3 # load x3 with value 0x73e76deacd8cb8b3
sw x3, 0(x2) # store 0x73e76deacd8cb8b3 in memory
flh f5, 0(x2) # load 0x73e76deacd8cb8b3 from memory into f5
fmaxm.h f29, f1, f5 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xe694364509df38d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1eb67807f22bc401 # load x3 with value 0x1eb67807f22bc401
sw x3, 0(x2) # store 0x1eb67807f22bc401 in memory
flh f29, 0(x2) # load 0x1eb67807f22bc401 from memory into f29
li x3, 0xa99972ae437bc93d # load x3 with value 0xa99972ae437bc93d
sw x3, 0(x2) # store 0xa99972ae437bc93d in memory
flh f18, 0(x2) # load 0xa99972ae437bc93d from memory into f18
fmaxm.h f30, f29, f18 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x4b5ae085afe48d9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc4badce00fd6279d # load x3 with value 0xc4badce00fd6279d
sw x3, 0(x2) # store 0xc4badce00fd6279d in memory
flh f23, 0(x2) # load 0xc4badce00fd6279d from memory into f23
li x3, 0xfdc315b8dcf6b93 # load x3 with value 0xfdc315b8dcf6b93
sw x3, 0(x2) # store 0xfdc315b8dcf6b93 in memory
flh f11, 0(x2) # load 0xfdc315b8dcf6b93 from memory into f11
fmaxm.h f31, f23, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x19, 0x6670713969b2f594 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x76eed82f0beaf9cc # load x3 with value 0x76eed82f0beaf9cc
sw x3, 0(x2) # store 0x76eed82f0beaf9cc in memory
flh f0, 0(x2) # load 0x76eed82f0beaf9cc from memory into f0
li x3, 0xfeb63fcfc7bafa69 # load x3 with value 0xfeb63fcfc7bafa69
sw x3, 0(x2) # store 0xfeb63fcfc7bafa69 in memory
flh f10, 0(x2) # load 0xfeb63fcfc7bafa69 from memory into f10
fmaxm.h f19, f0, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x2, 0xcb859a91e64147b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb7b317ac3461fea # load x3 with value 0xfb7b317ac3461fea
sw x3, 0(x2) # store 0xfb7b317ac3461fea in memory
flh f1, 0(x2) # load 0xfb7b317ac3461fea from memory into f1
li x3, 0x5705be77a7df1c98 # load x3 with value 0x5705be77a7df1c98
sw x3, 0(x2) # store 0x5705be77a7df1c98 in memory
flh f17, 0(x2) # load 0x5705be77a7df1c98 from memory into f17
fmaxm.h f2, f1, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x9, 0xdeb83a9b4a07262a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd7797cf705fd4ef4 # load x3 with value 0xd7797cf705fd4ef4
sw x3, 0(x2) # store 0xd7797cf705fd4ef4 in memory
flh f2, 0(x2) # load 0xd7797cf705fd4ef4 from memory into f2
li x3, 0xc2b9e5643657472c # load x3 with value 0xc2b9e5643657472c
sw x3, 0(x2) # store 0xc2b9e5643657472c in memory
flh f3, 0(x2) # load 0xc2b9e5643657472c from memory into f3
fmaxm.h f9, f2, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x18, 0x4cb4e8337d614101 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ba75e654830afde # load x3 with value 0x1ba75e654830afde
sw x3, 0(x2) # store 0x1ba75e654830afde in memory
flh f3, 0(x2) # load 0x1ba75e654830afde from memory into f3
li x3, 0xf9aca334389c4241 # load x3 with value 0xf9aca334389c4241
sw x3, 0(x2) # store 0xf9aca334389c4241 in memory
flh f14, 0(x2) # load 0xf9aca334389c4241 from memory into f14
fmaxm.h f18, f3, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x15, 0x0d3e0040e2424a28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x98c4924fad9aa263 # load x3 with value 0x98c4924fad9aa263
sw x3, 0(x2) # store 0x98c4924fad9aa263 in memory
flh f4, 0(x2) # load 0x98c4924fad9aa263 from memory into f4
li x3, 0x2756f77029012af6 # load x3 with value 0x2756f77029012af6
sw x3, 0(x2) # store 0x2756f77029012af6 in memory
flh f9, 0(x2) # load 0x2756f77029012af6 from memory into f9
fmaxm.h f15, f4, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x22, 0xc5138516f31b71a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e86022d8e49a5df # load x3 with value 0x4e86022d8e49a5df
sw x3, 0(x2) # store 0x4e86022d8e49a5df in memory
flh f5, 0(x2) # load 0x4e86022d8e49a5df from memory into f5
li x3, 0x5f16c63554415efe # load x3 with value 0x5f16c63554415efe
sw x3, 0(x2) # store 0x5f16c63554415efe in memory
flh f6, 0(x2) # load 0x5f16c63554415efe from memory into f6
fmaxm.h f22, f5, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x14, 0x2469a4f7fea1047f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x457b27ab488f2605 # load x3 with value 0x457b27ab488f2605
sw x3, 0(x2) # store 0x457b27ab488f2605 in memory
flh f6, 0(x2) # load 0x457b27ab488f2605 from memory into f6
li x3, 0x1dd48ba36b4c8e95 # load x3 with value 0x1dd48ba36b4c8e95
sw x3, 0(x2) # store 0x1dd48ba36b4c8e95 in memory
flh f16, 0(x2) # load 0x1dd48ba36b4c8e95 from memory into f16
fmaxm.h f14, f6, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x26, 0xdc1c96b1fddf0968 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x33c5fb12714eeee # load x3 with value 0x33c5fb12714eeee
sw x3, 0(x2) # store 0x33c5fb12714eeee in memory
flh f7, 0(x2) # load 0x33c5fb12714eeee from memory into f7
li x3, 0x465d7b551bfe2c52 # load x3 with value 0x465d7b551bfe2c52
sw x3, 0(x2) # store 0x465d7b551bfe2c52 in memory
flh f30, 0(x2) # load 0x465d7b551bfe2c52 from memory into f30
fmaxm.h f26, f7, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x21, 0x1bdb05877e55a872 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1eafa7ed748b4698 # load x3 with value 0x1eafa7ed748b4698
sw x3, 0(x2) # store 0x1eafa7ed748b4698 in memory
flh f8, 0(x2) # load 0x1eafa7ed748b4698 from memory into f8
li x3, 0xee296eea383bbd64 # load x3 with value 0xee296eea383bbd64
sw x3, 0(x2) # store 0xee296eea383bbd64 in memory
flh f5, 0(x2) # load 0xee296eea383bbd64 from memory into f5
fmaxm.h f21, f8, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x27, 0xd4502a453570a550 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa2ddb374eaaffcac # load x3 with value 0xa2ddb374eaaffcac
sw x3, 0(x2) # store 0xa2ddb374eaaffcac in memory
flh f9, 0(x2) # load 0xa2ddb374eaaffcac from memory into f9
li x3, 0x181404b4d251fee3 # load x3 with value 0x181404b4d251fee3
sw x3, 0(x2) # store 0x181404b4d251fee3 in memory
flh f20, 0(x2) # load 0x181404b4d251fee3 from memory into f20
fmaxm.h f27, f9, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x25, 0xd6b45d9f9908edfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x74a2d0466bda33fe # load x3 with value 0x74a2d0466bda33fe
sw x3, 0(x2) # store 0x74a2d0466bda33fe in memory
flh f10, 0(x2) # load 0x74a2d0466bda33fe from memory into f10
li x3, 0x4ea13906aa9b8eea # load x3 with value 0x4ea13906aa9b8eea
sw x3, 0(x2) # store 0x4ea13906aa9b8eea in memory
flh f20, 0(x2) # load 0x4ea13906aa9b8eea from memory into f20
fmaxm.h f25, f10, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x21, 0x3f5879a1ebeb5b2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xabad5e3bedd87e3e # load x3 with value 0xabad5e3bedd87e3e
sw x3, 0(x2) # store 0xabad5e3bedd87e3e in memory
flh f11, 0(x2) # load 0xabad5e3bedd87e3e from memory into f11
li x3, 0x52aa3f2fbcac78ec # load x3 with value 0x52aa3f2fbcac78ec
sw x3, 0(x2) # store 0x52aa3f2fbcac78ec in memory
flh f28, 0(x2) # load 0x52aa3f2fbcac78ec from memory into f28
fmaxm.h f21, f11, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x16, 0xf39584c015317e4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf0cf507e8aa4707e # load x3 with value 0xf0cf507e8aa4707e
sw x3, 0(x2) # store 0xf0cf507e8aa4707e in memory
flh f12, 0(x2) # load 0xf0cf507e8aa4707e from memory into f12
li x3, 0xd66eaa5429a40390 # load x3 with value 0xd66eaa5429a40390
sw x3, 0(x2) # store 0xd66eaa5429a40390 in memory
flh f9, 0(x2) # load 0xd66eaa5429a40390 from memory into f9
fmaxm.h f16, f12, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x5, 0x907ce11e985fc4e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xec490f71c7f867b3 # load x3 with value 0xec490f71c7f867b3
sw x3, 0(x2) # store 0xec490f71c7f867b3 in memory
flh f13, 0(x2) # load 0xec490f71c7f867b3 from memory into f13
li x3, 0xd7abbacf48769229 # load x3 with value 0xd7abbacf48769229
sw x3, 0(x2) # store 0xd7abbacf48769229 in memory
flh f31, 0(x2) # load 0xd7abbacf48769229 from memory into f31
fmaxm.h f5, f13, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x30, 0x134e6ea1fad7c016 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x230d9019ca23ab2 # load x3 with value 0x230d9019ca23ab2
sw x3, 0(x2) # store 0x230d9019ca23ab2 in memory
flh f14, 0(x2) # load 0x230d9019ca23ab2 from memory into f14
li x3, 0xb011d93c5568c18b # load x3 with value 0xb011d93c5568c18b
sw x3, 0(x2) # store 0xb011d93c5568c18b in memory
flh f23, 0(x2) # load 0xb011d93c5568c18b from memory into f23
fmaxm.h f30, f14, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x18, 0x11caec0875fa080a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb69befc5d87cf76c # load x3 with value 0xb69befc5d87cf76c
sw x3, 0(x2) # store 0xb69befc5d87cf76c in memory
flh f15, 0(x2) # load 0xb69befc5d87cf76c from memory into f15
li x3, 0x245f94024ff2bf54 # load x3 with value 0x245f94024ff2bf54
sw x3, 0(x2) # store 0x245f94024ff2bf54 in memory
flh f27, 0(x2) # load 0x245f94024ff2bf54 from memory into f27
fmaxm.h f18, f15, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x21, 0xc208c4fb340e057b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x659767aa83ae6f01 # load x3 with value 0x659767aa83ae6f01
sw x3, 0(x2) # store 0x659767aa83ae6f01 in memory
flh f16, 0(x2) # load 0x659767aa83ae6f01 from memory into f16
li x3, 0x7bf6eeffda975e6d # load x3 with value 0x7bf6eeffda975e6d
sw x3, 0(x2) # store 0x7bf6eeffda975e6d in memory
flh f15, 0(x2) # load 0x7bf6eeffda975e6d from memory into f15
fmaxm.h f21, f16, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x15, 0xccf85beebddf8ab2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa2a986c7209393e7 # load x3 with value 0xa2a986c7209393e7
sw x3, 0(x2) # store 0xa2a986c7209393e7 in memory
flh f17, 0(x2) # load 0xa2a986c7209393e7 from memory into f17
li x3, 0x8908608d7d18f79e # load x3 with value 0x8908608d7d18f79e
sw x3, 0(x2) # store 0x8908608d7d18f79e in memory
flh f31, 0(x2) # load 0x8908608d7d18f79e from memory into f31
fmaxm.h f15, f17, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x15, 0xaa982130c8189cfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7263d61548fcf2e7 # load x3 with value 0x7263d61548fcf2e7
sw x3, 0(x2) # store 0x7263d61548fcf2e7 in memory
flh f18, 0(x2) # load 0x7263d61548fcf2e7 from memory into f18
li x3, 0x2ae784e55ca57530 # load x3 with value 0x2ae784e55ca57530
sw x3, 0(x2) # store 0x2ae784e55ca57530 in memory
flh f27, 0(x2) # load 0x2ae784e55ca57530 from memory into f27
fmaxm.h f15, f18, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x15, 0xc0c6d1eb76074758 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x547d890c0415b8ca # load x3 with value 0x547d890c0415b8ca
sw x3, 0(x2) # store 0x547d890c0415b8ca in memory
flh f19, 0(x2) # load 0x547d890c0415b8ca from memory into f19
li x3, 0x40e9c81208a12505 # load x3 with value 0x40e9c81208a12505
sw x3, 0(x2) # store 0x40e9c81208a12505 in memory
flh f27, 0(x2) # load 0x40e9c81208a12505 from memory into f27
fmaxm.h f15, f19, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x18, 0x824f2edcd676d12a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcba9edc0580a66c4 # load x3 with value 0xcba9edc0580a66c4
sw x3, 0(x2) # store 0xcba9edc0580a66c4 in memory
flh f20, 0(x2) # load 0xcba9edc0580a66c4 from memory into f20
li x3, 0x8a1795d0e35e6c20 # load x3 with value 0x8a1795d0e35e6c20
sw x3, 0(x2) # store 0x8a1795d0e35e6c20 in memory
flh f22, 0(x2) # load 0x8a1795d0e35e6c20 from memory into f22
fmaxm.h f18, f20, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x12, 0xe6b0a37ed2672165 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x616efc5a837db37a # load x3 with value 0x616efc5a837db37a
sw x3, 0(x2) # store 0x616efc5a837db37a in memory
flh f21, 0(x2) # load 0x616efc5a837db37a from memory into f21
li x3, 0x78eb511f0932e956 # load x3 with value 0x78eb511f0932e956
sw x3, 0(x2) # store 0x78eb511f0932e956 in memory
flh f3, 0(x2) # load 0x78eb511f0932e956 from memory into f3
fmaxm.h f12, f21, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x29, 0x30a0c08718f38b42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f12f24f8da1dd34 # load x3 with value 0x5f12f24f8da1dd34
sw x3, 0(x2) # store 0x5f12f24f8da1dd34 in memory
flh f22, 0(x2) # load 0x5f12f24f8da1dd34 from memory into f22
li x3, 0xa995a7f09b795a25 # load x3 with value 0xa995a7f09b795a25
sw x3, 0(x2) # store 0xa995a7f09b795a25 in memory
flh f12, 0(x2) # load 0xa995a7f09b795a25 from memory into f12
fmaxm.h f29, f22, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x2, 0x78d5e175b2cd4e15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcdb6736eac85ca04 # load x3 with value 0xcdb6736eac85ca04
sw x3, 0(x2) # store 0xcdb6736eac85ca04 in memory
flh f23, 0(x2) # load 0xcdb6736eac85ca04 from memory into f23
li x3, 0x1e1beee2ef57392c # load x3 with value 0x1e1beee2ef57392c
sw x3, 0(x2) # store 0x1e1beee2ef57392c in memory
flh f18, 0(x2) # load 0x1e1beee2ef57392c from memory into f18
fmaxm.h f2, f23, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x29, 0x3a560b63df055e95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe4c1f4825c141c4 # load x3 with value 0xbe4c1f4825c141c4
sw x3, 0(x2) # store 0xbe4c1f4825c141c4 in memory
flh f24, 0(x2) # load 0xbe4c1f4825c141c4 from memory into f24
li x3, 0x947f1ebc525922c0 # load x3 with value 0x947f1ebc525922c0
sw x3, 0(x2) # store 0x947f1ebc525922c0 in memory
flh f18, 0(x2) # load 0x947f1ebc525922c0 from memory into f18
fmaxm.h f29, f24, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x28, 0x2e369027c30062cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a7b4aac4cda249d # load x3 with value 0x1a7b4aac4cda249d
sw x3, 0(x2) # store 0x1a7b4aac4cda249d in memory
flh f25, 0(x2) # load 0x1a7b4aac4cda249d from memory into f25
li x3, 0x3851dc720c6c976d # load x3 with value 0x3851dc720c6c976d
sw x3, 0(x2) # store 0x3851dc720c6c976d in memory
flh f11, 0(x2) # load 0x3851dc720c6c976d from memory into f11
fmaxm.h f28, f25, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x20, 0x691d5eba56193ea7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd419dd9ed41ee6ce # load x3 with value 0xd419dd9ed41ee6ce
sw x3, 0(x2) # store 0xd419dd9ed41ee6ce in memory
flh f26, 0(x2) # load 0xd419dd9ed41ee6ce from memory into f26
li x3, 0x134de55873e6ab08 # load x3 with value 0x134de55873e6ab08
sw x3, 0(x2) # store 0x134de55873e6ab08 in memory
flh f17, 0(x2) # load 0x134de55873e6ab08 from memory into f17
fmaxm.h f20, f26, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x2, 0x74c33f8a9f89d927 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x298fc4f97e96ed79 # load x3 with value 0x298fc4f97e96ed79
sw x3, 0(x2) # store 0x298fc4f97e96ed79 in memory
flh f27, 0(x2) # load 0x298fc4f97e96ed79 from memory into f27
li x3, 0xf584791f818c737a # load x3 with value 0xf584791f818c737a
sw x3, 0(x2) # store 0xf584791f818c737a in memory
flh f26, 0(x2) # load 0xf584791f818c737a from memory into f26
fmaxm.h f2, f27, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x30, 0x0a458647372143b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa56ee5d2b94fddd8 # load x3 with value 0xa56ee5d2b94fddd8
sw x3, 0(x2) # store 0xa56ee5d2b94fddd8 in memory
flh f28, 0(x2) # load 0xa56ee5d2b94fddd8 from memory into f28
li x3, 0xea5293dc8b2cb933 # load x3 with value 0xea5293dc8b2cb933
sw x3, 0(x2) # store 0xea5293dc8b2cb933 in memory
flh f10, 0(x2) # load 0xea5293dc8b2cb933 from memory into f10
fmaxm.h f30, f28, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x28, 0x6164c3d96586d095 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf9daa0088bdb03d5 # load x3 with value 0xf9daa0088bdb03d5
sw x3, 0(x2) # store 0xf9daa0088bdb03d5 in memory
flh f29, 0(x2) # load 0xf9daa0088bdb03d5 from memory into f29
li x3, 0xc9f8af16528c6171 # load x3 with value 0xc9f8af16528c6171
sw x3, 0(x2) # store 0xc9f8af16528c6171 in memory
flh f6, 0(x2) # load 0xc9f8af16528c6171 from memory into f6
fmaxm.h f28, f29, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x29, 0x7dfc9ff7d49e0bf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x78a99037e53bec90 # load x3 with value 0x78a99037e53bec90
sw x3, 0(x2) # store 0x78a99037e53bec90 in memory
flh f30, 0(x2) # load 0x78a99037e53bec90 from memory into f30
li x3, 0x4e210aa6aba100cd # load x3 with value 0x4e210aa6aba100cd
sw x3, 0(x2) # store 0x4e210aa6aba100cd in memory
flh f22, 0(x2) # load 0x4e210aa6aba100cd from memory into f22
fmaxm.h f29, f30, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x2, 0xd929130a6acb0dbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c8effbb0d24539b # load x3 with value 0x7c8effbb0d24539b
sw x3, 0(x2) # store 0x7c8effbb0d24539b in memory
flh f31, 0(x2) # load 0x7c8effbb0d24539b from memory into f31
li x3, 0x21e0a42ed3e54a10 # load x3 with value 0x21e0a42ed3e54a10
sw x3, 0(x2) # store 0x21e0a42ed3e54a10 in memory
flh f8, 0(x2) # load 0x21e0a42ed3e54a10 from memory into f8
fmaxm.h f2, f31, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x14, 0x18f12315fcf4f679 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5592f9d7ffa6595 # load x3 with value 0x5592f9d7ffa6595
sw x3, 0(x2) # store 0x5592f9d7ffa6595 in memory
flh f27, 0(x2) # load 0x5592f9d7ffa6595 from memory into f27
li x3, 0x8127b03be2528d39 # load x3 with value 0x8127b03be2528d39
sw x3, 0(x2) # store 0x8127b03be2528d39 in memory
flh f0, 0(x2) # load 0x8127b03be2528d39 from memory into f0
fmaxm.h f14, f27, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x28, 0x61d1a2c303907aa7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3eb8cec24268449c # load x3 with value 0x3eb8cec24268449c
sw x3, 0(x2) # store 0x3eb8cec24268449c in memory
flh f29, 0(x2) # load 0x3eb8cec24268449c from memory into f29
li x3, 0x44e2755ebc5f0e73 # load x3 with value 0x44e2755ebc5f0e73
sw x3, 0(x2) # store 0x44e2755ebc5f0e73 in memory
flh f1, 0(x2) # load 0x44e2755ebc5f0e73 from memory into f1
fmaxm.h f28, f29, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x10, 0x77ec1f7a5ab712f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47d5fa85482b2f02 # load x3 with value 0x47d5fa85482b2f02
sw x3, 0(x2) # store 0x47d5fa85482b2f02 in memory
flh f1, 0(x2) # load 0x47d5fa85482b2f02 from memory into f1
li x3, 0x767977f5ae56ed8d # load x3 with value 0x767977f5ae56ed8d
sw x3, 0(x2) # store 0x767977f5ae56ed8d in memory
flh f2, 0(x2) # load 0x767977f5ae56ed8d from memory into f2
fmaxm.h f10, f1, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x7, 0x5e3492fb8e7e1500 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a1171da07e4dde8 # load x3 with value 0x1a1171da07e4dde8
sw x3, 0(x2) # store 0x1a1171da07e4dde8 in memory
flh f19, 0(x2) # load 0x1a1171da07e4dde8 from memory into f19
li x3, 0xfade8e43635c736b # load x3 with value 0xfade8e43635c736b
sw x3, 0(x2) # store 0xfade8e43635c736b in memory
flh f3, 0(x2) # load 0xfade8e43635c736b from memory into f3
fmaxm.h f7, f19, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x8, 0x324ef08cf4ac4c83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb94ce70f750cdd1d # load x3 with value 0xb94ce70f750cdd1d
sw x3, 0(x2) # store 0xb94ce70f750cdd1d in memory
flh f19, 0(x2) # load 0xb94ce70f750cdd1d from memory into f19
li x3, 0x6a0cdff129d157da # load x3 with value 0x6a0cdff129d157da
sw x3, 0(x2) # store 0x6a0cdff129d157da in memory
flh f4, 0(x2) # load 0x6a0cdff129d157da from memory into f4
fmaxm.h f8, f19, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x26, 0x054b507ed47ae06a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a41f2579ee04a89 # load x3 with value 0x1a41f2579ee04a89
sw x3, 0(x2) # store 0x1a41f2579ee04a89 in memory
flh f22, 0(x2) # load 0x1a41f2579ee04a89 from memory into f22
li x3, 0xc1329436e84484d8 # load x3 with value 0xc1329436e84484d8
sw x3, 0(x2) # store 0xc1329436e84484d8 in memory
flh f5, 0(x2) # load 0xc1329436e84484d8 from memory into f5
fmaxm.h f26, f22, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x6, 0x55b7a64e8d2ca78a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x448fb0131b4f462d # load x3 with value 0x448fb0131b4f462d
sw x3, 0(x2) # store 0x448fb0131b4f462d in memory
flh f13, 0(x2) # load 0x448fb0131b4f462d from memory into f13
li x3, 0xef2a8bd4f3e9682d # load x3 with value 0xef2a8bd4f3e9682d
sw x3, 0(x2) # store 0xef2a8bd4f3e9682d in memory
flh f6, 0(x2) # load 0xef2a8bd4f3e9682d from memory into f6
fmaxm.h f6, f13, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x26, 0x004c30e58028915e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ed6b095062e0766 # load x3 with value 0x1ed6b095062e0766
sw x3, 0(x2) # store 0x1ed6b095062e0766 in memory
flh f1, 0(x2) # load 0x1ed6b095062e0766 from memory into f1
li x3, 0xc5c6bfa53bf7d697 # load x3 with value 0xc5c6bfa53bf7d697
sw x3, 0(x2) # store 0xc5c6bfa53bf7d697 in memory
flh f7, 0(x2) # load 0xc5c6bfa53bf7d697 from memory into f7
fmaxm.h f26, f1, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x4, 0xe74fe2c2144385e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x24ffc9f3026eaa42 # load x3 with value 0x24ffc9f3026eaa42
sw x3, 0(x2) # store 0x24ffc9f3026eaa42 in memory
flh f30, 0(x2) # load 0x24ffc9f3026eaa42 from memory into f30
li x3, 0xac8e71c672deef60 # load x3 with value 0xac8e71c672deef60
sw x3, 0(x2) # store 0xac8e71c672deef60 in memory
flh f8, 0(x2) # load 0xac8e71c672deef60 from memory into f8
fmaxm.h f4, f30, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x31, 0x7f27c5cce108c480 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd75adf676838a911 # load x3 with value 0xd75adf676838a911
sw x3, 0(x2) # store 0xd75adf676838a911 in memory
flh f6, 0(x2) # load 0xd75adf676838a911 from memory into f6
li x3, 0x387fee11b6ce6acd # load x3 with value 0x387fee11b6ce6acd
sw x3, 0(x2) # store 0x387fee11b6ce6acd in memory
flh f9, 0(x2) # load 0x387fee11b6ce6acd from memory into f9
fmaxm.h f31, f6, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x26, 0x449c833fb556624b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a9a7d142e0f3920 # load x3 with value 0x4a9a7d142e0f3920
sw x3, 0(x2) # store 0x4a9a7d142e0f3920 in memory
flh f17, 0(x2) # load 0x4a9a7d142e0f3920 from memory into f17
li x3, 0xfc2768cb3abf9415 # load x3 with value 0xfc2768cb3abf9415
sw x3, 0(x2) # store 0xfc2768cb3abf9415 in memory
flh f10, 0(x2) # load 0xfc2768cb3abf9415 from memory into f10
fmaxm.h f26, f17, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x1, 0xfc7c05105471b1a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x10eeb8594761e2d9 # load x3 with value 0x10eeb8594761e2d9
sw x3, 0(x2) # store 0x10eeb8594761e2d9 in memory
flh f27, 0(x2) # load 0x10eeb8594761e2d9 from memory into f27
li x3, 0x83cfc43c0a0c86c9 # load x3 with value 0x83cfc43c0a0c86c9
sw x3, 0(x2) # store 0x83cfc43c0a0c86c9 in memory
flh f11, 0(x2) # load 0x83cfc43c0a0c86c9 from memory into f11
fmaxm.h f1, f27, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x27, 0x22000a816e396616 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3d1701658ba60fe6 # load x3 with value 0x3d1701658ba60fe6
sw x3, 0(x2) # store 0x3d1701658ba60fe6 in memory
flh f21, 0(x2) # load 0x3d1701658ba60fe6 from memory into f21
li x3, 0xd33cb82ae4253d4d # load x3 with value 0xd33cb82ae4253d4d
sw x3, 0(x2) # store 0xd33cb82ae4253d4d in memory
flh f12, 0(x2) # load 0xd33cb82ae4253d4d from memory into f12
fmaxm.h f27, f21, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x28, 0x61520d1eaf6372fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa45452c9a8d98b35 # load x3 with value 0xa45452c9a8d98b35
sw x3, 0(x2) # store 0xa45452c9a8d98b35 in memory
flh f19, 0(x2) # load 0xa45452c9a8d98b35 from memory into f19
li x3, 0x3c166aef5973d8ec # load x3 with value 0x3c166aef5973d8ec
sw x3, 0(x2) # store 0x3c166aef5973d8ec in memory
flh f13, 0(x2) # load 0x3c166aef5973d8ec from memory into f13
fmaxm.h f28, f19, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x5, 0x07554435702e314f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaea29253b66e9677 # load x3 with value 0xaea29253b66e9677
sw x3, 0(x2) # store 0xaea29253b66e9677 in memory
flh f6, 0(x2) # load 0xaea29253b66e9677 from memory into f6
li x3, 0xfd5f7ec623ed240d # load x3 with value 0xfd5f7ec623ed240d
sw x3, 0(x2) # store 0xfd5f7ec623ed240d in memory
flh f14, 0(x2) # load 0xfd5f7ec623ed240d from memory into f14
fmaxm.h f5, f6, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x14, 0xb26afac10f6d09ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe992b1ac206ab9e3 # load x3 with value 0xe992b1ac206ab9e3
sw x3, 0(x2) # store 0xe992b1ac206ab9e3 in memory
flh f12, 0(x2) # load 0xe992b1ac206ab9e3 from memory into f12
li x3, 0x4f454c502cade403 # load x3 with value 0x4f454c502cade403
sw x3, 0(x2) # store 0x4f454c502cade403 in memory
flh f15, 0(x2) # load 0x4f454c502cade403 from memory into f15
fmaxm.h f14, f12, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x24, 0x33c0e5b9e6c1a3d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb28a85d6bb635eb # load x3 with value 0xbb28a85d6bb635eb
sw x3, 0(x2) # store 0xbb28a85d6bb635eb in memory
flh f28, 0(x2) # load 0xbb28a85d6bb635eb from memory into f28
li x3, 0x83555110f472b76c # load x3 with value 0x83555110f472b76c
sw x3, 0(x2) # store 0x83555110f472b76c in memory
flh f16, 0(x2) # load 0x83555110f472b76c from memory into f16
fmaxm.h f24, f28, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x1, 0xc8923ff4800fb97e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb53fac6944b85139 # load x3 with value 0xb53fac6944b85139
sw x3, 0(x2) # store 0xb53fac6944b85139 in memory
flh f10, 0(x2) # load 0xb53fac6944b85139 from memory into f10
li x3, 0xacc170a60affb876 # load x3 with value 0xacc170a60affb876
sw x3, 0(x2) # store 0xacc170a60affb876 in memory
flh f17, 0(x2) # load 0xacc170a60affb876 from memory into f17
fmaxm.h f1, f10, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x29, 0x3e884229b366a6e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0ebf43b7252548f # load x3 with value 0xd0ebf43b7252548f
sw x3, 0(x2) # store 0xd0ebf43b7252548f in memory
flh f15, 0(x2) # load 0xd0ebf43b7252548f from memory into f15
li x3, 0xdf7ba9f571c0c4e # load x3 with value 0xdf7ba9f571c0c4e
sw x3, 0(x2) # store 0xdf7ba9f571c0c4e in memory
flh f18, 0(x2) # load 0xdf7ba9f571c0c4e from memory into f18
fmaxm.h f29, f15, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x30, 0x36a9891e4ebe72b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17e07c9aac9ceb86 # load x3 with value 0x17e07c9aac9ceb86
sw x3, 0(x2) # store 0x17e07c9aac9ceb86 in memory
flh f27, 0(x2) # load 0x17e07c9aac9ceb86 from memory into f27
li x3, 0x328933acc3ade98f # load x3 with value 0x328933acc3ade98f
sw x3, 0(x2) # store 0x328933acc3ade98f in memory
flh f19, 0(x2) # load 0x328933acc3ade98f from memory into f19
fmaxm.h f30, f27, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x31, 0x1094c62d47bf34b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x37db2470d0679230 # load x3 with value 0x37db2470d0679230
sw x3, 0(x2) # store 0x37db2470d0679230 in memory
flh f18, 0(x2) # load 0x37db2470d0679230 from memory into f18
li x3, 0xcc9803ee311b5e1a # load x3 with value 0xcc9803ee311b5e1a
sw x3, 0(x2) # store 0xcc9803ee311b5e1a in memory
flh f20, 0(x2) # load 0xcc9803ee311b5e1a from memory into f20
fmaxm.h f31, f18, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x26, 0x311648881f9d54c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0dd69c9b2d76e81 # load x3 with value 0xa0dd69c9b2d76e81
sw x3, 0(x2) # store 0xa0dd69c9b2d76e81 in memory
flh f24, 0(x2) # load 0xa0dd69c9b2d76e81 from memory into f24
li x3, 0x29551221ff3304c1 # load x3 with value 0x29551221ff3304c1
sw x3, 0(x2) # store 0x29551221ff3304c1 in memory
flh f21, 0(x2) # load 0x29551221ff3304c1 from memory into f21
fmaxm.h f26, f24, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x7, 0xdaa9b19c569f0154 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5d7f635b09c6d19 # load x3 with value 0xe5d7f635b09c6d19
sw x3, 0(x2) # store 0xe5d7f635b09c6d19 in memory
flh f13, 0(x2) # load 0xe5d7f635b09c6d19 from memory into f13
li x3, 0x99173d8f487f6720 # load x3 with value 0x99173d8f487f6720
sw x3, 0(x2) # store 0x99173d8f487f6720 in memory
flh f22, 0(x2) # load 0x99173d8f487f6720 from memory into f22
fmaxm.h f7, f13, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x19, 0xd771c6c235be4321 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb4581cedeac65a2 # load x3 with value 0xfb4581cedeac65a2
sw x3, 0(x2) # store 0xfb4581cedeac65a2 in memory
flh f1, 0(x2) # load 0xfb4581cedeac65a2 from memory into f1
li x3, 0x27e886ca005bd7ae # load x3 with value 0x27e886ca005bd7ae
sw x3, 0(x2) # store 0x27e886ca005bd7ae in memory
flh f23, 0(x2) # load 0x27e886ca005bd7ae from memory into f23
fmaxm.h f19, f1, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x27, 0x810130f540a3daaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe1bcab525bb7b26 # load x3 with value 0xe1bcab525bb7b26
sw x3, 0(x2) # store 0xe1bcab525bb7b26 in memory
flh f26, 0(x2) # load 0xe1bcab525bb7b26 from memory into f26
li x3, 0x74c80b183b33419c # load x3 with value 0x74c80b183b33419c
sw x3, 0(x2) # store 0x74c80b183b33419c in memory
flh f24, 0(x2) # load 0x74c80b183b33419c from memory into f24
fmaxm.h f27, f26, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x13, 0xdcd020fe2c54a830 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf7d913952b3c293c # load x3 with value 0xf7d913952b3c293c
sw x3, 0(x2) # store 0xf7d913952b3c293c in memory
flh f29, 0(x2) # load 0xf7d913952b3c293c from memory into f29
li x3, 0xa08f848900980d1f # load x3 with value 0xa08f848900980d1f
sw x3, 0(x2) # store 0xa08f848900980d1f in memory
flh f25, 0(x2) # load 0xa08f848900980d1f from memory into f25
fmaxm.h f13, f29, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x11, 0xd9e2d541de332afe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3038d3450d487561 # load x3 with value 0x3038d3450d487561
sw x3, 0(x2) # store 0x3038d3450d487561 in memory
flh f9, 0(x2) # load 0x3038d3450d487561 from memory into f9
li x3, 0x32730ddc2f988f8 # load x3 with value 0x32730ddc2f988f8
sw x3, 0(x2) # store 0x32730ddc2f988f8 in memory
flh f26, 0(x2) # load 0x32730ddc2f988f8 from memory into f26
fmaxm.h f11, f9, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x21, 0x65bc6e1c1866ece8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7883feb83ceb9014 # load x3 with value 0x7883feb83ceb9014
sw x3, 0(x2) # store 0x7883feb83ceb9014 in memory
flh f3, 0(x2) # load 0x7883feb83ceb9014 from memory into f3
li x3, 0x2a5cd5843250bee0 # load x3 with value 0x2a5cd5843250bee0
sw x3, 0(x2) # store 0x2a5cd5843250bee0 in memory
flh f27, 0(x2) # load 0x2a5cd5843250bee0 from memory into f27
fmaxm.h f21, f3, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x1, 0xbc7d80e22a674fdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xefb9d6152234d516 # load x3 with value 0xefb9d6152234d516
sw x3, 0(x2) # store 0xefb9d6152234d516 in memory
flh f13, 0(x2) # load 0xefb9d6152234d516 from memory into f13
li x3, 0x3c306a5f4660fdfc # load x3 with value 0x3c306a5f4660fdfc
sw x3, 0(x2) # store 0x3c306a5f4660fdfc in memory
flh f28, 0(x2) # load 0x3c306a5f4660fdfc from memory into f28
fmaxm.h f1, f13, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x20, 0x794ae871c964ca38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde8a114302e0ac8a # load x3 with value 0xde8a114302e0ac8a
sw x3, 0(x2) # store 0xde8a114302e0ac8a in memory
flh f4, 0(x2) # load 0xde8a114302e0ac8a from memory into f4
li x3, 0x3e64ad269547d613 # load x3 with value 0x3e64ad269547d613
sw x3, 0(x2) # store 0x3e64ad269547d613 in memory
flh f29, 0(x2) # load 0x3e64ad269547d613 from memory into f29
fmaxm.h f20, f4, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x27, 0x309b1b1c2d152e08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf84fefccf46ee40 # load x3 with value 0xaf84fefccf46ee40
sw x3, 0(x2) # store 0xaf84fefccf46ee40 in memory
flh f29, 0(x2) # load 0xaf84fefccf46ee40 from memory into f29
li x3, 0x62f47383e17134e8 # load x3 with value 0x62f47383e17134e8
sw x3, 0(x2) # store 0x62f47383e17134e8 in memory
flh f30, 0(x2) # load 0x62f47383e17134e8 from memory into f30
fmaxm.h f27, f29, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x23, 0x750bc525cefca1f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff45d13cf95c378 # load x3 with value 0xff45d13cf95c378
sw x3, 0(x2) # store 0xff45d13cf95c378 in memory
flh f7, 0(x2) # load 0xff45d13cf95c378 from memory into f7
li x3, 0x3c4b93889ef53c1f # load x3 with value 0x3c4b93889ef53c1f
sw x3, 0(x2) # store 0x3c4b93889ef53c1f in memory
flh f31, 0(x2) # load 0x3c4b93889ef53c1f from memory into f31
fmaxm.h f23, f7, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
