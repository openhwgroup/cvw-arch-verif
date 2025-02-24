///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/ZfaD//WALLY-COV-froundnx.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.120614
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
froundnx.d f15, f28 # perform first operation
froundnx.d f2, f15 # perform second operation

# Testcase cmp_gpr_hazard raw test
froundnx.d f12, f27 # perform first operation
froundnx.d f29, f1 # perform second operation

# Testcase cmp_gpr_hazard waw test
froundnx.d f16, f1 # perform first operation
froundnx.d f16, f24 # perform second operation

# Testcase cmp_gpr_hazard waw test
froundnx.d f27, f2 # perform first operation
froundnx.d f27, f13 # perform second operation

# Testcase cmp_gpr_hazard war test
froundnx.d f19, f16 # perform first operation
froundnx.d f16, f3 # perform second operation

# Testcase cmp_gpr_hazard war test
froundnx.d f20, f31 # perform first operation
froundnx.d f17, f23 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x9ee999e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4c649b5a # load x3 with 32 MSBs 0x000000004c649b5a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004c649b5a
sw x3, 0(x2) # store x3 (0x4c649b5a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x000000004c649b5a from memory into f0
froundnx.d f0, f0 # perform operation
froundnx.d f0, f0 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0xd10bae02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x22d8ab54 # load x3 with 32 MSBs 0x0000000022d8ab54
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000022d8ab54
sw x3, 0(x2) # store x3 (0x22d8ab54) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000022d8ab54 from memory into f1
froundnx.d f1, f1 # perform operation
froundnx.d f1, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x6755da14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x06148382 # load x3 with 32 MSBs 0x0000000006148382
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000006148382
sw x3, 0(x2) # store x3 (0x06148382) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000006148382 from memory into f2
froundnx.d f2, f2 # perform operation
froundnx.d f2, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0xe9f69351 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbe3e818 # load x3 with 32 MSBs 0x00000000dbe3e818
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000dbe3e818
sw x3, 0(x2) # store x3 (0xdbe3e818) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000dbe3e818 from memory into f3
froundnx.d f3, f3 # perform operation
froundnx.d f3, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x8ebea609 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c8f0f41 # load x3 with 32 MSBs 0x000000002c8f0f41
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002c8f0f41
sw x3, 0(x2) # store x3 (0x2c8f0f41) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x000000002c8f0f41 from memory into f4
froundnx.d f4, f4 # perform operation
froundnx.d f4, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x47328904 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x138cd959 # load x3 with 32 MSBs 0x00000000138cd959
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000138cd959
sw x3, 0(x2) # store x3 (0x138cd959) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000138cd959 from memory into f5
froundnx.d f5, f5 # perform operation
froundnx.d f5, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x60524e7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80c62d07 # load x3 with 32 MSBs 0x0000000080c62d07
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000080c62d07
sw x3, 0(x2) # store x3 (0x80c62d07) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000080c62d07 from memory into f6
froundnx.d f6, f6 # perform operation
froundnx.d f6, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0xf162670e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe8096a57 # load x3 with 32 MSBs 0x00000000e8096a57
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e8096a57
sw x3, 0(x2) # store x3 (0xe8096a57) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000e8096a57 from memory into f7
froundnx.d f7, f7 # perform operation
froundnx.d f7, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x6a89c505 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d7bc40c # load x3 with 32 MSBs 0x000000001d7bc40c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001d7bc40c
sw x3, 0(x2) # store x3 (0x1d7bc40c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000001d7bc40c from memory into f8
froundnx.d f8, f8 # perform operation
froundnx.d f8, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0x62a3f4bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x307c7e7b # load x3 with 32 MSBs 0x00000000307c7e7b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000307c7e7b
sw x3, 0(x2) # store x3 (0x307c7e7b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000307c7e7b from memory into f9
froundnx.d f9, f9 # perform operation
froundnx.d f9, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x4fe92994 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1110898 # load x3 with 32 MSBs 0x00000000b1110898
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b1110898
sw x3, 0(x2) # store x3 (0xb1110898) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000b1110898 from memory into f10
froundnx.d f10, f10 # perform operation
froundnx.d f10, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x606c9eb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0609a5ed # load x3 with 32 MSBs 0x000000000609a5ed
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000609a5ed
sw x3, 0(x2) # store x3 (0x0609a5ed) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000000609a5ed from memory into f11
froundnx.d f11, f11 # perform operation
froundnx.d f11, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0xfe2531f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x445c4b6e # load x3 with 32 MSBs 0x00000000445c4b6e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000445c4b6e
sw x3, 0(x2) # store x3 (0x445c4b6e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000445c4b6e from memory into f12
froundnx.d f12, f12 # perform operation
froundnx.d f12, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0x5dc64e63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65e15d82 # load x3 with 32 MSBs 0x0000000065e15d82
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000065e15d82
sw x3, 0(x2) # store x3 (0x65e15d82) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000065e15d82 from memory into f13
froundnx.d f13, f13 # perform operation
froundnx.d f13, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0x8a26773e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ebb03e4 # load x3 with 32 MSBs 0x000000004ebb03e4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004ebb03e4
sw x3, 0(x2) # store x3 (0x4ebb03e4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000004ebb03e4 from memory into f14
froundnx.d f14, f14 # perform operation
froundnx.d f14, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0xc82e21e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbcbcb45b # load x3 with 32 MSBs 0x00000000bcbcb45b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bcbcb45b
sw x3, 0(x2) # store x3 (0xbcbcb45b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000bcbcb45b from memory into f15
froundnx.d f15, f15 # perform operation
froundnx.d f15, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x217b8e24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6d01d874 # load x3 with 32 MSBs 0x000000006d01d874
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006d01d874
sw x3, 0(x2) # store x3 (0x6d01d874) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000006d01d874 from memory into f16
froundnx.d f16, f16 # perform operation
froundnx.d f16, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0xbaa0b75b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xefb7f1e0 # load x3 with 32 MSBs 0x00000000efb7f1e0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000efb7f1e0
sw x3, 0(x2) # store x3 (0xefb7f1e0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000efb7f1e0 from memory into f17
froundnx.d f17, f17 # perform operation
froundnx.d f17, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0xa4b35932 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x95036307 # load x3 with 32 MSBs 0x0000000095036307
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000095036307
sw x3, 0(x2) # store x3 (0x95036307) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000095036307 from memory into f18
froundnx.d f18, f18 # perform operation
froundnx.d f18, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x11960ba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6de7cf27 # load x3 with 32 MSBs 0x000000006de7cf27
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006de7cf27
sw x3, 0(x2) # store x3 (0x6de7cf27) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000006de7cf27 from memory into f19
froundnx.d f19, f19 # perform operation
froundnx.d f19, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x7c2b5f56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4b9accf # load x3 with 32 MSBs 0x00000000b4b9accf
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b4b9accf
sw x3, 0(x2) # store x3 (0xb4b9accf) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000b4b9accf from memory into f20
froundnx.d f20, f20 # perform operation
froundnx.d f20, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x4e526d72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0b187635 # load x3 with 32 MSBs 0x000000000b187635
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000b187635
sw x3, 0(x2) # store x3 (0x0b187635) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000000b187635 from memory into f21
froundnx.d f21, f21 # perform operation
froundnx.d f21, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0x2ca8ed30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb0418c9 # load x3 with 32 MSBs 0x00000000db0418c9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000db0418c9
sw x3, 0(x2) # store x3 (0xdb0418c9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000db0418c9 from memory into f22
froundnx.d f22, f22 # perform operation
froundnx.d f22, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x1b4f54e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0fa35610 # load x3 with 32 MSBs 0x000000000fa35610
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000fa35610
sw x3, 0(x2) # store x3 (0x0fa35610) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000000fa35610 from memory into f23
froundnx.d f23, f23 # perform operation
froundnx.d f23, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x3d96780e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x239f3d01 # load x3 with 32 MSBs 0x00000000239f3d01
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000239f3d01
sw x3, 0(x2) # store x3 (0x239f3d01) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000239f3d01 from memory into f24
froundnx.d f24, f24 # perform operation
froundnx.d f24, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0xfb9a6129 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb31f8f80 # load x3 with 32 MSBs 0x00000000b31f8f80
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b31f8f80
sw x3, 0(x2) # store x3 (0xb31f8f80) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000b31f8f80 from memory into f25
froundnx.d f25, f25 # perform operation
froundnx.d f25, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x3bb17fb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac6fb0f6 # load x3 with 32 MSBs 0x00000000ac6fb0f6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ac6fb0f6
sw x3, 0(x2) # store x3 (0xac6fb0f6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000ac6fb0f6 from memory into f26
froundnx.d f26, f26 # perform operation
froundnx.d f26, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x8f5787b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5946f7f # load x3 with 32 MSBs 0x00000000f5946f7f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f5946f7f
sw x3, 0(x2) # store x3 (0xf5946f7f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000f5946f7f from memory into f27
froundnx.d f27, f27 # perform operation
froundnx.d f27, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x37770c8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcc7fcadc # load x3 with 32 MSBs 0x00000000cc7fcadc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cc7fcadc
sw x3, 0(x2) # store x3 (0xcc7fcadc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000cc7fcadc from memory into f28
froundnx.d f28, f28 # perform operation
froundnx.d f28, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0xe37706b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb83d97da # load x3 with 32 MSBs 0x00000000b83d97da
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b83d97da
sw x3, 0(x2) # store x3 (0xb83d97da) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000b83d97da from memory into f29
froundnx.d f29, f29 # perform operation
froundnx.d f29, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0xfc53407a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7af897cf # load x3 with 32 MSBs 0x000000007af897cf
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007af897cf
sw x3, 0(x2) # store x3 (0x7af897cf) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000007af897cf from memory into f30
froundnx.d f30, f30 # perform operation
froundnx.d f30, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x7f6067c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0c64c316 # load x3 with 32 MSBs 0x000000000c64c316
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000c64c316
sw x3, 0(x2) # store x3 (0x0c64c316) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000000c64c316 from memory into f31
froundnx.d f31, f31 # perform operation
froundnx.d f31, f31 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x3b03c622 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc6423863 # load x3 with 32 MSBs 0x00000000c6423863
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c6423863
sw x3, 0(x2) # store x3 (0xc6423863) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000c6423863 from memory into f24
froundnx.d f0, f24 # perform operation
froundnx.d f0, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0xeb3e869e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50c279b4 # load x3 with 32 MSBs 0x0000000050c279b4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000050c279b4
sw x3, 0(x2) # store x3 (0x50c279b4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000050c279b4 from memory into f22
froundnx.d f1, f22 # perform operation
froundnx.d f1, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x956d5bbb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd1602e46 # load x3 with 32 MSBs 0x00000000d1602e46
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d1602e46
sw x3, 0(x2) # store x3 (0xd1602e46) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000d1602e46 from memory into f29
froundnx.d f2, f29 # perform operation
froundnx.d f2, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0x3cf285b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ebae027 # load x3 with 32 MSBs 0x000000004ebae027
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004ebae027
sw x3, 0(x2) # store x3 (0x4ebae027) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000004ebae027 from memory into f24
froundnx.d f3, f24 # perform operation
froundnx.d f3, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0x64e1ed55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbd4b85d9 # load x3 with 32 MSBs 0x00000000bd4b85d9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bd4b85d9
sw x3, 0(x2) # store x3 (0xbd4b85d9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000bd4b85d9 from memory into f15
froundnx.d f4, f15 # perform operation
froundnx.d f4, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x84aeb91f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x33ed7337 # load x3 with 32 MSBs 0x0000000033ed7337
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000033ed7337
sw x3, 0(x2) # store x3 (0x33ed7337) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000033ed7337 from memory into f8
froundnx.d f5, f8 # perform operation
froundnx.d f5, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0xacafcb32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4877ab6 # load x3 with 32 MSBs 0x00000000b4877ab6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b4877ab6
sw x3, 0(x2) # store x3 (0xb4877ab6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000b4877ab6 from memory into f9
froundnx.d f6, f9 # perform operation
froundnx.d f6, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0x0bf81f54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf24c41c7 # load x3 with 32 MSBs 0x00000000f24c41c7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f24c41c7
sw x3, 0(x2) # store x3 (0xf24c41c7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000f24c41c7 from memory into f30
froundnx.d f7, f30 # perform operation
froundnx.d f7, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0xda0d06db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd4d12fde # load x3 with 32 MSBs 0x00000000d4d12fde
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d4d12fde
sw x3, 0(x2) # store x3 (0xd4d12fde) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000d4d12fde from memory into f4
froundnx.d f8, f4 # perform operation
froundnx.d f8, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x57224132 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x95cb200a # load x3 with 32 MSBs 0x0000000095cb200a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000095cb200a
sw x3, 0(x2) # store x3 (0x95cb200a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000095cb200a from memory into f10
froundnx.d f9, f10 # perform operation
froundnx.d f9, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x28f029fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x887ba511 # load x3 with 32 MSBs 0x00000000887ba511
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000887ba511
sw x3, 0(x2) # store x3 (0x887ba511) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000887ba511 from memory into f8
froundnx.d f10, f8 # perform operation
froundnx.d f10, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0xe7c7a18d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0cf6a03 # load x3 with 32 MSBs 0x00000000b0cf6a03
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b0cf6a03
sw x3, 0(x2) # store x3 (0xb0cf6a03) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000b0cf6a03 from memory into f16
froundnx.d f11, f16 # perform operation
froundnx.d f11, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x3e4ea978 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x78c3c504 # load x3 with 32 MSBs 0x0000000078c3c504
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000078c3c504
sw x3, 0(x2) # store x3 (0x78c3c504) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000078c3c504 from memory into f28
froundnx.d f12, f28 # perform operation
froundnx.d f12, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0x1bfa182b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5f9ac96 # load x3 with 32 MSBs 0x00000000e5f9ac96
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e5f9ac96
sw x3, 0(x2) # store x3 (0xe5f9ac96) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000e5f9ac96 from memory into f25
froundnx.d f13, f25 # perform operation
froundnx.d f13, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0x37b44385 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e553cba # load x3 with 32 MSBs 0x000000007e553cba
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007e553cba
sw x3, 0(x2) # store x3 (0x7e553cba) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000007e553cba from memory into f10
froundnx.d f14, f10 # perform operation
froundnx.d f14, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x7efe22e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x27beeabf # load x3 with 32 MSBs 0x0000000027beeabf
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000027beeabf
sw x3, 0(x2) # store x3 (0x27beeabf) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000027beeabf from memory into f25
froundnx.d f15, f25 # perform operation
froundnx.d f15, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0xbc55a697 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x44d60d0c # load x3 with 32 MSBs 0x0000000044d60d0c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000044d60d0c
sw x3, 0(x2) # store x3 (0x44d60d0c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000044d60d0c from memory into f24
froundnx.d f16, f24 # perform operation
froundnx.d f16, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x8d3f7600 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5275676c # load x3 with 32 MSBs 0x000000005275676c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005275676c
sw x3, 0(x2) # store x3 (0x5275676c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x000000005275676c from memory into f4
froundnx.d f17, f4 # perform operation
froundnx.d f17, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0x4dc0e798 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x45aa8f29 # load x3 with 32 MSBs 0x0000000045aa8f29
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000045aa8f29
sw x3, 0(x2) # store x3 (0x45aa8f29) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000045aa8f29 from memory into f16
froundnx.d f18, f16 # perform operation
froundnx.d f18, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0xf0519ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8389f2e6 # load x3 with 32 MSBs 0x000000008389f2e6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008389f2e6
sw x3, 0(x2) # store x3 (0x8389f2e6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000008389f2e6 from memory into f21
froundnx.d f19, f21 # perform operation
froundnx.d f19, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0x1de190fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x24b8663b # load x3 with 32 MSBs 0x0000000024b8663b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000024b8663b
sw x3, 0(x2) # store x3 (0x24b8663b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000024b8663b from memory into f15
froundnx.d f20, f15 # perform operation
froundnx.d f20, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x523a6342 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3232ca52 # load x3 with 32 MSBs 0x000000003232ca52
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003232ca52
sw x3, 0(x2) # store x3 (0x3232ca52) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000003232ca52 from memory into f16
froundnx.d f21, f16 # perform operation
froundnx.d f21, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0x34943a67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7bf347af # load x3 with 32 MSBs 0x000000007bf347af
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007bf347af
sw x3, 0(x2) # store x3 (0x7bf347af) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000007bf347af from memory into f12
froundnx.d f22, f12 # perform operation
froundnx.d f22, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0x94288a81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4a9137c # load x3 with 32 MSBs 0x00000000a4a9137c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a4a9137c
sw x3, 0(x2) # store x3 (0xa4a9137c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000a4a9137c from memory into f3
froundnx.d f23, f3 # perform operation
froundnx.d f23, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0xf3173695 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c3958c1 # load x3 with 32 MSBs 0x000000003c3958c1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003c3958c1
sw x3, 0(x2) # store x3 (0x3c3958c1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x000000003c3958c1 from memory into f4
froundnx.d f24, f4 # perform operation
froundnx.d f24, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0xb12570c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd19e5ac2 # load x3 with 32 MSBs 0x00000000d19e5ac2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d19e5ac2
sw x3, 0(x2) # store x3 (0xd19e5ac2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000d19e5ac2 from memory into f14
froundnx.d f25, f14 # perform operation
froundnx.d f25, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0xf4a733db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd2754ee7 # load x3 with 32 MSBs 0x00000000d2754ee7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d2754ee7
sw x3, 0(x2) # store x3 (0xd2754ee7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000d2754ee7 from memory into f14
froundnx.d f26, f14 # perform operation
froundnx.d f26, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0x62c68448 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a8354af # load x3 with 32 MSBs 0x000000006a8354af
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006a8354af
sw x3, 0(x2) # store x3 (0x6a8354af) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000006a8354af from memory into f6
froundnx.d f27, f6 # perform operation
froundnx.d f27, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0x92961ee9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x33c6d210 # load x3 with 32 MSBs 0x0000000033c6d210
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000033c6d210
sw x3, 0(x2) # store x3 (0x33c6d210) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000033c6d210 from memory into f19
froundnx.d f28, f19 # perform operation
froundnx.d f28, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x1af31fc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5af9126a # load x3 with 32 MSBs 0x000000005af9126a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005af9126a
sw x3, 0(x2) # store x3 (0x5af9126a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000005af9126a from memory into f8
froundnx.d f29, f8 # perform operation
froundnx.d f29, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0x44b89515 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x20aa1ecc # load x3 with 32 MSBs 0x0000000020aa1ecc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000020aa1ecc
sw x3, 0(x2) # store x3 (0x20aa1ecc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000020aa1ecc from memory into f23
froundnx.d f30, f23 # perform operation
froundnx.d f30, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0x37a73687 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x907820c9 # load x3 with 32 MSBs 0x00000000907820c9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000907820c9
sw x3, 0(x2) # store x3 (0x907820c9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000907820c9 from memory into f3
froundnx.d f31, f3 # perform operation
froundnx.d f31, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x24, 0x74409f12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000000000000 from memory into f31
froundnx.d f24, f31 # perform operation
froundnx.d f24, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x24, 0x848093ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x8000000000000000 from memory into f8
froundnx.d f24, f8 # perform operation
froundnx.d f24, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x15, 0x8a6ae928 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x3ff0000000000000 from memory into f6
froundnx.d f15, f6 # perform operation
froundnx.d f15, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x26, 0x41c45399 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xbff0000000000000 from memory into f9
froundnx.d f26, f9 # perform operation
froundnx.d f26, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x31, 0x6d9d5dd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
froundnx.d f31, f28 # perform operation
froundnx.d f31, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x17, 0x9b74728a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
froundnx.d f17, f3 # perform operation
froundnx.d f17, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x16, 0x03dd2d0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x4000000000000000 from memory into f12
froundnx.d f16, f12 # perform operation
froundnx.d f16, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x11, 0xf6fad663 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xc000000000000000 from memory into f17
froundnx.d f11, f17 # perform operation
froundnx.d f11, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x21, 0xd29b3949 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0010000000000000 from memory into f30
froundnx.d f21, f30 # perform operation
froundnx.d f21, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x24, 0xeded4c0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x8010000000000000 from memory into f30
froundnx.d f24, f30 # perform operation
froundnx.d f24, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x28, 0xccb41943 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7fefffffffffffff from memory into f21
froundnx.d f28, f21 # perform operation
froundnx.d f28, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x22, 0x82be6329 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xffefffffffffffff from memory into f15
froundnx.d f22, f15 # perform operation
froundnx.d f22, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x19, 0x9b6be154 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000fffffffffffff from memory into f10
froundnx.d f19, f10 # perform operation
froundnx.d f19, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x23, 0x7efc25f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x800fffffffffffff from memory into f2
froundnx.d f23, f2 # perform operation
froundnx.d f23, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x25, 0x694c2f60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0008000000000000 from memory into f3
froundnx.d f25, f3 # perform operation
froundnx.d f25, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x14, 0x352289b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x8008000000000000 from memory into f25
froundnx.d f14, f25 # perform operation
froundnx.d f14, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x15, 0xf47ddf52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000000000001 from memory into f4
froundnx.d f15, f4 # perform operation
froundnx.d f15, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x23, 0x66a64227 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
froundnx.d f23, f5 # perform operation
froundnx.d f23, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x22, 0xb483f481 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7ff0000000000000 from memory into f28
froundnx.d f22, f28 # perform operation
froundnx.d f22, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x10, 0x42258bcb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfff0000000000000 from memory into f30
froundnx.d f10, f30 # perform operation
froundnx.d f10, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x4, 0x76ff92c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
froundnx.d f4, f5 # perform operation
froundnx.d f4, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x23, 0x03279828 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7fffffffffffffff from memory into f14
froundnx.d f23, f14 # perform operation
froundnx.d f23, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x8, 0x1f1bfac3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff0000000000001 from memory into f20
froundnx.d f8, f20 # perform operation
froundnx.d f8, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x9, 0xb9750944 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff7ffffffffffff from memory into f10
froundnx.d f9, f10 # perform operation
froundnx.d f9, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x16, 0x70aa95f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x5a392534a57711ad from memory into f31
froundnx.d f16, f31 # perform operation
froundnx.d f16, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x4, 0x12118b4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xa6e895993737426c from memory into f25
froundnx.d f4, f25 # perform operation
froundnx.d f4, f25 # perform operation

