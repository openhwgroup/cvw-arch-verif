///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/ZfaD//WALLY-COV-fround.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.119341
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
fround.d f17, f21 # perform first operation
fround.d f27, f17 # perform second operation

# Testcase cmp_gpr_hazard raw test
fround.d f29, f26 # perform first operation
fround.d f12, f1 # perform second operation

# Testcase cmp_gpr_hazard waw test
fround.d f26, f22 # perform first operation
fround.d f26, f15 # perform second operation

# Testcase cmp_gpr_hazard waw test
fround.d f13, f8 # perform first operation
fround.d f13, f22 # perform second operation

# Testcase cmp_gpr_hazard war test
fround.d f15, f16 # perform first operation
fround.d f16, f17 # perform second operation

# Testcase cmp_gpr_hazard war test
fround.d f15, f12 # perform first operation
fround.d f13, f3 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0xf1ddc933 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x748e3c0a # load x3 with 32 MSBs 0x00000000748e3c0a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000748e3c0a
sw x3, 0(x2) # store x3 (0x748e3c0a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000748e3c0a from memory into f0
fround.d f0, f0 # perform operation
fround.d f0, f0 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x20a01d2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x97db342e # load x3 with 32 MSBs 0x0000000097db342e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000097db342e
sw x3, 0(x2) # store x3 (0x97db342e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000097db342e from memory into f1
fround.d f1, f1 # perform operation
fround.d f1, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0xf5728664 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17583322 # load x3 with 32 MSBs 0x0000000017583322
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000017583322
sw x3, 0(x2) # store x3 (0x17583322) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000017583322 from memory into f2
fround.d f2, f2 # perform operation
fround.d f2, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x9fb2cc8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8707d6e2 # load x3 with 32 MSBs 0x000000008707d6e2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008707d6e2
sw x3, 0(x2) # store x3 (0x8707d6e2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000008707d6e2 from memory into f3
fround.d f3, f3 # perform operation
fround.d f3, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x38b4e5bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4c11ba10 # load x3 with 32 MSBs 0x000000004c11ba10
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004c11ba10
sw x3, 0(x2) # store x3 (0x4c11ba10) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x000000004c11ba10 from memory into f4
fround.d f4, f4 # perform operation
fround.d f4, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x39693c25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1bd60ac7 # load x3 with 32 MSBs 0x000000001bd60ac7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001bd60ac7
sw x3, 0(x2) # store x3 (0x1bd60ac7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000001bd60ac7 from memory into f5
fround.d f5, f5 # perform operation
fround.d f5, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0xaa166be0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd3739ace # load x3 with 32 MSBs 0x00000000d3739ace
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d3739ace
sw x3, 0(x2) # store x3 (0xd3739ace) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000d3739ace from memory into f6
fround.d f6, f6 # perform operation
fround.d f6, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0xfe09367e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe279d497 # load x3 with 32 MSBs 0x00000000e279d497
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e279d497
sw x3, 0(x2) # store x3 (0xe279d497) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000e279d497 from memory into f7
fround.d f7, f7 # perform operation
fround.d f7, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x5d8b59e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x48731111 # load x3 with 32 MSBs 0x0000000048731111
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000048731111
sw x3, 0(x2) # store x3 (0x48731111) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000048731111 from memory into f8
fround.d f8, f8 # perform operation
fround.d f8, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0x10f47cf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x09dbda20 # load x3 with 32 MSBs 0x0000000009dbda20
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000009dbda20
sw x3, 0(x2) # store x3 (0x09dbda20) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000009dbda20 from memory into f9
fround.d f9, f9 # perform operation
fround.d f9, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x2661ffb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe486a29 # load x3 with 32 MSBs 0x00000000be486a29
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000be486a29
sw x3, 0(x2) # store x3 (0xbe486a29) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000be486a29 from memory into f10
fround.d f10, f10 # perform operation
fround.d f10, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0xc12048ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1221f52b # load x3 with 32 MSBs 0x000000001221f52b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001221f52b
sw x3, 0(x2) # store x3 (0x1221f52b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000001221f52b from memory into f11
fround.d f11, f11 # perform operation
fround.d f11, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x76975c0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x95e5278f # load x3 with 32 MSBs 0x0000000095e5278f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000095e5278f
sw x3, 0(x2) # store x3 (0x95e5278f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000095e5278f from memory into f12
fround.d f12, f12 # perform operation
fround.d f12, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0xe452f987 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e61d28a # load x3 with 32 MSBs 0x000000001e61d28a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001e61d28a
sw x3, 0(x2) # store x3 (0x1e61d28a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000001e61d28a from memory into f13
fround.d f13, f13 # perform operation
fround.d f13, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0x8eae523d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x031daba3 # load x3 with 32 MSBs 0x00000000031daba3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000031daba3
sw x3, 0(x2) # store x3 (0x031daba3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000031daba3 from memory into f14
fround.d f14, f14 # perform operation
fround.d f14, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0xa22ed431 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x74b91916 # load x3 with 32 MSBs 0x0000000074b91916
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000074b91916
sw x3, 0(x2) # store x3 (0x74b91916) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000074b91916 from memory into f15
fround.d f15, f15 # perform operation
fround.d f15, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x4a4cdaa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x636ff788 # load x3 with 32 MSBs 0x00000000636ff788
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000636ff788
sw x3, 0(x2) # store x3 (0x636ff788) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000636ff788 from memory into f16
fround.d f16, f16 # perform operation
fround.d f16, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0xe41aced6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x36079d78 # load x3 with 32 MSBs 0x0000000036079d78
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000036079d78
sw x3, 0(x2) # store x3 (0x36079d78) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000036079d78 from memory into f17
fround.d f17, f17 # perform operation
fround.d f17, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0x8869fdb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd765fa1 # load x3 with 32 MSBs 0x00000000dd765fa1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000dd765fa1
sw x3, 0(x2) # store x3 (0xdd765fa1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000dd765fa1 from memory into f18
fround.d f18, f18 # perform operation
fround.d f18, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x1932c0d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x90e09f70 # load x3 with 32 MSBs 0x0000000090e09f70
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000090e09f70
sw x3, 0(x2) # store x3 (0x90e09f70) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000090e09f70 from memory into f19
fround.d f19, f19 # perform operation
fround.d f19, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x7f79b497 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x365d89af # load x3 with 32 MSBs 0x00000000365d89af
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000365d89af
sw x3, 0(x2) # store x3 (0x365d89af) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000365d89af from memory into f20
fround.d f20, f20 # perform operation
fround.d f20, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x4d93eddc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x828a4478 # load x3 with 32 MSBs 0x00000000828a4478
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000828a4478
sw x3, 0(x2) # store x3 (0x828a4478) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000828a4478 from memory into f21
fround.d f21, f21 # perform operation
fround.d f21, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0x0fb19610 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x15bf919c # load x3 with 32 MSBs 0x0000000015bf919c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000015bf919c
sw x3, 0(x2) # store x3 (0x15bf919c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000015bf919c from memory into f22
fround.d f22, f22 # perform operation
fround.d f22, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0xf9fd1e48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a3cb863 # load x3 with 32 MSBs 0x000000004a3cb863
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004a3cb863
sw x3, 0(x2) # store x3 (0x4a3cb863) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000004a3cb863 from memory into f23
fround.d f23, f23 # perform operation
fround.d f23, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0xad5a0448 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x42f17f3d # load x3 with 32 MSBs 0x0000000042f17f3d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000042f17f3d
sw x3, 0(x2) # store x3 (0x42f17f3d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000042f17f3d from memory into f24
fround.d f24, f24 # perform operation
fround.d f24, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x063413e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8fddc9d9 # load x3 with 32 MSBs 0x000000008fddc9d9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008fddc9d9
sw x3, 0(x2) # store x3 (0x8fddc9d9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000008fddc9d9 from memory into f25
fround.d f25, f25 # perform operation
fround.d f25, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0xb21ef87f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf03ed9f3 # load x3 with 32 MSBs 0x00000000f03ed9f3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f03ed9f3
sw x3, 0(x2) # store x3 (0xf03ed9f3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000f03ed9f3 from memory into f26
fround.d f26, f26 # perform operation
fround.d f26, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x0dcdd590 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1bd40983 # load x3 with 32 MSBs 0x000000001bd40983
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001bd40983
sw x3, 0(x2) # store x3 (0x1bd40983) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000001bd40983 from memory into f27
fround.d f27, f27 # perform operation
fround.d f27, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x8207218d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1b91351 # load x3 with 32 MSBs 0x00000000c1b91351
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c1b91351
sw x3, 0(x2) # store x3 (0xc1b91351) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000c1b91351 from memory into f28
fround.d f28, f28 # perform operation
fround.d f28, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x9e8d12a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x116c1ed2 # load x3 with 32 MSBs 0x00000000116c1ed2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000116c1ed2
sw x3, 0(x2) # store x3 (0x116c1ed2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000116c1ed2 from memory into f29
fround.d f29, f29 # perform operation
fround.d f29, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x8ff63763 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x449e4999 # load x3 with 32 MSBs 0x00000000449e4999
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000449e4999
sw x3, 0(x2) # store x3 (0x449e4999) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000449e4999 from memory into f30
fround.d f30, f30 # perform operation
fround.d f30, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x2ee6b9f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x98ceb528 # load x3 with 32 MSBs 0x0000000098ceb528
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000098ceb528
sw x3, 0(x2) # store x3 (0x98ceb528) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000098ceb528 from memory into f31
fround.d f31, f31 # perform operation
fround.d f31, f31 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x9b9ccdcb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d831468 # load x3 with 32 MSBs 0x000000002d831468
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002d831468
sw x3, 0(x2) # store x3 (0x2d831468) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000002d831468 from memory into f29
fround.d f0, f29 # perform operation
fround.d f0, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0x25d6a1c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd547fd0 # load x3 with 32 MSBs 0x00000000cd547fd0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cd547fd0
sw x3, 0(x2) # store x3 (0xcd547fd0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000cd547fd0 from memory into f18
fround.d f1, f18 # perform operation
fround.d f1, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x3562b031 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc66ba1c9 # load x3 with 32 MSBs 0x00000000c66ba1c9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c66ba1c9
sw x3, 0(x2) # store x3 (0xc66ba1c9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000c66ba1c9 from memory into f29
fround.d f2, f29 # perform operation
fround.d f2, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0x4cddea66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50d513f7 # load x3 with 32 MSBs 0x0000000050d513f7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000050d513f7
sw x3, 0(x2) # store x3 (0x50d513f7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000050d513f7 from memory into f5
fround.d f3, f5 # perform operation
fround.d f3, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0xed5cbd7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac8a6da2 # load x3 with 32 MSBs 0x00000000ac8a6da2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ac8a6da2
sw x3, 0(x2) # store x3 (0xac8a6da2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000ac8a6da2 from memory into f23
fround.d f4, f23 # perform operation
fround.d f4, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x2f31ed94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7245edb6 # load x3 with 32 MSBs 0x000000007245edb6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007245edb6
sw x3, 0(x2) # store x3 (0x7245edb6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000007245edb6 from memory into f21
fround.d f5, f21 # perform operation
fround.d f5, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0x9cd3ab4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa346b3e9 # load x3 with 32 MSBs 0x00000000a346b3e9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a346b3e9
sw x3, 0(x2) # store x3 (0xa346b3e9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000a346b3e9 from memory into f1
fround.d f6, f1 # perform operation
fround.d f6, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0xa94a96f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e4b079b # load x3 with 32 MSBs 0x000000001e4b079b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001e4b079b
sw x3, 0(x2) # store x3 (0x1e4b079b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000001e4b079b from memory into f2
fround.d f7, f2 # perform operation
fround.d f7, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x91122d3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7651e220 # load x3 with 32 MSBs 0x000000007651e220
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007651e220
sw x3, 0(x2) # store x3 (0x7651e220) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000007651e220 from memory into f7
fround.d f8, f7 # perform operation
fround.d f8, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x75cc4ece # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbec5bdcd # load x3 with 32 MSBs 0x00000000bec5bdcd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bec5bdcd
sw x3, 0(x2) # store x3 (0xbec5bdcd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000bec5bdcd from memory into f7
fround.d f9, f7 # perform operation
fround.d f9, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x6d61b796 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfc92f5c5 # load x3 with 32 MSBs 0x00000000fc92f5c5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fc92f5c5
sw x3, 0(x2) # store x3 (0xfc92f5c5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000fc92f5c5 from memory into f8
fround.d f10, f8 # perform operation
fround.d f10, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0xccc5e202 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b71878f # load x3 with 32 MSBs 0x000000005b71878f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005b71878f
sw x3, 0(x2) # store x3 (0x5b71878f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000005b71878f from memory into f29
fround.d f11, f29 # perform operation
fround.d f11, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x99d8d3f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2bfd86f # load x3 with 32 MSBs 0x00000000f2bfd86f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f2bfd86f
sw x3, 0(x2) # store x3 (0xf2bfd86f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000f2bfd86f from memory into f27
fround.d f12, f27 # perform operation
fround.d f12, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0x8dfdd794 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6296af7b # load x3 with 32 MSBs 0x000000006296af7b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006296af7b
sw x3, 0(x2) # store x3 (0x6296af7b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000006296af7b from memory into f2
fround.d f13, f2 # perform operation
fround.d f13, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0x866a4de5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd8e8506 # load x3 with 32 MSBs 0x00000000cd8e8506
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cd8e8506
sw x3, 0(x2) # store x3 (0xcd8e8506) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000cd8e8506 from memory into f16
fround.d f14, f16 # perform operation
fround.d f14, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x42ea5d3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5f02711 # load x3 with 32 MSBs 0x00000000e5f02711
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e5f02711
sw x3, 0(x2) # store x3 (0xe5f02711) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000e5f02711 from memory into f28
fround.d f15, f28 # perform operation
fround.d f15, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0xe991d90b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x15915552 # load x3 with 32 MSBs 0x0000000015915552
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000015915552
sw x3, 0(x2) # store x3 (0x15915552) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000015915552 from memory into f21
fround.d f16, f21 # perform operation
fround.d f16, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0xaf26b6b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x780890d3 # load x3 with 32 MSBs 0x00000000780890d3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000780890d3
sw x3, 0(x2) # store x3 (0x780890d3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000780890d3 from memory into f22
fround.d f17, f22 # perform operation
fround.d f17, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0xe8e7aacd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6655197e # load x3 with 32 MSBs 0x000000006655197e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006655197e
sw x3, 0(x2) # store x3 (0x6655197e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000006655197e from memory into f17
fround.d f18, f17 # perform operation
fround.d f18, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0xef32add2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d3c2524 # load x3 with 32 MSBs 0x000000007d3c2524
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007d3c2524
sw x3, 0(x2) # store x3 (0x7d3c2524) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000007d3c2524 from memory into f30
fround.d f19, f30 # perform operation
fround.d f19, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0x7dcf69c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1909444e # load x3 with 32 MSBs 0x000000001909444e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001909444e
sw x3, 0(x2) # store x3 (0x1909444e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000001909444e from memory into f24
fround.d f20, f24 # perform operation
fround.d f20, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0xb501d06a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ca42d33 # load x3 with 32 MSBs 0x000000001ca42d33
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001ca42d33
sw x3, 0(x2) # store x3 (0x1ca42d33) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000001ca42d33 from memory into f22
fround.d f21, f22 # perform operation
fround.d f21, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0x71287b5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xefeccc30 # load x3 with 32 MSBs 0x00000000efeccc30
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000efeccc30
sw x3, 0(x2) # store x3 (0xefeccc30) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000efeccc30 from memory into f4
fround.d f22, f4 # perform operation
fround.d f22, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0x57796a59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf8ca34f # load x3 with 32 MSBs 0x00000000bf8ca34f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bf8ca34f
sw x3, 0(x2) # store x3 (0xbf8ca34f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000bf8ca34f from memory into f16
fround.d f23, f16 # perform operation
fround.d f23, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x270fc261 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x867feaa5 # load x3 with 32 MSBs 0x00000000867feaa5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000867feaa5
sw x3, 0(x2) # store x3 (0x867feaa5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000867feaa5 from memory into f31
fround.d f24, f31 # perform operation
fround.d f24, f31 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0xef3afcbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd69f595b # load x3 with 32 MSBs 0x00000000d69f595b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d69f595b
sw x3, 0(x2) # store x3 (0xd69f595b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000d69f595b from memory into f26
fround.d f25, f26 # perform operation
fround.d f25, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x5fa9f451 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x37b3f992 # load x3 with 32 MSBs 0x0000000037b3f992
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000037b3f992
sw x3, 0(x2) # store x3 (0x37b3f992) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000037b3f992 from memory into f6
fround.d f26, f6 # perform operation
fround.d f26, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0x26d27569 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x999f0d80 # load x3 with 32 MSBs 0x00000000999f0d80
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000999f0d80
sw x3, 0(x2) # store x3 (0x999f0d80) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000999f0d80 from memory into f17
fround.d f27, f17 # perform operation
fround.d f27, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0x70c18f77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0d5e5274 # load x3 with 32 MSBs 0x000000000d5e5274
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000d5e5274
sw x3, 0(x2) # store x3 (0x0d5e5274) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000000d5e5274 from memory into f2
fround.d f28, f2 # perform operation
fround.d f28, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0xc33fb77d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa3860809 # load x3 with 32 MSBs 0x00000000a3860809
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a3860809
sw x3, 0(x2) # store x3 (0xa3860809) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000a3860809 from memory into f30
fround.d f29, f30 # perform operation
fround.d f29, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0x4fd34002 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa83aef03 # load x3 with 32 MSBs 0x00000000a83aef03
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a83aef03
sw x3, 0(x2) # store x3 (0xa83aef03) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000a83aef03 from memory into f15
fround.d f30, f15 # perform operation
fround.d f30, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0xad6092cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf02ea5a4 # load x3 with 32 MSBs 0x00000000f02ea5a4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f02ea5a4
sw x3, 0(x2) # store x3 (0xf02ea5a4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000f02ea5a4 from memory into f13
fround.d f31, f13 # perform operation
fround.d f31, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x2, 0x5be291cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000000000000 from memory into f15
fround.d f2, f15 # perform operation
fround.d f2, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x15, 0xbfd27a33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8000000000000000 from memory into f27
fround.d f15, f27 # perform operation
fround.d f15, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x5, 0xa810249d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
fround.d f5, f23 # perform operation
fround.d f5, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x28, 0x4ffbca3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xbff0000000000000 from memory into f14
fround.d f28, f14 # perform operation
fround.d f28, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x28, 0x233f49da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x3ff8000000000000 from memory into f23
fround.d f28, f23 # perform operation
fround.d f28, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x1, 0x7562a5d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xbff8000000000000 from memory into f5
fround.d f1, f5 # perform operation
fround.d f1, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x20, 0x7ed5a719 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x4000000000000000 from memory into f19
fround.d f20, f19 # perform operation
fround.d f20, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x9, 0xdb2ea730 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
fround.d f9, f13 # perform operation
fround.d f9, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x5, 0x4d32ecb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0010000000000000 from memory into f28
fround.d f5, f28 # perform operation
fround.d f5, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x3, 0x1540ac8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x8010000000000000 from memory into f13
fround.d f3, f13 # perform operation
fround.d f3, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x15, 0xc2e6b951 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x7fefffffffffffff from memory into f4
fround.d f15, f4 # perform operation
fround.d f15, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x26, 0x5b1cbe4c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xffefffffffffffff from memory into f30
fround.d f26, f30 # perform operation
fround.d f26, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x30, 0x46af3693 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000fffffffffffff from memory into f8
fround.d f30, f8 # perform operation
fround.d f30, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x18, 0x06e7c9b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x800fffffffffffff from memory into f2
fround.d f18, f2 # perform operation
fround.d f18, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x4, 0xa70ee8f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0008000000000000 from memory into f22
fround.d f4, f22 # perform operation
fround.d f4, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x21, 0xb432045a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x8008000000000000 from memory into f17
fround.d f21, f17 # perform operation
fround.d f21, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x17, 0x1d416d66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
fround.d f17, f27 # perform operation
fround.d f17, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x6, 0x4b5f5eb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8000000000000001 from memory into f31
fround.d f6, f31 # perform operation
fround.d f6, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x2, 0xfde35429 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7ff0000000000000 from memory into f17
fround.d f2, f17 # perform operation
fround.d f2, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x26, 0x34a89c17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xfff0000000000000 from memory into f19
fround.d f26, f19 # perform operation
fround.d f26, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x7, 0x62c15a84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7ff8000000000000 from memory into f1
fround.d f7, f1 # perform operation
fround.d f7, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x31, 0xf7ff5f0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7fffffffffffffff from memory into f13
fround.d f31, f13 # perform operation
fround.d f31, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x26, 0xe116d4a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7ff0000000000001 from memory into f15
fround.d f26, f15 # perform operation
fround.d f26, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x25, 0xc23108dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7ff7ffffffffffff from memory into f27
fround.d f25, f27 # perform operation
fround.d f25, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x2, 0xc497e84a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x5a392534a57711ad from memory into f25
fround.d f2, f25 # perform operation
fround.d f2, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x27, 0x2ee698b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
fround.d f27, f7 # perform operation
fround.d f27, f7 # perform operation

