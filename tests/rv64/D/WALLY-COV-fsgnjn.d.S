///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/D//WALLY-COV-fsgnjn.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.776679
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


# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x11, 0x91f2a24a16aa6e88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f31, 0(x2) # load 0x0000000000000000 from memory into f31
li x3, 0x4b84cb753e01783c # load x3 with value 0x4b84cb753e01783c
sd x3, 0(x2) # store 0x4b84cb753e01783c in memory
fld f19, 0(x2) # load 0x4b84cb753e01783c from memory into f19
fsgnjn.d f11, f31, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x27, 0x2b8f25ace56c47f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f31, 0(x2) # load 0x8000000000000000 from memory into f31
li x3, 0x75fdd0b59cff1ad8 # load x3 with value 0x75fdd0b59cff1ad8
sd x3, 0(x2) # store 0x75fdd0b59cff1ad8 in memory
fld f26, 0(x2) # load 0x75fdd0b59cff1ad8 from memory into f26
fsgnjn.d f27, f31, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x11, 0x16e9b03ee3cce831 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f18, 0(x2) # load 0x3ff0000000000000 from memory into f18
li x3, 0x2bde80d5204dbc73 # load x3 with value 0x2bde80d5204dbc73
sd x3, 0(x2) # store 0x2bde80d5204dbc73 in memory
fld f31, 0(x2) # load 0x2bde80d5204dbc73 from memory into f31
fsgnjn.d f11, f18, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x9, 0xaf777cbe2ccc8920 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f30, 0(x2) # load 0xbff0000000000000 from memory into f30
li x3, 0x792e156b8cf4b9fe # load x3 with value 0x792e156b8cf4b9fe
sd x3, 0(x2) # store 0x792e156b8cf4b9fe in memory
fld f4, 0(x2) # load 0x792e156b8cf4b9fe from memory into f4
fsgnjn.d f9, f30, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x23, 0x469236d4e6471d17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
li x3, 0xa095b880e1b73458 # load x3 with value 0xa095b880e1b73458
sd x3, 0(x2) # store 0xa095b880e1b73458 in memory
fld f18, 0(x2) # load 0xa095b880e1b73458 from memory into f18
fsgnjn.d f23, f8, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x3, 0x9c54837de3c7eb6c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f5, 0(x2) # load 0xbff8000000000000 from memory into f5
li x3, 0xac1b18c5e7ceebe3 # load x3 with value 0xac1b18c5e7ceebe3
sd x3, 0(x2) # store 0xac1b18c5e7ceebe3 in memory
fld f8, 0(x2) # load 0xac1b18c5e7ceebe3 from memory into f8
fsgnjn.d f3, f5, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x2, 0x904937277a46f124 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f28, 0(x2) # load 0x4000000000000000 from memory into f28
li x3, 0x47d80ff968ce7f83 # load x3 with value 0x47d80ff968ce7f83
sd x3, 0(x2) # store 0x47d80ff968ce7f83 in memory
fld f4, 0(x2) # load 0x47d80ff968ce7f83 from memory into f4
fsgnjn.d f2, f28, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x5, 0x133636f5c89dd7ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
li x3, 0x71733dd62df3cfce # load x3 with value 0x71733dd62df3cfce
sd x3, 0(x2) # store 0x71733dd62df3cfce in memory
fld f9, 0(x2) # load 0x71733dd62df3cfce from memory into f9
fsgnjn.d f5, f13, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x28, 0x192f51aa55e060b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f31, 0(x2) # load 0x0010000000000000 from memory into f31
li x3, 0xfc692e08ba946d87 # load x3 with value 0xfc692e08ba946d87
sd x3, 0(x2) # store 0xfc692e08ba946d87 in memory
fld f26, 0(x2) # load 0xfc692e08ba946d87 from memory into f26
fsgnjn.d f28, f31, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x24, 0x6ed3d3dd7fcf9915 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f15, 0(x2) # load 0x8010000000000000 from memory into f15
li x3, 0x90e48b751b8365a4 # load x3 with value 0x90e48b751b8365a4
sd x3, 0(x2) # store 0x90e48b751b8365a4 in memory
fld f11, 0(x2) # load 0x90e48b751b8365a4 from memory into f11
fsgnjn.d f24, f15, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x31, 0x11d985f850a77968 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f22, 0(x2) # load 0x7fefffffffffffff from memory into f22
li x3, 0xd0babde62a0dcc3b # load x3 with value 0xd0babde62a0dcc3b
sd x3, 0(x2) # store 0xd0babde62a0dcc3b in memory
fld f13, 0(x2) # load 0xd0babde62a0dcc3b from memory into f13
fsgnjn.d f31, f22, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x23, 0xb14c4b8aab9d7671 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f11, 0(x2) # load 0xffefffffffffffff from memory into f11
li x3, 0xd2204be7f465f723 # load x3 with value 0xd2204be7f465f723
sd x3, 0(x2) # store 0xd2204be7f465f723 in memory
fld f7, 0(x2) # load 0xd2204be7f465f723 from memory into f7
fsgnjn.d f23, f11, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x31, 0x8b13b73bd3ed9b3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f14, 0(x2) # load 0x000fffffffffffff from memory into f14
li x3, 0x50a614819e754068 # load x3 with value 0x50a614819e754068
sd x3, 0(x2) # store 0x50a614819e754068 in memory
fld f15, 0(x2) # load 0x50a614819e754068 from memory into f15
fsgnjn.d f31, f14, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x23, 0xaac9a5c29518981b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f7, 0(x2) # load 0x800fffffffffffff from memory into f7
li x3, 0x7855c5496fbc4bb9 # load x3 with value 0x7855c5496fbc4bb9
sd x3, 0(x2) # store 0x7855c5496fbc4bb9 in memory
fld f6, 0(x2) # load 0x7855c5496fbc4bb9 from memory into f6
fsgnjn.d f23, f7, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x4, 0x3acf61373dd9d106 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f3, 0(x2) # load 0x0008000000000000 from memory into f3
li x3, 0x11a4d54999a7b6f2 # load x3 with value 0x11a4d54999a7b6f2
sd x3, 0(x2) # store 0x11a4d54999a7b6f2 in memory
fld f11, 0(x2) # load 0x11a4d54999a7b6f2 from memory into f11
fsgnjn.d f4, f3, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x27, 0x70eb5f0ff1334d27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f5, 0(x2) # load 0x8008000000000000 from memory into f5
li x3, 0x97ad7db34ea597e8 # load x3 with value 0x97ad7db34ea597e8
sd x3, 0(x2) # store 0x97ad7db34ea597e8 in memory
fld f8, 0(x2) # load 0x97ad7db34ea597e8 from memory into f8
fsgnjn.d f27, f5, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x11, 0x1d342bdadd8fa673 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f14, 0(x2) # load 0x0000000000000001 from memory into f14
li x3, 0x8eff72ef9362c17c # load x3 with value 0x8eff72ef9362c17c
sd x3, 0(x2) # store 0x8eff72ef9362c17c in memory
fld f16, 0(x2) # load 0x8eff72ef9362c17c from memory into f16
fsgnjn.d f11, f14, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x19, 0xbb7bb95533bb4976 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f8, 0(x2) # load 0x8000000000000001 from memory into f8
li x3, 0x20ee84a967cc2033 # load x3 with value 0x20ee84a967cc2033
sd x3, 0(x2) # store 0x20ee84a967cc2033 in memory
fld f7, 0(x2) # load 0x20ee84a967cc2033 from memory into f7
fsgnjn.d f19, f8, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x28, 0x2f3a9c7c0b8d56d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f21, 0(x2) # load 0x7ff0000000000000 from memory into f21
li x3, 0x0e9c079cadeadab5 # load x3 with value 0x0e9c079cadeadab5
sd x3, 0(x2) # store 0x0e9c079cadeadab5 in memory
fld f8, 0(x2) # load 0x0e9c079cadeadab5 from memory into f8
fsgnjn.d f28, f21, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x29, 0x55925b313a55bc60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f6, 0(x2) # load 0xfff0000000000000 from memory into f6
li x3, 0x87f3d7b8e09ec932 # load x3 with value 0x87f3d7b8e09ec932
sd x3, 0(x2) # store 0x87f3d7b8e09ec932 in memory
fld f9, 0(x2) # load 0x87f3d7b8e09ec932 from memory into f9
fsgnjn.d f29, f6, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x1, 0x6a54431b29ad8a21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f10, 0(x2) # load 0x7ff8000000000000 from memory into f10
li x3, 0xb73e8c7ce9b7561a # load x3 with value 0xb73e8c7ce9b7561a
sd x3, 0(x2) # store 0xb73e8c7ce9b7561a in memory
fld f7, 0(x2) # load 0xb73e8c7ce9b7561a from memory into f7
fsgnjn.d f1, f10, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x25, 0xce5de3635f3a525a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f3, 0(x2) # load 0x7fffffffffffffff from memory into f3
li x3, 0xfc7c9b7e72f4239f # load x3 with value 0xfc7c9b7e72f4239f
sd x3, 0(x2) # store 0xfc7c9b7e72f4239f in memory
fld f14, 0(x2) # load 0xfc7c9b7e72f4239f from memory into f14
fsgnjn.d f25, f3, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x30, 0x6a3d3e29a73be7f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f4, 0(x2) # load 0x7ff0000000000001 from memory into f4
li x3, 0x9f1e976d69e420b0 # load x3 with value 0x9f1e976d69e420b0
sd x3, 0(x2) # store 0x9f1e976d69e420b0 in memory
fld f20, 0(x2) # load 0x9f1e976d69e420b0 from memory into f20
fsgnjn.d f30, f4, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x4, 0x7c230aa42c6682f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f27, 0(x2) # load 0x7ff7ffffffffffff from memory into f27
li x3, 0x708cf0f694c1baa6 # load x3 with value 0x708cf0f694c1baa6
sd x3, 0(x2) # store 0x708cf0f694c1baa6 in memory
fld f15, 0(x2) # load 0x708cf0f694c1baa6 from memory into f15
fsgnjn.d f4, f27, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x20, 0x03746206aae7ad8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f16, 0(x2) # load 0x5a392534a57711ad from memory into f16
li x3, 0x119ac7791efd7990 # load x3 with value 0x119ac7791efd7990
sd x3, 0(x2) # store 0x119ac7791efd7990 in memory
fld f1, 0(x2) # load 0x119ac7791efd7990 from memory into f1
fsgnjn.d f20, f16, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x4, 0x69a43b11fa044357 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f12, 0(x2) # load 0xa6e895993737426c from memory into f12
li x3, 0x1176d22db1e3471e # load x3 with value 0x1176d22db1e3471e
sd x3, 0(x2) # store 0x1176d22db1e3471e in memory
fld f17, 0(x2) # load 0x1176d22db1e3471e from memory into f17
fsgnjn.d f4, f12, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x30, 0x44fbb6f4b8300ca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa442d9d00854e806 # load x3 with value 0xa442d9d00854e806
sd x3, 0(x2) # store 0xa442d9d00854e806 in memory
fld f7, 0(x2) # load 0xa442d9d00854e806 from memory into f7
li x3, 0x0000000000000000 # load x3 with value 0x0000000000000000
sd x3, 0(x2) # store 0x0000000000000000 in memory
fld f3, 0(x2) # load 0x0000000000000000 from memory into f3
fsgnjn.d f30, f7, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000000)
li x20, 0x7b3183654a18f3de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60f0010111adff84 # load x3 with value 0x60f0010111adff84
sd x3, 0(x2) # store 0x60f0010111adff84 in memory
fld f9, 0(x2) # load 0x60f0010111adff84 from memory into f9
li x3, 0x8000000000000000 # load x3 with value 0x8000000000000000
sd x3, 0(x2) # store 0x8000000000000000 in memory
fld f21, 0(x2) # load 0x8000000000000000 from memory into f21
fsgnjn.d f20, f9, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff0000000000000)
li x14, 0x9aeb9d1e95e6f3d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa14c837ac9b79f24 # load x3 with value 0xa14c837ac9b79f24
sd x3, 0(x2) # store 0xa14c837ac9b79f24 in memory
fld f13, 0(x2) # load 0xa14c837ac9b79f24 from memory into f13
li x3, 0x3ff0000000000000 # load x3 with value 0x3ff0000000000000
sd x3, 0(x2) # store 0x3ff0000000000000 in memory
fld f28, 0(x2) # load 0x3ff0000000000000 from memory into f28
fsgnjn.d f14, f13, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff0000000000000)
li x7, 0xb66b083ecbfebd38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2e67af587bba2c16 # load x3 with value 0x2e67af587bba2c16
sd x3, 0(x2) # store 0x2e67af587bba2c16 in memory
fld f18, 0(x2) # load 0x2e67af587bba2c16 from memory into f18
li x3, 0xbff0000000000000 # load x3 with value 0xbff0000000000000
sd x3, 0(x2) # store 0xbff0000000000000 in memory
fld f4, 0(x2) # load 0xbff0000000000000 from memory into f4
fsgnjn.d f7, f18, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff8000000000000)
li x1, 0x61984b26463182b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf737fd5cefe3a0c6 # load x3 with value 0xf737fd5cefe3a0c6
sd x3, 0(x2) # store 0xf737fd5cefe3a0c6 in memory
fld f22, 0(x2) # load 0xf737fd5cefe3a0c6 from memory into f22
li x3, 0x3ff8000000000000 # load x3 with value 0x3ff8000000000000
sd x3, 0(x2) # store 0x3ff8000000000000 in memory
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
fsgnjn.d f1, f22, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff8000000000000)
li x9, 0x3f746a0c79f506d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb006c3139363f59 # load x3 with value 0xfb006c3139363f59
sd x3, 0(x2) # store 0xfb006c3139363f59 in memory
fld f28, 0(x2) # load 0xfb006c3139363f59 from memory into f28
li x3, 0xbff8000000000000 # load x3 with value 0xbff8000000000000
sd x3, 0(x2) # store 0xbff8000000000000 in memory
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
fsgnjn.d f9, f28, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000000000000000)
li x12, 0x69a3d5e2d2adc91d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3996e80a43a257a7 # load x3 with value 0x3996e80a43a257a7
sd x3, 0(x2) # store 0x3996e80a43a257a7 in memory
fld f24, 0(x2) # load 0x3996e80a43a257a7 from memory into f24
li x3, 0x4000000000000000 # load x3 with value 0x4000000000000000
sd x3, 0(x2) # store 0x4000000000000000 in memory
fld f16, 0(x2) # load 0x4000000000000000 from memory into f16
fsgnjn.d f12, f24, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000000000000000)
li x14, 0xcd16ee958b6c3604 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x879431e937c3b7c7 # load x3 with value 0x879431e937c3b7c7
sd x3, 0(x2) # store 0x879431e937c3b7c7 in memory
fld f29, 0(x2) # load 0x879431e937c3b7c7 from memory into f29
li x3, 0xc000000000000000 # load x3 with value 0xc000000000000000
sd x3, 0(x2) # store 0xc000000000000000 in memory
fld f2, 0(x2) # load 0xc000000000000000 from memory into f2
fsgnjn.d f14, f29, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x10000000000000)
li x21, 0x50ca205b546a77cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe6aff699cf3ebe83 # load x3 with value 0xe6aff699cf3ebe83
sd x3, 0(x2) # store 0xe6aff699cf3ebe83 in memory
fld f16, 0(x2) # load 0xe6aff699cf3ebe83 from memory into f16
li x3, 0x0010000000000000 # load x3 with value 0x0010000000000000
sd x3, 0(x2) # store 0x0010000000000000 in memory
fld f31, 0(x2) # load 0x0010000000000000 from memory into f31
fsgnjn.d f21, f16, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8010000000000000)
li x14, 0x1ac5070f30e4a72a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x74c4f8501221ecbd # load x3 with value 0x74c4f8501221ecbd
sd x3, 0(x2) # store 0x74c4f8501221ecbd in memory
fld f9, 0(x2) # load 0x74c4f8501221ecbd from memory into f9
li x3, 0x8010000000000000 # load x3 with value 0x8010000000000000
sd x3, 0(x2) # store 0x8010000000000000 in memory
fld f28, 0(x2) # load 0x8010000000000000 from memory into f28
fsgnjn.d f14, f9, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fefffffffffffff)
li x26, 0x6617eb660a756220 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50399aeafcc5e206 # load x3 with value 0x50399aeafcc5e206
sd x3, 0(x2) # store 0x50399aeafcc5e206 in memory
fld f24, 0(x2) # load 0x50399aeafcc5e206 from memory into f24
li x3, 0x7fefffffffffffff # load x3 with value 0x7fefffffffffffff
sd x3, 0(x2) # store 0x7fefffffffffffff in memory
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
fsgnjn.d f26, f24, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffefffffffffffff)
li x29, 0xb377ad88f3d8e9f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x816fb6bc84a52abf # load x3 with value 0x816fb6bc84a52abf
sd x3, 0(x2) # store 0x816fb6bc84a52abf in memory
fld f16, 0(x2) # load 0x816fb6bc84a52abf from memory into f16
li x3, 0xffefffffffffffff # load x3 with value 0xffefffffffffffff
sd x3, 0(x2) # store 0xffefffffffffffff in memory
fld f30, 0(x2) # load 0xffefffffffffffff from memory into f30
fsgnjn.d f29, f16, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffff)
li x22, 0xe3941fde1709573f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x599924f3b7e51934 # load x3 with value 0x599924f3b7e51934
sd x3, 0(x2) # store 0x599924f3b7e51934 in memory
fld f4, 0(x2) # load 0x599924f3b7e51934 from memory into f4
li x3, 0x000fffffffffffff # load x3 with value 0x000fffffffffffff
sd x3, 0(x2) # store 0x000fffffffffffff in memory
fld f2, 0(x2) # load 0x000fffffffffffff from memory into f2
fsgnjn.d f22, f4, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800fffffffffffff)
li x13, 0x9a2a46db9bf70f88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf926e104fe35d53f # load x3 with value 0xf926e104fe35d53f
sd x3, 0(x2) # store 0xf926e104fe35d53f in memory
fld f18, 0(x2) # load 0xf926e104fe35d53f from memory into f18
li x3, 0x800fffffffffffff # load x3 with value 0x800fffffffffffff
sd x3, 0(x2) # store 0x800fffffffffffff in memory
fld f15, 0(x2) # load 0x800fffffffffffff from memory into f15
fsgnjn.d f13, f18, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000)
li x8, 0x1e1ee702f6d019f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x66e379282d85e13f # load x3 with value 0x66e379282d85e13f
sd x3, 0(x2) # store 0x66e379282d85e13f in memory
fld f7, 0(x2) # load 0x66e379282d85e13f from memory into f7
li x3, 0x0008000000000000 # load x3 with value 0x0008000000000000
sd x3, 0(x2) # store 0x0008000000000000 in memory
fld f26, 0(x2) # load 0x0008000000000000 from memory into f26
fsgnjn.d f8, f7, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8008000000000000)
li x22, 0x02e639749f14a607 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ec9a71ae84a5b1b # load x3 with value 0x3ec9a71ae84a5b1b
sd x3, 0(x2) # store 0x3ec9a71ae84a5b1b in memory
fld f11, 0(x2) # load 0x3ec9a71ae84a5b1b from memory into f11
li x3, 0x8008000000000000 # load x3 with value 0x8008000000000000
sd x3, 0(x2) # store 0x8008000000000000 in memory
fld f16, 0(x2) # load 0x8008000000000000 from memory into f16
fsgnjn.d f22, f11, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x10, 0xf19f2b15fa9ace64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b21412e2eea91aa # load x3 with value 0x4b21412e2eea91aa
sd x3, 0(x2) # store 0x4b21412e2eea91aa in memory
fld f5, 0(x2) # load 0x4b21412e2eea91aa from memory into f5
li x3, 0x0000000000000001 # load x3 with value 0x0000000000000001
sd x3, 0(x2) # store 0x0000000000000001 in memory
fld f18, 0(x2) # load 0x0000000000000001 from memory into f18
fsgnjn.d f10, f5, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000001)
li x28, 0x069095f9e87ae34b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c49dc84d1e0434b # load x3 with value 0x2c49dc84d1e0434b
sd x3, 0(x2) # store 0x2c49dc84d1e0434b in memory
fld f23, 0(x2) # load 0x2c49dc84d1e0434b from memory into f23
li x3, 0x8000000000000001 # load x3 with value 0x8000000000000001
sd x3, 0(x2) # store 0x8000000000000001 in memory
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
fsgnjn.d f28, f23, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000000)
li x12, 0x50b42ad16b5fb9b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3b2f0bd41f97a6f # load x3 with value 0xf3b2f0bd41f97a6f
sd x3, 0(x2) # store 0xf3b2f0bd41f97a6f in memory
fld f21, 0(x2) # load 0xf3b2f0bd41f97a6f from memory into f21
li x3, 0x7ff0000000000000 # load x3 with value 0x7ff0000000000000
sd x3, 0(x2) # store 0x7ff0000000000000 in memory
fld f28, 0(x2) # load 0x7ff0000000000000 from memory into f28
fsgnjn.d f12, f21, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff0000000000000)
li x14, 0x17c076b0a05a3be1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd764ffdc9aa079c4 # load x3 with value 0xd764ffdc9aa079c4
sd x3, 0(x2) # store 0xd764ffdc9aa079c4 in memory
fld f1, 0(x2) # load 0xd764ffdc9aa079c4 from memory into f1
li x3, 0xfff0000000000000 # load x3 with value 0xfff0000000000000
sd x3, 0(x2) # store 0xfff0000000000000 in memory
fld f6, 0(x2) # load 0xfff0000000000000 from memory into f6
fsgnjn.d f14, f1, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff8000000000000)
li x16, 0x95e8665323cf02c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x88fc0c98446d73f1 # load x3 with value 0x88fc0c98446d73f1
sd x3, 0(x2) # store 0x88fc0c98446d73f1 in memory
fld f9, 0(x2) # load 0x88fc0c98446d73f1 from memory into f9
li x3, 0x7ff8000000000000 # load x3 with value 0x7ff8000000000000
sd x3, 0(x2) # store 0x7ff8000000000000 in memory
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
fsgnjn.d f16, f9, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffffffff)
li x25, 0x019848b0f2e499bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e74b4ca21e2dbbf # load x3 with value 0x5e74b4ca21e2dbbf
sd x3, 0(x2) # store 0x5e74b4ca21e2dbbf in memory
fld f31, 0(x2) # load 0x5e74b4ca21e2dbbf from memory into f31
li x3, 0x7fffffffffffffff # load x3 with value 0x7fffffffffffffff
sd x3, 0(x2) # store 0x7fffffffffffffff in memory
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
fsgnjn.d f25, f31, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000001)
li x3, 0xb4189133b72e92b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3aa994e907715f1f # load x3 with value 0x3aa994e907715f1f
sd x3, 0(x2) # store 0x3aa994e907715f1f in memory
fld f5, 0(x2) # load 0x3aa994e907715f1f from memory into f5
li x3, 0x7ff0000000000001 # load x3 with value 0x7ff0000000000001
sd x3, 0(x2) # store 0x7ff0000000000001 in memory
fld f1, 0(x2) # load 0x7ff0000000000001 from memory into f1
fsgnjn.d f3, f5, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff7ffffffffffff)
li x14, 0xcb8098243ba7066b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e5870c321ac7a78 # load x3 with value 0x3e5870c321ac7a78
sd x3, 0(x2) # store 0x3e5870c321ac7a78 in memory
fld f27, 0(x2) # load 0x3e5870c321ac7a78 from memory into f27
li x3, 0x7ff7ffffffffffff # load x3 with value 0x7ff7ffffffffffff
sd x3, 0(x2) # store 0x7ff7ffffffffffff in memory
fld f12, 0(x2) # load 0x7ff7ffffffffffff from memory into f12
fsgnjn.d f14, f27, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x5a392534a57711ad)
li x21, 0x18f36ca688200120 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84bd277c156c2545 # load x3 with value 0x84bd277c156c2545
sd x3, 0(x2) # store 0x84bd277c156c2545 in memory
fld f8, 0(x2) # load 0x84bd277c156c2545 from memory into f8
li x3, 0x5a392534a57711ad # load x3 with value 0x5a392534a57711ad
sd x3, 0(x2) # store 0x5a392534a57711ad in memory
fld f1, 0(x2) # load 0x5a392534a57711ad from memory into f1
fsgnjn.d f21, f8, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa6e895993737426c)
li x29, 0x11d1ea0476778f6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5bcf2bcc42120358 # load x3 with value 0x5bcf2bcc42120358
sd x3, 0(x2) # store 0x5bcf2bcc42120358 in memory
fld f13, 0(x2) # load 0x5bcf2bcc42120358 from memory into f13
li x3, 0xa6e895993737426c # load x3 with value 0xa6e895993737426c
sd x3, 0(x2) # store 0xa6e895993737426c in memory
fld f27, 0(x2) # load 0xa6e895993737426c from memory into f27
fsgnjn.d f29, f13, f27 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x87370d144b46e168 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x13fdf4cc6e3500e3 # load x3 with value 0x13fdf4cc6e3500e3
sd x3, 0(x2) # store 0x13fdf4cc6e3500e3 in memory
fld f14, 0(x2) # load 0x13fdf4cc6e3500e3 from memory into f14
li x3, 0x6ecfa6babb3aafa1 # load x3 with value 0x6ecfa6babb3aafa1
sd x3, 0(x2) # store 0x6ecfa6babb3aafa1 in memory
fld f27, 0(x2) # load 0x6ecfa6babb3aafa1 from memory into f27
fsgnjn.d f0, f14, f27 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xb93c0c04188d6668 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40754990b7fd0423 # load x3 with value 0x40754990b7fd0423
sd x3, 0(x2) # store 0x40754990b7fd0423 in memory
fld f4, 0(x2) # load 0x40754990b7fd0423 from memory into f4
li x3, 0xa2933afe331f4f46 # load x3 with value 0xa2933afe331f4f46
sd x3, 0(x2) # store 0xa2933afe331f4f46 in memory
fld f17, 0(x2) # load 0xa2933afe331f4f46 from memory into f17
fsgnjn.d f1, f4, f17 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x9255b5260f6bca14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xac6227e6d431c4e7 # load x3 with value 0xac6227e6d431c4e7
sd x3, 0(x2) # store 0xac6227e6d431c4e7 in memory
fld f8, 0(x2) # load 0xac6227e6d431c4e7 from memory into f8
li x3, 0x5c91cd48f1b77587 # load x3 with value 0x5c91cd48f1b77587
sd x3, 0(x2) # store 0x5c91cd48f1b77587 in memory
fld f2, 0(x2) # load 0x5c91cd48f1b77587 from memory into f2
fsgnjn.d f2, f8, f2 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x40764b02988eb445 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2587dd59d5c3b48d # load x3 with value 0x2587dd59d5c3b48d
sd x3, 0(x2) # store 0x2587dd59d5c3b48d in memory
fld f2, 0(x2) # load 0x2587dd59d5c3b48d from memory into f2
li x3, 0x5b2472936efd129e # load x3 with value 0x5b2472936efd129e
sd x3, 0(x2) # store 0x5b2472936efd129e in memory
fld f16, 0(x2) # load 0x5b2472936efd129e from memory into f16
fsgnjn.d f3, f2, f16 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xb81f44402716e616 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe9258710a3ab9f8e # load x3 with value 0xe9258710a3ab9f8e
sd x3, 0(x2) # store 0xe9258710a3ab9f8e in memory
fld f31, 0(x2) # load 0xe9258710a3ab9f8e from memory into f31
li x3, 0x5c49ad9cbfd83ed1 # load x3 with value 0x5c49ad9cbfd83ed1
sd x3, 0(x2) # store 0x5c49ad9cbfd83ed1 in memory
fld f7, 0(x2) # load 0x5c49ad9cbfd83ed1 from memory into f7
fsgnjn.d f4, f31, f7 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x06c930dfdc1f32dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf4f53f0478e40609 # load x3 with value 0xf4f53f0478e40609
sd x3, 0(x2) # store 0xf4f53f0478e40609 in memory
fld f10, 0(x2) # load 0xf4f53f0478e40609 from memory into f10
li x3, 0x265caacf352364ac # load x3 with value 0x265caacf352364ac
sd x3, 0(x2) # store 0x265caacf352364ac in memory
fld f14, 0(x2) # load 0x265caacf352364ac from memory into f14
fsgnjn.d f5, f10, f14 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x20d2d384716151cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ebbb8e62a3b2372 # load x3 with value 0x3ebbb8e62a3b2372
sd x3, 0(x2) # store 0x3ebbb8e62a3b2372 in memory
fld f12, 0(x2) # load 0x3ebbb8e62a3b2372 from memory into f12
li x3, 0xe8ef0f4d1d31d5c0 # load x3 with value 0xe8ef0f4d1d31d5c0
sd x3, 0(x2) # store 0xe8ef0f4d1d31d5c0 in memory
fld f1, 0(x2) # load 0xe8ef0f4d1d31d5c0 from memory into f1
fsgnjn.d f6, f12, f1 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x42fb18bd0d3440dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2d046421437b5f4e # load x3 with value 0x2d046421437b5f4e
sd x3, 0(x2) # store 0x2d046421437b5f4e in memory
fld f1, 0(x2) # load 0x2d046421437b5f4e from memory into f1
li x3, 0xc2d66236cdf02e6a # load x3 with value 0xc2d66236cdf02e6a
sd x3, 0(x2) # store 0xc2d66236cdf02e6a in memory
fld f3, 0(x2) # load 0xc2d66236cdf02e6a from memory into f3
fsgnjn.d f7, f1, f3 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xc17cf75e62b77191 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x18d386bf4f1161e5 # load x3 with value 0x18d386bf4f1161e5
sd x3, 0(x2) # store 0x18d386bf4f1161e5 in memory
fld f18, 0(x2) # load 0x18d386bf4f1161e5 from memory into f18
li x3, 0x5140295e7888d872 # load x3 with value 0x5140295e7888d872
sd x3, 0(x2) # store 0x5140295e7888d872 in memory
fld f6, 0(x2) # load 0x5140295e7888d872 from memory into f6
fsgnjn.d f8, f18, f6 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x803272281b8db3a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc93cd2133cee3d45 # load x3 with value 0xc93cd2133cee3d45
sd x3, 0(x2) # store 0xc93cd2133cee3d45 in memory
fld f11, 0(x2) # load 0xc93cd2133cee3d45 from memory into f11
li x3, 0x34e1b58eaae785ac # load x3 with value 0x34e1b58eaae785ac
sd x3, 0(x2) # store 0x34e1b58eaae785ac in memory
fld f27, 0(x2) # load 0x34e1b58eaae785ac from memory into f27
fsgnjn.d f9, f11, f27 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x9e0ca7de70b2c643 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc64f7e9ee5a03d68 # load x3 with value 0xc64f7e9ee5a03d68
sd x3, 0(x2) # store 0xc64f7e9ee5a03d68 in memory
fld f16, 0(x2) # load 0xc64f7e9ee5a03d68 from memory into f16
li x3, 0x0b174a66e4a267d4 # load x3 with value 0x0b174a66e4a267d4
sd x3, 0(x2) # store 0x0b174a66e4a267d4 in memory
fld f6, 0(x2) # load 0x0b174a66e4a267d4 from memory into f6
fsgnjn.d f10, f16, f6 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x388c32dd4d0219e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8206bd2d97091e01 # load x3 with value 0x8206bd2d97091e01
sd x3, 0(x2) # store 0x8206bd2d97091e01 in memory
fld f23, 0(x2) # load 0x8206bd2d97091e01 from memory into f23
li x3, 0x38aa01e2b01b1898 # load x3 with value 0x38aa01e2b01b1898
sd x3, 0(x2) # store 0x38aa01e2b01b1898 in memory
fld f1, 0(x2) # load 0x38aa01e2b01b1898 from memory into f1
fsgnjn.d f11, f23, f1 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x869fb8b9cad3df21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8b5944d12b0cee57 # load x3 with value 0x8b5944d12b0cee57
sd x3, 0(x2) # store 0x8b5944d12b0cee57 in memory
fld f25, 0(x2) # load 0x8b5944d12b0cee57 from memory into f25
li x3, 0xfbfd1b75e4668e27 # load x3 with value 0xfbfd1b75e4668e27
sd x3, 0(x2) # store 0xfbfd1b75e4668e27 in memory
fld f29, 0(x2) # load 0xfbfd1b75e4668e27 from memory into f29
fsgnjn.d f12, f25, f29 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xad51422984fa64ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc7583b72190e4919 # load x3 with value 0xc7583b72190e4919
sd x3, 0(x2) # store 0xc7583b72190e4919 in memory
fld f26, 0(x2) # load 0xc7583b72190e4919 from memory into f26
li x3, 0xaac9cffea6647af3 # load x3 with value 0xaac9cffea6647af3
sd x3, 0(x2) # store 0xaac9cffea6647af3 in memory
fld f30, 0(x2) # load 0xaac9cffea6647af3 from memory into f30
fsgnjn.d f13, f26, f30 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x031f8c47e7959a01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x335c1696a143e728 # load x3 with value 0x335c1696a143e728
sd x3, 0(x2) # store 0x335c1696a143e728 in memory
fld f23, 0(x2) # load 0x335c1696a143e728 from memory into f23
li x3, 0x469ef4b319ec1f33 # load x3 with value 0x469ef4b319ec1f33
sd x3, 0(x2) # store 0x469ef4b319ec1f33 in memory
fld f16, 0(x2) # load 0x469ef4b319ec1f33 from memory into f16
fsgnjn.d f14, f23, f16 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x7f5aeab46e935d28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb31e80a6e74f2f79 # load x3 with value 0xb31e80a6e74f2f79
sd x3, 0(x2) # store 0xb31e80a6e74f2f79 in memory
fld f5, 0(x2) # load 0xb31e80a6e74f2f79 from memory into f5
li x3, 0xd5cae71cf8e67d81 # load x3 with value 0xd5cae71cf8e67d81
sd x3, 0(x2) # store 0xd5cae71cf8e67d81 in memory
fld f26, 0(x2) # load 0xd5cae71cf8e67d81 from memory into f26
fsgnjn.d f15, f5, f26 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x78eca062005df608 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x751750aa69baf0bd # load x3 with value 0x751750aa69baf0bd
sd x3, 0(x2) # store 0x751750aa69baf0bd in memory
fld f17, 0(x2) # load 0x751750aa69baf0bd from memory into f17
li x3, 0x2ab02b99167d33a3 # load x3 with value 0x2ab02b99167d33a3
sd x3, 0(x2) # store 0x2ab02b99167d33a3 in memory
fld f25, 0(x2) # load 0x2ab02b99167d33a3 from memory into f25
fsgnjn.d f16, f17, f25 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xdf9b30b258737869 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x299257be83025527 # load x3 with value 0x299257be83025527
sd x3, 0(x2) # store 0x299257be83025527 in memory
fld f15, 0(x2) # load 0x299257be83025527 from memory into f15
li x3, 0x2e7a602832806066 # load x3 with value 0x2e7a602832806066
sd x3, 0(x2) # store 0x2e7a602832806066 in memory
fld f29, 0(x2) # load 0x2e7a602832806066 from memory into f29
fsgnjn.d f17, f15, f29 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x478505ec28dd0321 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde41c710d84b3fbf # load x3 with value 0xde41c710d84b3fbf
sd x3, 0(x2) # store 0xde41c710d84b3fbf in memory
fld f27, 0(x2) # load 0xde41c710d84b3fbf from memory into f27
li x3, 0xb24c86f53688c0ac # load x3 with value 0xb24c86f53688c0ac
sd x3, 0(x2) # store 0xb24c86f53688c0ac in memory
fld f12, 0(x2) # load 0xb24c86f53688c0ac from memory into f12
fsgnjn.d f18, f27, f12 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xe39eb2a997924205 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9962b5f67d1246b0 # load x3 with value 0x9962b5f67d1246b0
sd x3, 0(x2) # store 0x9962b5f67d1246b0 in memory
fld f17, 0(x2) # load 0x9962b5f67d1246b0 from memory into f17
li x3, 0x0f9a01689c8e1c53 # load x3 with value 0x0f9a01689c8e1c53
sd x3, 0(x2) # store 0x0f9a01689c8e1c53 in memory
fld f15, 0(x2) # load 0x0f9a01689c8e1c53 from memory into f15
fsgnjn.d f19, f17, f15 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xad40139d197c08e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc036bd44a3e7794d # load x3 with value 0xc036bd44a3e7794d
sd x3, 0(x2) # store 0xc036bd44a3e7794d in memory
fld f11, 0(x2) # load 0xc036bd44a3e7794d from memory into f11
li x3, 0x42f3a34836c3b511 # load x3 with value 0x42f3a34836c3b511
sd x3, 0(x2) # store 0x42f3a34836c3b511 in memory
fld f22, 0(x2) # load 0x42f3a34836c3b511 from memory into f22
fsgnjn.d f20, f11, f22 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x3d5cd500b54f137e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x015d366ae7cc4fef # load x3 with value 0x015d366ae7cc4fef
sd x3, 0(x2) # store 0x015d366ae7cc4fef in memory
fld f7, 0(x2) # load 0x015d366ae7cc4fef from memory into f7
li x3, 0x5beba60eb8fe7fbc # load x3 with value 0x5beba60eb8fe7fbc
sd x3, 0(x2) # store 0x5beba60eb8fe7fbc in memory
fld f1, 0(x2) # load 0x5beba60eb8fe7fbc from memory into f1
fsgnjn.d f21, f7, f1 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xa85f55fd103f8991 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd013f05dc2b3a34f # load x3 with value 0xd013f05dc2b3a34f
sd x3, 0(x2) # store 0xd013f05dc2b3a34f in memory
fld f16, 0(x2) # load 0xd013f05dc2b3a34f from memory into f16
li x3, 0x482c823ba9b06ca6 # load x3 with value 0x482c823ba9b06ca6
sd x3, 0(x2) # store 0x482c823ba9b06ca6 in memory
fld f19, 0(x2) # load 0x482c823ba9b06ca6 from memory into f19
fsgnjn.d f22, f16, f19 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x318cb973a20af46c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xedc7d32dd305142c # load x3 with value 0xedc7d32dd305142c
sd x3, 0(x2) # store 0xedc7d32dd305142c in memory
fld f22, 0(x2) # load 0xedc7d32dd305142c from memory into f22
li x3, 0xc96892b64b3697bd # load x3 with value 0xc96892b64b3697bd
sd x3, 0(x2) # store 0xc96892b64b3697bd in memory
fld f5, 0(x2) # load 0xc96892b64b3697bd from memory into f5
fsgnjn.d f23, f22, f5 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x476a7f2757c3a7a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfeb609a418f3c092 # load x3 with value 0xfeb609a418f3c092
sd x3, 0(x2) # store 0xfeb609a418f3c092 in memory
fld f20, 0(x2) # load 0xfeb609a418f3c092 from memory into f20
li x3, 0x63d40acb27e1cd65 # load x3 with value 0x63d40acb27e1cd65
sd x3, 0(x2) # store 0x63d40acb27e1cd65 in memory
fld f24, 0(x2) # load 0x63d40acb27e1cd65 from memory into f24
fsgnjn.d f24, f20, f24 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x3c4bbcbe80b7ffbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa8c5dcb97087ea7f # load x3 with value 0xa8c5dcb97087ea7f
sd x3, 0(x2) # store 0xa8c5dcb97087ea7f in memory
fld f8, 0(x2) # load 0xa8c5dcb97087ea7f from memory into f8
li x3, 0x5368cff58a9ec063 # load x3 with value 0x5368cff58a9ec063
sd x3, 0(x2) # store 0x5368cff58a9ec063 in memory
fld f4, 0(x2) # load 0x5368cff58a9ec063 from memory into f4
fsgnjn.d f25, f8, f4 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x5bccc2198f8d2693 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf3dcffe55ccd168 # load x3 with value 0xdf3dcffe55ccd168
sd x3, 0(x2) # store 0xdf3dcffe55ccd168 in memory
fld f25, 0(x2) # load 0xdf3dcffe55ccd168 from memory into f25
li x3, 0x5659c3bd14aba8ef # load x3 with value 0x5659c3bd14aba8ef
sd x3, 0(x2) # store 0x5659c3bd14aba8ef in memory
fld f22, 0(x2) # load 0x5659c3bd14aba8ef from memory into f22
fsgnjn.d f26, f25, f22 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xc2cb317e7e0c667c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3c099b39373d1e0 # load x3 with value 0xf3c099b39373d1e0
sd x3, 0(x2) # store 0xf3c099b39373d1e0 in memory
fld f25, 0(x2) # load 0xf3c099b39373d1e0 from memory into f25
li x3, 0x4540c73f1f1d0b3a # load x3 with value 0x4540c73f1f1d0b3a
sd x3, 0(x2) # store 0x4540c73f1f1d0b3a in memory
fld f28, 0(x2) # load 0x4540c73f1f1d0b3a from memory into f28
fsgnjn.d f27, f25, f28 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x555cc86b861a50af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8909bde101b824c7 # load x3 with value 0x8909bde101b824c7
sd x3, 0(x2) # store 0x8909bde101b824c7 in memory
fld f21, 0(x2) # load 0x8909bde101b824c7 from memory into f21
li x3, 0xc701a0347296d0a1 # load x3 with value 0xc701a0347296d0a1
sd x3, 0(x2) # store 0xc701a0347296d0a1 in memory
fld f31, 0(x2) # load 0xc701a0347296d0a1 from memory into f31
fsgnjn.d f28, f21, f31 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xe01038f8c015c2b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa3f4a4996ebeecb # load x3 with value 0xaa3f4a4996ebeecb
sd x3, 0(x2) # store 0xaa3f4a4996ebeecb in memory
fld f28, 0(x2) # load 0xaa3f4a4996ebeecb from memory into f28
li x3, 0xb0ebf4a7992c4670 # load x3 with value 0xb0ebf4a7992c4670
sd x3, 0(x2) # store 0xb0ebf4a7992c4670 in memory
fld f5, 0(x2) # load 0xb0ebf4a7992c4670 from memory into f5
fsgnjn.d f29, f28, f5 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x64d525ccc2cab354 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x671b63505831ef4d # load x3 with value 0x671b63505831ef4d
sd x3, 0(x2) # store 0x671b63505831ef4d in memory
fld f7, 0(x2) # load 0x671b63505831ef4d from memory into f7
li x3, 0xeb305819f4dde902 # load x3 with value 0xeb305819f4dde902
sd x3, 0(x2) # store 0xeb305819f4dde902 in memory
fld f14, 0(x2) # load 0xeb305819f4dde902 from memory into f14
fsgnjn.d f30, f7, f14 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x1b4f656002f55075 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8198d7665316303b # load x3 with value 0x8198d7665316303b
sd x3, 0(x2) # store 0x8198d7665316303b in memory
fld f20, 0(x2) # load 0x8198d7665316303b from memory into f20
li x3, 0x96ef9e8ae4b99c42 # load x3 with value 0x96ef9e8ae4b99c42
sd x3, 0(x2) # store 0x96ef9e8ae4b99c42 in memory
fld f27, 0(x2) # load 0x96ef9e8ae4b99c42 from memory into f27
fsgnjn.d f31, f20, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x28, 0x724286535e439827 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x92f16535565de771 # load x3 with value 0x92f16535565de771
sd x3, 0(x2) # store 0x92f16535565de771 in memory
fld f0, 0(x2) # load 0x92f16535565de771 from memory into f0
li x3, 0x826a95eb6ac622b9 # load x3 with value 0x826a95eb6ac622b9
sd x3, 0(x2) # store 0x826a95eb6ac622b9 in memory
fld f23, 0(x2) # load 0x826a95eb6ac622b9 from memory into f23
fsgnjn.d f28, f0, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x9, 0xa9debe9285514040 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa2cf734568dd88c9 # load x3 with value 0xa2cf734568dd88c9
sd x3, 0(x2) # store 0xa2cf734568dd88c9 in memory
fld f1, 0(x2) # load 0xa2cf734568dd88c9 from memory into f1
li x3, 0x3f69be88f16ec52a # load x3 with value 0x3f69be88f16ec52a
sd x3, 0(x2) # store 0x3f69be88f16ec52a in memory
fld f3, 0(x2) # load 0x3f69be88f16ec52a from memory into f3
fsgnjn.d f9, f1, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x18, 0x427787464a0e5b00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc655f97f00c7ad46 # load x3 with value 0xc655f97f00c7ad46
sd x3, 0(x2) # store 0xc655f97f00c7ad46 in memory
fld f2, 0(x2) # load 0xc655f97f00c7ad46 from memory into f2
li x3, 0xf4e7c836d275c311 # load x3 with value 0xf4e7c836d275c311
sd x3, 0(x2) # store 0xf4e7c836d275c311 in memory
fld f22, 0(x2) # load 0xf4e7c836d275c311 from memory into f22
fsgnjn.d f18, f2, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x24, 0xc0fd6119dac7ad8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5da8a6bf766b4c58 # load x3 with value 0x5da8a6bf766b4c58
sd x3, 0(x2) # store 0x5da8a6bf766b4c58 in memory
fld f3, 0(x2) # load 0x5da8a6bf766b4c58 from memory into f3
li x3, 0x11262ee88112902a # load x3 with value 0x11262ee88112902a
sd x3, 0(x2) # store 0x11262ee88112902a in memory
fld f25, 0(x2) # load 0x11262ee88112902a from memory into f25
fsgnjn.d f24, f3, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x25, 0xf42d5a0830aeef32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xec9f492bcf09baa8 # load x3 with value 0xec9f492bcf09baa8
sd x3, 0(x2) # store 0xec9f492bcf09baa8 in memory
fld f4, 0(x2) # load 0xec9f492bcf09baa8 from memory into f4
li x3, 0x5fada3528809f70a # load x3 with value 0x5fada3528809f70a
sd x3, 0(x2) # store 0x5fada3528809f70a in memory
fld f13, 0(x2) # load 0x5fada3528809f70a from memory into f13
fsgnjn.d f25, f4, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x25, 0x1df4643af5f67115 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65e8c2755f0a87be # load x3 with value 0x65e8c2755f0a87be
sd x3, 0(x2) # store 0x65e8c2755f0a87be in memory
fld f5, 0(x2) # load 0x65e8c2755f0a87be from memory into f5
li x3, 0x8384d6c70f5f42d9 # load x3 with value 0x8384d6c70f5f42d9
sd x3, 0(x2) # store 0x8384d6c70f5f42d9 in memory
fld f10, 0(x2) # load 0x8384d6c70f5f42d9 from memory into f10
fsgnjn.d f25, f5, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x1, 0x5fcffb4bb8258508 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b69080194c32010 # load x3 with value 0x6b69080194c32010
sd x3, 0(x2) # store 0x6b69080194c32010 in memory
fld f6, 0(x2) # load 0x6b69080194c32010 from memory into f6
li x3, 0xfc3f4965f2975178 # load x3 with value 0xfc3f4965f2975178
sd x3, 0(x2) # store 0xfc3f4965f2975178 in memory
fld f24, 0(x2) # load 0xfc3f4965f2975178 from memory into f24
fsgnjn.d f1, f6, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x22, 0xd34b19db1c9462a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb337e48e91af74c # load x3 with value 0xcb337e48e91af74c
sd x3, 0(x2) # store 0xcb337e48e91af74c in memory
fld f7, 0(x2) # load 0xcb337e48e91af74c from memory into f7
li x3, 0x8aa6dd63a895fb3e # load x3 with value 0x8aa6dd63a895fb3e
sd x3, 0(x2) # store 0x8aa6dd63a895fb3e in memory
fld f26, 0(x2) # load 0x8aa6dd63a895fb3e from memory into f26
fsgnjn.d f22, f7, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x13, 0xa1e6270eb09af19c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcdd43eaee0907153 # load x3 with value 0xcdd43eaee0907153
sd x3, 0(x2) # store 0xcdd43eaee0907153 in memory
fld f8, 0(x2) # load 0xcdd43eaee0907153 from memory into f8
li x3, 0x5257688b58b7f970 # load x3 with value 0x5257688b58b7f970
sd x3, 0(x2) # store 0x5257688b58b7f970 in memory
fld f16, 0(x2) # load 0x5257688b58b7f970 from memory into f16
fsgnjn.d f13, f8, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x27, 0xb33f61d377f443a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x970d4b7a00c19309 # load x3 with value 0x970d4b7a00c19309
sd x3, 0(x2) # store 0x970d4b7a00c19309 in memory
fld f9, 0(x2) # load 0x970d4b7a00c19309 from memory into f9
li x3, 0x6bcbff72e532fdda # load x3 with value 0x6bcbff72e532fdda
sd x3, 0(x2) # store 0x6bcbff72e532fdda in memory
fld f18, 0(x2) # load 0x6bcbff72e532fdda from memory into f18
fsgnjn.d f27, f9, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x30, 0x0f946b84253c7e06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8cc113d62dd8c2cc # load x3 with value 0x8cc113d62dd8c2cc
sd x3, 0(x2) # store 0x8cc113d62dd8c2cc in memory
fld f10, 0(x2) # load 0x8cc113d62dd8c2cc from memory into f10
li x3, 0xa410638ad82564ee # load x3 with value 0xa410638ad82564ee
sd x3, 0(x2) # store 0xa410638ad82564ee in memory
fld f24, 0(x2) # load 0xa410638ad82564ee from memory into f24
fsgnjn.d f30, f10, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x14, 0x26bc9472511ae5b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1fe5c04bd64afa2f # load x3 with value 0x1fe5c04bd64afa2f
sd x3, 0(x2) # store 0x1fe5c04bd64afa2f in memory
fld f11, 0(x2) # load 0x1fe5c04bd64afa2f from memory into f11
li x3, 0x3865d1f5a093f1c7 # load x3 with value 0x3865d1f5a093f1c7
sd x3, 0(x2) # store 0x3865d1f5a093f1c7 in memory
fld f3, 0(x2) # load 0x3865d1f5a093f1c7 from memory into f3
fsgnjn.d f14, f11, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x24, 0x15a5fed579f674f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x89a16433b397a65a # load x3 with value 0x89a16433b397a65a
sd x3, 0(x2) # store 0x89a16433b397a65a in memory
fld f12, 0(x2) # load 0x89a16433b397a65a from memory into f12
li x3, 0x36a914006a14ec49 # load x3 with value 0x36a914006a14ec49
sd x3, 0(x2) # store 0x36a914006a14ec49 in memory
fld f5, 0(x2) # load 0x36a914006a14ec49 from memory into f5
fsgnjn.d f24, f12, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x25, 0xb3996a5b54bcf8f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4235100834554532 # load x3 with value 0x4235100834554532
sd x3, 0(x2) # store 0x4235100834554532 in memory
fld f13, 0(x2) # load 0x4235100834554532 from memory into f13
li x3, 0xd246b532beef2771 # load x3 with value 0xd246b532beef2771
sd x3, 0(x2) # store 0xd246b532beef2771 in memory
fld f9, 0(x2) # load 0xd246b532beef2771 from memory into f9
fsgnjn.d f25, f13, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x8, 0xd9795f2522ae8422 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x582133e43660bddb # load x3 with value 0x582133e43660bddb
sd x3, 0(x2) # store 0x582133e43660bddb in memory
fld f14, 0(x2) # load 0x582133e43660bddb from memory into f14
li x3, 0x8e4f366b34e415b0 # load x3 with value 0x8e4f366b34e415b0
sd x3, 0(x2) # store 0x8e4f366b34e415b0 in memory
fld f21, 0(x2) # load 0x8e4f366b34e415b0 from memory into f21
fsgnjn.d f8, f14, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x3, 0x67fa689c6b033dae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8b6882fdde312ff4 # load x3 with value 0x8b6882fdde312ff4
sd x3, 0(x2) # store 0x8b6882fdde312ff4 in memory
fld f15, 0(x2) # load 0x8b6882fdde312ff4 from memory into f15
li x3, 0xe391fe369cd0f19b # load x3 with value 0xe391fe369cd0f19b
sd x3, 0(x2) # store 0xe391fe369cd0f19b in memory
fld f9, 0(x2) # load 0xe391fe369cd0f19b from memory into f9
fsgnjn.d f3, f15, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x9, 0xe0a600a0690391b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb0fae18d101845a # load x3 with value 0xfb0fae18d101845a
sd x3, 0(x2) # store 0xfb0fae18d101845a in memory
fld f16, 0(x2) # load 0xfb0fae18d101845a from memory into f16
li x3, 0x07dacad700d63be6 # load x3 with value 0x07dacad700d63be6
sd x3, 0(x2) # store 0x07dacad700d63be6 in memory
fld f6, 0(x2) # load 0x07dacad700d63be6 from memory into f6
fsgnjn.d f9, f16, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x1, 0x63385a8714942dc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x97fb6319e08e9508 # load x3 with value 0x97fb6319e08e9508
sd x3, 0(x2) # store 0x97fb6319e08e9508 in memory
fld f17, 0(x2) # load 0x97fb6319e08e9508 from memory into f17
li x3, 0x5fa2f3ef291f81ce # load x3 with value 0x5fa2f3ef291f81ce
sd x3, 0(x2) # store 0x5fa2f3ef291f81ce in memory
fld f7, 0(x2) # load 0x5fa2f3ef291f81ce from memory into f7
fsgnjn.d f1, f17, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x16, 0xe080b7ad46bc53f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xea2793a99f2af8ca # load x3 with value 0xea2793a99f2af8ca
sd x3, 0(x2) # store 0xea2793a99f2af8ca in memory
fld f18, 0(x2) # load 0xea2793a99f2af8ca from memory into f18
li x3, 0x4e438c8e1876814f # load x3 with value 0x4e438c8e1876814f
sd x3, 0(x2) # store 0x4e438c8e1876814f in memory
fld f17, 0(x2) # load 0x4e438c8e1876814f from memory into f17
fsgnjn.d f16, f18, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x26, 0x1e26cc29e8a71f17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35a1cca906e7b745 # load x3 with value 0x35a1cca906e7b745
sd x3, 0(x2) # store 0x35a1cca906e7b745 in memory
fld f19, 0(x2) # load 0x35a1cca906e7b745 from memory into f19
li x3, 0x3ba2b08b04d444f5 # load x3 with value 0x3ba2b08b04d444f5
sd x3, 0(x2) # store 0x3ba2b08b04d444f5 in memory
fld f15, 0(x2) # load 0x3ba2b08b04d444f5 from memory into f15
fsgnjn.d f26, f19, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x16, 0xdbc2438154c2c41a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1c2166f49c4b99eb # load x3 with value 0x1c2166f49c4b99eb
sd x3, 0(x2) # store 0x1c2166f49c4b99eb in memory
fld f20, 0(x2) # load 0x1c2166f49c4b99eb from memory into f20
li x3, 0x857e981b7bd71e37 # load x3 with value 0x857e981b7bd71e37
sd x3, 0(x2) # store 0x857e981b7bd71e37 in memory
fld f2, 0(x2) # load 0x857e981b7bd71e37 from memory into f2
fsgnjn.d f16, f20, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x16, 0x96338f43f21f6e41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4c60c9ff7a3a2f49 # load x3 with value 0x4c60c9ff7a3a2f49
sd x3, 0(x2) # store 0x4c60c9ff7a3a2f49 in memory
fld f21, 0(x2) # load 0x4c60c9ff7a3a2f49 from memory into f21
li x3, 0xbcfa695e386ef52e # load x3 with value 0xbcfa695e386ef52e
sd x3, 0(x2) # store 0xbcfa695e386ef52e in memory
fld f22, 0(x2) # load 0xbcfa695e386ef52e from memory into f22
fsgnjn.d f16, f21, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x20, 0x885727b3a471d667 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23464b688a81d054 # load x3 with value 0x23464b688a81d054
sd x3, 0(x2) # store 0x23464b688a81d054 in memory
fld f22, 0(x2) # load 0x23464b688a81d054 from memory into f22
li x3, 0x362d86f73add57f7 # load x3 with value 0x362d86f73add57f7
sd x3, 0(x2) # store 0x362d86f73add57f7 in memory
fld f14, 0(x2) # load 0x362d86f73add57f7 from memory into f14
fsgnjn.d f20, f22, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x21, 0xcf0fe2dee74decfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfadcca0a02486551 # load x3 with value 0xfadcca0a02486551
sd x3, 0(x2) # store 0xfadcca0a02486551 in memory
fld f23, 0(x2) # load 0xfadcca0a02486551 from memory into f23
li x3, 0xc3c3b12117426b92 # load x3 with value 0xc3c3b12117426b92
sd x3, 0(x2) # store 0xc3c3b12117426b92 in memory
fld f27, 0(x2) # load 0xc3c3b12117426b92 from memory into f27
fsgnjn.d f21, f23, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x18, 0x63bab3b9c2f6b206 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfd157d0be659b2c # load x3 with value 0xbfd157d0be659b2c
sd x3, 0(x2) # store 0xbfd157d0be659b2c in memory
fld f24, 0(x2) # load 0xbfd157d0be659b2c from memory into f24
li x3, 0x47640f022ca37835 # load x3 with value 0x47640f022ca37835
sd x3, 0(x2) # store 0x47640f022ca37835 in memory
fld f6, 0(x2) # load 0x47640f022ca37835 from memory into f6
fsgnjn.d f18, f24, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x26, 0x2636877092fb82a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9fc5b4219933974a # load x3 with value 0x9fc5b4219933974a
sd x3, 0(x2) # store 0x9fc5b4219933974a in memory
fld f25, 0(x2) # load 0x9fc5b4219933974a from memory into f25
li x3, 0x6d5be0cb6eda5297 # load x3 with value 0x6d5be0cb6eda5297
sd x3, 0(x2) # store 0x6d5be0cb6eda5297 in memory
fld f1, 0(x2) # load 0x6d5be0cb6eda5297 from memory into f1
fsgnjn.d f26, f25, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x19, 0xcdba6a86ac96fb88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ed6f66ecaccd20f # load x3 with value 0x1ed6f66ecaccd20f
sd x3, 0(x2) # store 0x1ed6f66ecaccd20f in memory
fld f26, 0(x2) # load 0x1ed6f66ecaccd20f from memory into f26
li x3, 0x1a887f1c5cde7e94 # load x3 with value 0x1a887f1c5cde7e94
sd x3, 0(x2) # store 0x1a887f1c5cde7e94 in memory
fld f13, 0(x2) # load 0x1a887f1c5cde7e94 from memory into f13
fsgnjn.d f19, f26, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x17, 0xf31ba09a692a4e7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeebc13303e854f2d # load x3 with value 0xeebc13303e854f2d
sd x3, 0(x2) # store 0xeebc13303e854f2d in memory
fld f27, 0(x2) # load 0xeebc13303e854f2d from memory into f27
li x3, 0x7df7608e8ba834bb # load x3 with value 0x7df7608e8ba834bb
sd x3, 0(x2) # store 0x7df7608e8ba834bb in memory
fld f11, 0(x2) # load 0x7df7608e8ba834bb from memory into f11
fsgnjn.d f17, f27, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x28, 0xc86e283137b12797 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e4c9f0b40b81353 # load x3 with value 0x7e4c9f0b40b81353
sd x3, 0(x2) # store 0x7e4c9f0b40b81353 in memory
fld f28, 0(x2) # load 0x7e4c9f0b40b81353 from memory into f28
li x3, 0x1bb36956fa1286e6 # load x3 with value 0x1bb36956fa1286e6
sd x3, 0(x2) # store 0x1bb36956fa1286e6 in memory
fld f23, 0(x2) # load 0x1bb36956fa1286e6 from memory into f23
fsgnjn.d f28, f28, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x21, 0x29a3f81b62644f8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4ded727365d4bfdd # load x3 with value 0x4ded727365d4bfdd
sd x3, 0(x2) # store 0x4ded727365d4bfdd in memory
fld f29, 0(x2) # load 0x4ded727365d4bfdd from memory into f29
li x3, 0x98d37925626211b7 # load x3 with value 0x98d37925626211b7
sd x3, 0(x2) # store 0x98d37925626211b7 in memory
fld f18, 0(x2) # load 0x98d37925626211b7 from memory into f18
fsgnjn.d f21, f29, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x5, 0x09bf62baeb83030f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x132e55c01188f123 # load x3 with value 0x132e55c01188f123
sd x3, 0(x2) # store 0x132e55c01188f123 in memory
fld f30, 0(x2) # load 0x132e55c01188f123 from memory into f30
li x3, 0xb7d821eac2efcefe # load x3 with value 0xb7d821eac2efcefe
sd x3, 0(x2) # store 0xb7d821eac2efcefe in memory
fld f20, 0(x2) # load 0xb7d821eac2efcefe from memory into f20
fsgnjn.d f5, f30, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x8, 0xa7df62428f1a666c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e8045d5c217908a # load x3 with value 0x1e8045d5c217908a
sd x3, 0(x2) # store 0x1e8045d5c217908a in memory
fld f31, 0(x2) # load 0x1e8045d5c217908a from memory into f31
li x3, 0xfb69468370bd96df # load x3 with value 0xfb69468370bd96df
sd x3, 0(x2) # store 0xfb69468370bd96df in memory
fld f11, 0(x2) # load 0xfb69468370bd96df from memory into f11
fsgnjn.d f8, f31, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x28, 0xf4e68b4235fa3651 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc6a746060bccb1fd # load x3 with value 0xc6a746060bccb1fd
sd x3, 0(x2) # store 0xc6a746060bccb1fd in memory
fld f21, 0(x2) # load 0xc6a746060bccb1fd from memory into f21
li x3, 0xabfd3068009de34b # load x3 with value 0xabfd3068009de34b
sd x3, 0(x2) # store 0xabfd3068009de34b in memory
fld f0, 0(x2) # load 0xabfd3068009de34b from memory into f0
fsgnjn.d f28, f21, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x18, 0x3dfcdb853672186b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3c70e9543a679f8 # load x3 with value 0xb3c70e9543a679f8
sd x3, 0(x2) # store 0xb3c70e9543a679f8 in memory
fld f14, 0(x2) # load 0xb3c70e9543a679f8 from memory into f14
li x3, 0x719845add7078f49 # load x3 with value 0x719845add7078f49
sd x3, 0(x2) # store 0x719845add7078f49 in memory
fld f1, 0(x2) # load 0x719845add7078f49 from memory into f1
fsgnjn.d f18, f14, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x15, 0x8b86d755c35e2d18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfc25b419435ac36d # load x3 with value 0xfc25b419435ac36d
sd x3, 0(x2) # store 0xfc25b419435ac36d in memory
fld f19, 0(x2) # load 0xfc25b419435ac36d from memory into f19
li x3, 0x5649a1c45401f02f # load x3 with value 0x5649a1c45401f02f
sd x3, 0(x2) # store 0x5649a1c45401f02f in memory
fld f2, 0(x2) # load 0x5649a1c45401f02f from memory into f2
fsgnjn.d f15, f19, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x16, 0x32401d17e7080d54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x28a5cc58fede3498 # load x3 with value 0x28a5cc58fede3498
sd x3, 0(x2) # store 0x28a5cc58fede3498 in memory
fld f14, 0(x2) # load 0x28a5cc58fede3498 from memory into f14
li x3, 0xf5d6529e290c6be5 # load x3 with value 0xf5d6529e290c6be5
sd x3, 0(x2) # store 0xf5d6529e290c6be5 in memory
fld f3, 0(x2) # load 0xf5d6529e290c6be5 from memory into f3
fsgnjn.d f16, f14, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x25, 0x69916f591d2ce6df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x81eaba4cd175a652 # load x3 with value 0x81eaba4cd175a652
sd x3, 0(x2) # store 0x81eaba4cd175a652 in memory
fld f6, 0(x2) # load 0x81eaba4cd175a652 from memory into f6
li x3, 0x20744247d614dcb5 # load x3 with value 0x20744247d614dcb5
sd x3, 0(x2) # store 0x20744247d614dcb5 in memory
fld f4, 0(x2) # load 0x20744247d614dcb5 from memory into f4
fsgnjn.d f25, f6, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x24, 0x90c0eb38c5b50554 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf941724a97914e7c # load x3 with value 0xf941724a97914e7c
sd x3, 0(x2) # store 0xf941724a97914e7c in memory
fld f11, 0(x2) # load 0xf941724a97914e7c from memory into f11
li x3, 0xdc31b91b3c4eff26 # load x3 with value 0xdc31b91b3c4eff26
sd x3, 0(x2) # store 0xdc31b91b3c4eff26 in memory
fld f5, 0(x2) # load 0xdc31b91b3c4eff26 from memory into f5
fsgnjn.d f24, f11, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x12, 0x6b4e1bf6afda6f2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xedb728f8be6ea6a6 # load x3 with value 0xedb728f8be6ea6a6
sd x3, 0(x2) # store 0xedb728f8be6ea6a6 in memory
fld f30, 0(x2) # load 0xedb728f8be6ea6a6 from memory into f30
li x3, 0x33e9aa0082268992 # load x3 with value 0x33e9aa0082268992
sd x3, 0(x2) # store 0x33e9aa0082268992 in memory
fld f6, 0(x2) # load 0x33e9aa0082268992 from memory into f6
fsgnjn.d f12, f30, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x22, 0x039efd6b1a99c653 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc3488e0a355aa39f # load x3 with value 0xc3488e0a355aa39f
sd x3, 0(x2) # store 0xc3488e0a355aa39f in memory
fld f8, 0(x2) # load 0xc3488e0a355aa39f from memory into f8
li x3, 0xc0fd36a5c3fddad8 # load x3 with value 0xc0fd36a5c3fddad8
sd x3, 0(x2) # store 0xc0fd36a5c3fddad8 in memory
fld f7, 0(x2) # load 0xc0fd36a5c3fddad8 from memory into f7
fsgnjn.d f22, f8, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x18, 0x3aa660a1ac453786 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x036215f9f4987156 # load x3 with value 0x036215f9f4987156
sd x3, 0(x2) # store 0x036215f9f4987156 in memory
fld f16, 0(x2) # load 0x036215f9f4987156 from memory into f16
li x3, 0x7f77b3a6d988c699 # load x3 with value 0x7f77b3a6d988c699
sd x3, 0(x2) # store 0x7f77b3a6d988c699 in memory
fld f8, 0(x2) # load 0x7f77b3a6d988c699 from memory into f8
fsgnjn.d f18, f16, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x30, 0xbf9ee68ee5f3a0da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2fc4b3ce81cc9833 # load x3 with value 0x2fc4b3ce81cc9833
sd x3, 0(x2) # store 0x2fc4b3ce81cc9833 in memory
fld f14, 0(x2) # load 0x2fc4b3ce81cc9833 from memory into f14
li x3, 0x27c224c68d6d5796 # load x3 with value 0x27c224c68d6d5796
sd x3, 0(x2) # store 0x27c224c68d6d5796 in memory
fld f9, 0(x2) # load 0x27c224c68d6d5796 from memory into f9
fsgnjn.d f30, f14, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x5, 0x89828804dbcdf6fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb7cba7795c00c9a1 # load x3 with value 0xb7cba7795c00c9a1
sd x3, 0(x2) # store 0xb7cba7795c00c9a1 in memory
fld f24, 0(x2) # load 0xb7cba7795c00c9a1 from memory into f24
li x3, 0x9b1af4f5b83cc883 # load x3 with value 0x9b1af4f5b83cc883
sd x3, 0(x2) # store 0x9b1af4f5b83cc883 in memory
fld f10, 0(x2) # load 0x9b1af4f5b83cc883 from memory into f10
fsgnjn.d f5, f24, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x22, 0x42147c1724795616 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e4065896f399de0 # load x3 with value 0x5e4065896f399de0
sd x3, 0(x2) # store 0x5e4065896f399de0 in memory
fld f10, 0(x2) # load 0x5e4065896f399de0 from memory into f10
li x3, 0xa6f5c0cb4eea7897 # load x3 with value 0xa6f5c0cb4eea7897
sd x3, 0(x2) # store 0xa6f5c0cb4eea7897 in memory
fld f11, 0(x2) # load 0xa6f5c0cb4eea7897 from memory into f11
fsgnjn.d f22, f10, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x25, 0x5a669fb415555e1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3706d58b14db2fbb # load x3 with value 0x3706d58b14db2fbb
sd x3, 0(x2) # store 0x3706d58b14db2fbb in memory
fld f16, 0(x2) # load 0x3706d58b14db2fbb from memory into f16
li x3, 0x833f5e7ee3a32696 # load x3 with value 0x833f5e7ee3a32696
sd x3, 0(x2) # store 0x833f5e7ee3a32696 in memory
fld f12, 0(x2) # load 0x833f5e7ee3a32696 from memory into f12
fsgnjn.d f25, f16, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x13, 0x096abbf5f4b2bc64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53884cdf31bf5ff0 # load x3 with value 0x53884cdf31bf5ff0
sd x3, 0(x2) # store 0x53884cdf31bf5ff0 in memory
fld f31, 0(x2) # load 0x53884cdf31bf5ff0 from memory into f31
li x3, 0x6759e9b1e70017eb # load x3 with value 0x6759e9b1e70017eb
sd x3, 0(x2) # store 0x6759e9b1e70017eb in memory
fld f13, 0(x2) # load 0x6759e9b1e70017eb from memory into f13
fsgnjn.d f13, f31, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x2, 0x56323704513e1695 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xef2201230352b139 # load x3 with value 0xef2201230352b139
sd x3, 0(x2) # store 0xef2201230352b139 in memory
fld f8, 0(x2) # load 0xef2201230352b139 from memory into f8
li x3, 0x28292161d3ccdd57 # load x3 with value 0x28292161d3ccdd57
sd x3, 0(x2) # store 0x28292161d3ccdd57 in memory
fld f14, 0(x2) # load 0x28292161d3ccdd57 from memory into f14
fsgnjn.d f2, f8, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x15, 0x7857c4be05719e6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe9c49a24263d68d # load x3 with value 0xbe9c49a24263d68d
sd x3, 0(x2) # store 0xbe9c49a24263d68d in memory
fld f10, 0(x2) # load 0xbe9c49a24263d68d from memory into f10
li x3, 0x015f52e877fd816d # load x3 with value 0x015f52e877fd816d
sd x3, 0(x2) # store 0x015f52e877fd816d in memory
fld f15, 0(x2) # load 0x015f52e877fd816d from memory into f15
fsgnjn.d f15, f10, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x3, 0x23f8863352855e3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xad8503a0d9647235 # load x3 with value 0xad8503a0d9647235
sd x3, 0(x2) # store 0xad8503a0d9647235 in memory
fld f27, 0(x2) # load 0xad8503a0d9647235 from memory into f27
li x3, 0x544cf5c61a3a2988 # load x3 with value 0x544cf5c61a3a2988
sd x3, 0(x2) # store 0x544cf5c61a3a2988 in memory
fld f16, 0(x2) # load 0x544cf5c61a3a2988 from memory into f16
fsgnjn.d f3, f27, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x29, 0xdb6f9e00558df17a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e8ae0e561a3b9be # load x3 with value 0x3e8ae0e561a3b9be
sd x3, 0(x2) # store 0x3e8ae0e561a3b9be in memory
fld f10, 0(x2) # load 0x3e8ae0e561a3b9be from memory into f10
li x3, 0x449651dc8a86752b # load x3 with value 0x449651dc8a86752b
sd x3, 0(x2) # store 0x449651dc8a86752b in memory
fld f17, 0(x2) # load 0x449651dc8a86752b from memory into f17
fsgnjn.d f29, f10, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x1, 0x3c2decbf5029fc90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x160c94683b98539d # load x3 with value 0x160c94683b98539d
sd x3, 0(x2) # store 0x160c94683b98539d in memory
fld f5, 0(x2) # load 0x160c94683b98539d from memory into f5
li x3, 0xa35355e11dec5c75 # load x3 with value 0xa35355e11dec5c75
sd x3, 0(x2) # store 0xa35355e11dec5c75 in memory
fld f18, 0(x2) # load 0xa35355e11dec5c75 from memory into f18
fsgnjn.d f1, f5, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x25, 0x40530e6386aef0fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x94140191a3fa412f # load x3 with value 0x94140191a3fa412f
sd x3, 0(x2) # store 0x94140191a3fa412f in memory
fld f24, 0(x2) # load 0x94140191a3fa412f from memory into f24
li x3, 0xe39e3c631e9e0425 # load x3 with value 0xe39e3c631e9e0425
sd x3, 0(x2) # store 0xe39e3c631e9e0425 in memory
fld f19, 0(x2) # load 0xe39e3c631e9e0425 from memory into f19
fsgnjn.d f25, f24, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x28, 0x1b0fb7ba4b817cc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x897ef9969ba3631b # load x3 with value 0x897ef9969ba3631b
sd x3, 0(x2) # store 0x897ef9969ba3631b in memory
fld f10, 0(x2) # load 0x897ef9969ba3631b from memory into f10
li x3, 0xf23296885196a48f # load x3 with value 0xf23296885196a48f
sd x3, 0(x2) # store 0xf23296885196a48f in memory
fld f20, 0(x2) # load 0xf23296885196a48f from memory into f20
fsgnjn.d f28, f10, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x5, 0x08c8f537122ad8bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x20a0accc2543c4b3 # load x3 with value 0x20a0accc2543c4b3
sd x3, 0(x2) # store 0x20a0accc2543c4b3 in memory
fld f12, 0(x2) # load 0x20a0accc2543c4b3 from memory into f12
li x3, 0xb8dbbe11bc8fc693 # load x3 with value 0xb8dbbe11bc8fc693
sd x3, 0(x2) # store 0xb8dbbe11bc8fc693 in memory
fld f21, 0(x2) # load 0xb8dbbe11bc8fc693 from memory into f21
fsgnjn.d f5, f12, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x4, 0xf3c7253c91c67292 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaccd09729343eed8 # load x3 with value 0xaccd09729343eed8
sd x3, 0(x2) # store 0xaccd09729343eed8 in memory
fld f13, 0(x2) # load 0xaccd09729343eed8 from memory into f13
li x3, 0x451413fea6bbd3e9 # load x3 with value 0x451413fea6bbd3e9
sd x3, 0(x2) # store 0x451413fea6bbd3e9 in memory
fld f22, 0(x2) # load 0x451413fea6bbd3e9 from memory into f22
fsgnjn.d f4, f13, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x22, 0xd142553255533d23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x267e0735d947948d # load x3 with value 0x267e0735d947948d
sd x3, 0(x2) # store 0x267e0735d947948d in memory
fld f2, 0(x2) # load 0x267e0735d947948d from memory into f2
li x3, 0xbbb672ab1984bfc8 # load x3 with value 0xbbb672ab1984bfc8
sd x3, 0(x2) # store 0xbbb672ab1984bfc8 in memory
fld f23, 0(x2) # load 0xbbb672ab1984bfc8 from memory into f23
fsgnjn.d f22, f2, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x9, 0x899dc697a1e9190d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb94f1046a3d96e56 # load x3 with value 0xb94f1046a3d96e56
sd x3, 0(x2) # store 0xb94f1046a3d96e56 in memory
fld f1, 0(x2) # load 0xb94f1046a3d96e56 from memory into f1
li x3, 0x7af7868e13bce750 # load x3 with value 0x7af7868e13bce750
sd x3, 0(x2) # store 0x7af7868e13bce750 in memory
fld f24, 0(x2) # load 0x7af7868e13bce750 from memory into f24
fsgnjn.d f9, f1, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x19, 0x2a9c6d229b241be9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcce9195a3ef80d32 # load x3 with value 0xcce9195a3ef80d32
sd x3, 0(x2) # store 0xcce9195a3ef80d32 in memory
fld f28, 0(x2) # load 0xcce9195a3ef80d32 from memory into f28
li x3, 0xb1d54f5702235e2c # load x3 with value 0xb1d54f5702235e2c
sd x3, 0(x2) # store 0xb1d54f5702235e2c in memory
fld f25, 0(x2) # load 0xb1d54f5702235e2c from memory into f25
fsgnjn.d f19, f28, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x10, 0x64c4a06629a7e239 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda5e39f6392f1b43 # load x3 with value 0xda5e39f6392f1b43
sd x3, 0(x2) # store 0xda5e39f6392f1b43 in memory
fld f22, 0(x2) # load 0xda5e39f6392f1b43 from memory into f22
li x3, 0x5dbeb4094ee43b08 # load x3 with value 0x5dbeb4094ee43b08
sd x3, 0(x2) # store 0x5dbeb4094ee43b08 in memory
fld f26, 0(x2) # load 0x5dbeb4094ee43b08 from memory into f26
fsgnjn.d f10, f22, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x16, 0xb4586909a3734b96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5a50218390a65d83 # load x3 with value 0x5a50218390a65d83
sd x3, 0(x2) # store 0x5a50218390a65d83 in memory
fld f29, 0(x2) # load 0x5a50218390a65d83 from memory into f29
li x3, 0x841ac81804a9f285 # load x3 with value 0x841ac81804a9f285
sd x3, 0(x2) # store 0x841ac81804a9f285 in memory
fld f27, 0(x2) # load 0x841ac81804a9f285 from memory into f27
fsgnjn.d f16, f29, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x15, 0xe13ba8a034ae2168 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x54f787fb72aaa647 # load x3 with value 0x54f787fb72aaa647
sd x3, 0(x2) # store 0x54f787fb72aaa647 in memory
fld f19, 0(x2) # load 0x54f787fb72aaa647 from memory into f19
li x3, 0x285ed9b6e41c19ad # load x3 with value 0x285ed9b6e41c19ad
sd x3, 0(x2) # store 0x285ed9b6e41c19ad in memory
fld f28, 0(x2) # load 0x285ed9b6e41c19ad from memory into f28
fsgnjn.d f15, f19, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x7, 0xfd7f104b81a1805d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ee3da7ddd500612 # load x3 with value 0x5ee3da7ddd500612
sd x3, 0(x2) # store 0x5ee3da7ddd500612 in memory
fld f25, 0(x2) # load 0x5ee3da7ddd500612 from memory into f25
li x3, 0xe7d64f510bece243 # load x3 with value 0xe7d64f510bece243
sd x3, 0(x2) # store 0xe7d64f510bece243 in memory
fld f29, 0(x2) # load 0xe7d64f510bece243 from memory into f29
fsgnjn.d f7, f25, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x9, 0x074363942eabbf74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9f177828a63cc015 # load x3 with value 0x9f177828a63cc015
sd x3, 0(x2) # store 0x9f177828a63cc015 in memory
fld f8, 0(x2) # load 0x9f177828a63cc015 from memory into f8
li x3, 0x6832840c39737b79 # load x3 with value 0x6832840c39737b79
sd x3, 0(x2) # store 0x6832840c39737b79 in memory
fld f30, 0(x2) # load 0x6832840c39737b79 from memory into f30
fsgnjn.d f9, f8, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x10, 0x737f44016aa9719e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x215addea688e9bf7 # load x3 with value 0x215addea688e9bf7
sd x3, 0(x2) # store 0x215addea688e9bf7 in memory
fld f21, 0(x2) # load 0x215addea688e9bf7 from memory into f21
li x3, 0x42f1ffa0bb9a9d19 # load x3 with value 0x42f1ffa0bb9a9d19
sd x3, 0(x2) # store 0x42f1ffa0bb9a9d19 in memory
fld f31, 0(x2) # load 0x42f1ffa0bb9a9d19 from memory into f31
fsgnjn.d f10, f21, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