# Testcase cp_frm
li x4, 0xa2a3de84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xadfab079 # load x3 with 32 MSBs 0x00000000adfab079
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000adfab079
sw x3, 0(x2) # store x3 (0xadfab079) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000adfab079 from memory into f26
froundnx.d f4, f26 # perform operation
froundnx.d f4, f26, dyn # perform operation
froundnx.d f4, f26, rdn # perform operation
froundnx.d f4, f26, rmm # perform operation
froundnx.d f4, f26, rne # perform operation
froundnx.d f4, f26, rtz # perform operation
froundnx.d f4, f26, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
froundnx.d f4, f26 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
froundnx.d f4, f26 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
froundnx.d f4, f26 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
froundnx.d f4, f26 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
froundnx.d f4, f26 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xc5ddb2ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f0f8084 # load x3 with 32 MSBs 0x000000007f0f8084
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007f0f8084
sw x3, 0(x2) # store x3 (0x7f0f8084) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000007f0f8084 from memory into f1
froundnx.d f0, f1 # perform operation
froundnx.d f0, f1 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xc2f20db7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff4cbf0 # load x3 with 32 MSBs 0x00000000bff4cbf0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bff4cbf0
sw x3, 0(x2) # store x3 (0xbff4cbf0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000bff4cbf0 from memory into f16
froundnx.d f1, f16 # perform operation
froundnx.d f1, f16 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x145e3bb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8075bfae # load x3 with 32 MSBs 0x000000008075bfae
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008075bfae
sw x3, 0(x2) # store x3 (0x8075bfae) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000008075bfae from memory into f30
froundnx.d f2, f30 # perform operation
froundnx.d f2, f30 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x5c0f81d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x48fbecd3 # load x3 with 32 MSBs 0x0000000048fbecd3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000048fbecd3
sw x3, 0(x2) # store x3 (0x48fbecd3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000048fbecd3 from memory into f25
froundnx.d f3, f25 # perform operation
froundnx.d f3, f25 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xe541eebf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f11b111 # load x3 with 32 MSBs 0x000000001f11b111
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001f11b111
sw x3, 0(x2) # store x3 (0x1f11b111) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000001f11b111 from memory into f16
froundnx.d f4, f16 # perform operation
froundnx.d f4, f16 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x9f5ed64d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfafd1f42 # load x3 with 32 MSBs 0x00000000fafd1f42
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fafd1f42
sw x3, 0(x2) # store x3 (0xfafd1f42) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000fafd1f42 from memory into f6
froundnx.d f5, f6 # perform operation
froundnx.d f5, f6 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x0cdb44a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23dd715a # load x3 with 32 MSBs 0x0000000023dd715a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000023dd715a
sw x3, 0(x2) # store x3 (0x23dd715a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000023dd715a from memory into f5
froundnx.d f6, f5 # perform operation
froundnx.d f6, f5 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x39db6ef4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2088cb90 # load x3 with 32 MSBs 0x000000002088cb90
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002088cb90
sw x3, 0(x2) # store x3 (0x2088cb90) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000002088cb90 from memory into f28
froundnx.d f7, f28 # perform operation
froundnx.d f7, f28 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x893e5653 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcc093e27 # load x3 with 32 MSBs 0x00000000cc093e27
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cc093e27
sw x3, 0(x2) # store x3 (0xcc093e27) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000cc093e27 from memory into f2
froundnx.d f8, f2 # perform operation
froundnx.d f8, f2 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x4d921d2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x716b3fbc # load x3 with 32 MSBs 0x00000000716b3fbc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000716b3fbc
sw x3, 0(x2) # store x3 (0x716b3fbc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000716b3fbc from memory into f11
froundnx.d f9, f11 # perform operation
froundnx.d f9, f11 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xcc1747ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0fe1b960 # load x3 with 32 MSBs 0x000000000fe1b960
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000fe1b960
sw x3, 0(x2) # store x3 (0x0fe1b960) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000000fe1b960 from memory into f27
froundnx.d f10, f27 # perform operation
froundnx.d f10, f27 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x6ada132a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ef3dc7a # load x3 with 32 MSBs 0x000000003ef3dc7a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003ef3dc7a
sw x3, 0(x2) # store x3 (0x3ef3dc7a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000003ef3dc7a from memory into f19
froundnx.d f11, f19 # perform operation
froundnx.d f11, f19 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0xe7cc4a51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x31981e0c # load x3 with 32 MSBs 0x0000000031981e0c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000031981e0c
sw x3, 0(x2) # store x3 (0x31981e0c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000031981e0c from memory into f13
froundnx.d f12, f13 # perform operation
froundnx.d f12, f13 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x79533ac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x597ca877 # load x3 with 32 MSBs 0x00000000597ca877
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000597ca877
sw x3, 0(x2) # store x3 (0x597ca877) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000597ca877 from memory into f9
froundnx.d f13, f9 # perform operation
froundnx.d f13, f9 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x2204bb1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbc198cb2 # load x3 with 32 MSBs 0x00000000bc198cb2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bc198cb2
sw x3, 0(x2) # store x3 (0xbc198cb2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000bc198cb2 from memory into f31
froundnx.d f14, f31 # perform operation
froundnx.d f14, f31 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xdc47cec2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc82034d8 # load x3 with 32 MSBs 0x00000000c82034d8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c82034d8
sw x3, 0(x2) # store x3 (0xc82034d8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000c82034d8 from memory into f28
froundnx.d f15, f28 # perform operation
froundnx.d f15, f28 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x17d8fe2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa1ca025b # load x3 with 32 MSBs 0x00000000a1ca025b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a1ca025b
sw x3, 0(x2) # store x3 (0xa1ca025b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000a1ca025b from memory into f22
froundnx.d f16, f22 # perform operation
froundnx.d f16, f22 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x45a1c066 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5cd528c8 # load x3 with 32 MSBs 0x000000005cd528c8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005cd528c8
sw x3, 0(x2) # store x3 (0x5cd528c8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000005cd528c8 from memory into f29
froundnx.d f17, f29 # perform operation
froundnx.d f17, f29 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x040ec32d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8dca58c3 # load x3 with 32 MSBs 0x000000008dca58c3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008dca58c3
sw x3, 0(x2) # store x3 (0x8dca58c3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000008dca58c3 from memory into f12
froundnx.d f18, f12 # perform operation
froundnx.d f18, f12 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x55633900 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc9597ee4 # load x3 with 32 MSBs 0x00000000c9597ee4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c9597ee4
sw x3, 0(x2) # store x3 (0xc9597ee4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000c9597ee4 from memory into f25
froundnx.d f19, f25 # perform operation
froundnx.d f19, f25 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x8271a44a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x864c7f3e # load x3 with 32 MSBs 0x00000000864c7f3e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000864c7f3e
sw x3, 0(x2) # store x3 (0x864c7f3e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000864c7f3e from memory into f13
froundnx.d f20, f13 # perform operation
froundnx.d f20, f13 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x6b0d7210 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfe985efe # load x3 with 32 MSBs 0x00000000fe985efe
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fe985efe
sw x3, 0(x2) # store x3 (0xfe985efe) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000fe985efe from memory into f9
froundnx.d f21, f9 # perform operation
froundnx.d f21, f9 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x0ce2eac6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe028a232 # load x3 with 32 MSBs 0x00000000e028a232
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e028a232
sw x3, 0(x2) # store x3 (0xe028a232) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000e028a232 from memory into f16
froundnx.d f22, f16 # perform operation
froundnx.d f22, f16 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x14cbe8aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x99b1ab84 # load x3 with 32 MSBs 0x0000000099b1ab84
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000099b1ab84
sw x3, 0(x2) # store x3 (0x99b1ab84) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000099b1ab84 from memory into f5
froundnx.d f23, f5 # perform operation
froundnx.d f23, f5 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x7be2b99c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x64612e0a # load x3 with 32 MSBs 0x0000000064612e0a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000064612e0a
sw x3, 0(x2) # store x3 (0x64612e0a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000064612e0a from memory into f2
froundnx.d f24, f2 # perform operation
froundnx.d f24, f2 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x48b9e36a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a203008 # load x3 with 32 MSBs 0x000000001a203008
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001a203008
sw x3, 0(x2) # store x3 (0x1a203008) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000001a203008 from memory into f2
froundnx.d f25, f2 # perform operation
froundnx.d f25, f2 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xb8013693 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbba1f0b7 # load x3 with 32 MSBs 0x00000000bba1f0b7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bba1f0b7
sw x3, 0(x2) # store x3 (0xbba1f0b7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000bba1f0b7 from memory into f16
froundnx.d f26, f16 # perform operation
froundnx.d f26, f16 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xe19487ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa3463d20 # load x3 with 32 MSBs 0x00000000a3463d20
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a3463d20
sw x3, 0(x2) # store x3 (0xa3463d20) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000a3463d20 from memory into f29
froundnx.d f27, f29 # perform operation
froundnx.d f27, f29 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x11ee8b77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc8d3a547 # load x3 with 32 MSBs 0x00000000c8d3a547
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c8d3a547
sw x3, 0(x2) # store x3 (0xc8d3a547) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000c8d3a547 from memory into f27
froundnx.d f28, f27 # perform operation
froundnx.d f28, f27 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x8c34fe0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe0be7c6c # load x3 with 32 MSBs 0x00000000e0be7c6c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e0be7c6c
sw x3, 0(x2) # store x3 (0xe0be7c6c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000e0be7c6c from memory into f26
froundnx.d f29, f26 # perform operation
froundnx.d f29, f26 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xdd8969fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5115fb5f # load x3 with 32 MSBs 0x000000005115fb5f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005115fb5f
sw x3, 0(x2) # store x3 (0x5115fb5f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000005115fb5f from memory into f29
froundnx.d f30, f29 # perform operation
froundnx.d f30, f29 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x5dfed61b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x952ddfd0 # load x3 with 32 MSBs 0x00000000952ddfd0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000952ddfd0
sw x3, 0(x2) # store x3 (0x952ddfd0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000952ddfd0 from memory into f21
froundnx.d f31, f21 # perform operation
froundnx.d f31, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x27, 0xdd0ed066 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x369d27ff # load x3 with 32 MSBs 0x00000000369d27ff
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000369d27ff
sw x3, 0(x2) # store x3 (0x369d27ff) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000369d27ff from memory into f0
froundnx.d f27, f0 # perform operation
froundnx.d f27, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x16, 0x4c4164f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x354d3dd5 # load x3 with 32 MSBs 0x00000000354d3dd5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000354d3dd5
sw x3, 0(x2) # store x3 (0x354d3dd5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000354d3dd5 from memory into f1
froundnx.d f16, f1 # perform operation
froundnx.d f16, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x23, 0xe0eb2838 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d640c4a # load x3 with 32 MSBs 0x000000002d640c4a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002d640c4a
sw x3, 0(x2) # store x3 (0x2d640c4a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000002d640c4a from memory into f2
froundnx.d f23, f2 # perform operation
froundnx.d f23, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x6, 0xff24b268 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x93b43f0a # load x3 with 32 MSBs 0x0000000093b43f0a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000093b43f0a
sw x3, 0(x2) # store x3 (0x93b43f0a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000093b43f0a from memory into f3
froundnx.d f6, f3 # perform operation
froundnx.d f6, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x14, 0x3c8b2c89 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5c9d55cd # load x3 with 32 MSBs 0x000000005c9d55cd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005c9d55cd
sw x3, 0(x2) # store x3 (0x5c9d55cd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x000000005c9d55cd from memory into f4
froundnx.d f14, f4 # perform operation
froundnx.d f14, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x11, 0x9e656807 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0cd2c83a # load x3 with 32 MSBs 0x000000000cd2c83a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000cd2c83a
sw x3, 0(x2) # store x3 (0x0cd2c83a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000000cd2c83a from memory into f5
froundnx.d f11, f5 # perform operation
froundnx.d f11, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x20, 0xd00a2f0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3551d32 # load x3 with 32 MSBs 0x00000000b3551d32
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b3551d32
sw x3, 0(x2) # store x3 (0xb3551d32) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000b3551d32 from memory into f6
froundnx.d f20, f6 # perform operation
froundnx.d f20, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x15, 0xae06bced # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x95c8229d # load x3 with 32 MSBs 0x0000000095c8229d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000095c8229d
sw x3, 0(x2) # store x3 (0x95c8229d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000095c8229d from memory into f7
froundnx.d f15, f7 # perform operation
froundnx.d f15, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x3, 0xa046b82f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1655f257 # load x3 with 32 MSBs 0x000000001655f257
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001655f257
sw x3, 0(x2) # store x3 (0x1655f257) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000001655f257 from memory into f8
froundnx.d f3, f8 # perform operation
froundnx.d f3, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x28, 0xec6ff022 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c76a288 # load x3 with 32 MSBs 0x000000006c76a288
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006c76a288
sw x3, 0(x2) # store x3 (0x6c76a288) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000006c76a288 from memory into f9
froundnx.d f28, f9 # perform operation
froundnx.d f28, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x27, 0x5316f981 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x063aee7d # load x3 with 32 MSBs 0x00000000063aee7d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000063aee7d
sw x3, 0(x2) # store x3 (0x063aee7d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000063aee7d from memory into f10
froundnx.d f27, f10 # perform operation
froundnx.d f27, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x18, 0xda67be81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c5c02fa # load x3 with 32 MSBs 0x000000007c5c02fa
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007c5c02fa
sw x3, 0(x2) # store x3 (0x7c5c02fa) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000007c5c02fa from memory into f11
froundnx.d f18, f11 # perform operation
froundnx.d f18, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x2, 0x76e9c4a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf71fa069 # load x3 with 32 MSBs 0x00000000f71fa069
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f71fa069
sw x3, 0(x2) # store x3 (0xf71fa069) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000f71fa069 from memory into f12
froundnx.d f2, f12 # perform operation
froundnx.d f2, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x20, 0x0f2bb073 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47647982 # load x3 with 32 MSBs 0x0000000047647982
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000047647982
sw x3, 0(x2) # store x3 (0x47647982) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000047647982 from memory into f13
froundnx.d f20, f13 # perform operation
froundnx.d f20, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x16, 0x9096b6d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbeaf33fa # load x3 with 32 MSBs 0x00000000beaf33fa
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000beaf33fa
sw x3, 0(x2) # store x3 (0xbeaf33fa) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000beaf33fa from memory into f14
froundnx.d f16, f14 # perform operation
froundnx.d f16, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x21, 0x69597a48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe8cb27d3 # load x3 with 32 MSBs 0x00000000e8cb27d3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e8cb27d3
sw x3, 0(x2) # store x3 (0xe8cb27d3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000e8cb27d3 from memory into f15
froundnx.d f21, f15 # perform operation
froundnx.d f21, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x26, 0xac5bfec6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f43e2c5 # load x3 with 32 MSBs 0x000000005f43e2c5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005f43e2c5
sw x3, 0(x2) # store x3 (0x5f43e2c5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000005f43e2c5 from memory into f16
froundnx.d f26, f16 # perform operation
froundnx.d f26, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x1, 0x782e18f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfeb79194 # load x3 with 32 MSBs 0x00000000feb79194
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000feb79194
sw x3, 0(x2) # store x3 (0xfeb79194) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000feb79194 from memory into f17
froundnx.d f1, f17 # perform operation
froundnx.d f1, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x7, 0x7347034f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e73be59 # load x3 with 32 MSBs 0x000000002e73be59
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002e73be59
sw x3, 0(x2) # store x3 (0x2e73be59) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000002e73be59 from memory into f18
froundnx.d f7, f18 # perform operation
froundnx.d f7, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x18, 0x257be933 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1948c071 # load x3 with 32 MSBs 0x000000001948c071
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001948c071
sw x3, 0(x2) # store x3 (0x1948c071) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000001948c071 from memory into f19
froundnx.d f18, f19 # perform operation
froundnx.d f18, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x25, 0x0cee8c58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc89463ea # load x3 with 32 MSBs 0x00000000c89463ea
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c89463ea
sw x3, 0(x2) # store x3 (0xc89463ea) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000c89463ea from memory into f20
froundnx.d f25, f20 # perform operation
froundnx.d f25, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x24, 0xffddd4f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60b0f027 # load x3 with 32 MSBs 0x0000000060b0f027
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000060b0f027
sw x3, 0(x2) # store x3 (0x60b0f027) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000060b0f027 from memory into f21
froundnx.d f24, f21 # perform operation
froundnx.d f24, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x9, 0xe085fbfc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca2d34d6 # load x3 with 32 MSBs 0x00000000ca2d34d6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ca2d34d6
sw x3, 0(x2) # store x3 (0xca2d34d6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000ca2d34d6 from memory into f22
froundnx.d f9, f22 # perform operation
froundnx.d f9, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x14, 0xe97ecdd8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x638f511c # load x3 with 32 MSBs 0x00000000638f511c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000638f511c
sw x3, 0(x2) # store x3 (0x638f511c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000638f511c from memory into f23
froundnx.d f14, f23 # perform operation
froundnx.d f14, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x23, 0x50dbc1bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3879529a # load x3 with 32 MSBs 0x000000003879529a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003879529a
sw x3, 0(x2) # store x3 (0x3879529a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000003879529a from memory into f24
froundnx.d f23, f24 # perform operation
froundnx.d f23, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x1, 0x4a508d04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfaf25036 # load x3 with 32 MSBs 0x00000000faf25036
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000faf25036
sw x3, 0(x2) # store x3 (0xfaf25036) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000faf25036 from memory into f25
froundnx.d f1, f25 # perform operation
froundnx.d f1, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x18, 0x8ac9020f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6bf21519 # load x3 with 32 MSBs 0x000000006bf21519
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006bf21519
sw x3, 0(x2) # store x3 (0x6bf21519) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000006bf21519 from memory into f26
froundnx.d f18, f26 # perform operation
froundnx.d f18, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x9, 0xb6a89c71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2ac19fa # load x3 with 32 MSBs 0x00000000f2ac19fa
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f2ac19fa
sw x3, 0(x2) # store x3 (0xf2ac19fa) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000f2ac19fa from memory into f27
froundnx.d f9, f27 # perform operation
froundnx.d f9, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x30, 0x3992c8b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5c336fcf # load x3 with 32 MSBs 0x000000005c336fcf
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005c336fcf
sw x3, 0(x2) # store x3 (0x5c336fcf) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000005c336fcf from memory into f28
froundnx.d f30, f28 # perform operation
froundnx.d f30, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x19, 0x29bdeed9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80c89a09 # load x3 with 32 MSBs 0x0000000080c89a09
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000080c89a09
sw x3, 0(x2) # store x3 (0x80c89a09) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000080c89a09 from memory into f29
froundnx.d f19, f29 # perform operation
froundnx.d f19, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x11, 0xd7342b40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3b59a486 # load x3 with 32 MSBs 0x000000003b59a486
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003b59a486
sw x3, 0(x2) # store x3 (0x3b59a486) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000003b59a486 from memory into f30
froundnx.d f11, f30 # perform operation
froundnx.d f11, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x2, 0x08ce4686 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0e71780 # load x3 with 32 MSBs 0x00000000d0e71780
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d0e71780
sw x3, 0(x2) # store x3 (0xd0e71780) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000d0e71780 from memory into f31
froundnx.d f2, f31 # perform operation
froundnx.d f2, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