# Testcase cp_frm
li x23, 0x3d0f13ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x61b3070e # load x3 with 32 MSBs 0x0000000061b3070e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000061b3070e
sw x3, 0(x2) # store x3 (0x61b3070e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000061b3070e from memory into f12
fround.d f23, f12 # perform operation
fround.d f23, f12, dyn # perform operation
fround.d f23, f12, rdn # perform operation
fround.d f23, f12, rmm # perform operation
fround.d f23, f12, rne # perform operation
fround.d f23, f12, rtz # perform operation
fround.d f23, f12, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fround.d f23, f12 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fround.d f23, f12 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fround.d f23, f12 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fround.d f23, f12 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fround.d f23, f12 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xece46605 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x031c55b3 # load x3 with 32 MSBs 0x00000000031c55b3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000031c55b3
sw x3, 0(x2) # store x3 (0x031c55b3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000031c55b3 from memory into f29
fround.d f0, f29 # perform operation
fround.d f0, f29 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xd07ea5cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5956234a # load x3 with 32 MSBs 0x000000005956234a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005956234a
sw x3, 0(x2) # store x3 (0x5956234a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000005956234a from memory into f11
fround.d f1, f11 # perform operation
fround.d f1, f11 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x9d57d205 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3014a8a7 # load x3 with 32 MSBs 0x000000003014a8a7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003014a8a7
sw x3, 0(x2) # store x3 (0x3014a8a7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000003014a8a7 from memory into f31
fround.d f2, f31 # perform operation
fround.d f2, f31 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xb4102d7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4566c0db # load x3 with 32 MSBs 0x000000004566c0db
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004566c0db
sw x3, 0(x2) # store x3 (0x4566c0db) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000004566c0db from memory into f12
fround.d f3, f12 # perform operation
fround.d f3, f12 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x4ccbc75b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x74ffadd6 # load x3 with 32 MSBs 0x0000000074ffadd6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000074ffadd6
sw x3, 0(x2) # store x3 (0x74ffadd6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000074ffadd6 from memory into f23
fround.d f4, f23 # perform operation
fround.d f4, f23 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x27a30571 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3df1bc8b # load x3 with 32 MSBs 0x000000003df1bc8b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003df1bc8b
sw x3, 0(x2) # store x3 (0x3df1bc8b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000003df1bc8b from memory into f24
fround.d f5, f24 # perform operation
fround.d f5, f24 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x2630f448 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce7bec19 # load x3 with 32 MSBs 0x00000000ce7bec19
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ce7bec19
sw x3, 0(x2) # store x3 (0xce7bec19) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000ce7bec19 from memory into f21
fround.d f6, f21 # perform operation
fround.d f6, f21 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x2e774a20 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5fc6ee5c # load x3 with 32 MSBs 0x000000005fc6ee5c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005fc6ee5c
sw x3, 0(x2) # store x3 (0x5fc6ee5c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000005fc6ee5c from memory into f8
fround.d f7, f8 # perform operation
fround.d f7, f8 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xbce72d33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x08e093c7 # load x3 with 32 MSBs 0x0000000008e093c7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000008e093c7
sw x3, 0(x2) # store x3 (0x08e093c7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000008e093c7 from memory into f28
fround.d f8, f28 # perform operation
fround.d f8, f28 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xc80b8bcf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe4f2c899 # load x3 with 32 MSBs 0x00000000e4f2c899
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e4f2c899
sw x3, 0(x2) # store x3 (0xe4f2c899) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000e4f2c899 from memory into f23
fround.d f9, f23 # perform operation
fround.d f9, f23 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xbc45f618 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5848a7e0 # load x3 with 32 MSBs 0x000000005848a7e0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005848a7e0
sw x3, 0(x2) # store x3 (0x5848a7e0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000005848a7e0 from memory into f9
fround.d f10, f9 # perform operation
fround.d f10, f9 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xab996ec7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc89ca2e0 # load x3 with 32 MSBs 0x00000000c89ca2e0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c89ca2e0
sw x3, 0(x2) # store x3 (0xc89ca2e0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000c89ca2e0 from memory into f19
fround.d f11, f19 # perform operation
fround.d f11, f19 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x507790bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9007a50a # load x3 with 32 MSBs 0x000000009007a50a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009007a50a
sw x3, 0(x2) # store x3 (0x9007a50a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000009007a50a from memory into f14
fround.d f12, f14 # perform operation
fround.d f12, f14 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xc6f7d030 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf2777d1 # load x3 with 32 MSBs 0x00000000af2777d1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000af2777d1
sw x3, 0(x2) # store x3 (0xaf2777d1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000af2777d1 from memory into f4
fround.d f13, f4 # perform operation
fround.d f13, f4 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x07d8ee22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c90dd52 # load x3 with 32 MSBs 0x000000002c90dd52
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002c90dd52
sw x3, 0(x2) # store x3 (0x2c90dd52) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000002c90dd52 from memory into f2
fround.d f14, f2 # perform operation
fround.d f14, f2 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xa91681c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x28af887d # load x3 with 32 MSBs 0x0000000028af887d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000028af887d
sw x3, 0(x2) # store x3 (0x28af887d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000028af887d from memory into f20
fround.d f15, f20 # perform operation
fround.d f15, f20 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x6d7aab1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x22070718 # load x3 with 32 MSBs 0x0000000022070718
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000022070718
sw x3, 0(x2) # store x3 (0x22070718) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000022070718 from memory into f26
fround.d f16, f26 # perform operation
fround.d f16, f26 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xc602219c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x805d8f1d # load x3 with 32 MSBs 0x00000000805d8f1d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000805d8f1d
sw x3, 0(x2) # store x3 (0x805d8f1d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000805d8f1d from memory into f27
fround.d f17, f27 # perform operation
fround.d f17, f27 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x458cf1f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x86f1027b # load x3 with 32 MSBs 0x0000000086f1027b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000086f1027b
sw x3, 0(x2) # store x3 (0x86f1027b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000086f1027b from memory into f19
fround.d f18, f19 # perform operation
fround.d f18, f19 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x22f4e8f5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0a474be2 # load x3 with 32 MSBs 0x000000000a474be2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000a474be2
sw x3, 0(x2) # store x3 (0x0a474be2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000000a474be2 from memory into f28
fround.d f19, f28 # perform operation
fround.d f19, f28 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xe85a5616 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e8e3c3c # load x3 with 32 MSBs 0x000000007e8e3c3c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007e8e3c3c
sw x3, 0(x2) # store x3 (0x7e8e3c3c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000007e8e3c3c from memory into f19
fround.d f20, f19 # perform operation
fround.d f20, f19 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xf1ea93a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x782071b9 # load x3 with 32 MSBs 0x00000000782071b9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000782071b9
sw x3, 0(x2) # store x3 (0x782071b9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000782071b9 from memory into f1
fround.d f21, f1 # perform operation
fround.d f21, f1 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x7e84b69f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa61bd55 # load x3 with 32 MSBs 0x00000000fa61bd55
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fa61bd55
sw x3, 0(x2) # store x3 (0xfa61bd55) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000fa61bd55 from memory into f8
fround.d f22, f8 # perform operation
fround.d f22, f8 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x5d964226 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2bcfcaa8 # load x3 with 32 MSBs 0x000000002bcfcaa8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002bcfcaa8
sw x3, 0(x2) # store x3 (0x2bcfcaa8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000002bcfcaa8 from memory into f19
fround.d f23, f19 # perform operation
fround.d f23, f19 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xea03c607 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x36d7492b # load x3 with 32 MSBs 0x0000000036d7492b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000036d7492b
sw x3, 0(x2) # store x3 (0x36d7492b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000036d7492b from memory into f12
fround.d f24, f12 # perform operation
fround.d f24, f12 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x19dd3567 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd2a21561 # load x3 with 32 MSBs 0x00000000d2a21561
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d2a21561
sw x3, 0(x2) # store x3 (0xd2a21561) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000d2a21561 from memory into f11
fround.d f25, f11 # perform operation
fround.d f25, f11 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x644d070e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9852aa94 # load x3 with 32 MSBs 0x000000009852aa94
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009852aa94
sw x3, 0(x2) # store x3 (0x9852aa94) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000009852aa94 from memory into f20
fround.d f26, f20 # perform operation
fround.d f26, f20 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xffb1b976 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x06ce0d4b # load x3 with 32 MSBs 0x0000000006ce0d4b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000006ce0d4b
sw x3, 0(x2) # store x3 (0x06ce0d4b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000006ce0d4b from memory into f16
fround.d f27, f16 # perform operation
fround.d f27, f16 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xae4f9e72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x569a8d52 # load x3 with 32 MSBs 0x00000000569a8d52
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000569a8d52
sw x3, 0(x2) # store x3 (0x569a8d52) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000569a8d52 from memory into f31
fround.d f28, f31 # perform operation
fround.d f28, f31 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x1607a1ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x54f23cb9 # load x3 with 32 MSBs 0x0000000054f23cb9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000054f23cb9
sw x3, 0(x2) # store x3 (0x54f23cb9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000054f23cb9 from memory into f14
fround.d f29, f14 # perform operation
fround.d f29, f14 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xedf94368 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x043effa7 # load x3 with 32 MSBs 0x00000000043effa7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000043effa7
sw x3, 0(x2) # store x3 (0x043effa7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000043effa7 from memory into f24
fround.d f30, f24 # perform operation
fround.d f30, f24 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xcbe6522c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb55dbc38 # load x3 with 32 MSBs 0x00000000b55dbc38
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b55dbc38
sw x3, 0(x2) # store x3 (0xb55dbc38) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000b55dbc38 from memory into f3
fround.d f31, f3 # perform operation
fround.d f31, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x2, 0x5de9ae35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3cc37a42 # load x3 with 32 MSBs 0x000000003cc37a42
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003cc37a42
sw x3, 0(x2) # store x3 (0x3cc37a42) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x000000003cc37a42 from memory into f0
fround.d f2, f0 # perform operation
fround.d f2, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x23, 0xcf2c112a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c3d96c6 # load x3 with 32 MSBs 0x000000006c3d96c6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006c3d96c6
sw x3, 0(x2) # store x3 (0x6c3d96c6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000006c3d96c6 from memory into f1
fround.d f23, f1 # perform operation
fround.d f23, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x13, 0x85157794 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d8e6f80 # load x3 with 32 MSBs 0x000000009d8e6f80
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009d8e6f80
sw x3, 0(x2) # store x3 (0x9d8e6f80) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000009d8e6f80 from memory into f2
fround.d f13, f2 # perform operation
fround.d f13, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x1, 0xfd26c968 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x181d69bf # load x3 with 32 MSBs 0x00000000181d69bf
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000181d69bf
sw x3, 0(x2) # store x3 (0x181d69bf) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000181d69bf from memory into f3
fround.d f1, f3 # perform operation
fround.d f1, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x11, 0x100589ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x159a41fb # load x3 with 32 MSBs 0x00000000159a41fb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000159a41fb
sw x3, 0(x2) # store x3 (0x159a41fb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000159a41fb from memory into f4
fround.d f11, f4 # perform operation
fround.d f11, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x7, 0xbbc5b180 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60aeafff # load x3 with 32 MSBs 0x0000000060aeafff
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000060aeafff
sw x3, 0(x2) # store x3 (0x60aeafff) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000060aeafff from memory into f5
fround.d f7, f5 # perform operation
fround.d f7, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x18, 0x32f850d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd2d5fe11 # load x3 with 32 MSBs 0x00000000d2d5fe11
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d2d5fe11
sw x3, 0(x2) # store x3 (0xd2d5fe11) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000d2d5fe11 from memory into f6
fround.d f18, f6 # perform operation
fround.d f18, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x4, 0xb08e01d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17277744 # load x3 with 32 MSBs 0x0000000017277744
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000017277744
sw x3, 0(x2) # store x3 (0x17277744) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000017277744 from memory into f7
fround.d f4, f7 # perform operation
fround.d f4, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x22, 0xf842a15d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1fbbe7f # load x3 with 32 MSBs 0x00000000b1fbbe7f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b1fbbe7f
sw x3, 0(x2) # store x3 (0xb1fbbe7f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000b1fbbe7f from memory into f8
fround.d f22, f8 # perform operation
fround.d f22, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x14, 0xa65153db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8ae844f1 # load x3 with 32 MSBs 0x000000008ae844f1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008ae844f1
sw x3, 0(x2) # store x3 (0x8ae844f1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000008ae844f1 from memory into f9
fround.d f14, f9 # perform operation
fround.d f14, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x7, 0x3f8ebdf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe6fa19bf # load x3 with 32 MSBs 0x00000000e6fa19bf
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e6fa19bf
sw x3, 0(x2) # store x3 (0xe6fa19bf) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000e6fa19bf from memory into f10
fround.d f7, f10 # perform operation
fround.d f7, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x23, 0x489e6b29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b122bcc # load x3 with 32 MSBs 0x000000006b122bcc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006b122bcc
sw x3, 0(x2) # store x3 (0x6b122bcc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000006b122bcc from memory into f11
fround.d f23, f11 # perform operation
fround.d f23, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x24, 0xbd3d246b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x36081ea1 # load x3 with 32 MSBs 0x0000000036081ea1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000036081ea1
sw x3, 0(x2) # store x3 (0x36081ea1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000036081ea1 from memory into f12
fround.d f24, f12 # perform operation
fround.d f24, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x4, 0xd8525d0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0578928f # load x3 with 32 MSBs 0x000000000578928f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000578928f
sw x3, 0(x2) # store x3 (0x0578928f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000000578928f from memory into f13
fround.d f4, f13 # perform operation
fround.d f4, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x8, 0xa2a66cd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1dba330 # load x3 with 32 MSBs 0x00000000b1dba330
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b1dba330
sw x3, 0(x2) # store x3 (0xb1dba330) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000b1dba330 from memory into f14
fround.d f8, f14 # perform operation
fround.d f8, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x12, 0x6bdf7a08 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb47c868c # load x3 with 32 MSBs 0x00000000b47c868c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b47c868c
sw x3, 0(x2) # store x3 (0xb47c868c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000b47c868c from memory into f15
fround.d f12, f15 # perform operation
fround.d f12, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x18, 0x62cbf40b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb8da772a # load x3 with 32 MSBs 0x00000000b8da772a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b8da772a
sw x3, 0(x2) # store x3 (0xb8da772a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000b8da772a from memory into f16
fround.d f18, f16 # perform operation
fround.d f18, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x31, 0x9965df5a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd7fe53be # load x3 with 32 MSBs 0x00000000d7fe53be
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d7fe53be
sw x3, 0(x2) # store x3 (0xd7fe53be) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000d7fe53be from memory into f17
fround.d f31, f17 # perform operation
fround.d f31, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x25, 0xcf95d0e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x16c86fad # load x3 with 32 MSBs 0x0000000016c86fad
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000016c86fad
sw x3, 0(x2) # store x3 (0x16c86fad) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000016c86fad from memory into f18
fround.d f25, f18 # perform operation
fround.d f25, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x11, 0xb7c50f44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9548d70d # load x3 with 32 MSBs 0x000000009548d70d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009548d70d
sw x3, 0(x2) # store x3 (0x9548d70d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000009548d70d from memory into f19
fround.d f11, f19 # perform operation
fround.d f11, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x25, 0xba7db7e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e70bc8e # load x3 with 32 MSBs 0x000000003e70bc8e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003e70bc8e
sw x3, 0(x2) # store x3 (0x3e70bc8e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000003e70bc8e from memory into f20
fround.d f25, f20 # perform operation
fround.d f25, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x15, 0xbe0c336c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x429435f4 # load x3 with 32 MSBs 0x00000000429435f4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000429435f4
sw x3, 0(x2) # store x3 (0x429435f4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000429435f4 from memory into f21
fround.d f15, f21 # perform operation
fround.d f15, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x28, 0xcbbb018d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf63d49f0 # load x3 with 32 MSBs 0x00000000f63d49f0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f63d49f0
sw x3, 0(x2) # store x3 (0xf63d49f0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000f63d49f0 from memory into f22
fround.d f28, f22 # perform operation
fround.d f28, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x15, 0xd38b8622 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x86ac2a38 # load x3 with 32 MSBs 0x0000000086ac2a38
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000086ac2a38
sw x3, 0(x2) # store x3 (0x86ac2a38) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000086ac2a38 from memory into f23
fround.d f15, f23 # perform operation
fround.d f15, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x4, 0x39f2eb1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9056820a # load x3 with 32 MSBs 0x000000009056820a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009056820a
sw x3, 0(x2) # store x3 (0x9056820a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000009056820a from memory into f24
fround.d f4, f24 # perform operation
fround.d f4, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x9, 0x22151db2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7b600da5 # load x3 with 32 MSBs 0x000000007b600da5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007b600da5
sw x3, 0(x2) # store x3 (0x7b600da5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000007b600da5 from memory into f25
fround.d f9, f25 # perform operation
fround.d f9, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x12, 0xa9a9f6b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00cda51a # load x3 with 32 MSBs 0x0000000000cda51a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000cda51a
sw x3, 0(x2) # store x3 (0x00cda51a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000000cda51a from memory into f26
fround.d f12, f26 # perform operation
fround.d f12, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x5, 0x06985635 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x42ab483a # load x3 with 32 MSBs 0x0000000042ab483a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000042ab483a
sw x3, 0(x2) # store x3 (0x42ab483a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000042ab483a from memory into f27
fround.d f5, f27 # perform operation
fround.d f5, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x31, 0xbee950cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3aea0ad # load x3 with 32 MSBs 0x00000000f3aea0ad
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f3aea0ad
sw x3, 0(x2) # store x3 (0xf3aea0ad) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000f3aea0ad from memory into f28
fround.d f31, f28 # perform operation
fround.d f31, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x1, 0x54355e35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d14cf7f # load x3 with 32 MSBs 0x000000001d14cf7f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001d14cf7f
sw x3, 0(x2) # store x3 (0x1d14cf7f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000001d14cf7f from memory into f29
fround.d f1, f29 # perform operation
fround.d f1, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x18, 0x2e075e12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa75753a9 # load x3 with 32 MSBs 0x00000000a75753a9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a75753a9
sw x3, 0(x2) # store x3 (0xa75753a9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000a75753a9 from memory into f30
fround.d f18, f30 # perform operation
fround.d f18, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x10, 0x36f715f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d264a38 # load x3 with 32 MSBs 0x000000007d264a38
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007d264a38
sw x3, 0(x2) # store x3 (0x7d264a38) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000007d264a38 from memory into f31
fround.d f10, f31 # perform operation
fround.d f10, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
