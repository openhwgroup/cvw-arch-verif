///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/D//WALLY-COV-fmin.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.924783
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
fmin.d f14, f22, f16 # perform first operation
fmin.d f28, f14, f6 # perform second operation

# Testcase cmp_gpr_hazard raw test
fmin.d f16, f15, f12 # perform first operation
fmin.d f10, f7, f16 # perform second operation

# Testcase cmp_gpr_hazard waw test
fmin.d f4, f28, f8 # perform first operation
fmin.d f4, f4, f15 # perform second operation

# Testcase cmp_gpr_hazard waw test
fmin.d f17, f8, f21 # perform first operation
fmin.d f17, f18, f11 # perform second operation

# Testcase cmp_gpr_hazard war test
fmin.d f24, f23, f30 # perform first operation
fmin.d f23, f16, f6 # perform second operation

# Testcase cmp_gpr_hazard war test
fmin.d f14, f4, f29 # perform first operation
fmin.d f29, f21, f16 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x070424ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf58001fe # load x3 with 32 MSBs 0x00000000f58001fe
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f58001fe
sw x3, 0(x2) # store x3 (0xf58001fe) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000f58001fe from memory into f0
li x3, 0x689e33e7 # load x3 with 32 MSBs 0x00000000689e33e7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000689e33e7
sw x3, 0(x2) # store x3 (0x689e33e7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000689e33e7 from memory into f21
fmin.d f0, f0, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0xa3e68dba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb0ed82b # load x3 with 32 MSBs 0x00000000db0ed82b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000db0ed82b
sw x3, 0(x2) # store x3 (0xdb0ed82b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000db0ed82b from memory into f1
li x3, 0xb0a0efea # load x3 with 32 MSBs 0x00000000b0a0efea
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b0a0efea
sw x3, 0(x2) # store x3 (0xb0a0efea) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000b0a0efea from memory into f8
fmin.d f1, f1, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x41fd7d94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe555598 # load x3 with 32 MSBs 0x00000000be555598
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000be555598
sw x3, 0(x2) # store x3 (0xbe555598) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000be555598 from memory into f2
li x3, 0x639dbfd4 # load x3 with 32 MSBs 0x00000000639dbfd4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000639dbfd4
sw x3, 0(x2) # store x3 (0x639dbfd4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000639dbfd4 from memory into f10
fmin.d f2, f2, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0xc63a3f23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f2fa835 # load x3 with 32 MSBs 0x000000003f2fa835
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003f2fa835
sw x3, 0(x2) # store x3 (0x3f2fa835) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000003f2fa835 from memory into f3
li x3, 0x44c912be # load x3 with 32 MSBs 0x0000000044c912be
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000044c912be
sw x3, 0(x2) # store x3 (0x44c912be) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000044c912be from memory into f20
fmin.d f3, f3, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0xdb940fdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbe4b372 # load x3 with 32 MSBs 0x00000000dbe4b372
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000dbe4b372
sw x3, 0(x2) # store x3 (0xdbe4b372) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000dbe4b372 from memory into f4
li x3, 0x3c94a7ac # load x3 with 32 MSBs 0x000000003c94a7ac
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003c94a7ac
sw x3, 0(x2) # store x3 (0x3c94a7ac) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000003c94a7ac from memory into f19
fmin.d f4, f4, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x7bd6e001 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf373b635 # load x3 with 32 MSBs 0x00000000f373b635
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f373b635
sw x3, 0(x2) # store x3 (0xf373b635) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000f373b635 from memory into f5
li x3, 0x0b3e9322 # load x3 with 32 MSBs 0x000000000b3e9322
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000b3e9322
sw x3, 0(x2) # store x3 (0x0b3e9322) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000000b3e9322 from memory into f1
fmin.d f5, f5, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x6b8fb306 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6f46b3a6 # load x3 with 32 MSBs 0x000000006f46b3a6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006f46b3a6
sw x3, 0(x2) # store x3 (0x6f46b3a6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000006f46b3a6 from memory into f6
li x3, 0xd6d49ae9 # load x3 with 32 MSBs 0x00000000d6d49ae9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d6d49ae9
sw x3, 0(x2) # store x3 (0xd6d49ae9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000d6d49ae9 from memory into f9
fmin.d f6, f6, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x88f06322 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c35d9bc # load x3 with 32 MSBs 0x000000003c35d9bc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003c35d9bc
sw x3, 0(x2) # store x3 (0x3c35d9bc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000003c35d9bc from memory into f7
li x3, 0x9df28c68 # load x3 with 32 MSBs 0x000000009df28c68
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009df28c68
sw x3, 0(x2) # store x3 (0x9df28c68) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000009df28c68 from memory into f31
fmin.d f7, f7, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x0ebc667a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeb9a10a2 # load x3 with 32 MSBs 0x00000000eb9a10a2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000eb9a10a2
sw x3, 0(x2) # store x3 (0xeb9a10a2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000eb9a10a2 from memory into f8
li x3, 0x6fa90512 # load x3 with 32 MSBs 0x000000006fa90512
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006fa90512
sw x3, 0(x2) # store x3 (0x6fa90512) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000006fa90512 from memory into f28
fmin.d f8, f8, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0xaff78c3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2286d753 # load x3 with 32 MSBs 0x000000002286d753
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002286d753
sw x3, 0(x2) # store x3 (0x2286d753) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000002286d753 from memory into f9
li x3, 0x001564a2 # load x3 with 32 MSBs 0x00000000001564a2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000001564a2
sw x3, 0(x2) # store x3 (0x001564a2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000001564a2 from memory into f9
fmin.d f9, f9, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0xc89520d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa836fa3b # load x3 with 32 MSBs 0x00000000a836fa3b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a836fa3b
sw x3, 0(x2) # store x3 (0xa836fa3b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000a836fa3b from memory into f10
li x3, 0x9963d949 # load x3 with 32 MSBs 0x000000009963d949
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009963d949
sw x3, 0(x2) # store x3 (0x9963d949) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000009963d949 from memory into f1
fmin.d f10, f10, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x2f3e18d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcc8fd0b6 # load x3 with 32 MSBs 0x00000000cc8fd0b6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cc8fd0b6
sw x3, 0(x2) # store x3 (0xcc8fd0b6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000cc8fd0b6 from memory into f11
li x3, 0x1c37a782 # load x3 with 32 MSBs 0x000000001c37a782
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001c37a782
sw x3, 0(x2) # store x3 (0x1c37a782) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000001c37a782 from memory into f18
fmin.d f11, f11, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0xfab41dc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd39f3685 # load x3 with 32 MSBs 0x00000000d39f3685
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d39f3685
sw x3, 0(x2) # store x3 (0xd39f3685) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000d39f3685 from memory into f12
li x3, 0xceb86d2f # load x3 with 32 MSBs 0x00000000ceb86d2f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ceb86d2f
sw x3, 0(x2) # store x3 (0xceb86d2f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000ceb86d2f from memory into f3
fmin.d f12, f12, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0xe2c4e165 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc2c7c1f0 # load x3 with 32 MSBs 0x00000000c2c7c1f0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c2c7c1f0
sw x3, 0(x2) # store x3 (0xc2c7c1f0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000c2c7c1f0 from memory into f13
li x3, 0x9e4883e5 # load x3 with 32 MSBs 0x000000009e4883e5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009e4883e5
sw x3, 0(x2) # store x3 (0x9e4883e5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000009e4883e5 from memory into f26
fmin.d f13, f13, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0xc8d435bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f6d7d20 # load x3 with 32 MSBs 0x000000002f6d7d20
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002f6d7d20
sw x3, 0(x2) # store x3 (0x2f6d7d20) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000002f6d7d20 from memory into f14
li x3, 0x459c3581 # load x3 with 32 MSBs 0x00000000459c3581
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000459c3581
sw x3, 0(x2) # store x3 (0x459c3581) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000459c3581 from memory into f23
fmin.d f14, f14, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0xfb7a2121 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa82d3f8 # load x3 with 32 MSBs 0x00000000fa82d3f8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fa82d3f8
sw x3, 0(x2) # store x3 (0xfa82d3f8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000fa82d3f8 from memory into f15
li x3, 0x536ea04a # load x3 with 32 MSBs 0x00000000536ea04a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000536ea04a
sw x3, 0(x2) # store x3 (0x536ea04a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000536ea04a from memory into f27
fmin.d f15, f15, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x73afda68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe4b175f6 # load x3 with 32 MSBs 0x00000000e4b175f6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e4b175f6
sw x3, 0(x2) # store x3 (0xe4b175f6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000e4b175f6 from memory into f16
li x3, 0x43435750 # load x3 with 32 MSBs 0x0000000043435750
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000043435750
sw x3, 0(x2) # store x3 (0x43435750) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000043435750 from memory into f29
fmin.d f16, f16, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0xb6dd9e68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0e9c16c # load x3 with 32 MSBs 0x00000000d0e9c16c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d0e9c16c
sw x3, 0(x2) # store x3 (0xd0e9c16c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000d0e9c16c from memory into f17
li x3, 0xac815ff4 # load x3 with 32 MSBs 0x00000000ac815ff4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ac815ff4
sw x3, 0(x2) # store x3 (0xac815ff4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000ac815ff4 from memory into f24
fmin.d f17, f17, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0xc1a6df78 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x83315048 # load x3 with 32 MSBs 0x0000000083315048
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000083315048
sw x3, 0(x2) # store x3 (0x83315048) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000083315048 from memory into f18
li x3, 0x40a4a4bc # load x3 with 32 MSBs 0x0000000040a4a4bc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000040a4a4bc
sw x3, 0(x2) # store x3 (0x40a4a4bc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000040a4a4bc from memory into f29
fmin.d f18, f18, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0xdab0391a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd3202195 # load x3 with 32 MSBs 0x00000000d3202195
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d3202195
sw x3, 0(x2) # store x3 (0xd3202195) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000d3202195 from memory into f19
li x3, 0x2498a1f4 # load x3 with 32 MSBs 0x000000002498a1f4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002498a1f4
sw x3, 0(x2) # store x3 (0x2498a1f4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000002498a1f4 from memory into f12
fmin.d f19, f19, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x377df4c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1974ba2e # load x3 with 32 MSBs 0x000000001974ba2e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001974ba2e
sw x3, 0(x2) # store x3 (0x1974ba2e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000001974ba2e from memory into f20
li x3, 0x8e7c5614 # load x3 with 32 MSBs 0x000000008e7c5614
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008e7c5614
sw x3, 0(x2) # store x3 (0x8e7c5614) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000008e7c5614 from memory into f31
fmin.d f20, f20, f31 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0xfcb8c3c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8f1ae163 # load x3 with 32 MSBs 0x000000008f1ae163
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008f1ae163
sw x3, 0(x2) # store x3 (0x8f1ae163) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000008f1ae163 from memory into f21
li x3, 0xe3a68993 # load x3 with 32 MSBs 0x00000000e3a68993
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e3a68993
sw x3, 0(x2) # store x3 (0xe3a68993) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000e3a68993 from memory into f23
fmin.d f21, f21, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0x832bcf79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4719f8c3 # load x3 with 32 MSBs 0x000000004719f8c3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004719f8c3
sw x3, 0(x2) # store x3 (0x4719f8c3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000004719f8c3 from memory into f22
li x3, 0x5f5cc197 # load x3 with 32 MSBs 0x000000005f5cc197
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005f5cc197
sw x3, 0(x2) # store x3 (0x5f5cc197) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000005f5cc197 from memory into f21
fmin.d f22, f22, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x432a3f50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf6206b7b # load x3 with 32 MSBs 0x00000000f6206b7b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f6206b7b
sw x3, 0(x2) # store x3 (0xf6206b7b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000f6206b7b from memory into f23
li x3, 0x3d965862 # load x3 with 32 MSBs 0x000000003d965862
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003d965862
sw x3, 0(x2) # store x3 (0x3d965862) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000003d965862 from memory into f10
fmin.d f23, f23, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x5f428c0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfe2c2bbf # load x3 with 32 MSBs 0x00000000fe2c2bbf
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fe2c2bbf
sw x3, 0(x2) # store x3 (0xfe2c2bbf) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000fe2c2bbf from memory into f24
li x3, 0x128fda2c # load x3 with 32 MSBs 0x00000000128fda2c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000128fda2c
sw x3, 0(x2) # store x3 (0x128fda2c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000128fda2c from memory into f7
fmin.d f24, f24, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x0c3115da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x769556b7 # load x3 with 32 MSBs 0x00000000769556b7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000769556b7
sw x3, 0(x2) # store x3 (0x769556b7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000769556b7 from memory into f25
li x3, 0x5008e4d4 # load x3 with 32 MSBs 0x000000005008e4d4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005008e4d4
sw x3, 0(x2) # store x3 (0x5008e4d4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000005008e4d4 from memory into f12
fmin.d f25, f25, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0xe9803c7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb4afed2 # load x3 with 32 MSBs 0x00000000cb4afed2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cb4afed2
sw x3, 0(x2) # store x3 (0xcb4afed2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000cb4afed2 from memory into f26
li x3, 0xcfc31d33 # load x3 with 32 MSBs 0x00000000cfc31d33
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cfc31d33
sw x3, 0(x2) # store x3 (0xcfc31d33) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000cfc31d33 from memory into f9
fmin.d f26, f26, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x6064e8f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x48aa4fdd # load x3 with 32 MSBs 0x0000000048aa4fdd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000048aa4fdd
sw x3, 0(x2) # store x3 (0x48aa4fdd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000048aa4fdd from memory into f27
li x3, 0xafef6f17 # load x3 with 32 MSBs 0x00000000afef6f17
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000afef6f17
sw x3, 0(x2) # store x3 (0xafef6f17) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000afef6f17 from memory into f28
fmin.d f27, f27, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0xd6ed6020 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde9ca766 # load x3 with 32 MSBs 0x00000000de9ca766
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000de9ca766
sw x3, 0(x2) # store x3 (0xde9ca766) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000de9ca766 from memory into f28
li x3, 0xcc45da43 # load x3 with 32 MSBs 0x00000000cc45da43
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cc45da43
sw x3, 0(x2) # store x3 (0xcc45da43) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000cc45da43 from memory into f15
fmin.d f28, f28, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x200d766f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d1754a7 # load x3 with 32 MSBs 0x000000009d1754a7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009d1754a7
sw x3, 0(x2) # store x3 (0x9d1754a7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000009d1754a7 from memory into f29
li x3, 0x9cf0920f # load x3 with 32 MSBs 0x000000009cf0920f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009cf0920f
sw x3, 0(x2) # store x3 (0x9cf0920f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x000000009cf0920f from memory into f4
fmin.d f29, f29, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0xfde19e47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4706844e # load x3 with 32 MSBs 0x000000004706844e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004706844e
sw x3, 0(x2) # store x3 (0x4706844e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000004706844e from memory into f30
li x3, 0xa70f27b4 # load x3 with 32 MSBs 0x00000000a70f27b4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a70f27b4
sw x3, 0(x2) # store x3 (0xa70f27b4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000a70f27b4 from memory into f8
fmin.d f30, f30, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x03e31ff4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3402d8d0 # load x3 with 32 MSBs 0x000000003402d8d0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003402d8d0
sw x3, 0(x2) # store x3 (0x3402d8d0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000003402d8d0 from memory into f31
li x3, 0x07db0de9 # load x3 with 32 MSBs 0x0000000007db0de9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000007db0de9
sw x3, 0(x2) # store x3 (0x07db0de9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000007db0de9 from memory into f30
fmin.d f31, f31, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x3b3449b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe253e978 # load x3 with 32 MSBs 0x00000000e253e978
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e253e978
sw x3, 0(x2) # store x3 (0xe253e978) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000e253e978 from memory into f19
li x3, 0xf72ba0d7 # load x3 with 32 MSBs 0x00000000f72ba0d7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f72ba0d7
sw x3, 0(x2) # store x3 (0xf72ba0d7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000f72ba0d7 from memory into f0
fmin.d f0, f19, f0 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0x2f831fff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x255440ce # load x3 with 32 MSBs 0x00000000255440ce
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000255440ce
sw x3, 0(x2) # store x3 (0x255440ce) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000255440ce from memory into f26
li x3, 0x59af2dea # load x3 with 32 MSBs 0x0000000059af2dea
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000059af2dea
sw x3, 0(x2) # store x3 (0x59af2dea) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000059af2dea from memory into f1
fmin.d f1, f26, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0xbac7a2a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2fc26509 # load x3 with 32 MSBs 0x000000002fc26509
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002fc26509
sw x3, 0(x2) # store x3 (0x2fc26509) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000002fc26509 from memory into f21
li x3, 0xda4e33c8 # load x3 with 32 MSBs 0x00000000da4e33c8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000da4e33c8
sw x3, 0(x2) # store x3 (0xda4e33c8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000da4e33c8 from memory into f2
fmin.d f2, f21, f2 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0xe12f8310 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x95413f3a # load x3 with 32 MSBs 0x0000000095413f3a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000095413f3a
sw x3, 0(x2) # store x3 (0x95413f3a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000095413f3a from memory into f11
li x3, 0x02683a33 # load x3 with 32 MSBs 0x0000000002683a33
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000002683a33
sw x3, 0(x2) # store x3 (0x02683a33) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000002683a33 from memory into f3
fmin.d f3, f11, f3 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0xc4383561 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e8c77bc # load x3 with 32 MSBs 0x000000009e8c77bc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009e8c77bc
sw x3, 0(x2) # store x3 (0x9e8c77bc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000009e8c77bc from memory into f3
li x3, 0x55abd3f5 # load x3 with 32 MSBs 0x0000000055abd3f5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000055abd3f5
sw x3, 0(x2) # store x3 (0x55abd3f5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000055abd3f5 from memory into f4
fmin.d f4, f3, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x92dbc14b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8cfc6c6d # load x3 with 32 MSBs 0x000000008cfc6c6d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008cfc6c6d
sw x3, 0(x2) # store x3 (0x8cfc6c6d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000008cfc6c6d from memory into f30
li x3, 0x04d93a64 # load x3 with 32 MSBs 0x0000000004d93a64
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000004d93a64
sw x3, 0(x2) # store x3 (0x04d93a64) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000004d93a64 from memory into f5
fmin.d f5, f30, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0xcdce330b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x48e55604 # load x3 with 32 MSBs 0x0000000048e55604
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000048e55604
sw x3, 0(x2) # store x3 (0x48e55604) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000048e55604 from memory into f21
li x3, 0x296a280a # load x3 with 32 MSBs 0x00000000296a280a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000296a280a
sw x3, 0(x2) # store x3 (0x296a280a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000296a280a from memory into f6
fmin.d f6, f21, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0x9eeceeca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4cc909a3 # load x3 with 32 MSBs 0x000000004cc909a3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004cc909a3
sw x3, 0(x2) # store x3 (0x4cc909a3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000004cc909a3 from memory into f1
li x3, 0xb8ccbf98 # load x3 with 32 MSBs 0x00000000b8ccbf98
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b8ccbf98
sw x3, 0(x2) # store x3 (0xb8ccbf98) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000b8ccbf98 from memory into f7
fmin.d f7, f1, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x4be76859 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x09810fd3 # load x3 with 32 MSBs 0x0000000009810fd3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000009810fd3
sw x3, 0(x2) # store x3 (0x09810fd3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000009810fd3 from memory into f19
li x3, 0x3338d3ba # load x3 with 32 MSBs 0x000000003338d3ba
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003338d3ba
sw x3, 0(x2) # store x3 (0x3338d3ba) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000003338d3ba from memory into f8
fmin.d f8, f19, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x6dfb0e81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe399fcd6 # load x3 with 32 MSBs 0x00000000e399fcd6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e399fcd6
sw x3, 0(x2) # store x3 (0xe399fcd6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000e399fcd6 from memory into f31
li x3, 0xb8e98222 # load x3 with 32 MSBs 0x00000000b8e98222
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b8e98222
sw x3, 0(x2) # store x3 (0xb8e98222) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000b8e98222 from memory into f9
fmin.d f9, f31, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x7126dc0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe613a3c2 # load x3 with 32 MSBs 0x00000000e613a3c2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e613a3c2
sw x3, 0(x2) # store x3 (0xe613a3c2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000e613a3c2 from memory into f11
li x3, 0x57d4c286 # load x3 with 32 MSBs 0x0000000057d4c286
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000057d4c286
sw x3, 0(x2) # store x3 (0x57d4c286) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000057d4c286 from memory into f10
fmin.d f10, f11, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x16fdbce1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8f0ad63d # load x3 with 32 MSBs 0x000000008f0ad63d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008f0ad63d
sw x3, 0(x2) # store x3 (0x8f0ad63d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000008f0ad63d from memory into f27
li x3, 0xbedf6792 # load x3 with 32 MSBs 0x00000000bedf6792
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bedf6792
sw x3, 0(x2) # store x3 (0xbedf6792) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000bedf6792 from memory into f11
fmin.d f11, f27, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0xa3692e0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x400cecfc # load x3 with 32 MSBs 0x00000000400cecfc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000400cecfc
sw x3, 0(x2) # store x3 (0x400cecfc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000400cecfc from memory into f30
li x3, 0xb8ea2b89 # load x3 with 32 MSBs 0x00000000b8ea2b89
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b8ea2b89
sw x3, 0(x2) # store x3 (0xb8ea2b89) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000b8ea2b89 from memory into f12
fmin.d f12, f30, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0xaabeec11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fe7ea26 # load x3 with 32 MSBs 0x000000003fe7ea26
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003fe7ea26
sw x3, 0(x2) # store x3 (0x3fe7ea26) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000003fe7ea26 from memory into f2
li x3, 0x8a3b8058 # load x3 with 32 MSBs 0x000000008a3b8058
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008a3b8058
sw x3, 0(x2) # store x3 (0x8a3b8058) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000008a3b8058 from memory into f13
fmin.d f13, f2, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0x3a0207cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb47571e7 # load x3 with 32 MSBs 0x00000000b47571e7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b47571e7
sw x3, 0(x2) # store x3 (0xb47571e7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000b47571e7 from memory into f30
li x3, 0x73aded53 # load x3 with 32 MSBs 0x0000000073aded53
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000073aded53
sw x3, 0(x2) # store x3 (0x73aded53) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000073aded53 from memory into f14
fmin.d f14, f30, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x18ded7a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5bc9d42d # load x3 with 32 MSBs 0x000000005bc9d42d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005bc9d42d
sw x3, 0(x2) # store x3 (0x5bc9d42d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000005bc9d42d from memory into f25
li x3, 0x1a1117fa # load x3 with 32 MSBs 0x000000001a1117fa
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001a1117fa
sw x3, 0(x2) # store x3 (0x1a1117fa) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000001a1117fa from memory into f15
fmin.d f15, f25, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0x221a6d10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd4ac1e9c # load x3 with 32 MSBs 0x00000000d4ac1e9c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d4ac1e9c
sw x3, 0(x2) # store x3 (0xd4ac1e9c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000d4ac1e9c from memory into f11
li x3, 0x7ade5df0 # load x3 with 32 MSBs 0x000000007ade5df0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007ade5df0
sw x3, 0(x2) # store x3 (0x7ade5df0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000007ade5df0 from memory into f16
fmin.d f16, f11, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x69d3bbc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x722f470c # load x3 with 32 MSBs 0x00000000722f470c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000722f470c
sw x3, 0(x2) # store x3 (0x722f470c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000722f470c from memory into f27
li x3, 0x78dce188 # load x3 with 32 MSBs 0x0000000078dce188
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000078dce188
sw x3, 0(x2) # store x3 (0x78dce188) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000078dce188 from memory into f17
fmin.d f17, f27, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0xdf12f2fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f4a8c61 # load x3 with 32 MSBs 0x000000005f4a8c61
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005f4a8c61
sw x3, 0(x2) # store x3 (0x5f4a8c61) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000005f4a8c61 from memory into f10
li x3, 0x848e1681 # load x3 with 32 MSBs 0x00000000848e1681
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000848e1681
sw x3, 0(x2) # store x3 (0x848e1681) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000848e1681 from memory into f18
fmin.d f18, f10, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0x13a16f70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xba81afa2 # load x3 with 32 MSBs 0x00000000ba81afa2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ba81afa2
sw x3, 0(x2) # store x3 (0xba81afa2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000ba81afa2 from memory into f20
li x3, 0xe205bf5a # load x3 with 32 MSBs 0x00000000e205bf5a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e205bf5a
sw x3, 0(x2) # store x3 (0xe205bf5a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000e205bf5a from memory into f19
fmin.d f19, f20, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0xdfa708d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe145178d # load x3 with 32 MSBs 0x00000000e145178d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e145178d
sw x3, 0(x2) # store x3 (0xe145178d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000e145178d from memory into f27
li x3, 0xe1aaa1a0 # load x3 with 32 MSBs 0x00000000e1aaa1a0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e1aaa1a0
sw x3, 0(x2) # store x3 (0xe1aaa1a0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000e1aaa1a0 from memory into f20
fmin.d f20, f27, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x66b4e302 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb88fdd53 # load x3 with 32 MSBs 0x00000000b88fdd53
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b88fdd53
sw x3, 0(x2) # store x3 (0xb88fdd53) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000b88fdd53 from memory into f1
li x3, 0xd377327f # load x3 with 32 MSBs 0x00000000d377327f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d377327f
sw x3, 0(x2) # store x3 (0xd377327f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000d377327f from memory into f21
fmin.d f21, f1, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0x83a20c25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5c9d1fb # load x3 with 32 MSBs 0x00000000f5c9d1fb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f5c9d1fb
sw x3, 0(x2) # store x3 (0xf5c9d1fb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000f5c9d1fb from memory into f15
li x3, 0x1f487c9f # load x3 with 32 MSBs 0x000000001f487c9f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001f487c9f
sw x3, 0(x2) # store x3 (0x1f487c9f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000001f487c9f from memory into f22
fmin.d f22, f15, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0xd913a07a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x078d85b6 # load x3 with 32 MSBs 0x00000000078d85b6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000078d85b6
sw x3, 0(x2) # store x3 (0x078d85b6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000078d85b6 from memory into f20
li x3, 0x54959ac5 # load x3 with 32 MSBs 0x0000000054959ac5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000054959ac5
sw x3, 0(x2) # store x3 (0x54959ac5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000054959ac5 from memory into f23
fmin.d f23, f20, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0x4c9dd2c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39e7b0c6 # load x3 with 32 MSBs 0x0000000039e7b0c6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000039e7b0c6
sw x3, 0(x2) # store x3 (0x39e7b0c6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000039e7b0c6 from memory into f1
li x3, 0xa4897a7c # load x3 with 32 MSBs 0x00000000a4897a7c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a4897a7c
sw x3, 0(x2) # store x3 (0xa4897a7c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000a4897a7c from memory into f24
fmin.d f24, f1, f24 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0xf30b59b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf67b738f # load x3 with 32 MSBs 0x00000000f67b738f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f67b738f
sw x3, 0(x2) # store x3 (0xf67b738f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000f67b738f from memory into f15
li x3, 0xd8aba6a4 # load x3 with 32 MSBs 0x00000000d8aba6a4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d8aba6a4
sw x3, 0(x2) # store x3 (0xd8aba6a4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000d8aba6a4 from memory into f25
fmin.d f25, f15, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x62119891 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc9b40726 # load x3 with 32 MSBs 0x00000000c9b40726
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c9b40726
sw x3, 0(x2) # store x3 (0xc9b40726) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000c9b40726 from memory into f11
li x3, 0xcb2a2699 # load x3 with 32 MSBs 0x00000000cb2a2699
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cb2a2699
sw x3, 0(x2) # store x3 (0xcb2a2699) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000cb2a2699 from memory into f26
fmin.d f26, f11, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0x8ccff36c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x99d36509 # load x3 with 32 MSBs 0x0000000099d36509
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000099d36509
sw x3, 0(x2) # store x3 (0x99d36509) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000099d36509 from memory into f18
li x3, 0x419a7f7e # load x3 with 32 MSBs 0x00000000419a7f7e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000419a7f7e
sw x3, 0(x2) # store x3 (0x419a7f7e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000419a7f7e from memory into f27
fmin.d f27, f18, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0xbe395732 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde224f8a # load x3 with 32 MSBs 0x00000000de224f8a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000de224f8a
sw x3, 0(x2) # store x3 (0xde224f8a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000de224f8a from memory into f10
li x3, 0x4f98971e # load x3 with 32 MSBs 0x000000004f98971e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004f98971e
sw x3, 0(x2) # store x3 (0x4f98971e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000004f98971e from memory into f28
fmin.d f28, f10, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0xf3a820b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x752c9eed # load x3 with 32 MSBs 0x00000000752c9eed
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000752c9eed
sw x3, 0(x2) # store x3 (0x752c9eed) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000752c9eed from memory into f1
li x3, 0x9e2ec68c # load x3 with 32 MSBs 0x000000009e2ec68c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009e2ec68c
sw x3, 0(x2) # store x3 (0x9e2ec68c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000009e2ec68c from memory into f29
fmin.d f29, f1, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0xd7c58752 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda776478 # load x3 with 32 MSBs 0x00000000da776478
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000da776478
sw x3, 0(x2) # store x3 (0xda776478) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000da776478 from memory into f19
li x3, 0x6f1d2360 # load x3 with 32 MSBs 0x000000006f1d2360
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006f1d2360
sw x3, 0(x2) # store x3 (0x6f1d2360) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000006f1d2360 from memory into f30
fmin.d f30, f19, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0xcc1fcf13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x81b15904 # load x3 with 32 MSBs 0x0000000081b15904
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000081b15904
sw x3, 0(x2) # store x3 (0x81b15904) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000081b15904 from memory into f9
li x3, 0x351912a1 # load x3 with 32 MSBs 0x00000000351912a1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000351912a1
sw x3, 0(x2) # store x3 (0x351912a1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000351912a1 from memory into f31
fmin.d f31, f9, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x14, 0xac5e98f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000000000000 from memory into f4
li x3, 0x29681167 # load x3 with 32 MSBs 0x0000000029681167
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000029681167
sw x3, 0(x2) # store x3 (0x29681167) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000029681167 from memory into f12
fmin.d f14, f4, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x8, 0xeeaf9b27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x8000000000000000 from memory into f21
li x3, 0x077b50cf # load x3 with 32 MSBs 0x00000000077b50cf
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000077b50cf
sw x3, 0(x2) # store x3 (0x077b50cf) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000077b50cf from memory into f4
fmin.d f8, f21, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x28, 0x3900409c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x3ff0000000000000 from memory into f24
li x3, 0xbe263547 # load x3 with 32 MSBs 0x00000000be263547
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000be263547
sw x3, 0(x2) # store x3 (0xbe263547) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000be263547 from memory into f19
fmin.d f28, f24, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x16, 0xf6658faa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xbff0000000000000 from memory into f29
li x3, 0x2aae53a9 # load x3 with 32 MSBs 0x000000002aae53a9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002aae53a9
sw x3, 0(x2) # store x3 (0x2aae53a9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000002aae53a9 from memory into f6
fmin.d f16, f29, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x1, 0xab42fac5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
li x3, 0x5850d1be # load x3 with 32 MSBs 0x000000005850d1be
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005850d1be
sw x3, 0(x2) # store x3 (0x5850d1be) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000005850d1be from memory into f12
fmin.d f1, f2, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x18, 0x5c46ab39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xbff8000000000000 from memory into f31
li x3, 0xe1aaef79 # load x3 with 32 MSBs 0x00000000e1aaef79
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e1aaef79
sw x3, 0(x2) # store x3 (0xe1aaef79) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000e1aaef79 from memory into f6
fmin.d f18, f31, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x5, 0xa28cdf01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x4000000000000000 from memory into f14
li x3, 0xc48d45ca # load x3 with 32 MSBs 0x00000000c48d45ca
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c48d45ca
sw x3, 0(x2) # store x3 (0xc48d45ca) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000c48d45ca from memory into f2
fmin.d f5, f14, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x14, 0x9cb0f28c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xc000000000000000 from memory into f31
li x3, 0xb0c6a0c9 # load x3 with 32 MSBs 0x00000000b0c6a0c9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b0c6a0c9
sw x3, 0(x2) # store x3 (0xb0c6a0c9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000b0c6a0c9 from memory into f29
fmin.d f14, f31, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x21, 0x86712800 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0010000000000000 from memory into f6
li x3, 0xe86a0325 # load x3 with 32 MSBs 0x00000000e86a0325
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e86a0325
sw x3, 0(x2) # store x3 (0xe86a0325) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000e86a0325 from memory into f22
fmin.d f21, f6, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x15, 0x6c75d069 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x8010000000000000 from memory into f28
li x3, 0x5cc1437e # load x3 with 32 MSBs 0x000000005cc1437e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005cc1437e
sw x3, 0(x2) # store x3 (0x5cc1437e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000005cc1437e from memory into f18
fmin.d f15, f28, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x3, 0xa5fd26f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
li x3, 0x33e7ae2b # load x3 with 32 MSBs 0x0000000033e7ae2b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000033e7ae2b
sw x3, 0(x2) # store x3 (0x33e7ae2b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000033e7ae2b from memory into f18
fmin.d f3, f8, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x12, 0x4e286cba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f4, 0(x2) # load 0xffefffffffffffff from memory into f4
li x3, 0x7a0588c8 # load x3 with 32 MSBs 0x000000007a0588c8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007a0588c8
sw x3, 0(x2) # store x3 (0x7a0588c8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000007a0588c8 from memory into f1
fmin.d f12, f4, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x1, 0x8c8616b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000fffffffffffff from memory into f12
li x3, 0xbb47d127 # load x3 with 32 MSBs 0x00000000bb47d127
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bb47d127
sw x3, 0(x2) # store x3 (0xbb47d127) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000bb47d127 from memory into f18
fmin.d f1, f12, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x27, 0x18a3a208 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x800fffffffffffff from memory into f14
li x3, 0x018fa794 # load x3 with 32 MSBs 0x00000000018fa794
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000018fa794
sw x3, 0(x2) # store x3 (0x018fa794) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000018fa794 from memory into f28
fmin.d f27, f14, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x26, 0x39f13a19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0008000000000000 from memory into f16
li x3, 0x44282f5f # load x3 with 32 MSBs 0x0000000044282f5f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000044282f5f
sw x3, 0(x2) # store x3 (0x44282f5f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000044282f5f from memory into f5
fmin.d f26, f16, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x21, 0x1781b195 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x8008000000000000 from memory into f24
li x3, 0x23df0555 # load x3 with 32 MSBs 0x0000000023df0555
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000023df0555
sw x3, 0(x2) # store x3 (0x23df0555) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000023df0555 from memory into f9
fmin.d f21, f24, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x30, 0x3d2618de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000000000001 from memory into f14
li x3, 0x66441b45 # load x3 with 32 MSBs 0x0000000066441b45
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000066441b45
sw x3, 0(x2) # store x3 (0x66441b45) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000066441b45 from memory into f2
fmin.d f30, f14, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x3, 0x759b96ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x8000000000000001 from memory into f30
li x3, 0xd96467cc # load x3 with 32 MSBs 0x00000000d96467cc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d96467cc
sw x3, 0(x2) # store x3 (0xd96467cc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000d96467cc from memory into f13
fmin.d f3, f30, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x25, 0x730348fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7ff0000000000000 from memory into f15
li x3, 0xe5456a5a # load x3 with 32 MSBs 0x00000000e5456a5a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e5456a5a
sw x3, 0(x2) # store x3 (0xe5456a5a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000e5456a5a from memory into f8
fmin.d f25, f15, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x26, 0x8542e98d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xfff0000000000000 from memory into f16
li x3, 0x303260e9 # load x3 with 32 MSBs 0x00000000303260e9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000303260e9
sw x3, 0(x2) # store x3 (0x303260e9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000303260e9 from memory into f6
fmin.d f26, f16, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x22, 0x61588582 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff8000000000000 from memory into f29
li x3, 0x07c207d9 # load x3 with 32 MSBs 0x0000000007c207d9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000007c207d9
sw x3, 0(x2) # store x3 (0x07c207d9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000007c207d9 from memory into f2
fmin.d f22, f29, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x3, 0xe12565e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7fffffffffffffff from memory into f25
li x3, 0xce3f9326 # load x3 with 32 MSBs 0x00000000ce3f9326
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ce3f9326
sw x3, 0(x2) # store x3 (0xce3f9326) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000ce3f9326 from memory into f1
fmin.d f3, f25, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x12, 0xce91c3cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff0000000000001 from memory into f29
li x3, 0x0e5ad9fa # load x3 with 32 MSBs 0x000000000e5ad9fa
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000e5ad9fa
sw x3, 0(x2) # store x3 (0x0e5ad9fa) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000000e5ad9fa from memory into f5
fmin.d f12, f29, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x26, 0xa75ef0b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7ff7ffffffffffff from memory into f12
li x3, 0x087b824c # load x3 with 32 MSBs 0x00000000087b824c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000087b824c
sw x3, 0(x2) # store x3 (0x087b824c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000087b824c from memory into f24
fmin.d f26, f12, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x28, 0xd3449b2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x5a392534a57711ad from memory into f5
li x3, 0x2ff3ce13 # load x3 with 32 MSBs 0x000000002ff3ce13
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002ff3ce13
sw x3, 0(x2) # store x3 (0x2ff3ce13) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000002ff3ce13 from memory into f14
fmin.d f28, f5, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x26, 0x8e6a2ef4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xa6e895993737426c from memory into f23
li x3, 0x0eb18894 # load x3 with 32 MSBs 0x000000000eb18894
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000eb18894
sw x3, 0(x2) # store x3 (0x0eb18894) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000000eb18894 from memory into f2
fmin.d f26, f23, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x26, 0xcd38e711 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0f39d28d # load x3 with 32 MSBs 0x000000000f39d28d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000f39d28d
sw x3, 0(x2) # store x3 (0x0f39d28d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000000f39d28d from memory into f22
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000000000000 from memory into f12
fmin.d f26, f22, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000000)
li x13, 0xc9d03202 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x27752c64 # load x3 with 32 MSBs 0x0000000027752c64
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000027752c64
sw x3, 0(x2) # store x3 (0x27752c64) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000027752c64 from memory into f31
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x8000000000000000 from memory into f2
fmin.d f13, f31, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff0000000000000)
li x10, 0xf621d668 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2646c998 # load x3 with 32 MSBs 0x000000002646c998
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002646c998
sw x3, 0(x2) # store x3 (0x2646c998) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000002646c998 from memory into f14
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x3ff0000000000000 from memory into f19
fmin.d f10, f14, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff0000000000000)
li x9, 0xfe6949ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x30b1c758 # load x3 with 32 MSBs 0x0000000030b1c758
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000030b1c758
sw x3, 0(x2) # store x3 (0x30b1c758) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000030b1c758 from memory into f1
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xbff0000000000000 from memory into f23
fmin.d f9, f1, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff8000000000000)
li x11, 0xc0c72887 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x56c62911 # load x3 with 32 MSBs 0x0000000056c62911
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000056c62911
sw x3, 0(x2) # store x3 (0x56c62911) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000056c62911 from memory into f31
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x3ff8000000000000 from memory into f3
fmin.d f11, f31, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff8000000000000)
li x12, 0xf5ae41eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa207e764 # load x3 with 32 MSBs 0x00000000a207e764
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a207e764
sw x3, 0(x2) # store x3 (0xa207e764) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000a207e764 from memory into f2
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xbff8000000000000 from memory into f25
fmin.d f12, f2, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000000000000000)
li x7, 0x1bf62613 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x25b003fb # load x3 with 32 MSBs 0x0000000025b003fb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000025b003fb
sw x3, 0(x2) # store x3 (0x25b003fb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000025b003fb from memory into f20
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x4000000000000000 from memory into f19
fmin.d f7, f20, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000000000000000)
li x20, 0x747aa2fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x920a4609 # load x3 with 32 MSBs 0x00000000920a4609
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000920a4609
sw x3, 0(x2) # store x3 (0x920a4609) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000920a4609 from memory into f24
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xc000000000000000 from memory into f16
fmin.d f20, f24, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x10000000000000)
li x23, 0x580efbe4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0a966cf # load x3 with 32 MSBs 0x00000000b0a966cf
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b0a966cf
sw x3, 0(x2) # store x3 (0xb0a966cf) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000b0a966cf from memory into f19
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0010000000000000 from memory into f7
fmin.d f23, f19, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8010000000000000)
li x27, 0x7cabd0a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x38835c64 # load x3 with 32 MSBs 0x0000000038835c64
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000038835c64
sw x3, 0(x2) # store x3 (0x38835c64) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000038835c64 from memory into f28
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8010000000000000 from memory into f31
fmin.d f27, f28, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fefffffffffffff)
li x30, 0x75ece2ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5788668c # load x3 with 32 MSBs 0x000000005788668c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005788668c
sw x3, 0(x2) # store x3 (0x5788668c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000005788668c from memory into f1
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7fefffffffffffff from memory into f9
fmin.d f30, f1, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffefffffffffffff)
li x2, 0x3a15ed44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e8e94e0 # load x3 with 32 MSBs 0x000000005e8e94e0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005e8e94e0
sw x3, 0(x2) # store x3 (0x5e8e94e0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000005e8e94e0 from memory into f23
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xffefffffffffffff from memory into f22
fmin.d f2, f23, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffff)
li x20, 0xe325004c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x354fa97a # load x3 with 32 MSBs 0x00000000354fa97a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000354fa97a
sw x3, 0(x2) # store x3 (0x354fa97a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000354fa97a from memory into f23
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000fffffffffffff from memory into f8
fmin.d f20, f23, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800fffffffffffff)
li x27, 0xa69fb3b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x70bf9e3e # load x3 with 32 MSBs 0x0000000070bf9e3e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000070bf9e3e
sw x3, 0(x2) # store x3 (0x70bf9e3e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000070bf9e3e from memory into f11
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x800fffffffffffff from memory into f9
fmin.d f27, f11, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000)
li x12, 0x1a75f477 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x231d058e # load x3 with 32 MSBs 0x00000000231d058e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000231d058e
sw x3, 0(x2) # store x3 (0x231d058e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000231d058e from memory into f26
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0008000000000000 from memory into f30
fmin.d f12, f26, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8008000000000000)
li x22, 0x52392455 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x03c9ba72 # load x3 with 32 MSBs 0x0000000003c9ba72
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000003c9ba72
sw x3, 0(x2) # store x3 (0x03c9ba72) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000003c9ba72 from memory into f24
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8008000000000000 from memory into f18
fmin.d f22, f24, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x24, 0x0b564865 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0d685c14 # load x3 with 32 MSBs 0x000000000d685c14
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000d685c14
sw x3, 0(x2) # store x3 (0x0d685c14) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000000d685c14 from memory into f5
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000000000001 from memory into f14
fmin.d f24, f5, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000001)
li x5, 0xfdf9c743 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x125eff9b # load x3 with 32 MSBs 0x00000000125eff9b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000125eff9b
sw x3, 0(x2) # store x3 (0x125eff9b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000125eff9b from memory into f25
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8000000000000001 from memory into f31
fmin.d f5, f25, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000000)
li x14, 0x78b7c634 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2386048d # load x3 with 32 MSBs 0x000000002386048d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002386048d
sw x3, 0(x2) # store x3 (0x2386048d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000002386048d from memory into f23
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7ff0000000000000 from memory into f3
fmin.d f14, f23, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff0000000000000)
li x4, 0xfe301ce8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x81ad3c82 # load x3 with 32 MSBs 0x0000000081ad3c82
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000081ad3c82
sw x3, 0(x2) # store x3 (0x81ad3c82) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000081ad3c82 from memory into f18
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
fmin.d f4, f18, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff8000000000000)
li x10, 0xe0edd8bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdd87dd3e # load x3 with 32 MSBs 0x00000000dd87dd3e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000dd87dd3e
sw x3, 0(x2) # store x3 (0xdd87dd3e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000dd87dd3e from memory into f3
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
fmin.d f10, f3, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffffffff)
li x18, 0xde4da815 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d5c87db # load x3 with 32 MSBs 0x000000004d5c87db
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004d5c87db
sw x3, 0(x2) # store x3 (0x4d5c87db) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000004d5c87db from memory into f31
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7fffffffffffffff from memory into f22
fmin.d f18, f31, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000001)
li x7, 0x16dcc999 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5cde52f # load x3 with 32 MSBs 0x00000000c5cde52f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c5cde52f
sw x3, 0(x2) # store x3 (0xc5cde52f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000c5cde52f from memory into f1
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7ff0000000000001 from memory into f31
fmin.d f7, f1, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff7ffffffffffff)
li x1, 0x70456bc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0220336 # load x3 with 32 MSBs 0x00000000d0220336
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d0220336
sw x3, 0(x2) # store x3 (0xd0220336) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000d0220336 from memory into f18
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7ff7ffffffffffff from memory into f30
fmin.d f1, f18, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x5a392534a57711ad)
li x26, 0x9fba58de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed81568c # load x3 with 32 MSBs 0x00000000ed81568c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ed81568c
sw x3, 0(x2) # store x3 (0xed81568c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000ed81568c from memory into f31
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x5a392534a57711ad from memory into f8
fmin.d f26, f31, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa6e895993737426c)
li x28, 0x6968fe3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x108107bb # load x3 with 32 MSBs 0x00000000108107bb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000108107bb
sw x3, 0(x2) # store x3 (0x108107bb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000108107bb from memory into f27
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xa6e895993737426c from memory into f14
fmin.d f28, f27, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x0)
li x30, 0x13c69cc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000000000000 from memory into f23
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000000000000 from memory into f5
fmin.d f30, f23, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000000)
li x26, 0xba31618e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000000000000 from memory into f4
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x8000000000000000 from memory into f15
fmin.d f26, f4, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff0000000000000)
li x19, 0xe3bf426f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000000000000 from memory into f11
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x3ff0000000000000 from memory into f29
fmin.d f19, f11, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbff0000000000000)
li x14, 0x0fbe3485 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000000000000 from memory into f17
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xbff0000000000000 from memory into f16
fmin.d f14, f17, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x3ff8000000000000)
li x24, 0x8ba060d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000000000000 from memory into f20
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
fmin.d f24, f20, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xbff8000000000000)
li x22, 0xd9344192 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000000000000 from memory into f9
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xbff8000000000000 from memory into f2
fmin.d f22, f9, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x4000000000000000)
li x29, 0x8e13af96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000000000000 from memory into f4
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x4000000000000000 from memory into f6
fmin.d f29, f4, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xc000000000000000)
li x30, 0x26f4edb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000000000000 from memory into f21
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xc000000000000000 from memory into f7
fmin.d f30, f21, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x10000000000000)
li x30, 0x192c4519 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000000000000 from memory into f8
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0010000000000000 from memory into f11
fmin.d f30, f8, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8010000000000000)
li x4, 0x316e499b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000000000000 from memory into f23
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
fmin.d f4, f23, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fefffffffffffff)
li x22, 0x398ff3cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7fefffffffffffff from memory into f19
fmin.d f22, f13, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xffefffffffffffff)
li x1, 0xb9a8f993 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000000000000 from memory into f6
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffefffffffffffff from memory into f14
fmin.d f1, f6, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfffffffffffff)
li x11, 0xbad0d5b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000fffffffffffff from memory into f27
fmin.d f11, f13, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x800fffffffffffff)
li x13, 0xca88b503 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000000000000 from memory into f30
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x800fffffffffffff from memory into f28
fmin.d f13, f30, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000)
li x29, 0xf788f970 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000000000000 from memory into f12
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0008000000000000 from memory into f21
fmin.d f29, f12, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8008000000000000)
li x5, 0x8d366cc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x8008000000000000 from memory into f23
fmin.d f5, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x1)
li x24, 0x714736b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000000000000 from memory into f3
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000000000001 from memory into f12
fmin.d f24, f3, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x8000000000000001)
li x24, 0xfc622823 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000000000000 from memory into f11
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x8000000000000001 from memory into f8
fmin.d f24, f11, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff0000000000000)
li x6, 0xcdbbd04c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7ff0000000000000 from memory into f16
fmin.d f6, f13, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xfff0000000000000)
li x24, 0x048cd7e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000000000000 from memory into f16
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfff0000000000000 from memory into f6
fmin.d f24, f16, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff8000000000000)
li x13, 0x804c721d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000000000000 from memory into f4
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7ff8000000000000 from memory into f12
fmin.d f13, f4, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7fffffffffffffff)
li x29, 0x3da21bc1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000000000000 from memory into f30
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7fffffffffffffff from memory into f5
fmin.d f29, f30, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff0000000000001)
li x27, 0xceca6670 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000000000000 from memory into f5
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
fmin.d f27, f5, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x7ff7ffffffffffff)
li x12, 0x2a3853f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000000000000 from memory into f30
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff7ffffffffffff from memory into f20
fmin.d f12, f30, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0x5a392534a57711ad)
li x29, 0xdfe51321 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000000000000 from memory into f13
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x5a392534a57711ad from memory into f24
fmin.d f29, f13, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x0 fs2 = 0xa6e895993737426c)
li x7, 0xc194e202 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000000000000 from memory into f3
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xa6e895993737426c from memory into f2
fmin.d f7, f3, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x0)
li x31, 0x0c9ad430 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8000000000000000 from memory into f27
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000000000000 from memory into f25
fmin.d f31, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000000)
li x26, 0x9d199646 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x8000000000000000 from memory into f29
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x8000000000000000 from memory into f19
fmin.d f26, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x3ff0000000000000)
li x18, 0xb989999e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x8000000000000000 from memory into f2
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x3ff0000000000000 from memory into f27
fmin.d f18, f2, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xbff0000000000000)
li x9, 0xae5a2645 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x8000000000000000 from memory into f15
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xbff0000000000000 from memory into f23
fmin.d f9, f15, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x3ff8000000000000)
li x28, 0xf61ee9f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x8000000000000000 from memory into f6
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
fmin.d f28, f6, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xbff8000000000000)
li x31, 0x23280bee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x8000000000000000 from memory into f30
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xbff8000000000000 from memory into f8
fmin.d f31, f30, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x4000000000000000)
li x9, 0x94fdbad4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x8000000000000000 from memory into f10
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x4000000000000000 from memory into f25
fmin.d f9, f10, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xc000000000000000)
li x23, 0x6012e92c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x8000000000000000 from memory into f6
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xc000000000000000 from memory into f7
fmin.d f23, f6, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x10000000000000)
li x18, 0x21b695a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x8000000000000000 from memory into f17
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0010000000000000 from memory into f27
fmin.d f18, f17, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8010000000000000)
li x23, 0x132c11c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x8000000000000000 from memory into f11
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x8010000000000000 from memory into f15
fmin.d f23, f11, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7fefffffffffffff)
li x30, 0xc597e206 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x8000000000000000 from memory into f24
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7fefffffffffffff from memory into f10
fmin.d f30, f24, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xffefffffffffffff)
li x15, 0x2c6504ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x8000000000000000 from memory into f25
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xffefffffffffffff from memory into f17
fmin.d f15, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xfffffffffffff)
li x25, 0xf4d4e63d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x8000000000000000 from memory into f29
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000fffffffffffff from memory into f16
fmin.d f25, f29, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x800fffffffffffff)
li x2, 0x09802a65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x8000000000000000 from memory into f19
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x800fffffffffffff from memory into f3
fmin.d f2, f19, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000)
li x4, 0x8bd47f8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x8000000000000000 from memory into f9
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0008000000000000 from memory into f1
fmin.d f4, f9, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8008000000000000)
li x8, 0x2b659b68 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x8000000000000000 from memory into f5
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x8008000000000000 from memory into f28
fmin.d f8, f5, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x1)
li x27, 0xa7db7a3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x8000000000000000 from memory into f20
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000000000001 from memory into f16
fmin.d f27, f20, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x8000000000000001)
li x3, 0x37f8f51e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8000000000000000 from memory into f27
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x8000000000000001 from memory into f9
fmin.d f3, f27, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff0000000000000)
li x12, 0x9b3d3416 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x8000000000000000 from memory into f13
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
fmin.d f12, f13, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xfff0000000000000)
li x12, 0x8bfef110 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x8000000000000000 from memory into f17
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
fmin.d f12, f17, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff8000000000000)
li x6, 0x831241ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x8000000000000000 from memory into f10
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x7ff8000000000000 from memory into f4
fmin.d f6, f10, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7fffffffffffffff)
li x9, 0x12617998 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x8000000000000000 from memory into f14
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x7fffffffffffffff from memory into f4
fmin.d f9, f14, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff0000000000001)
li x2, 0x1e7a7307 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x8000000000000000 from memory into f17
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
fmin.d f2, f17, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x7ff7ffffffffffff)
li x26, 0x695c53a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x8000000000000000 from memory into f29
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
fmin.d f26, f29, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0x5a392534a57711ad)
li x4, 0x1ff43b71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x8000000000000000 from memory into f9
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x5a392534a57711ad from memory into f16
fmin.d f4, f9, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000000 fs2 = 0xa6e895993737426c)
li x30, 0x09c67ab7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x8000000000000000 from memory into f28
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xa6e895993737426c from memory into f13
fmin.d f30, f28, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x0)
li x2, 0xb208f9e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000000000000 from memory into f17
fmin.d f2, f23, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000000)
li x9, 0x60d04fd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x3ff0000000000000 from memory into f25
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x8000000000000000 from memory into f22
fmin.d f9, f25, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x3ff0000000000000)
li x23, 0x5501ee62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x3ff0000000000000 from memory into f30
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x3ff0000000000000 from memory into f15
fmin.d f23, f30, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xbff0000000000000)
li x27, 0xdf6120c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x3ff0000000000000 from memory into f18
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xbff0000000000000 from memory into f28
fmin.d f27, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x3ff8000000000000)
li x17, 0x603f4454 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x3ff0000000000000 from memory into f8
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
fmin.d f17, f8, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xbff8000000000000)
li x5, 0x9b17b63a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x3ff0000000000000 from memory into f8
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
fmin.d f5, f8, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x4000000000000000)
li x20, 0x2f6d6fa1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x3ff0000000000000 from memory into f2
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x4000000000000000 from memory into f21
fmin.d f20, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xc000000000000000)
li x31, 0x39e157d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x3ff0000000000000 from memory into f29
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xc000000000000000 from memory into f28
fmin.d f31, f29, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x10000000000000)
li x18, 0xdfb4fc26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0010000000000000 from memory into f7
fmin.d f18, f23, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8010000000000000)
li x12, 0xac33dd05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x3ff0000000000000 from memory into f18
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x8010000000000000 from memory into f3
fmin.d f12, f18, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7fefffffffffffff)
li x26, 0x2da9868d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x3ff0000000000000 from memory into f25
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7fefffffffffffff from memory into f13
fmin.d f26, f25, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xffefffffffffffff)
li x16, 0xd5c7f576 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x3ff0000000000000 from memory into f9
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xffefffffffffffff from memory into f28
fmin.d f16, f9, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xfffffffffffff)
li x31, 0x9241c641 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x3ff0000000000000 from memory into f20
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000fffffffffffff from memory into f7
fmin.d f31, f20, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x800fffffffffffff)
li x25, 0xc48c987e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x3ff0000000000000 from memory into f12
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x800fffffffffffff from memory into f2
fmin.d f25, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000)
li x31, 0xfbb7e417 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x3ff0000000000000 from memory into f13
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0008000000000000 from memory into f3
fmin.d f31, f13, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8008000000000000)
li x1, 0xd590c097 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x3ff0000000000000 from memory into f7
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x8008000000000000 from memory into f3
fmin.d f1, f7, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x1)
li x4, 0x4d0b4093 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x3ff0000000000000 from memory into f30
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000000000001 from memory into f20
fmin.d f4, f30, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x8000000000000001)
li x8, 0xce1b8936 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x3ff0000000000000 from memory into f29
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x8000000000000001 from memory into f13
fmin.d f8, f29, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff0000000000000)
li x14, 0x55c595af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x3ff0000000000000 from memory into f7
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7ff0000000000000 from memory into f27
fmin.d f14, f7, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xfff0000000000000)
li x13, 0xe30084d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x3ff0000000000000 from memory into f15
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xfff0000000000000 from memory into f14
fmin.d f13, f15, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff8000000000000)
li x8, 0x161fd821 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff8000000000000 from memory into f9
fmin.d f8, f21, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7fffffffffffffff)
li x16, 0xf728fe03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x3ff0000000000000 from memory into f15
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7fffffffffffffff from memory into f24
fmin.d f16, f15, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff0000000000001)
li x12, 0xe1ff6b33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x3ff0000000000000 from memory into f18
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
fmin.d f12, f18, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x2, 0xfca7543d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x3ff0000000000000 from memory into f18
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7ff7ffffffffffff from memory into f17
fmin.d f2, f18, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0x5a392534a57711ad)
li x26, 0x470ee4da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x3ff0000000000000 from memory into f7
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x5a392534a57711ad from memory into f23
fmin.d f26, f7, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff0000000000000 fs2 = 0xa6e895993737426c)
li x10, 0x5fb0f00c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x3ff0000000000000 from memory into f4
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xa6e895993737426c from memory into f14
fmin.d f10, f4, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x0)
li x26, 0x693a893e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xbff0000000000000 from memory into f28
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000000000000 from memory into f11
fmin.d f26, f28, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000000)
li x2, 0x8a6e46dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xbff0000000000000 from memory into f28
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8000000000000000 from memory into f27
fmin.d f2, f28, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x3ff0000000000000)
li x31, 0x1fd211d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xbff0000000000000 from memory into f24
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x3ff0000000000000 from memory into f20
fmin.d f31, f24, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xbff0000000000000)
li x26, 0xe56d561e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xbff0000000000000 from memory into f7
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xbff0000000000000 from memory into f5
fmin.d f26, f7, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x3ff8000000000000)
li x17, 0xc622133d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xbff0000000000000 from memory into f31
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x3ff8000000000000 from memory into f19
fmin.d f17, f31, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xbff8000000000000)
li x13, 0xb692d037 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xbff0000000000000 from memory into f30
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xbff8000000000000 from memory into f22
fmin.d f13, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x4000000000000000)
li x19, 0x6322b46a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xbff0000000000000 from memory into f30
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x4000000000000000 from memory into f21
fmin.d f19, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xc000000000000000)
li x4, 0xb0a78057 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xbff0000000000000 from memory into f10
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xc000000000000000 from memory into f2
fmin.d f4, f10, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x10000000000000)
li x16, 0xe4f38f1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xbff0000000000000 from memory into f13
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
fmin.d f16, f13, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8010000000000000)
li x8, 0x1463ee79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xbff0000000000000 from memory into f26
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x8010000000000000 from memory into f17
fmin.d f8, f26, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7fefffffffffffff)
li x17, 0x3a7eb001 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xbff0000000000000 from memory into f30
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7fefffffffffffff from memory into f22
fmin.d f17, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xffefffffffffffff)
li x29, 0x8dc67958 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xbff0000000000000 from memory into f25
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f4, 0(x2) # load 0xffefffffffffffff from memory into f4
fmin.d f29, f25, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xfffffffffffff)
li x17, 0xf4db3e75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xbff0000000000000 from memory into f9
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000fffffffffffff from memory into f15
fmin.d f17, f9, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x800fffffffffffff)
li x23, 0x9536905c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xbff0000000000000 from memory into f18
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x800fffffffffffff from memory into f12
fmin.d f23, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000)
li x9, 0x07a485e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xbff0000000000000 from memory into f1
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
fmin.d f9, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8008000000000000)
li x19, 0x592e5c5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x8008000000000000 from memory into f2
fmin.d f19, f20, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x1)
li x8, 0x4da112f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xbff0000000000000 from memory into f31
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000000000001 from memory into f17
fmin.d f8, f31, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x8000000000000001)
li x14, 0x84cb4e58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xbff0000000000000 from memory into f22
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
fmin.d f14, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff0000000000000)
li x12, 0x14c649c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xbff0000000000000 from memory into f11
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7ff0000000000000 from memory into f18
fmin.d f12, f11, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xfff0000000000000)
li x28, 0x915b9600 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xbff0000000000000 from memory into f11
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfff0000000000000 from memory into f15
fmin.d f28, f11, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff8000000000000)
li x22, 0x0b6d1ebc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xbff0000000000000 from memory into f12
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x7ff8000000000000 from memory into f4
fmin.d f22, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7fffffffffffffff)
li x26, 0x8e1124d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xbff0000000000000 from memory into f30
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
fmin.d f26, f30, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff0000000000001)
li x6, 0x0b18c301 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xbff0000000000000 from memory into f28
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7ff0000000000001 from memory into f31
fmin.d f6, f28, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x26, 0xe5917166 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xbff0000000000000 from memory into f16
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff7ffffffffffff from memory into f29
fmin.d f26, f16, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0x5a392534a57711ad)
li x21, 0x91162091 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xbff0000000000000 from memory into f12
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x5a392534a57711ad from memory into f23
fmin.d f21, f12, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff0000000000000 fs2 = 0xa6e895993737426c)
li x27, 0x55e6111e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xbff0000000000000 from memory into f23
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xa6e895993737426c from memory into f21
fmin.d f27, f23, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x0)
li x18, 0x5915cd36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000000000000 from memory into f19
fmin.d f18, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000000)
li x11, 0xaf8e0763 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x3ff8000000000000 from memory into f25
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x8000000000000000 from memory into f10
fmin.d f11, f25, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x3ff0000000000000)
li x9, 0x0999d443 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x3ff8000000000000 from memory into f12
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x3ff0000000000000 from memory into f13
fmin.d f9, f12, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xbff0000000000000)
li x19, 0x86515c64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x3ff8000000000000 from memory into f9
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xbff0000000000000 from memory into f6
fmin.d f19, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x3ff8000000000000)
li x5, 0xffb348a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
fmin.d f5, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xbff8000000000000)
li x15, 0x940c599c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x3ff8000000000000 from memory into f9
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
fmin.d f15, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x4000000000000000)
li x18, 0x03b42f91 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x3ff8000000000000 from memory into f10
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x4000000000000000 from memory into f19
fmin.d f18, f10, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xc000000000000000)
li x6, 0x08f67702 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xc000000000000000 from memory into f3
fmin.d f6, f8, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x10000000000000)
li x27, 0x02dbdc86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x3ff8000000000000 from memory into f19
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0010000000000000 from memory into f12
fmin.d f27, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8010000000000000)
li x7, 0x896d8c9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x3ff8000000000000 from memory into f14
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x8010000000000000 from memory into f23
fmin.d f7, f14, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7fefffffffffffff)
li x29, 0x7a591534 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x3ff8000000000000 from memory into f13
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7fefffffffffffff from memory into f9
fmin.d f29, f13, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xffefffffffffffff)
li x16, 0x667dc021 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x3ff8000000000000 from memory into f29
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xffefffffffffffff from memory into f8
fmin.d f16, f29, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xfffffffffffff)
li x3, 0x42a76be5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x3ff8000000000000 from memory into f12
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000fffffffffffff from memory into f14
fmin.d f3, f12, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x800fffffffffffff)
li x27, 0x6c768756 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x3ff8000000000000 from memory into f23
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x800fffffffffffff from memory into f16
fmin.d f27, f23, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000)
li x1, 0x4318ccc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x3ff8000000000000 from memory into f2
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0008000000000000 from memory into f16
fmin.d f1, f2, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8008000000000000)
li x4, 0xfa95fc24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x3ff8000000000000 from memory into f5
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8008000000000000 from memory into f31
fmin.d f4, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x1)
li x9, 0x9f9852e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000000000001 from memory into f4
fmin.d f9, f1, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x8000000000000001)
li x8, 0x9986069c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x3ff8000000000000 from memory into f25
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x8000000000000001 from memory into f21
fmin.d f8, f25, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff0000000000000)
li x19, 0xe08a4ba0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x3ff8000000000000 from memory into f8
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff0000000000000 from memory into f29
fmin.d f19, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xfff0000000000000)
li x22, 0xf5757f5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x3ff8000000000000 from memory into f24
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfff0000000000000 from memory into f13
fmin.d f22, f24, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff8000000000000)
li x31, 0x23ff407a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x3ff8000000000000 from memory into f16
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff8000000000000 from memory into f9
fmin.d f31, f16, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7fffffffffffffff)
li x16, 0x6a7e0ea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x3ff8000000000000 from memory into f10
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
fmin.d f16, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff0000000000001)
li x13, 0xb6edfb24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7ff0000000000001 from memory into f24
fmin.d f13, f28, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x7ff7ffffffffffff)
li x21, 0xd6a086f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x3ff8000000000000 from memory into f22
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff7ffffffffffff from memory into f9
fmin.d f21, f22, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0x5a392534a57711ad)
li x6, 0x33cd8ee7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x3ff8000000000000 from memory into f20
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x5a392534a57711ad from memory into f18
fmin.d f6, f20, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x3ff8000000000000 fs2 = 0xa6e895993737426c)
li x21, 0x34af15c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x3ff8000000000000 from memory into f6
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xa6e895993737426c from memory into f3
fmin.d f21, f6, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x0)
li x14, 0xe96d1edb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0xbff8000000000000 from memory into f4
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000000000000 from memory into f26
fmin.d f14, f4, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000000)
li x29, 0x5a1a937d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xbff8000000000000 from memory into f25
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x8000000000000000 from memory into f30
fmin.d f29, f25, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x3ff0000000000000)
li x4, 0x94ef033b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x3ff0000000000000 from memory into f11
fmin.d f4, f24, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xbff0000000000000)
li x31, 0xee83b586 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xbff8000000000000 from memory into f16
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xbff0000000000000 from memory into f13
fmin.d f31, f16, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x3ff8000000000000)
li x22, 0xadd82e80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xbff8000000000000 from memory into f15
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x3ff8000000000000 from memory into f6
fmin.d f22, f15, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xbff8000000000000)
li x9, 0x0a65af47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xbff8000000000000 from memory into f2
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xbff8000000000000 from memory into f19
fmin.d f9, f2, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x4000000000000000)
li x2, 0xe9edab63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xbff8000000000000 from memory into f29
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x4000000000000000 from memory into f4
fmin.d f2, f29, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xc000000000000000)
li x22, 0xe3bd6ae7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xbff8000000000000 from memory into f31
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xc000000000000000 from memory into f27
fmin.d f22, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x10000000000000)
li x28, 0x8d466401 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0010000000000000 from memory into f9
fmin.d f28, f10, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8010000000000000)
li x8, 0x354f0298 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xbff8000000000000 from memory into f30
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x8010000000000000 from memory into f9
fmin.d f8, f30, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7fefffffffffffff)
li x24, 0x63679ed1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xbff8000000000000 from memory into f17
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7fefffffffffffff from memory into f12
fmin.d f24, f17, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xffefffffffffffff)
li x14, 0x14f8ee7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xbff8000000000000 from memory into f17
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xffefffffffffffff from memory into f31
fmin.d f14, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xfffffffffffff)
li x31, 0x914c2c87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xbff8000000000000 from memory into f5
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000fffffffffffff from memory into f23
fmin.d f31, f5, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x800fffffffffffff)
li x23, 0x436a1205 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xbff8000000000000 from memory into f13
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x800fffffffffffff from memory into f10
fmin.d f23, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000)
li x5, 0x2d82795f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xbff8000000000000 from memory into f12
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0008000000000000 from memory into f15
fmin.d f5, f12, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8008000000000000)
li x20, 0x83130d27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x8008000000000000 from memory into f9
fmin.d f20, f10, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x1)
li x28, 0x64e0fd5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xbff8000000000000 from memory into f22
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000000000001 from memory into f5
fmin.d f28, f22, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x8000000000000001)
li x19, 0x40483d46 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xbff8000000000000 from memory into f17
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x8000000000000001 from memory into f25
fmin.d f19, f17, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff0000000000000)
li x28, 0x0152f5f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xbff8000000000000 from memory into f1
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7ff0000000000000 from memory into f12
fmin.d f28, f1, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xfff0000000000000)
li x19, 0x085906cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xbff8000000000000 from memory into f26
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfff0000000000000 from memory into f3
fmin.d f19, f26, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff8000000000000)
li x18, 0xbafd33cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xbff8000000000000 from memory into f9
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7ff8000000000000 from memory into f23
fmin.d f18, f9, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7fffffffffffffff)
li x30, 0xf2325ecb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7fffffffffffffff from memory into f6
fmin.d f30, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff0000000000001)
li x31, 0x601e6fab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xbff8000000000000 from memory into f17
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x7ff0000000000001 from memory into f8
fmin.d f31, f17, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x7ff7ffffffffffff)
li x26, 0x1204d9d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xbff8000000000000 from memory into f8
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff7ffffffffffff from memory into f29
fmin.d f26, f8, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0x5a392534a57711ad)
li x30, 0x426cbc85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xbff8000000000000 from memory into f16
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x5a392534a57711ad from memory into f29
fmin.d f30, f16, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xbff8000000000000 fs2 = 0xa6e895993737426c)
li x2, 0x1208db92 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xbff8000000000000 from memory into f13
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xa6e895993737426c from memory into f20
fmin.d f2, f13, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x0)
li x2, 0xb9b02f6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x4000000000000000 from memory into f18
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000000000000 from memory into f25
fmin.d f2, f18, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000000)
li x1, 0x8b697977 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x4000000000000000 from memory into f10
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8000000000000000 from memory into f18
fmin.d f1, f10, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x3ff0000000000000)
li x10, 0x7e143df9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x4000000000000000 from memory into f18
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x3ff0000000000000 from memory into f27
fmin.d f10, f18, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xbff0000000000000)
li x28, 0x76075226 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x4000000000000000 from memory into f22
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xbff0000000000000 from memory into f27
fmin.d f28, f22, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x3ff8000000000000)
li x15, 0x2f7487e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x4000000000000000 from memory into f24
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x3ff8000000000000 from memory into f10
fmin.d f15, f24, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xbff8000000000000)
li x29, 0xc7793e2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x4000000000000000 from memory into f7
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xbff8000000000000 from memory into f25
fmin.d f29, f7, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x4000000000000000)
li x22, 0xf1a52769 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x4000000000000000 from memory into f9
fmin.d f22, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xc000000000000000)
li x5, 0xeebc49b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x4000000000000000 from memory into f14
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xc000000000000000 from memory into f20
fmin.d f5, f14, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x10000000000000)
li x7, 0xf96c65de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x4000000000000000 from memory into f27
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0010000000000000 from memory into f24
fmin.d f7, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8010000000000000)
li x3, 0xcde9916b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x4000000000000000 from memory into f26
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x8010000000000000 from memory into f6
fmin.d f3, f26, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7fefffffffffffff)
li x1, 0x392a4f76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x4000000000000000 from memory into f18
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7fefffffffffffff from memory into f22
fmin.d f1, f18, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xffefffffffffffff)
li x30, 0x9a748e9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x4000000000000000 from memory into f24
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f4, 0(x2) # load 0xffefffffffffffff from memory into f4
fmin.d f30, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xfffffffffffff)
li x30, 0x1c1e2874 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x4000000000000000 from memory into f3
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000fffffffffffff from memory into f28
fmin.d f30, f3, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x800fffffffffffff)
li x13, 0xa4c82ebb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x4000000000000000 from memory into f12
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x800fffffffffffff from memory into f21
fmin.d f13, f12, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000)
li x11, 0xf0e9e952 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x4000000000000000 from memory into f3
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0008000000000000 from memory into f1
fmin.d f11, f3, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8008000000000000)
li x2, 0x2b7201c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x4000000000000000 from memory into f25
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8008000000000000 from memory into f18
fmin.d f2, f25, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x1)
li x29, 0x6abcb415 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x4000000000000000 from memory into f30
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000000000001 from memory into f19
fmin.d f29, f30, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x8000000000000001)
li x31, 0x9d8ba533 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x4000000000000000 from memory into f18
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x8000000000000001 from memory into f11
fmin.d f31, f18, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff0000000000000)
li x4, 0x019af509 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x4000000000000000 from memory into f24
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7ff0000000000000 from memory into f22
fmin.d f4, f24, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xfff0000000000000)
li x30, 0xf17d3087 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x4000000000000000 from memory into f21
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xfff0000000000000 from memory into f11
fmin.d f30, f21, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff8000000000000)
li x5, 0xf3271ca1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x4000000000000000 from memory into f28
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7ff8000000000000 from memory into f27
fmin.d f5, f28, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7fffffffffffffff)
li x12, 0x1959ecb4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x4000000000000000 from memory into f8
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7fffffffffffffff from memory into f13
fmin.d f12, f8, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff0000000000001)
li x31, 0x302d829a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x4000000000000000 from memory into f11
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x7ff0000000000001 from memory into f4
fmin.d f31, f11, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x7ff7ffffffffffff)
li x3, 0x00b753e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x4000000000000000 from memory into f28
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
fmin.d f3, f28, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0x5a392534a57711ad)
li x20, 0xef69c91f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x4000000000000000 from memory into f23
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x5a392534a57711ad from memory into f9
fmin.d f20, f23, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x4000000000000000 fs2 = 0xa6e895993737426c)
li x18, 0x8456fccb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x4000000000000000 from memory into f23
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xa6e895993737426c from memory into f28
fmin.d f18, f23, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x0)
li x13, 0xda5bd3af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xc000000000000000 from memory into f31
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000000000000 from memory into f29
fmin.d f13, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000000)
li x13, 0x22a1b326 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xc000000000000000 from memory into f29
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x8000000000000000 from memory into f10
fmin.d f13, f29, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x3ff0000000000000)
li x17, 0xa3d18909 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xc000000000000000 from memory into f9
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x3ff0000000000000 from memory into f2
fmin.d f17, f9, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xbff0000000000000)
li x19, 0xb0128952 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xc000000000000000 from memory into f31
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xbff0000000000000 from memory into f8
fmin.d f19, f31, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x3ff8000000000000)
li x4, 0x16388312 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xc000000000000000 from memory into f18
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x3ff8000000000000 from memory into f29
fmin.d f4, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xbff8000000000000)
li x7, 0xe93b3fce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xc000000000000000 from memory into f26
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
fmin.d f7, f26, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x4000000000000000)
li x6, 0x1df9332d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xc000000000000000 from memory into f11
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x4000000000000000 from memory into f25
fmin.d f6, f11, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xc000000000000000)
li x12, 0x9fac2407 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xc000000000000000 from memory into f10
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xc000000000000000 from memory into f1
fmin.d f12, f10, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x10000000000000)
li x17, 0xd3cf7380 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0010000000000000 from memory into f7
fmin.d f17, f13, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8010000000000000)
li x8, 0x30bcd3fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xc000000000000000 from memory into f21
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8010000000000000 from memory into f31
fmin.d f8, f21, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7fefffffffffffff)
li x20, 0x5156170c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xc000000000000000 from memory into f1
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7fefffffffffffff from memory into f3
fmin.d f20, f1, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xffefffffffffffff)
li x6, 0x61892a47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
fmin.d f6, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xfffffffffffff)
li x18, 0x549ed0c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xc000000000000000 from memory into f26
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000fffffffffffff from memory into f16
fmin.d f18, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x800fffffffffffff)
li x25, 0x03c252f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x800fffffffffffff from memory into f29
fmin.d f25, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000)
li x6, 0xf74816cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xc000000000000000 from memory into f21
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0008000000000000 from memory into f19
fmin.d f6, f21, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8008000000000000)
li x11, 0xb91a5107 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xc000000000000000 from memory into f27
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x8008000000000000 from memory into f25
fmin.d f11, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x1)
li x31, 0xe86fb71d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xc000000000000000 from memory into f17
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000000000001 from memory into f14
fmin.d f31, f17, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x8000000000000001)
li x31, 0x232091d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xc000000000000000 from memory into f11
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x8000000000000001 from memory into f23
fmin.d f31, f11, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff0000000000000)
li x24, 0xb398e102 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xc000000000000000 from memory into f14
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7ff0000000000000 from memory into f27
fmin.d f24, f14, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xfff0000000000000)
li x25, 0x824be619 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xc000000000000000 from memory into f8
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfff0000000000000 from memory into f3
fmin.d f25, f8, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff8000000000000)
li x24, 0x45c26e10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xc000000000000000 from memory into f21
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7ff8000000000000 from memory into f1
fmin.d f24, f21, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7fffffffffffffff)
li x1, 0xa540f2d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xc000000000000000 from memory into f19
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7fffffffffffffff from memory into f10
fmin.d f1, f19, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff0000000000001)
li x7, 0xaa4ff610 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xc000000000000000 from memory into f13
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
fmin.d f7, f13, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x7ff7ffffffffffff)
li x29, 0x56969882 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xc000000000000000 from memory into f31
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
fmin.d f29, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0x5a392534a57711ad)
li x1, 0xdb18a1c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xc000000000000000 from memory into f20
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x5a392534a57711ad from memory into f8
fmin.d f1, f20, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xc000000000000000 fs2 = 0xa6e895993737426c)
li x28, 0x5ed5a0ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xc000000000000000 from memory into f9
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xa6e895993737426c from memory into f10
fmin.d f28, f9, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x0)
li x8, 0x1a1d11d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0010000000000000 from memory into f21
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000000000000 from memory into f3
fmin.d f8, f21, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000000)
li x22, 0x6b089873 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0010000000000000 from memory into f9
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x8000000000000000 from memory into f3
fmin.d f22, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x3ff0000000000000)
li x29, 0x977a0006 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0010000000000000 from memory into f20
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x3ff0000000000000 from memory into f13
fmin.d f29, f20, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xbff0000000000000)
li x18, 0xe8ccff37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0010000000000000 from memory into f3
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xbff0000000000000 from memory into f17
fmin.d f18, f3, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x3ff8000000000000)
li x27, 0xe3c67e9b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0010000000000000 from memory into f6
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x3ff8000000000000 from memory into f20
fmin.d f27, f6, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xbff8000000000000)
li x5, 0x21b39abb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0010000000000000 from memory into f14
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xbff8000000000000 from memory into f28
fmin.d f5, f14, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x4000000000000000)
li x13, 0x2ef2691a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0010000000000000 from memory into f5
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x4000000000000000 from memory into f20
fmin.d f13, f5, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xc000000000000000)
li x11, 0x620f20eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0010000000000000 from memory into f5
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xc000000000000000 from memory into f20
fmin.d f11, f5, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x10000000000000)
li x4, 0x58c83c7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0010000000000000 from memory into f21
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0010000000000000 from memory into f8
fmin.d f4, f21, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8010000000000000)
li x9, 0xa56c3971 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0010000000000000 from memory into f28
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x8010000000000000 from memory into f4
fmin.d f9, f28, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7fefffffffffffff)
li x24, 0x417f8859 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0010000000000000 from memory into f15
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
fmin.d f24, f15, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xffefffffffffffff)
li x13, 0x6d958131 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0010000000000000 from memory into f5
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffefffffffffffff from memory into f29
fmin.d f13, f5, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xfffffffffffff)
li x12, 0x8a31a311 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0010000000000000 from memory into f6
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000fffffffffffff from memory into f8
fmin.d f12, f6, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x800fffffffffffff)
li x23, 0x0ff20e93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0010000000000000 from memory into f11
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x800fffffffffffff from memory into f10
fmin.d f23, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000)
li x19, 0xd9d93b79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0010000000000000 from memory into f4
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0008000000000000 from memory into f28
fmin.d f19, f4, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8008000000000000)
li x8, 0xe701c837 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0010000000000000 from memory into f29
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x8008000000000000 from memory into f23
fmin.d f8, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x1)
li x30, 0x21b3c247 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0010000000000000 from memory into f31
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000000000001 from memory into f28
fmin.d f30, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x8000000000000001)
li x8, 0xec27874b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0010000000000000 from memory into f12
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x8000000000000001 from memory into f28
fmin.d f8, f12, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff0000000000000)
li x17, 0xa9ac3bfa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0010000000000000 from memory into f29
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7ff0000000000000 from memory into f19
fmin.d f17, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xfff0000000000000)
li x1, 0x9bfe5145 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0010000000000000 from memory into f10
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfff0000000000000 from memory into f13
fmin.d f1, f10, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff8000000000000)
li x4, 0xabd6087e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0010000000000000 from memory into f31
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7ff8000000000000 from memory into f30
fmin.d f4, f31, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7fffffffffffffff)
li x2, 0x41912c0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0010000000000000 from memory into f27
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7fffffffffffffff from memory into f19
fmin.d f2, f27, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff0000000000001)
li x8, 0xbfe6fdb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0010000000000000 from memory into f25
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7ff0000000000001 from memory into f28
fmin.d f8, f25, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x7ff7ffffffffffff)
li x18, 0x2967671a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0010000000000000 from memory into f8
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x7ff7ffffffffffff from memory into f4
fmin.d f18, f8, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0x5a392534a57711ad)
li x26, 0xe597b786 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0010000000000000 from memory into f5
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x5a392534a57711ad from memory into f10
fmin.d f26, f5, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x10000000000000 fs2 = 0xa6e895993737426c)
li x6, 0x36a71be6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xa6e895993737426c from memory into f23
fmin.d f6, f18, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x0)
li x9, 0x3eb571f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x8010000000000000 from memory into f12
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000000000000 from memory into f4
fmin.d f9, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000000)
li x2, 0xed27252a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x8010000000000000 from memory into f11
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x8000000000000000 from memory into f20
fmin.d f2, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x3ff0000000000000)
li x11, 0x89d7041c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x3ff0000000000000 from memory into f10
fmin.d f11, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xbff0000000000000)
li x30, 0xf0fcb8dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8010000000000000 from memory into f31
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xbff0000000000000 from memory into f11
fmin.d f30, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x3ff8000000000000)
li x28, 0xc854f059 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x8010000000000000 from memory into f9
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x3ff8000000000000 from memory into f27
fmin.d f28, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xbff8000000000000)
li x4, 0x01647836 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x8010000000000000 from memory into f28
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
fmin.d f4, f28, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x4000000000000000)
li x9, 0xed3c4390 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x8010000000000000 from memory into f4
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x4000000000000000 from memory into f6
fmin.d f9, f4, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xc000000000000000)
li x8, 0xc603927f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x8010000000000000 from memory into f15
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xc000000000000000 from memory into f14
fmin.d f8, f15, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x10000000000000)
li x29, 0x2792103d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8010000000000000 from memory into f31
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0010000000000000 from memory into f10
fmin.d f29, f31, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8010000000000000)
li x28, 0xde736c51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x8010000000000000 from memory into f23
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x8010000000000000 from memory into f9
fmin.d f28, f23, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7fefffffffffffff)
li x18, 0x7cadc9e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7fefffffffffffff from memory into f5
fmin.d f18, f21, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xffefffffffffffff)
li x14, 0xf8c5960f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8010000000000000 from memory into f27
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xffefffffffffffff from memory into f26
fmin.d f14, f27, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xfffffffffffff)
li x28, 0x66aace51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x8010000000000000 from memory into f23
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000fffffffffffff from memory into f3
fmin.d f28, f23, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x800fffffffffffff)
li x23, 0xb77a7d53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x800fffffffffffff from memory into f10
fmin.d f23, f18, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000)
li x12, 0xdf84154c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x8010000000000000 from memory into f8
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0008000000000000 from memory into f14
fmin.d f12, f8, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8008000000000000)
li x18, 0xf7faa43f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x8010000000000000 from memory into f16
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
fmin.d f18, f16, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x1)
li x28, 0xcad4efd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000000000001 from memory into f1
fmin.d f28, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x8000000000000001)
li x15, 0x3343eb50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x8010000000000000 from memory into f8
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x8000000000000001 from memory into f4
fmin.d f15, f8, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff0000000000000)
li x5, 0xf62c1df9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8010000000000000 from memory into f31
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7ff0000000000000 from memory into f13
fmin.d f5, f31, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xfff0000000000000)
li x30, 0x5a0df124 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
fmin.d f30, f18, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff8000000000000)
li x11, 0x006fef50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x8010000000000000 from memory into f22
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff8000000000000 from memory into f29
fmin.d f11, f22, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7fffffffffffffff)
li x16, 0x47f65fa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8010000000000000 from memory into f27
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7fffffffffffffff from memory into f10
fmin.d f16, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff0000000000001)
li x17, 0x3877cdef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x8010000000000000 from memory into f28
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff0000000000001 from memory into f29
fmin.d f17, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x7ff7ffffffffffff)
li x18, 0x592c40f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8010000000000000 from memory into f27
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x7ff7ffffffffffff from memory into f4
fmin.d f18, f27, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0x5a392534a57711ad)
li x25, 0xdd7fb575 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x8010000000000000 from memory into f6
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x5a392534a57711ad from memory into f13
fmin.d f25, f6, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8010000000000000 fs2 = 0xa6e895993737426c)
li x17, 0x8b7d223f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x8010000000000000 from memory into f15
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xa6e895993737426c from memory into f3
fmin.d f17, f15, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x0)
li x10, 0xf1e274c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7fefffffffffffff from memory into f30
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000000000000 from memory into f17
fmin.d f10, f30, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000000)
li x9, 0xf60cd5a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7fefffffffffffff from memory into f23
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x8000000000000000 from memory into f5
fmin.d f9, f23, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x3ff0000000000000)
li x25, 0xfa13241f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7fefffffffffffff from memory into f1
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x3ff0000000000000 from memory into f2
fmin.d f25, f1, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xbff0000000000000)
li x28, 0x3db9cab8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7fefffffffffffff from memory into f30
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xbff0000000000000 from memory into f29
fmin.d f28, f30, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x3ff8000000000000)
li x27, 0xf1ec8f32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7fefffffffffffff from memory into f2
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x3ff8000000000000 from memory into f23
fmin.d f27, f2, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xbff8000000000000)
li x29, 0x4208bf40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7fefffffffffffff from memory into f2
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xbff8000000000000 from memory into f22
fmin.d f29, f2, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x4000000000000000)
li x11, 0x6a2fd0d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7fefffffffffffff from memory into f30
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x4000000000000000 from memory into f18
fmin.d f11, f30, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xc000000000000000)
li x17, 0xca7f804a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7fefffffffffffff from memory into f3
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xc000000000000000 from memory into f2
fmin.d f17, f3, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x10000000000000)
li x17, 0x2691d7e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7fefffffffffffff from memory into f27
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0010000000000000 from memory into f11
fmin.d f17, f27, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8010000000000000)
li x27, 0xf0370b03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7fefffffffffffff from memory into f6
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x8010000000000000 from memory into f30
fmin.d f27, f6, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7fefffffffffffff)
li x24, 0xc562667a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7fefffffffffffff from memory into f21
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7fefffffffffffff from memory into f26
fmin.d f24, f21, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xffefffffffffffff)
li x12, 0x096c6f57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7fefffffffffffff from memory into f18
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xffefffffffffffff from memory into f1
fmin.d f12, f18, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xfffffffffffff)
li x15, 0xbc92a46d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7fefffffffffffff from memory into f10
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000fffffffffffff from memory into f8
fmin.d f15, f10, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x800fffffffffffff)
li x28, 0xfd23c859 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7fefffffffffffff from memory into f26
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x800fffffffffffff from memory into f16
fmin.d f28, f26, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000)
li x3, 0x25997a64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7fefffffffffffff from memory into f31
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0008000000000000 from memory into f1
fmin.d f3, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8008000000000000)
li x13, 0x31b9eed3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
fmin.d f13, f8, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x1)
li x14, 0xc4bf6008 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000000000001 from memory into f7
fmin.d f14, f28, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x8000000000000001)
li x17, 0xa3fab34b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7fefffffffffffff from memory into f21
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x8000000000000001 from memory into f7
fmin.d f17, f21, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff0000000000000)
li x19, 0x51f85526 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7fefffffffffffff from memory into f2
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7ff0000000000000 from memory into f28
fmin.d f19, f2, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xfff0000000000000)
li x16, 0xdb2c13a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7fefffffffffffff from memory into f26
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfff0000000000000 from memory into f24
fmin.d f16, f26, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff8000000000000)
li x1, 0x8c481f25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7fefffffffffffff from memory into f7
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7ff8000000000000 from memory into f21
fmin.d f1, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7fffffffffffffff)
li x30, 0xa370628e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7fefffffffffffff from memory into f12
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7fffffffffffffff from memory into f15
fmin.d f30, f12, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff0000000000001)
li x7, 0x566f3ed7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7fefffffffffffff from memory into f6
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7ff0000000000001 from memory into f18
fmin.d f7, f6, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x7ff7ffffffffffff)
li x17, 0x60bcfcf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7fefffffffffffff from memory into f26
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7ff7ffffffffffff from memory into f18
fmin.d f17, f26, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0x5a392534a57711ad)
li x21, 0x638e30b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7fefffffffffffff from memory into f1
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x5a392534a57711ad from memory into f27
fmin.d f21, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fefffffffffffff fs2 = 0xa6e895993737426c)
li x14, 0xc8330f01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7fefffffffffffff from memory into f23
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xa6e895993737426c from memory into f20
fmin.d f14, f23, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x0)
li x13, 0xbffa8e80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f4, 0(x2) # load 0xffefffffffffffff from memory into f4
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000000000000 from memory into f16
fmin.d f13, f4, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000000)
li x22, 0x98f7b308 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffefffffffffffff from memory into f21
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8000000000000000 from memory into f27
fmin.d f22, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x3ff0000000000000)
li x10, 0x8143db37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xffefffffffffffff from memory into f5
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x3ff0000000000000 from memory into f7
fmin.d f10, f5, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xbff0000000000000)
li x18, 0x5164d71b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xffefffffffffffff from memory into f6
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xbff0000000000000 from memory into f10
fmin.d f18, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x3ff8000000000000)
li x3, 0xc813e7e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xffefffffffffffff from memory into f6
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x3ff8000000000000 from memory into f15
fmin.d f3, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xbff8000000000000)
li x31, 0x44987031 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffefffffffffffff from memory into f27
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xbff8000000000000 from memory into f9
fmin.d f31, f27, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x4000000000000000)
li x24, 0x709a2b2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x4000000000000000 from memory into f13
fmin.d f24, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xc000000000000000)
li x15, 0xb0bb45d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xffefffffffffffff from memory into f3
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xc000000000000000 from memory into f29
fmin.d f15, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x10000000000000)
li x15, 0x73fd42b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0010000000000000 from memory into f19
fmin.d f15, f7, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8010000000000000)
li x1, 0xcd796c98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xffefffffffffffff from memory into f9
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8010000000000000 from memory into f31
fmin.d f1, f9, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7fefffffffffffff)
li x11, 0xa11b626e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xffefffffffffffff from memory into f2
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7fefffffffffffff from memory into f9
fmin.d f11, f2, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xffefffffffffffff)
li x14, 0x0895733c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xffefffffffffffff from memory into f24
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffefffffffffffff from memory into f21
fmin.d f14, f24, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xfffffffffffff)
li x29, 0xab2b1730 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000fffffffffffff from memory into f9
fmin.d f29, f18, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x800fffffffffffff)
li x28, 0xcdbef094 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xffefffffffffffff from memory into f24
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x800fffffffffffff from memory into f3
fmin.d f28, f24, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000)
li x15, 0x5075c53e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xffefffffffffffff from memory into f23
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0008000000000000 from memory into f2
fmin.d f15, f23, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8008000000000000)
li x29, 0x505cd077 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffefffffffffffff from memory into f14
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x8008000000000000 from memory into f8
fmin.d f29, f14, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x1)
li x2, 0x08b3af69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xffefffffffffffff from memory into f15
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000000000001 from memory into f4
fmin.d f2, f15, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x8000000000000001)
li x12, 0x54297c85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffefffffffffffff from memory into f21
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x8000000000000001 from memory into f28
fmin.d f12, f21, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff0000000000000)
li x17, 0x2ae59305 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xffefffffffffffff from memory into f13
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7ff0000000000000 from memory into f27
fmin.d f17, f13, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xfff0000000000000)
li x7, 0x1093da38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xffefffffffffffff from memory into f9
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfff0000000000000 from memory into f15
fmin.d f7, f9, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff8000000000000)
li x8, 0xa1afead3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xffefffffffffffff from memory into f20
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7ff8000000000000 from memory into f19
fmin.d f8, f20, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7fffffffffffffff)
li x3, 0x7f1dce94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xffefffffffffffff from memory into f8
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7fffffffffffffff from memory into f16
fmin.d f3, f8, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff0000000000001)
li x26, 0x5fe8329a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffefffffffffffff from memory into f29
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7ff0000000000001 from memory into f28
fmin.d f26, f29, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x7ff7ffffffffffff)
li x27, 0xd30c2f01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xffefffffffffffff from memory into f8
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7ff7ffffffffffff from memory into f19
fmin.d f27, f8, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0x5a392534a57711ad)
li x17, 0x0d8c001f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xffefffffffffffff from memory into f12
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x5a392534a57711ad from memory into f22
fmin.d f17, f12, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xffefffffffffffff fs2 = 0xa6e895993737426c)
li x2, 0x2f3f3857 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffefffffffffffff from memory into f11
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xa6e895993737426c from memory into f30
fmin.d f2, f11, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x0)
li x4, 0x8bf5b8a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000fffffffffffff from memory into f30
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000000000000 from memory into f25
fmin.d f4, f30, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000000)
li x16, 0x1e254400 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000fffffffffffff from memory into f30
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x8000000000000000 from memory into f12
fmin.d f16, f30, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x3ff0000000000000)
li x2, 0x90c271a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000fffffffffffff from memory into f17
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x3ff0000000000000 from memory into f3
fmin.d f2, f17, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xbff0000000000000)
li x22, 0x0a36d245 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000fffffffffffff from memory into f16
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xbff0000000000000 from memory into f21
fmin.d f22, f16, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x3ff8000000000000)
li x20, 0x095e1175 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000fffffffffffff from memory into f28
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x3ff8000000000000 from memory into f7
fmin.d f20, f28, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xbff8000000000000)
li x16, 0xae3f683c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xbff8000000000000 from memory into f31
fmin.d f16, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x4000000000000000)
li x19, 0xed2138c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000fffffffffffff from memory into f7
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
fmin.d f19, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xc000000000000000)
li x31, 0x915315f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000fffffffffffff from memory into f19
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xc000000000000000 from memory into f23
fmin.d f31, f19, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x10000000000000)
li x9, 0x6de20a31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0010000000000000 from memory into f5
fmin.d f9, f20, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8010000000000000)
li x24, 0x1fe9df04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000fffffffffffff from memory into f7
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x8010000000000000 from memory into f4
fmin.d f24, f7, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7fefffffffffffff)
li x8, 0x1a1d2900 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000fffffffffffff from memory into f7
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7fefffffffffffff from memory into f6
fmin.d f8, f7, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xffefffffffffffff)
li x30, 0x92c102de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffefffffffffffff from memory into f21
fmin.d f30, f20, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xfffffffffffff)
li x23, 0x09c242bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000fffffffffffff from memory into f21
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000fffffffffffff from memory into f13
fmin.d f23, f21, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x800fffffffffffff)
li x23, 0xefa1c359 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000fffffffffffff from memory into f7
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x800fffffffffffff from memory into f13
fmin.d f23, f7, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000)
li x31, 0x57cdd888 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0008000000000000 from memory into f10
fmin.d f31, f20, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8008000000000000)
li x24, 0x7fce9aee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000fffffffffffff from memory into f31
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x8008000000000000 from memory into f23
fmin.d f24, f31, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x1)
li x10, 0x51c76a74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000fffffffffffff from memory into f11
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000000000001 from memory into f6
fmin.d f10, f11, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x8000000000000001)
li x21, 0x5f897d93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000fffffffffffff from memory into f14
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x8000000000000001 from memory into f9
fmin.d f21, f14, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff0000000000000)
li x4, 0xbb4893f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000fffffffffffff from memory into f23
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7ff0000000000000 from memory into f16
fmin.d f4, f23, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xfff0000000000000)
li x28, 0xb20752ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000fffffffffffff from memory into f8
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfff0000000000000 from memory into f12
fmin.d f28, f8, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff8000000000000)
li x12, 0xfdf87284 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000fffffffffffff from memory into f5
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7ff8000000000000 from memory into f24
fmin.d f12, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7fffffffffffffff)
li x22, 0x82a93574 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000fffffffffffff from memory into f21
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7fffffffffffffff from memory into f17
fmin.d f22, f21, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff0000000000001)
li x21, 0x689a0e7c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000fffffffffffff from memory into f6
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff0000000000001 from memory into f29
fmin.d f21, f6, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x7ff7ffffffffffff)
li x30, 0x7dab8490 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000fffffffffffff from memory into f16
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7ff7ffffffffffff from memory into f22
fmin.d f30, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0x5a392534a57711ad)
li x4, 0x0fe0ca30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000fffffffffffff from memory into f16
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x5a392534a57711ad from memory into f9
fmin.d f4, f16, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfffffffffffff fs2 = 0xa6e895993737426c)
li x6, 0x45165eb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000fffffffffffff from memory into f15
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xa6e895993737426c from memory into f26
fmin.d f6, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x0)
li x15, 0x50858443 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x800fffffffffffff from memory into f25
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000000000000 from memory into f9
fmin.d f15, f25, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000000)
li x22, 0x2852e48e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x800fffffffffffff from memory into f12
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x8000000000000000 from memory into f9
fmin.d f22, f12, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x3ff0000000000000)
li x11, 0x9456b918 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x800fffffffffffff from memory into f13
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
fmin.d f11, f13, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xbff0000000000000)
li x19, 0x03c6bb15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x800fffffffffffff from memory into f29
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xbff0000000000000 from memory into f3
fmin.d f19, f29, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x3ff8000000000000)
li x26, 0x54fdb5d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x800fffffffffffff from memory into f24
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x3ff8000000000000 from memory into f29
fmin.d f26, f24, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xbff8000000000000)
li x6, 0x3e58a479 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x800fffffffffffff from memory into f12
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xbff8000000000000 from memory into f10
fmin.d f6, f12, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x4000000000000000)
li x29, 0x56cfd598 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x800fffffffffffff from memory into f10
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
fmin.d f29, f10, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xc000000000000000)
li x21, 0x66528516 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x800fffffffffffff from memory into f10
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xc000000000000000 from memory into f5
fmin.d f21, f10, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x10000000000000)
li x11, 0xf9fd1740 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x800fffffffffffff from memory into f25
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0010000000000000 from memory into f2
fmin.d f11, f25, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8010000000000000)
li x2, 0x2d670a96 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x800fffffffffffff from memory into f11
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x8010000000000000 from memory into f20
fmin.d f2, f11, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7fefffffffffffff)
li x12, 0x5ff36a18 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x800fffffffffffff from memory into f22
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
fmin.d f12, f22, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xffefffffffffffff)
li x12, 0xf7e1baed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x800fffffffffffff from memory into f18
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffefffffffffffff from memory into f14
fmin.d f12, f18, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xfffffffffffff)
li x15, 0x3c201d65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x800fffffffffffff from memory into f5
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
fmin.d f15, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x800fffffffffffff)
li x12, 0x48f09cc3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x800fffffffffffff from memory into f4
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x800fffffffffffff from memory into f8
fmin.d f12, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000)
li x2, 0x4bf72d1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x800fffffffffffff from memory into f7
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0008000000000000 from memory into f19
fmin.d f2, f7, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8008000000000000)
li x29, 0xcd01e37c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x800fffffffffffff from memory into f25
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8008000000000000 from memory into f31
fmin.d f29, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x1)
li x31, 0x96442585 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x800fffffffffffff from memory into f7
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
fmin.d f31, f7, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x8000000000000001)
li x10, 0xae9e83c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x800fffffffffffff from memory into f14
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x8000000000000001 from memory into f25
fmin.d f10, f14, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff0000000000000)
li x10, 0x2a0cf873 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x800fffffffffffff from memory into f23
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7ff0000000000000 from memory into f11
fmin.d f10, f23, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xfff0000000000000)
li x6, 0x4c067910 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x800fffffffffffff from memory into f22
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
fmin.d f6, f22, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff8000000000000)
li x7, 0x728cd334 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x800fffffffffffff from memory into f13
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7ff8000000000000 from memory into f24
fmin.d f7, f13, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7fffffffffffffff)
li x10, 0x2ba22376 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x800fffffffffffff from memory into f2
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7fffffffffffffff from memory into f12
fmin.d f10, f2, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff0000000000001)
li x15, 0x2baa1790 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x800fffffffffffff from memory into f11
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
fmin.d f15, f11, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x7ff7ffffffffffff)
li x16, 0x1a646425 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x800fffffffffffff from memory into f27
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff7ffffffffffff from memory into f9
fmin.d f16, f27, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0x5a392534a57711ad)
li x17, 0x6f883b82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x800fffffffffffff from memory into f31
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x5a392534a57711ad from memory into f1
fmin.d f17, f31, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x800fffffffffffff fs2 = 0xa6e895993737426c)
li x8, 0x9e273db2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x800fffffffffffff from memory into f31
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xa6e895993737426c from memory into f12
fmin.d f8, f31, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x0)
li x10, 0xb3c5bb5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0008000000000000 from memory into f7
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000000000000 from memory into f19
fmin.d f10, f7, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000000)
li x31, 0xa7adb6b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0008000000000000 from memory into f14
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x8000000000000000 from memory into f1
fmin.d f31, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x3ff0000000000000)
li x3, 0x82330054 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0008000000000000 from memory into f1
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x3ff0000000000000 from memory into f19
fmin.d f3, f1, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xbff0000000000000)
li x22, 0x68794e0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0008000000000000 from memory into f21
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
fmin.d f22, f21, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x3ff8000000000000)
li x3, 0xc1b2f449 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0008000000000000 from memory into f6
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x3ff8000000000000 from memory into f10
fmin.d f3, f6, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xbff8000000000000)
li x25, 0xd1de3753 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
fmin.d f25, f27, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x4000000000000000)
li x27, 0xbb5a9fb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0008000000000000 from memory into f18
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x4000000000000000 from memory into f12
fmin.d f27, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xc000000000000000)
li x14, 0x36103121 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0008000000000000 from memory into f30
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xc000000000000000 from memory into f20
fmin.d f14, f30, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x10000000000000)
li x5, 0x9b958ce0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0010000000000000 from memory into f25
fmin.d f5, f27, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8010000000000000)
li x2, 0x178cfd07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x8010000000000000 from memory into f22
fmin.d f2, f27, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7fefffffffffffff)
li x4, 0x18c80f5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7fefffffffffffff from memory into f27
fmin.d f4, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xffefffffffffffff)
li x16, 0x4427c7a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0008000000000000 from memory into f4
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xffefffffffffffff from memory into f7
fmin.d f16, f4, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xfffffffffffff)
li x22, 0x601a6794 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
fmin.d f22, f31, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x800fffffffffffff)
li x1, 0xa8664e5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0008000000000000 from memory into f21
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x800fffffffffffff from memory into f20
fmin.d f1, f21, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000)
li x8, 0x4c883748 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0008000000000000 from memory into f27
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0008000000000000 from memory into f14
fmin.d f8, f27, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8008000000000000)
li x5, 0x465d5538 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0008000000000000 from memory into f10
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x8008000000000000 from memory into f7
fmin.d f5, f10, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x1)
li x12, 0xcf3aa757 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0008000000000000 from memory into f25
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000000000001 from memory into f19
fmin.d f12, f25, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x8000000000000001)
li x10, 0x8828358e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0008000000000000 from memory into f26
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x8000000000000001 from memory into f12
fmin.d f10, f26, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff0000000000000)
li x10, 0x88327986 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0008000000000000 from memory into f14
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7ff0000000000000 from memory into f24
fmin.d f10, f14, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xfff0000000000000)
li x19, 0xcc377cd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0008000000000000 from memory into f26
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfff0000000000000 from memory into f10
fmin.d f19, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff8000000000000)
li x1, 0x55aa3e52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0008000000000000 from memory into f2
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7ff8000000000000 from memory into f28
fmin.d f1, f2, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7fffffffffffffff)
li x8, 0xb4a89b0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0008000000000000 from memory into f11
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7fffffffffffffff from memory into f31
fmin.d f8, f11, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff0000000000001)
li x15, 0xba170c4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0008000000000000 from memory into f24
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7ff0000000000001 from memory into f17
fmin.d f15, f24, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x7ff7ffffffffffff)
li x5, 0xb8e06fa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff7ffffffffffff from memory into f9
fmin.d f5, f23, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0x5a392534a57711ad)
li x14, 0xda9b1f51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0008000000000000 from memory into f2
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x5a392534a57711ad from memory into f19
fmin.d f14, f2, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000 fs2 = 0xa6e895993737426c)
li x6, 0xf24a52ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0008000000000000 from memory into f18
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xa6e895993737426c from memory into f3
fmin.d f6, f18, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x0)
li x16, 0x6fd03888 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000000000000 from memory into f6
fmin.d f16, f29, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000000)
li x21, 0x0dc1fc3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x8008000000000000 from memory into f16
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x8000000000000000 from memory into f17
fmin.d f21, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x3ff0000000000000)
li x19, 0x6a87b831 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x8008000000000000 from memory into f28
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x3ff0000000000000 from memory into f23
fmin.d f19, f28, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xbff0000000000000)
li x26, 0xaa213129 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x8008000000000000 from memory into f4
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xbff0000000000000 from memory into f28
fmin.d f26, f4, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x3ff8000000000000)
li x5, 0xfcfbc6b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x8008000000000000 from memory into f2
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
fmin.d f5, f2, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xbff8000000000000)
li x14, 0x2b381981 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8008000000000000 from memory into f31
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xbff8000000000000 from memory into f27
fmin.d f14, f31, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x4000000000000000)
li x16, 0x94712014 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x8008000000000000 from memory into f13
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x4000000000000000 from memory into f1
fmin.d f16, f13, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xc000000000000000)
li x21, 0x1c6538d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x8008000000000000 from memory into f6
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xc000000000000000 from memory into f25
fmin.d f21, f6, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x10000000000000)
li x28, 0xefef358a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x8008000000000000 from memory into f16
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0010000000000000 from memory into f22
fmin.d f28, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8010000000000000)
li x9, 0xf4bf7aaa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x8008000000000000 from memory into f25
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
fmin.d f9, f25, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7fefffffffffffff)
li x15, 0x2543a897 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x8008000000000000 from memory into f30
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
fmin.d f15, f30, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xffefffffffffffff)
li x14, 0x5344b1bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x8008000000000000 from memory into f12
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xffefffffffffffff from memory into f25
fmin.d f14, f12, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xfffffffffffff)
li x17, 0x0f21d9be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x8008000000000000 from memory into f30
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000fffffffffffff from memory into f3
fmin.d f17, f30, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x800fffffffffffff)
li x25, 0x76b4b159 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x8008000000000000 from memory into f22
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x800fffffffffffff from memory into f8
fmin.d f25, f22, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000)
li x27, 0x1a303de0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x8008000000000000 from memory into f26
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0008000000000000 from memory into f10
fmin.d f27, f26, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8008000000000000)
li x28, 0x3329b998 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x8008000000000000 from memory into f8
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x8008000000000000 from memory into f6
fmin.d f28, f8, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x1)
li x24, 0x8edbb226 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x8008000000000000 from memory into f16
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000000000001 from memory into f6
fmin.d f24, f16, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x8000000000000001)
li x28, 0x4e0e9c25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x8008000000000000 from memory into f4
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
fmin.d f28, f4, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff0000000000000)
li x19, 0x523600b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x8008000000000000 from memory into f2
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
fmin.d f19, f2, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xfff0000000000000)
li x23, 0x407a34dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x8008000000000000 from memory into f28
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfff0000000000000 from memory into f29
fmin.d f23, f28, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff8000000000000)
li x11, 0xaf0e70c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x8008000000000000 from memory into f16
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff8000000000000 from memory into f10
fmin.d f11, f16, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7fffffffffffffff)
li x16, 0x65dc296b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x8008000000000000 from memory into f19
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7fffffffffffffff from memory into f2
fmin.d f16, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff0000000000001)
li x2, 0xd0529537 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8008000000000000 from memory into f27
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
fmin.d f2, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x7ff7ffffffffffff)
li x10, 0xb149dc66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x8008000000000000 from memory into f5
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
fmin.d f10, f5, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0x5a392534a57711ad)
li x10, 0x5b8fce3d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8008000000000000 from memory into f18
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x5a392534a57711ad from memory into f28
fmin.d f10, f18, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8008000000000000 fs2 = 0xa6e895993737426c)
li x9, 0x7a47573b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x8008000000000000 from memory into f14
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xa6e895993737426c from memory into f19
fmin.d f9, f14, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x0)
li x29, 0x32945d7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000000000001 from memory into f10
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000000000000 from memory into f17
fmin.d f29, f10, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000000)
li x6, 0x3f79ca27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000000000001 from memory into f28
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x8000000000000000 from memory into f17
fmin.d f6, f28, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff0000000000000)
li x14, 0x13507c6b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000000000001 from memory into f15
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x3ff0000000000000 from memory into f1
fmin.d f14, f15, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbff0000000000000)
li x30, 0x33ccbaa0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000000000001 from memory into f16
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xbff0000000000000 from memory into f6
fmin.d f30, f16, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x3ff8000000000000)
li x29, 0xfb652294 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000000000001 from memory into f31
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x3ff8000000000000 from memory into f11
fmin.d f29, f31, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xbff8000000000000)
li x3, 0xe2bc2a53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000000000001 from memory into f23
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xbff8000000000000 from memory into f21
fmin.d f3, f23, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x4000000000000000)
li x19, 0xb1531a66 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x4000000000000000 from memory into f28
fmin.d f19, f27, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xc000000000000000)
li x9, 0xcbedfa32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000000000001 from memory into f17
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xc000000000000000 from memory into f3
fmin.d f9, f17, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x10000000000000)
li x5, 0x6328284a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000000000001 from memory into f22
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0010000000000000 from memory into f4
fmin.d f5, f22, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8010000000000000)
li x5, 0xf8f02b0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000000000001 from memory into f7
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x8010000000000000 from memory into f1
fmin.d f5, f7, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fefffffffffffff)
li x27, 0x7ac5fb5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000000000001 from memory into f31
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7fefffffffffffff from memory into f15
fmin.d f27, f31, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xffefffffffffffff)
li x23, 0x4fe3d33b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000000000001 from memory into f22
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xffefffffffffffff from memory into f28
fmin.d f23, f22, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfffffffffffff)
li x7, 0x7d4d5a58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000000000001 from memory into f9
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000fffffffffffff from memory into f1
fmin.d f7, f9, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x800fffffffffffff)
li x6, 0x3b333241 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000000000001 from memory into f4
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x800fffffffffffff from memory into f8
fmin.d f6, f4, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000)
li x16, 0xe9b7db2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000000000001 from memory into f19
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0008000000000000 from memory into f17
fmin.d f16, f19, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8008000000000000)
li x10, 0xeab8fada # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000000000001 from memory into f5
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x8008000000000000 from memory into f22
fmin.d f10, f5, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x1)
li x19, 0x73d895da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000000000001 from memory into f8
fmin.d f19, f21, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x8000000000000001)
li x7, 0x22e71765 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000000000001 from memory into f28
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8000000000000001 from memory into f18
fmin.d f7, f28, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff0000000000000)
li x4, 0xd08a940e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000000000001 from memory into f6
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7ff0000000000000 from memory into f26
fmin.d f4, f6, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xfff0000000000000)
li x24, 0x7260a8b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000000000001 from memory into f23
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfff0000000000000 from memory into f5
fmin.d f24, f23, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff8000000000000)
li x21, 0xf85d5133 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000000000001 from memory into f11
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x7ff8000000000000 from memory into f4
fmin.d f21, f11, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7fffffffffffffff)
li x17, 0xc456543e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000000000001 from memory into f14
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
fmin.d f17, f14, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff0000000000001)
li x30, 0x1ce7df3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000000000001 from memory into f9
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7ff0000000000001 from memory into f12
fmin.d f30, f9, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x7ff7ffffffffffff)
li x10, 0x18dad68e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000000000001 from memory into f7
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7ff7ffffffffffff from memory into f30
fmin.d f10, f7, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0x5a392534a57711ad)
li x25, 0x96ce6aa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000000000001 from memory into f8
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x5a392534a57711ad from memory into f21
fmin.d f25, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x1 fs2 = 0xa6e895993737426c)
li x11, 0x1b0ec8c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000000000001 from memory into f29
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
fmin.d f11, f29, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x0)
li x8, 0x0542ab27 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x8000000000000001 from memory into f10
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000000000000 from memory into f6
fmin.d f8, f10, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000000)
li x14, 0xd689a2b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x8000000000000000 from memory into f21
fmin.d f14, f2, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x3ff0000000000000)
li x24, 0x7c398153 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x8000000000000001 from memory into f3
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x3ff0000000000000 from memory into f31
fmin.d f24, f3, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xbff0000000000000)
li x31, 0x85c5c5c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xbff0000000000000 from memory into f24
fmin.d f31, f5, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x3ff8000000000000)
li x16, 0x0093a060 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x8000000000000001 from memory into f4
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x3ff8000000000000 from memory into f30
fmin.d f16, f4, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xbff8000000000000)
li x21, 0x3a4c5c71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x8000000000000001 from memory into f4
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xbff8000000000000 from memory into f29
fmin.d f21, f4, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x4000000000000000)
li x29, 0x48cb309e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x4000000000000000 from memory into f9
fmin.d f29, f19, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xc000000000000000)
li x31, 0xe3e1fd9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x8000000000000001 from memory into f22
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xc000000000000000 from memory into f6
fmin.d f31, f22, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x10000000000000)
li x12, 0xf2c9a9d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8000000000000001 from memory into f31
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0010000000000000 from memory into f24
fmin.d f12, f31, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8010000000000000)
li x27, 0x5bc21781 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x8000000000000001 from memory into f25
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x8010000000000000 from memory into f6
fmin.d f27, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7fefffffffffffff)
li x27, 0x62a0cf7b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x8000000000000001 from memory into f25
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7fefffffffffffff from memory into f7
fmin.d f27, f25, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xffefffffffffffff)
li x10, 0x3af8844c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x8000000000000001 from memory into f23
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xffefffffffffffff from memory into f18
fmin.d f10, f23, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xfffffffffffff)
li x15, 0x1336d9ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x8000000000000001 from memory into f9
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000fffffffffffff from memory into f19
fmin.d f15, f9, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x800fffffffffffff)
li x5, 0x2299e2b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x8000000000000001 from memory into f28
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x800fffffffffffff from memory into f19
fmin.d f5, f28, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000)
li x26, 0x607f4c2a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x8000000000000001 from memory into f7
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0008000000000000 from memory into f15
fmin.d f26, f7, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8008000000000000)
li x12, 0xb538eb83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8000000000000001 from memory into f18
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x8008000000000000 from memory into f2
fmin.d f12, f18, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x1)
li x19, 0xe8519150 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x8000000000000001 from memory into f29
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000000000001 from memory into f28
fmin.d f19, f29, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x8000000000000001)
li x10, 0x3775099b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x8000000000000001 from memory into f16
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x8000000000000001 from memory into f13
fmin.d f10, f16, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff0000000000000)
li x26, 0xb1a6f600 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x8000000000000001 from memory into f11
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7ff0000000000000 from memory into f21
fmin.d f26, f11, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xfff0000000000000)
li x11, 0xa80d3e82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x8000000000000001 from memory into f30
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfff0000000000000 from memory into f22
fmin.d f11, f30, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff8000000000000)
li x10, 0xc439822f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x8000000000000001 from memory into f28
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7ff8000000000000 from memory into f18
fmin.d f10, f28, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7fffffffffffffff)
li x11, 0x973b7a42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x8000000000000001 from memory into f10
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7fffffffffffffff from memory into f26
fmin.d f11, f10, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff0000000000001)
li x25, 0x206024e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7ff0000000000001 from memory into f5
fmin.d f25, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x7ff7ffffffffffff)
li x1, 0x747244ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x8000000000000001 from memory into f12
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
fmin.d f1, f12, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0x5a392534a57711ad)
li x4, 0x08b72f42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x5a392534a57711ad from memory into f25
fmin.d f4, f19, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x8000000000000001 fs2 = 0xa6e895993737426c)
li x30, 0x3f59f820 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x8000000000000001 from memory into f11
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
fmin.d f30, f11, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x0)
li x21, 0xebe65a0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff0000000000000 from memory into f2
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000000000000 from memory into f16
fmin.d f21, f2, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000000)
li x13, 0xb2ee7d61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7ff0000000000000 from memory into f14
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x8000000000000000 from memory into f24
fmin.d f13, f14, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x3ff0000000000000)
li x27, 0xca4f1437 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7ff0000000000000 from memory into f17
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x3ff0000000000000 from memory into f31
fmin.d f27, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xbff0000000000000)
li x20, 0x338505af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7ff0000000000000 from memory into f3
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xbff0000000000000 from memory into f12
fmin.d f20, f3, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x3ff8000000000000)
li x4, 0x98ed46be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7ff0000000000000 from memory into f7
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x3ff8000000000000 from memory into f28
fmin.d f4, f7, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xbff8000000000000)
li x25, 0x9b4ee01c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7ff0000000000000 from memory into f23
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xbff8000000000000 from memory into f15
fmin.d f25, f23, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x4000000000000000)
li x7, 0xa0b1e192 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff0000000000000 from memory into f29
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x4000000000000000 from memory into f21
fmin.d f7, f29, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xc000000000000000)
li x12, 0xa7174b4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff0000000000000 from memory into f20
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
fmin.d f12, f20, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x10000000000000)
li x26, 0x50e373f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff0000000000000 from memory into f9
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0010000000000000 from memory into f19
fmin.d f26, f9, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8010000000000000)
li x31, 0x0b418828 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7ff0000000000000 from memory into f13
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8010000000000000 from memory into f18
fmin.d f31, f13, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7fefffffffffffff)
li x21, 0x74a9040d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7ff0000000000000 from memory into f17
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7fefffffffffffff from memory into f14
fmin.d f21, f17, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xffefffffffffffff)
li x10, 0x7ae299a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7ff0000000000000 from memory into f5
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffefffffffffffff from memory into f14
fmin.d f10, f5, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xfffffffffffff)
li x22, 0xd223cc2c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7ff0000000000000 from memory into f11
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000fffffffffffff from memory into f28
fmin.d f22, f11, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x800fffffffffffff)
li x8, 0x5dabaaf7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7ff0000000000000 from memory into f31
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x800fffffffffffff from memory into f19
fmin.d f8, f31, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000)
li x31, 0xad0b951d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff0000000000000 from memory into f29
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
fmin.d f31, f29, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8008000000000000)
li x30, 0x52165465 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff0000000000000 from memory into f9
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x8008000000000000 from memory into f5
fmin.d f30, f9, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x1)
li x11, 0x5e1ea028 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7ff0000000000000 from memory into f24
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000000000001 from memory into f6
fmin.d f11, f24, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x8000000000000001)
li x18, 0xc9316db1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7ff0000000000000 from memory into f31
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x8000000000000001 from memory into f30
fmin.d f18, f31, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff0000000000000)
li x15, 0xa3b237db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7ff0000000000000 from memory into f27
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff0000000000000 from memory into f29
fmin.d f15, f27, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xfff0000000000000)
li x10, 0x05c6841c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7ff0000000000000 from memory into f25
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
fmin.d f10, f25, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff8000000000000)
li x17, 0x42a5dfdc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7ff0000000000000 from memory into f1
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7ff8000000000000 from memory into f22
fmin.d f17, f1, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7fffffffffffffff)
li x7, 0xe5bcf47b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7ff0000000000000 from memory into f19
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7fffffffffffffff from memory into f20
fmin.d f7, f19, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff0000000000001)
li x9, 0xa9a50632 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7ff0000000000000 from memory into f31
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff0000000000001 from memory into f29
fmin.d f9, f31, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x17, 0xd16d16a2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7ff0000000000000 from memory into f16
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7ff7ffffffffffff from memory into f23
fmin.d f17, f16, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0x5a392534a57711ad)
li x2, 0x6d52b6ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7ff0000000000000 from memory into f18
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x5a392534a57711ad from memory into f22
fmin.d f2, f18, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000000 fs2 = 0xa6e895993737426c)
li x22, 0xe80fea42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7ff0000000000000 from memory into f15
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xa6e895993737426c from memory into f29
fmin.d f22, f15, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x0)
li x19, 0x79acb646 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000000000000 from memory into f11
fmin.d f19, f17, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000000)
li x19, 0x220a97c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfff0000000000000 from memory into f30
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x8000000000000000 from memory into f23
fmin.d f19, f30, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x3ff0000000000000)
li x25, 0x8ffc6ac4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfff0000000000000 from memory into f7
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x3ff0000000000000 from memory into f8
fmin.d f25, f7, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xbff0000000000000)
li x18, 0xc5be7e2d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xfff0000000000000 from memory into f27
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xbff0000000000000 from memory into f17
fmin.d f18, f27, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x3ff8000000000000)
li x13, 0x34808e82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0xfff0000000000000 from memory into f4
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
fmin.d f13, f4, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xbff8000000000000)
li x12, 0x70c657f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xfff0000000000000 from memory into f16
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xbff8000000000000 from memory into f20
fmin.d f12, f16, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x4000000000000000)
li x12, 0x6c0480a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfff0000000000000 from memory into f29
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x4000000000000000 from memory into f6
fmin.d f12, f29, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xc000000000000000)
li x11, 0xafc56bb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xc000000000000000 from memory into f24
fmin.d f11, f25, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x10000000000000)
li x29, 0x6e6d0a5c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfff0000000000000 from memory into f23
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0010000000000000 from memory into f12
fmin.d f29, f23, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8010000000000000)
li x31, 0x74492145 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfff0000000000000 from memory into f10
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x8010000000000000 from memory into f20
fmin.d f31, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7fefffffffffffff)
li x30, 0x9fdd4c2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7fefffffffffffff from memory into f25
fmin.d f30, f26, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xffefffffffffffff)
li x5, 0xc92b77b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfff0000000000000 from memory into f24
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xffefffffffffffff from memory into f1
fmin.d f5, f24, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xfffffffffffff)
li x20, 0x95cde5d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfff0000000000000 from memory into f28
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000fffffffffffff from memory into f5
fmin.d f20, f28, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x800fffffffffffff)
li x15, 0x92799200 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfff0000000000000 from memory into f3
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x800fffffffffffff from memory into f29
fmin.d f15, f3, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000)
li x15, 0xabf4b948 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xfff0000000000000 from memory into f31
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0008000000000000 from memory into f5
fmin.d f15, f31, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8008000000000000)
li x2, 0x38c1e63f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfff0000000000000 from memory into f6
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x8008000000000000 from memory into f4
fmin.d f2, f6, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x1)
li x31, 0x1f787f6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfff0000000000000 from memory into f15
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000000000001 from memory into f9
fmin.d f31, f15, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x8000000000000001)
li x7, 0x38621c13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfff0000000000000 from memory into f15
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x8000000000000001 from memory into f5
fmin.d f7, f15, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff0000000000000)
li x12, 0xfd75d444 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfff0000000000000 from memory into f5
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7ff0000000000000 from memory into f14
fmin.d f12, f5, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xfff0000000000000)
li x16, 0xbff77e1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xfff0000000000000 from memory into f19
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfff0000000000000 from memory into f13
fmin.d f16, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff8000000000000)
li x13, 0x678c7f84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfff0000000000000 from memory into f2
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7ff8000000000000 from memory into f19
fmin.d f13, f2, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7fffffffffffffff)
li x26, 0xc67b7d70 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfff0000000000000 from memory into f17
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7fffffffffffffff from memory into f31
fmin.d f26, f17, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff0000000000001)
li x1, 0x6e6bc42b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0xfff0000000000000 from memory into f4
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7ff0000000000001 from memory into f27
fmin.d f1, f4, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x7ff7ffffffffffff)
li x1, 0x662d38dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xfff0000000000000 from memory into f19
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7ff7ffffffffffff from memory into f13
fmin.d f1, f19, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0x5a392534a57711ad)
li x27, 0xf5e027e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfff0000000000000 from memory into f20
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x5a392534a57711ad from memory into f7
fmin.d f27, f20, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xfff0000000000000 fs2 = 0xa6e895993737426c)
li x27, 0x05526028 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xfff0000000000000 from memory into f1
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xa6e895993737426c from memory into f25
fmin.d f27, f1, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x0)
li x22, 0x8900866c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7ff8000000000000 from memory into f3
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000000000000 from memory into f21
fmin.d f22, f3, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000000)
li x28, 0x24772411 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8000000000000000 from memory into f31
fmin.d f28, f5, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x3ff0000000000000)
li x4, 0xca5d897e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7ff8000000000000 from memory into f14
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x3ff0000000000000 from memory into f19
fmin.d f4, f14, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xbff0000000000000)
li x10, 0xcef24bf4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7ff8000000000000 from memory into f24
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0xbff0000000000000 from memory into f4
fmin.d f10, f24, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x3ff8000000000000)
li x12, 0x45cd314b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7ff8000000000000 from memory into f21
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x3ff8000000000000 from memory into f9
fmin.d f12, f21, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xbff8000000000000)
li x25, 0xf00524fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7ff8000000000000 from memory into f16
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xbff8000000000000 from memory into f17
fmin.d f25, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x4000000000000000)
li x4, 0x2bb130cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7ff8000000000000 from memory into f13
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x4000000000000000 from memory into f2
fmin.d f4, f13, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xc000000000000000)
li x12, 0xf6c71dd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7ff8000000000000 from memory into f17
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xc000000000000000 from memory into f29
fmin.d f12, f17, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x10000000000000)
li x29, 0x365ebd65 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7ff8000000000000 from memory into f30
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0010000000000000 from memory into f12
fmin.d f29, f30, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8010000000000000)
li x22, 0xcf1b1879 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7ff8000000000000 from memory into f23
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x8010000000000000 from memory into f13
fmin.d f22, f23, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7fefffffffffffff)
li x30, 0xb30853ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7ff8000000000000 from memory into f22
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7fefffffffffffff from memory into f19
fmin.d f30, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xffefffffffffffff)
li x4, 0xe860dd9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7ff8000000000000 from memory into f5
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xffefffffffffffff from memory into f19
fmin.d f4, f5, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xfffffffffffff)
li x19, 0x19c5ab69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x7ff8000000000000 from memory into f8
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000fffffffffffff from memory into f10
fmin.d f19, f8, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x800fffffffffffff)
li x19, 0xa90071a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7ff8000000000000 from memory into f26
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x800fffffffffffff from memory into f24
fmin.d f19, f26, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000)
li x16, 0x4a615c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7ff8000000000000 from memory into f7
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
fmin.d f16, f7, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8008000000000000)
li x25, 0xd48816c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7ff8000000000000 from memory into f13
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x8008000000000000 from memory into f22
fmin.d f25, f13, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x1)
li x12, 0xfc26c380 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7ff8000000000000 from memory into f19
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000000000001 from memory into f2
fmin.d f12, f19, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x8000000000000001)
li x10, 0x8892825e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7ff8000000000000 from memory into f11
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x8000000000000001 from memory into f2
fmin.d f10, f11, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff0000000000000)
li x16, 0xa141df0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7ff8000000000000 from memory into f28
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7ff0000000000000 from memory into f18
fmin.d f16, f28, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xfff0000000000000)
li x20, 0x78fa628b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7ff8000000000000 from memory into f18
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfff0000000000000 from memory into f12
fmin.d f20, f18, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff8000000000000)
li x28, 0x72e022b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff8000000000000 from memory into f9
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7ff8000000000000 from memory into f16
fmin.d f28, f9, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7fffffffffffffff)
li x9, 0xec7b26f8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7ff8000000000000 from memory into f27
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7fffffffffffffff from memory into f20
fmin.d f9, f27, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff0000000000001)
li x25, 0xf3c68e06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7ff8000000000000 from memory into f26
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7ff0000000000001 from memory into f31
fmin.d f25, f26, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x7ff7ffffffffffff)
li x16, 0x008a1f5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7ff8000000000000 from memory into f31
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7ff7ffffffffffff from memory into f19
fmin.d f16, f31, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0x5a392534a57711ad)
li x2, 0xb3cc78e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7ff8000000000000 from memory into f1
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x5a392534a57711ad from memory into f11
fmin.d f2, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff8000000000000 fs2 = 0xa6e895993737426c)
li x16, 0x1ae582e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7ff8000000000000 from memory into f7
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xa6e895993737426c from memory into f2
fmin.d f16, f7, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x0)
li x24, 0xd9c9567a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7fffffffffffffff from memory into f16
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000000000000 from memory into f2
fmin.d f24, f16, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000000)
li x26, 0x351a98b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7fffffffffffffff from memory into f25
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x8000000000000000 from memory into f6
fmin.d f26, f25, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x3ff0000000000000)
li x21, 0x30c8e7f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7fffffffffffffff from memory into f3
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x3ff0000000000000 from memory into f28
fmin.d f21, f3, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xbff0000000000000)
li x23, 0xf5f19f5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7fffffffffffffff from memory into f29
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xbff0000000000000 from memory into f19
fmin.d f23, f29, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x3ff8000000000000)
li x11, 0x3becf2fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x3ff8000000000000 from memory into f16
fmin.d f11, f28, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xbff8000000000000)
li x18, 0x66554db8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7fffffffffffffff from memory into f5
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0xbff8000000000000 from memory into f4
fmin.d f18, f5, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x4000000000000000)
li x20, 0xd6fca1b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7fffffffffffffff from memory into f1
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x4000000000000000 from memory into f30
fmin.d f20, f1, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xc000000000000000)
li x10, 0x4f9402a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7fffffffffffffff from memory into f27
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xc000000000000000 from memory into f14
fmin.d f10, f27, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x10000000000000)
li x1, 0xb37490c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7fffffffffffffff from memory into f30
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0010000000000000 from memory into f26
fmin.d f1, f30, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8010000000000000)
li x29, 0xdca18a21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7fffffffffffffff from memory into f13
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x8010000000000000 from memory into f26
fmin.d f29, f13, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7fefffffffffffff)
li x15, 0x3edea75c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7fffffffffffffff from memory into f5
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
fmin.d f15, f5, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xffefffffffffffff)
li x26, 0xc7d4101c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7fffffffffffffff from memory into f9
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffefffffffffffff from memory into f27
fmin.d f26, f9, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xfffffffffffff)
li x12, 0xd84a4182 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7fffffffffffffff from memory into f26
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000fffffffffffff from memory into f24
fmin.d f12, f26, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x800fffffffffffff)
li x9, 0xa3c39ac8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7fffffffffffffff from memory into f25
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x800fffffffffffff from memory into f15
fmin.d f9, f25, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000)
li x6, 0x94c1ac17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7fffffffffffffff from memory into f28
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0008000000000000 from memory into f10
fmin.d f6, f28, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8008000000000000)
li x29, 0x2d210001 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7fffffffffffffff from memory into f16
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x8008000000000000 from memory into f27
fmin.d f29, f16, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x1)
li x6, 0x5b3a70d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7fffffffffffffff from memory into f21
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000000000001 from memory into f31
fmin.d f6, f21, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x8000000000000001)
li x22, 0x21718c9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7fffffffffffffff from memory into f11
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x8000000000000001 from memory into f19
fmin.d f22, f11, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff0000000000000)
li x1, 0x6a3cc7b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x7fffffffffffffff from memory into f4
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff0000000000000 from memory into f2
fmin.d f1, f4, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xfff0000000000000)
li x2, 0x9edbd2d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7fffffffffffffff from memory into f10
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfff0000000000000 from memory into f20
fmin.d f2, f10, f20 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff8000000000000)
li x20, 0xa0880fa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7fffffffffffffff from memory into f16
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7ff8000000000000 from memory into f22
fmin.d f20, f16, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7fffffffffffffff)
li x26, 0x897a8649 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7fffffffffffffff from memory into f23
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7fffffffffffffff from memory into f16
fmin.d f26, f23, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff0000000000001)
li x11, 0xfb83f552 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7fffffffffffffff from memory into f16
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7ff0000000000001 from memory into f12
fmin.d f11, f16, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x7ff7ffffffffffff)
li x14, 0xd38ba00e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7fffffffffffffff from memory into f1
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7ff7ffffffffffff from memory into f27
fmin.d f14, f1, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0x5a392534a57711ad)
li x20, 0x4c03e4cf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7fffffffffffffff from memory into f25
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x5a392534a57711ad from memory into f31
fmin.d f20, f25, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7fffffffffffffff fs2 = 0xa6e895993737426c)
li x23, 0x933d1a0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7fffffffffffffff from memory into f11
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xa6e895993737426c from memory into f28
fmin.d f23, f11, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x0)
li x5, 0x752326ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7ff0000000000001 from memory into f6
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000000000000 from memory into f25
fmin.d f5, f6, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000000)
li x26, 0x6bbdf145 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7ff0000000000001 from memory into f14
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x8000000000000000 from memory into f1
fmin.d f26, f14, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x3ff0000000000000)
li x30, 0x2a2ec903 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7ff0000000000001 from memory into f16
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x3ff0000000000000 from memory into f26
fmin.d f30, f16, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xbff0000000000000)
li x27, 0x427036a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xbff0000000000000 from memory into f14
fmin.d f27, f10, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x3ff8000000000000)
li x6, 0xb65e1442 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff0000000000001 from memory into f9
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x3ff8000000000000 from memory into f1
fmin.d f6, f9, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xbff8000000000000)
li x14, 0xc1c2e649 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7ff0000000000001 from memory into f28
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xbff8000000000000 from memory into f3
fmin.d f14, f28, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x4000000000000000)
li x17, 0x6fcd2de3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x7ff0000000000001 from memory into f4
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x4000000000000000 from memory into f23
fmin.d f17, f4, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xc000000000000000)
li x6, 0x471dea69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x7ff0000000000001 from memory into f4
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xc000000000000000 from memory into f16
fmin.d f6, f4, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x10000000000000)
li x11, 0x8eda256c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7ff0000000000001 from memory into f14
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0010000000000000 from memory into f7
fmin.d f11, f14, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8010000000000000)
li x23, 0xd78513c0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x7ff0000000000001 from memory into f8
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
fmin.d f23, f8, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7fefffffffffffff)
li x29, 0x595e319a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7ff0000000000001 from memory into f15
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7fefffffffffffff from memory into f25
fmin.d f29, f15, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xffefffffffffffff)
li x2, 0x1e87a3fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7ff0000000000001 from memory into f1
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xffefffffffffffff from memory into f23
fmin.d f2, f1, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xfffffffffffff)
li x6, 0x5f963b1f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7ff0000000000001 from memory into f31
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000fffffffffffff from memory into f9
fmin.d f6, f31, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x800fffffffffffff)
li x17, 0x521f0e1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7ff0000000000001 from memory into f3
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x800fffffffffffff from memory into f22
fmin.d f17, f3, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000)
li x8, 0xc4da6c11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7ff0000000000001 from memory into f28
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0008000000000000 from memory into f31
fmin.d f8, f28, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8008000000000000)
li x20, 0x7c087eb5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7ff0000000000001 from memory into f18
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x8008000000000000 from memory into f8
fmin.d f20, f18, f8 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x1)
li x8, 0xb6258bf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7ff0000000000001 from memory into f14
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000000000001 from memory into f13
fmin.d f8, f14, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x8000000000000001)
li x27, 0x829c3086 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff0000000000001 from memory into f29
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x8000000000000001 from memory into f1
fmin.d f27, f29, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff0000000000000)
li x9, 0x10613e99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff0000000000001 from memory into f20
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7ff0000000000000 from memory into f14
fmin.d f9, f20, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xfff0000000000000)
li x13, 0x31bdcc0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff0000000000001 from memory into f2
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0xfff0000000000000 from memory into f4
fmin.d f13, f2, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff8000000000000)
li x5, 0x3379f6d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7ff0000000000001 from memory into f12
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x7ff8000000000000 from memory into f4
fmin.d f5, f12, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7fffffffffffffff)
li x24, 0x36a13be0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7ff0000000000001 from memory into f7
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7fffffffffffffff from memory into f22
fmin.d f24, f7, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff0000000000001)
li x23, 0x27b1272f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff0000000000001 from memory into f10
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7ff0000000000001 from memory into f25
fmin.d f23, f10, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x7ff7ffffffffffff)
li x1, 0x2895b78b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7ff0000000000001 from memory into f23
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7ff7ffffffffffff from memory into f30
fmin.d f1, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0x5a392534a57711ad)
li x17, 0xa8642604 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7ff0000000000001 from memory into f6
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x5a392534a57711ad from memory into f15
fmin.d f17, f6, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff0000000000001 fs2 = 0xa6e895993737426c)
li x26, 0x7d94a70b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7ff0000000000001 from memory into f17
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xa6e895993737426c from memory into f22
fmin.d f26, f17, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x0)
li x29, 0xa1539278 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7ff7ffffffffffff from memory into f18
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000000000000 from memory into f7
fmin.d f29, f18, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000000)
li x16, 0xb93a0d85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7ff7ffffffffffff from memory into f23
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x8000000000000000 from memory into f1
fmin.d f16, f23, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x3ff0000000000000)
li x1, 0xe36e6dd7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7ff7ffffffffffff from memory into f12
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x3ff0000000000000 from memory into f26
fmin.d f1, f12, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xbff0000000000000)
li x30, 0x970a9ac8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x7ff7ffffffffffff from memory into f23
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xbff0000000000000 from memory into f7
fmin.d f30, f23, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x3ff8000000000000)
li x25, 0x2590e2e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7ff7ffffffffffff from memory into f22
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x3ff8000000000000 from memory into f4
fmin.d f25, f22, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xbff8000000000000)
li x29, 0xef197fcf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7ff7ffffffffffff from memory into f12
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xbff8000000000000 from memory into f6
fmin.d f29, f12, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x4000000000000000)
li x6, 0x700f6cab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7ff7ffffffffffff from memory into f31
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x4000000000000000 from memory into f28
fmin.d f6, f31, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xc000000000000000)
li x19, 0x5f46eb85 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7ff7ffffffffffff from memory into f30
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xc000000000000000 from memory into f2
fmin.d f19, f30, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x10000000000000)
li x1, 0x133592ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7ff7ffffffffffff from memory into f21
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0010000000000000 from memory into f14
fmin.d f1, f21, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8010000000000000)
li x12, 0x63cd279c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff7ffffffffffff from memory into f29
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x8010000000000000 from memory into f2
fmin.d f12, f29, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7fefffffffffffff)
li x1, 0x717a2b0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7ff7ffffffffffff from memory into f29
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7fefffffffffffff from memory into f28
fmin.d f1, f29, f28 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xffefffffffffffff)
li x5, 0x5643f8b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xffefffffffffffff from memory into f13
fmin.d f5, f15, f13 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xfffffffffffff)
li x17, 0xa7ce5c57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7ff7ffffffffffff from memory into f24
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000fffffffffffff from memory into f18
fmin.d f17, f24, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x800fffffffffffff)
li x17, 0xf2d719e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7ff7ffffffffffff from memory into f6
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x800fffffffffffff from memory into f30
fmin.d f17, f6, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000)
li x14, 0x2046fe03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0008000000000000 from memory into f11
fmin.d f14, f15, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8008000000000000)
li x28, 0xed79b052 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7ff7ffffffffffff from memory into f19
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x8008000000000000 from memory into f12
fmin.d f28, f19, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x1)
li x5, 0x368cd59c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff7ffffffffffff from memory into f10
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000000000001 from memory into f23
fmin.d f5, f10, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x8000000000000001)
li x2, 0x6e9ddf48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7ff7ffffffffffff from memory into f24
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x8000000000000001 from memory into f21
fmin.d f2, f24, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff0000000000000)
li x16, 0x072200e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff7ffffffffffff from memory into f9
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7ff0000000000000 from memory into f6
fmin.d f16, f9, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xfff0000000000000)
li x9, 0x5c376ffc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7ff7ffffffffffff from memory into f15
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfff0000000000000 from memory into f7
fmin.d f9, f15, f7 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff8000000000000)
li x21, 0xf09303cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7ff7ffffffffffff from memory into f18
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff8000000000000 from memory into f10
fmin.d f21, f18, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7fffffffffffffff)
li x27, 0x4920383f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff7ffffffffffff from memory into f2
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7fffffffffffffff from memory into f30
fmin.d f27, f2, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff0000000000001)
li x11, 0x3a9105e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7ff7ffffffffffff from memory into f28
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7ff0000000000001 from memory into f31
fmin.d f11, f28, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x7ff7ffffffffffff)
li x9, 0x8eacf2e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x7ff7ffffffffffff from memory into f4
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7ff7ffffffffffff from memory into f12
fmin.d f9, f4, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0x5a392534a57711ad)
li x25, 0xf8fd5866 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x7ff7ffffffffffff from memory into f20
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x5a392534a57711ad from memory into f17
fmin.d f25, f20, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x7ff7ffffffffffff fs2 = 0xa6e895993737426c)
li x2, 0x28006997 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7ff7ffffffffffff from memory into f24
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xa6e895993737426c from memory into f31
fmin.d f2, f24, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x0)
li x7, 0x7683400f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x5a392534a57711ad from memory into f22
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000000000000 from memory into f19
fmin.d f7, f22, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000000)
li x31, 0x8d171efa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x5a392534a57711ad from memory into f16
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x8000000000000000 from memory into f29
fmin.d f31, f16, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x3ff0000000000000)
li x19, 0x6d12f01e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x3ff0000000000000 from memory into f24
fmin.d f19, f30, f24 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xbff0000000000000)
li x1, 0x378df01e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x5a392534a57711ad from memory into f5
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xbff0000000000000 from memory into f25
fmin.d f1, f5, f25 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x3ff8000000000000)
li x16, 0x33d3214d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x5a392534a57711ad from memory into f29
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x3ff8000000000000 from memory into f4
fmin.d f16, f29, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xbff8000000000000)
li x3, 0x5e2327ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x5a392534a57711ad from memory into f16
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xbff8000000000000 from memory into f9
fmin.d f3, f16, f9 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x4000000000000000)
li x17, 0xc6c843b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x5a392534a57711ad from memory into f3
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x4000000000000000 from memory into f23
fmin.d f17, f3, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xc000000000000000)
li x8, 0xfe1770c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x5a392534a57711ad from memory into f21
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xc000000000000000 from memory into f6
fmin.d f8, f21, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x10000000000000)
li x9, 0xdadac314 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x5a392534a57711ad from memory into f20
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0010000000000000 from memory into f29
fmin.d f9, f20, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8010000000000000)
li x14, 0x9a3d891a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x5a392534a57711ad from memory into f12
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x8010000000000000 from memory into f23
fmin.d f14, f12, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7fefffffffffffff)
li x14, 0xfbfa713f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x5a392534a57711ad from memory into f25
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7fefffffffffffff from memory into f29
fmin.d f14, f25, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xffefffffffffffff)
li x12, 0x873384c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x5a392534a57711ad from memory into f16
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xffefffffffffffff from memory into f17
fmin.d f12, f16, f17 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xfffffffffffff)
li x31, 0x974fc3d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x5a392534a57711ad from memory into f6
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000fffffffffffff from memory into f19
fmin.d f31, f6, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x800fffffffffffff)
li x21, 0xddde8a9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x5a392534a57711ad from memory into f2
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x800fffffffffffff from memory into f18
fmin.d f21, f2, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000)
li x4, 0x65d517ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x5a392534a57711ad from memory into f20
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0008000000000000 from memory into f12
fmin.d f4, f20, f12 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8008000000000000)
li x2, 0x54122104 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x5a392534a57711ad from memory into f31
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8008000000000000 from memory into f18
fmin.d f2, f31, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x1)
li x6, 0xa6e06643 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000000000001 from memory into f21
fmin.d f6, f30, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x8000000000000001)
li x6, 0xb3071d8b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x5a392534a57711ad from memory into f19
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x8000000000000001 from memory into f16
fmin.d f6, f19, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff0000000000000)
li x24, 0x439eb818 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x5a392534a57711ad from memory into f15
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7ff0000000000000 from memory into f26
fmin.d f24, f15, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xfff0000000000000)
li x15, 0xf565f99c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x5a392534a57711ad from memory into f14
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfff0000000000000 from memory into f2
fmin.d f15, f14, f2 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff8000000000000)
li x11, 0x022e035d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x5a392534a57711ad from memory into f14
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7ff8000000000000 from memory into f18
fmin.d f11, f14, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7fffffffffffffff)
li x18, 0x2b5ad2bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x5a392534a57711ad from memory into f20
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7fffffffffffffff from memory into f26
fmin.d f18, f20, f26 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff0000000000001)
li x10, 0xbc6ce416 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x5a392534a57711ad from memory into f3
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7ff0000000000001 from memory into f15
fmin.d f10, f3, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x7ff7ffffffffffff)
li x30, 0x9279c129 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x5a392534a57711ad from memory into f9
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7ff7ffffffffffff from memory into f3
fmin.d f30, f9, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0x5a392534a57711ad)
li x17, 0x8a14a3e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x5a392534a57711ad from memory into f27
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x5a392534a57711ad from memory into f15
fmin.d f17, f27, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0x5a392534a57711ad fs2 = 0xa6e895993737426c)
li x10, 0x4c78adf1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x5a392534a57711ad from memory into f14
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xa6e895993737426c from memory into f3
fmin.d f10, f14, f3 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x0)
li x2, 0x8ef98286 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xa6e895993737426c from memory into f10
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000000000000 from memory into f15
fmin.d f2, f10, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000000)
li x29, 0xb990699d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xa6e895993737426c from memory into f9
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x8000000000000000 from memory into f18
fmin.d f29, f9, f18 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x3ff0000000000000)
li x8, 0xac9b7d2e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xa6e895993737426c from memory into f29
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x3ff0000000000000 from memory into f4
fmin.d f8, f29, f4 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xbff0000000000000)
li x31, 0xc9780cd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xa6e895993737426c from memory into f19
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xbff0000000000000 from memory into f14
fmin.d f31, f19, f14 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x3ff8000000000000)
li x9, 0x682e6e9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xa6e895993737426c from memory into f25
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x3ff8000000000000 from memory into f21
fmin.d f9, f25, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xbff8000000000000)
li x14, 0x984624ad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xa6e895993737426c from memory into f19
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xbff8000000000000 from memory into f21
fmin.d f14, f19, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x4000000000000000)
li x6, 0xe7357221 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x4000000000000000 from memory into f21
fmin.d f6, f7, f21 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xc000000000000000)
li x16, 0x7bfaffb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xa6e895993737426c from memory into f28
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xc000000000000000 from memory into f15
fmin.d f16, f28, f15 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x10000000000000)
li x23, 0x50bfc7c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xa6e895993737426c from memory into f18
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0010000000000000 from memory into f29
fmin.d f23, f18, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8010000000000000)
li x8, 0x74919ce1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xa6e895993737426c from memory into f22
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x8010000000000000 from memory into f6
fmin.d f8, f22, f6 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7fefffffffffffff)
li x3, 0x6b1cba17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xa6e895993737426c from memory into f23
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7fefffffffffffff from memory into f10
fmin.d f3, f23, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xffefffffffffffff)
li x6, 0x8a602380 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xa6e895993737426c from memory into f19
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xffefffffffffffff from memory into f10
fmin.d f6, f19, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xfffffffffffff)
li x31, 0x62bc6be5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xa6e895993737426c from memory into f21
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000fffffffffffff from memory into f1
fmin.d f31, f21, f1 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x800fffffffffffff)
li x30, 0x87aacb56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xa6e895993737426c from memory into f1
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x800fffffffffffff from memory into f11
fmin.d f30, f1, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000)
li x17, 0x7fcf008b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xa6e895993737426c from memory into f19
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0008000000000000 from memory into f23
fmin.d f17, f19, f23 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8008000000000000)
li x15, 0x83cd5031 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xa6e895993737426c from memory into f6
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x8008000000000000 from memory into f11
fmin.d f15, f6, f11 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x1)
li x28, 0x23440ff2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xa6e895993737426c from memory into f26
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000000000001 from memory into f22
fmin.d f28, f26, f22 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x8000000000000001)
li x7, 0x5bd1cdc5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xa6e895993737426c from memory into f1
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x8000000000000001 from memory into f29
fmin.d f7, f1, f29 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff0000000000000)
li x26, 0x73d66019 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xa6e895993737426c from memory into f27
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff0000000000000 from memory into f10
fmin.d f26, f27, f10 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xfff0000000000000)
li x21, 0xd12a0748 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xa6e895993737426c from memory into f31
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xfff0000000000000 from memory into f19
fmin.d f21, f31, f19 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff8000000000000)
li x10, 0x8eded675 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xa6e895993737426c from memory into f21
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7ff8000000000000 from memory into f27
fmin.d f10, f21, f27 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7fffffffffffffff)
li x18, 0x54ddfc1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xa6e895993737426c from memory into f19
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7fffffffffffffff from memory into f5
fmin.d f18, f19, f5 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff0000000000001)
li x31, 0x61868ec2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xa6e895993737426c from memory into f15
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7ff0000000000001 from memory into f16
fmin.d f31, f15, f16 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x7ff7ffffffffffff)
li x25, 0x9b45fc47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xa6e895993737426c from memory into f23
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7ff7ffffffffffff from memory into f30
fmin.d f25, f23, f30 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0x5a392534a57711ad)
li x26, 0x52c82641 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xa6e895993737426c from memory into f10
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x5a392534a57711ad from memory into f31
fmin.d f26, f10, f31 # perform operation

# Testcase cr_fs1_fs2_corners (Test source fs1 = 0xa6e895993737426c fs2 = 0xa6e895993737426c)
li x3, 0x75a003b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xa6e895993737426c from memory into f23
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xa6e895993737426c from memory into f8
fmin.d f3, f23, f8 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x406e3957 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3022a44b # load x3 with 32 MSBs 0x000000003022a44b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003022a44b
sw x3, 0(x2) # store x3 (0x3022a44b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000003022a44b from memory into f16
li x3, 0xf98f8358 # load x3 with 32 MSBs 0x00000000f98f8358
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f98f8358
sw x3, 0(x2) # store x3 (0xf98f8358) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000f98f8358 from memory into f27
fmin.d f0, f16, f27 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x214e0ac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9324b4e3 # load x3 with 32 MSBs 0x000000009324b4e3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009324b4e3
sw x3, 0(x2) # store x3 (0x9324b4e3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000009324b4e3 from memory into f24
li x3, 0xed847b63 # load x3 with 32 MSBs 0x00000000ed847b63
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ed847b63
sw x3, 0(x2) # store x3 (0xed847b63) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000ed847b63 from memory into f26
fmin.d f1, f24, f26 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x542679d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe58c3bc2 # load x3 with 32 MSBs 0x00000000e58c3bc2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e58c3bc2
sw x3, 0(x2) # store x3 (0xe58c3bc2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000e58c3bc2 from memory into f12
li x3, 0x2aa2d647 # load x3 with 32 MSBs 0x000000002aa2d647
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002aa2d647
sw x3, 0(x2) # store x3 (0x2aa2d647) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000002aa2d647 from memory into f19
fmin.d f2, f12, f19 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xd092b031 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xda9cb3e5 # load x3 with 32 MSBs 0x00000000da9cb3e5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000da9cb3e5
sw x3, 0(x2) # store x3 (0xda9cb3e5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000da9cb3e5 from memory into f4
li x3, 0xa0d61ecd # load x3 with 32 MSBs 0x00000000a0d61ecd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a0d61ecd
sw x3, 0(x2) # store x3 (0xa0d61ecd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000a0d61ecd from memory into f24
fmin.d f3, f4, f24 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x11553b90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x316e4ae5 # load x3 with 32 MSBs 0x00000000316e4ae5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000316e4ae5
sw x3, 0(x2) # store x3 (0x316e4ae5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000316e4ae5 from memory into f9
li x3, 0xbb5a6508 # load x3 with 32 MSBs 0x00000000bb5a6508
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bb5a6508
sw x3, 0(x2) # store x3 (0xbb5a6508) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000bb5a6508 from memory into f8
fmin.d f4, f9, f8 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x3b95869e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7740b20e # load x3 with 32 MSBs 0x000000007740b20e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007740b20e
sw x3, 0(x2) # store x3 (0x7740b20e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000007740b20e from memory into f3
li x3, 0xf970fa2b # load x3 with 32 MSBs 0x00000000f970fa2b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f970fa2b
sw x3, 0(x2) # store x3 (0xf970fa2b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000f970fa2b from memory into f12
fmin.d f5, f3, f12 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x12e3ba38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb094c174 # load x3 with 32 MSBs 0x00000000b094c174
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b094c174
sw x3, 0(x2) # store x3 (0xb094c174) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000b094c174 from memory into f18
li x3, 0xb43c37e5 # load x3 with 32 MSBs 0x00000000b43c37e5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b43c37e5
sw x3, 0(x2) # store x3 (0xb43c37e5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000b43c37e5 from memory into f16
fmin.d f6, f18, f16 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xbff33aa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x15f5cf97 # load x3 with 32 MSBs 0x0000000015f5cf97
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000015f5cf97
sw x3, 0(x2) # store x3 (0x15f5cf97) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000015f5cf97 from memory into f26
li x3, 0x41b84926 # load x3 with 32 MSBs 0x0000000041b84926
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000041b84926
sw x3, 0(x2) # store x3 (0x41b84926) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000041b84926 from memory into f20
fmin.d f7, f26, f20 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xe0c74f19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd438e282 # load x3 with 32 MSBs 0x00000000d438e282
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d438e282
sw x3, 0(x2) # store x3 (0xd438e282) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000d438e282 from memory into f23
li x3, 0x9ab483b6 # load x3 with 32 MSBs 0x000000009ab483b6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009ab483b6
sw x3, 0(x2) # store x3 (0x9ab483b6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000009ab483b6 from memory into f14
fmin.d f8, f23, f14 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x59dccadf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6f7fc196 # load x3 with 32 MSBs 0x000000006f7fc196
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006f7fc196
sw x3, 0(x2) # store x3 (0x6f7fc196) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000006f7fc196 from memory into f9
li x3, 0x8ace8a0e # load x3 with 32 MSBs 0x000000008ace8a0e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008ace8a0e
sw x3, 0(x2) # store x3 (0x8ace8a0e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000008ace8a0e from memory into f14
fmin.d f9, f9, f14 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xd488421d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ebbe543 # load x3 with 32 MSBs 0x000000007ebbe543
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007ebbe543
sw x3, 0(x2) # store x3 (0x7ebbe543) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000007ebbe543 from memory into f12
li x3, 0x2c189abd # load x3 with 32 MSBs 0x000000002c189abd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002c189abd
sw x3, 0(x2) # store x3 (0x2c189abd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000002c189abd from memory into f16
fmin.d f10, f12, f16 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x6e7d94f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2215937e # load x3 with 32 MSBs 0x000000002215937e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002215937e
sw x3, 0(x2) # store x3 (0x2215937e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000002215937e from memory into f3
li x3, 0x03db29da # load x3 with 32 MSBs 0x0000000003db29da
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000003db29da
sw x3, 0(x2) # store x3 (0x03db29da) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000003db29da from memory into f19
fmin.d f11, f3, f19 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x066ed293 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7af8b51f # load x3 with 32 MSBs 0x000000007af8b51f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007af8b51f
sw x3, 0(x2) # store x3 (0x7af8b51f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000007af8b51f from memory into f21
li x3, 0x8508c1aa # load x3 with 32 MSBs 0x000000008508c1aa
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008508c1aa
sw x3, 0(x2) # store x3 (0x8508c1aa) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000008508c1aa from memory into f16
fmin.d f12, f21, f16 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x011e3e0c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb5b82527 # load x3 with 32 MSBs 0x00000000b5b82527
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b5b82527
sw x3, 0(x2) # store x3 (0xb5b82527) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000b5b82527 from memory into f1
li x3, 0x6d243ce7 # load x3 with 32 MSBs 0x000000006d243ce7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006d243ce7
sw x3, 0(x2) # store x3 (0x6d243ce7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000006d243ce7 from memory into f11
fmin.d f13, f1, f11 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x606bdb02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7081148a # load x3 with 32 MSBs 0x000000007081148a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007081148a
sw x3, 0(x2) # store x3 (0x7081148a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000007081148a from memory into f26
li x3, 0xdb6cd9d4 # load x3 with 32 MSBs 0x00000000db6cd9d4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000db6cd9d4
sw x3, 0(x2) # store x3 (0xdb6cd9d4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000db6cd9d4 from memory into f7
fmin.d f14, f26, f7 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x98021503 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2b0ea3a # load x3 with 32 MSBs 0x00000000f2b0ea3a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f2b0ea3a
sw x3, 0(x2) # store x3 (0xf2b0ea3a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000f2b0ea3a from memory into f28
li x3, 0x1211354e # load x3 with 32 MSBs 0x000000001211354e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001211354e
sw x3, 0(x2) # store x3 (0x1211354e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000001211354e from memory into f8
fmin.d f15, f28, f8 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x422615a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf10bd820 # load x3 with 32 MSBs 0x00000000f10bd820
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f10bd820
sw x3, 0(x2) # store x3 (0xf10bd820) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000f10bd820 from memory into f7
li x3, 0xbab6c837 # load x3 with 32 MSBs 0x00000000bab6c837
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bab6c837
sw x3, 0(x2) # store x3 (0xbab6c837) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000bab6c837 from memory into f11
fmin.d f16, f7, f11 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xe30c34d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf708a1d7 # load x3 with 32 MSBs 0x00000000f708a1d7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f708a1d7
sw x3, 0(x2) # store x3 (0xf708a1d7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000f708a1d7 from memory into f15
li x3, 0x40110486 # load x3 with 32 MSBs 0x0000000040110486
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000040110486
sw x3, 0(x2) # store x3 (0x40110486) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000040110486 from memory into f1
fmin.d f17, f15, f1 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x54467d9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff13f059 # load x3 with 32 MSBs 0x00000000ff13f059
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ff13f059
sw x3, 0(x2) # store x3 (0xff13f059) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000ff13f059 from memory into f7
li x3, 0x9571ebdb # load x3 with 32 MSBs 0x000000009571ebdb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009571ebdb
sw x3, 0(x2) # store x3 (0x9571ebdb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000009571ebdb from memory into f8
fmin.d f18, f7, f8 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x07b32486 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f3d7acc # load x3 with 32 MSBs 0x000000001f3d7acc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001f3d7acc
sw x3, 0(x2) # store x3 (0x1f3d7acc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000001f3d7acc from memory into f24
li x3, 0x72beca53 # load x3 with 32 MSBs 0x0000000072beca53
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000072beca53
sw x3, 0(x2) # store x3 (0x72beca53) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000072beca53 from memory into f5
fmin.d f19, f24, f5 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x04efc35a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1dc8e720 # load x3 with 32 MSBs 0x000000001dc8e720
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001dc8e720
sw x3, 0(x2) # store x3 (0x1dc8e720) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000001dc8e720 from memory into f15
li x3, 0x81642d16 # load x3 with 32 MSBs 0x0000000081642d16
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000081642d16
sw x3, 0(x2) # store x3 (0x81642d16) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000081642d16 from memory into f20
fmin.d f20, f15, f20 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x5f8654fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb3e362b1 # load x3 with 32 MSBs 0x00000000b3e362b1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b3e362b1
sw x3, 0(x2) # store x3 (0xb3e362b1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000b3e362b1 from memory into f19
li x3, 0xc9be10f1 # load x3 with 32 MSBs 0x00000000c9be10f1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c9be10f1
sw x3, 0(x2) # store x3 (0xc9be10f1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000c9be10f1 from memory into f29
fmin.d f21, f19, f29 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x465f6544 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdb4f8f79 # load x3 with 32 MSBs 0x00000000db4f8f79
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000db4f8f79
sw x3, 0(x2) # store x3 (0xdb4f8f79) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000db4f8f79 from memory into f21
li x3, 0x170742dc # load x3 with 32 MSBs 0x00000000170742dc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000170742dc
sw x3, 0(x2) # store x3 (0x170742dc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000170742dc from memory into f17
fmin.d f22, f21, f17 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x82302379 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa2362b76 # load x3 with 32 MSBs 0x00000000a2362b76
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a2362b76
sw x3, 0(x2) # store x3 (0xa2362b76) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000a2362b76 from memory into f15
li x3, 0x58e417aa # load x3 with 32 MSBs 0x0000000058e417aa
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000058e417aa
sw x3, 0(x2) # store x3 (0x58e417aa) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000058e417aa from memory into f29
fmin.d f23, f15, f29 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x4bc13128 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4156d2d1 # load x3 with 32 MSBs 0x000000004156d2d1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004156d2d1
sw x3, 0(x2) # store x3 (0x4156d2d1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000004156d2d1 from memory into f18
li x3, 0x0ee914d7 # load x3 with 32 MSBs 0x000000000ee914d7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000ee914d7
sw x3, 0(x2) # store x3 (0x0ee914d7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000000ee914d7 from memory into f12
fmin.d f24, f18, f12 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x967e29ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4fc59cd2 # load x3 with 32 MSBs 0x000000004fc59cd2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004fc59cd2
sw x3, 0(x2) # store x3 (0x4fc59cd2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000004fc59cd2 from memory into f3
li x3, 0x1f2ddb88 # load x3 with 32 MSBs 0x000000001f2ddb88
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001f2ddb88
sw x3, 0(x2) # store x3 (0x1f2ddb88) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000001f2ddb88 from memory into f14
fmin.d f25, f3, f14 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xb996fc2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfe400e5e # load x3 with 32 MSBs 0x00000000fe400e5e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fe400e5e
sw x3, 0(x2) # store x3 (0xfe400e5e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000fe400e5e from memory into f24
li x3, 0x8927b627 # load x3 with 32 MSBs 0x000000008927b627
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008927b627
sw x3, 0(x2) # store x3 (0x8927b627) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000008927b627 from memory into f7
fmin.d f26, f24, f7 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x04c47aa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x53337c4c # load x3 with 32 MSBs 0x0000000053337c4c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000053337c4c
sw x3, 0(x2) # store x3 (0x53337c4c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000053337c4c from memory into f14
li x3, 0x44b9d303 # load x3 with 32 MSBs 0x0000000044b9d303
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000044b9d303
sw x3, 0(x2) # store x3 (0x44b9d303) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000044b9d303 from memory into f6
fmin.d f27, f14, f6 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xbc9d47be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e235f9a # load x3 with 32 MSBs 0x000000001e235f9a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001e235f9a
sw x3, 0(x2) # store x3 (0x1e235f9a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000001e235f9a from memory into f28
li x3, 0xafede816 # load x3 with 32 MSBs 0x00000000afede816
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000afede816
sw x3, 0(x2) # store x3 (0xafede816) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000afede816 from memory into f9
fmin.d f28, f28, f9 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xb38fa776 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5ffe692 # load x3 with 32 MSBs 0x00000000f5ffe692
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f5ffe692
sw x3, 0(x2) # store x3 (0xf5ffe692) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000f5ffe692 from memory into f25
li x3, 0x0896ef9b # load x3 with 32 MSBs 0x000000000896ef9b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000896ef9b
sw x3, 0(x2) # store x3 (0x0896ef9b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000000896ef9b from memory into f27
fmin.d f29, f25, f27 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x3334da62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd5047b9 # load x3 with 32 MSBs 0x00000000fd5047b9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fd5047b9
sw x3, 0(x2) # store x3 (0xfd5047b9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000fd5047b9 from memory into f19
li x3, 0xced5bbfa # load x3 with 32 MSBs 0x00000000ced5bbfa
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ced5bbfa
sw x3, 0(x2) # store x3 (0xced5bbfa) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000ced5bbfa from memory into f17
fmin.d f30, f19, f17 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xafcc707a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0325817c # load x3 with 32 MSBs 0x000000000325817c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000325817c
sw x3, 0(x2) # store x3 (0x0325817c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000000325817c from memory into f29
li x3, 0xe06eca72 # load x3 with 32 MSBs 0x00000000e06eca72
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e06eca72
sw x3, 0(x2) # store x3 (0xe06eca72) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000e06eca72 from memory into f23
fmin.d f31, f29, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x10, 0xcbbadb17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5e35600 # load x3 with 32 MSBs 0x00000000f5e35600
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f5e35600
sw x3, 0(x2) # store x3 (0xf5e35600) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000f5e35600 from memory into f0
li x3, 0x3a35b5be # load x3 with 32 MSBs 0x000000003a35b5be
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003a35b5be
sw x3, 0(x2) # store x3 (0x3a35b5be) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000003a35b5be from memory into f1
fmin.d f10, f0, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x1, 0x284356a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeab34a1c # load x3 with 32 MSBs 0x00000000eab34a1c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000eab34a1c
sw x3, 0(x2) # store x3 (0xeab34a1c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000eab34a1c from memory into f1
li x3, 0xfa90e790 # load x3 with 32 MSBs 0x00000000fa90e790
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fa90e790
sw x3, 0(x2) # store x3 (0xfa90e790) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000fa90e790 from memory into f11
fmin.d f1, f1, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x18, 0x611733ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8418b3ed # load x3 with 32 MSBs 0x000000008418b3ed
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008418b3ed
sw x3, 0(x2) # store x3 (0x8418b3ed) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000008418b3ed from memory into f2
li x3, 0x1815b3f6 # load x3 with 32 MSBs 0x000000001815b3f6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001815b3f6
sw x3, 0(x2) # store x3 (0x1815b3f6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000001815b3f6 from memory into f17
fmin.d f18, f2, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x9, 0x02a9a618 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa62f2482 # load x3 with 32 MSBs 0x00000000a62f2482
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a62f2482
sw x3, 0(x2) # store x3 (0xa62f2482) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000a62f2482 from memory into f3
li x3, 0x4b3c71f1 # load x3 with 32 MSBs 0x000000004b3c71f1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004b3c71f1
sw x3, 0(x2) # store x3 (0x4b3c71f1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000004b3c71f1 from memory into f29
fmin.d f9, f3, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x24, 0xa4cb4347 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x401efb69 # load x3 with 32 MSBs 0x00000000401efb69
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000401efb69
sw x3, 0(x2) # store x3 (0x401efb69) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000401efb69 from memory into f4
li x3, 0x4bbfac63 # load x3 with 32 MSBs 0x000000004bbfac63
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004bbfac63
sw x3, 0(x2) # store x3 (0x4bbfac63) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000004bbfac63 from memory into f22
fmin.d f24, f4, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x8, 0x3cb37805 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1cedca08 # load x3 with 32 MSBs 0x000000001cedca08
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001cedca08
sw x3, 0(x2) # store x3 (0x1cedca08) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000001cedca08 from memory into f5
li x3, 0x0dcc9b93 # load x3 with 32 MSBs 0x000000000dcc9b93
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000dcc9b93
sw x3, 0(x2) # store x3 (0x0dcc9b93) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000000dcc9b93 from memory into f16
fmin.d f8, f5, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x29, 0x57a79494 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd9ef4986 # load x3 with 32 MSBs 0x00000000d9ef4986
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d9ef4986
sw x3, 0(x2) # store x3 (0xd9ef4986) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000d9ef4986 from memory into f6
li x3, 0x05e1919d # load x3 with 32 MSBs 0x0000000005e1919d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000005e1919d
sw x3, 0(x2) # store x3 (0x05e1919d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000005e1919d from memory into f19
fmin.d f29, f6, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x21, 0x50efdcc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a522dee # load x3 with 32 MSBs 0x000000002a522dee
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002a522dee
sw x3, 0(x2) # store x3 (0x2a522dee) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000002a522dee from memory into f7
li x3, 0xb595aa73 # load x3 with 32 MSBs 0x00000000b595aa73
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b595aa73
sw x3, 0(x2) # store x3 (0xb595aa73) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000b595aa73 from memory into f17
fmin.d f21, f7, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x6, 0x17aa420d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5954c3d7 # load x3 with 32 MSBs 0x000000005954c3d7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005954c3d7
sw x3, 0(x2) # store x3 (0x5954c3d7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000005954c3d7 from memory into f8
li x3, 0xa61c4e52 # load x3 with 32 MSBs 0x00000000a61c4e52
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a61c4e52
sw x3, 0(x2) # store x3 (0xa61c4e52) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000a61c4e52 from memory into f9
fmin.d f6, f8, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x6, 0x9d20f233 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7734094c # load x3 with 32 MSBs 0x000000007734094c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007734094c
sw x3, 0(x2) # store x3 (0x7734094c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000007734094c from memory into f9
li x3, 0xe6679fe4 # load x3 with 32 MSBs 0x00000000e6679fe4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e6679fe4
sw x3, 0(x2) # store x3 (0xe6679fe4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000e6679fe4 from memory into f4
fmin.d f6, f9, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x6, 0x25be5dec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x28ec0ce0 # load x3 with 32 MSBs 0x0000000028ec0ce0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000028ec0ce0
sw x3, 0(x2) # store x3 (0x28ec0ce0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000028ec0ce0 from memory into f10
li x3, 0xaf4766ab # load x3 with 32 MSBs 0x00000000af4766ab
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000af4766ab
sw x3, 0(x2) # store x3 (0xaf4766ab) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000af4766ab from memory into f25
fmin.d f6, f10, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x14, 0x7120a46a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x49dcb5d5 # load x3 with 32 MSBs 0x0000000049dcb5d5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000049dcb5d5
sw x3, 0(x2) # store x3 (0x49dcb5d5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000049dcb5d5 from memory into f11
li x3, 0xfdb5379c # load x3 with 32 MSBs 0x00000000fdb5379c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fdb5379c
sw x3, 0(x2) # store x3 (0xfdb5379c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000fdb5379c from memory into f5
fmin.d f14, f11, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x5, 0x39608423 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd58b16a2 # load x3 with 32 MSBs 0x00000000d58b16a2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d58b16a2
sw x3, 0(x2) # store x3 (0xd58b16a2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000d58b16a2 from memory into f12
li x3, 0xf1340b80 # load x3 with 32 MSBs 0x00000000f1340b80
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f1340b80
sw x3, 0(x2) # store x3 (0xf1340b80) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000f1340b80 from memory into f8
fmin.d f5, f12, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x15, 0x6b325c55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3127130 # load x3 with 32 MSBs 0x00000000f3127130
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f3127130
sw x3, 0(x2) # store x3 (0xf3127130) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000f3127130 from memory into f13
li x3, 0x82a65517 # load x3 with 32 MSBs 0x0000000082a65517
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000082a65517
sw x3, 0(x2) # store x3 (0x82a65517) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000082a65517 from memory into f31
fmin.d f15, f13, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x31, 0x8b4d70c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1984869f # load x3 with 32 MSBs 0x000000001984869f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001984869f
sw x3, 0(x2) # store x3 (0x1984869f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000001984869f from memory into f14
li x3, 0xdb390330 # load x3 with 32 MSBs 0x00000000db390330
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000db390330
sw x3, 0(x2) # store x3 (0xdb390330) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000db390330 from memory into f2
fmin.d f31, f14, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x17, 0x5933e1b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e2ef339 # load x3 with 32 MSBs 0x000000001e2ef339
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001e2ef339
sw x3, 0(x2) # store x3 (0x1e2ef339) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000001e2ef339 from memory into f15
li x3, 0x554fff41 # load x3 with 32 MSBs 0x00000000554fff41
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000554fff41
sw x3, 0(x2) # store x3 (0x554fff41) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000554fff41 from memory into f25
fmin.d f17, f15, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x24, 0xda843577 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x63485055 # load x3 with 32 MSBs 0x0000000063485055
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000063485055
sw x3, 0(x2) # store x3 (0x63485055) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000063485055 from memory into f16
li x3, 0xf7d1a3a8 # load x3 with 32 MSBs 0x00000000f7d1a3a8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f7d1a3a8
sw x3, 0(x2) # store x3 (0xf7d1a3a8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000f7d1a3a8 from memory into f23
fmin.d f24, f16, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x4, 0xa2aa0a24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x74975f3d # load x3 with 32 MSBs 0x0000000074975f3d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000074975f3d
sw x3, 0(x2) # store x3 (0x74975f3d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000074975f3d from memory into f17
li x3, 0x7c02a3d5 # load x3 with 32 MSBs 0x000000007c02a3d5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007c02a3d5
sw x3, 0(x2) # store x3 (0x7c02a3d5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000007c02a3d5 from memory into f31
fmin.d f4, f17, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x14, 0xd09175ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa536e7b9 # load x3 with 32 MSBs 0x00000000a536e7b9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a536e7b9
sw x3, 0(x2) # store x3 (0xa536e7b9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000a536e7b9 from memory into f18
li x3, 0x6d145e2d # load x3 with 32 MSBs 0x000000006d145e2d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006d145e2d
sw x3, 0(x2) # store x3 (0x6d145e2d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000006d145e2d from memory into f1
fmin.d f14, f18, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x8, 0xde03bf06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc31f433f # load x3 with 32 MSBs 0x00000000c31f433f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c31f433f
sw x3, 0(x2) # store x3 (0xc31f433f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000c31f433f from memory into f19
li x3, 0xea4bc1c2 # load x3 with 32 MSBs 0x00000000ea4bc1c2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ea4bc1c2
sw x3, 0(x2) # store x3 (0xea4bc1c2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000ea4bc1c2 from memory into f15
fmin.d f8, f19, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x8, 0x8608ed33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1fd24db1 # load x3 with 32 MSBs 0x000000001fd24db1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001fd24db1
sw x3, 0(x2) # store x3 (0x1fd24db1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000001fd24db1 from memory into f20
li x3, 0x71da0729 # load x3 with 32 MSBs 0x0000000071da0729
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000071da0729
sw x3, 0(x2) # store x3 (0x71da0729) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000071da0729 from memory into f18
fmin.d f8, f20, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x26, 0xd39c9e5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x97dfaaca # load x3 with 32 MSBs 0x0000000097dfaaca
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000097dfaaca
sw x3, 0(x2) # store x3 (0x97dfaaca) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000097dfaaca from memory into f21
li x3, 0x02789dea # load x3 with 32 MSBs 0x0000000002789dea
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000002789dea
sw x3, 0(x2) # store x3 (0x02789dea) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000002789dea from memory into f19
fmin.d f26, f21, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x21, 0xc565146a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x424bb5a6 # load x3 with 32 MSBs 0x00000000424bb5a6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000424bb5a6
sw x3, 0(x2) # store x3 (0x424bb5a6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000424bb5a6 from memory into f22
li x3, 0xdebc0233 # load x3 with 32 MSBs 0x00000000debc0233
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000debc0233
sw x3, 0(x2) # store x3 (0xdebc0233) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000debc0233 from memory into f5
fmin.d f21, f22, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x8, 0x9b6d4708 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa3ba976c # load x3 with 32 MSBs 0x00000000a3ba976c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a3ba976c
sw x3, 0(x2) # store x3 (0xa3ba976c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000a3ba976c from memory into f23
li x3, 0xda3c28ef # load x3 with 32 MSBs 0x00000000da3c28ef
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000da3c28ef
sw x3, 0(x2) # store x3 (0xda3c28ef) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000da3c28ef from memory into f28
fmin.d f8, f23, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x23, 0x3cff3a3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa883813d # load x3 with 32 MSBs 0x00000000a883813d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a883813d
sw x3, 0(x2) # store x3 (0xa883813d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000a883813d from memory into f24
li x3, 0x7f5e183d # load x3 with 32 MSBs 0x000000007f5e183d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007f5e183d
sw x3, 0(x2) # store x3 (0x7f5e183d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000007f5e183d from memory into f13
fmin.d f23, f24, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x9, 0xc4ef9ffa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6353e3d0 # load x3 with 32 MSBs 0x000000006353e3d0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006353e3d0
sw x3, 0(x2) # store x3 (0x6353e3d0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000006353e3d0 from memory into f25
li x3, 0xe2e5e23a # load x3 with 32 MSBs 0x00000000e2e5e23a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e2e5e23a
sw x3, 0(x2) # store x3 (0xe2e5e23a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000e2e5e23a from memory into f6
fmin.d f9, f25, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x11, 0x0b75e7a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9fd01bfa # load x3 with 32 MSBs 0x000000009fd01bfa
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009fd01bfa
sw x3, 0(x2) # store x3 (0x9fd01bfa) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000009fd01bfa from memory into f26
li x3, 0xa2470575 # load x3 with 32 MSBs 0x00000000a2470575
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a2470575
sw x3, 0(x2) # store x3 (0xa2470575) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000a2470575 from memory into f4
fmin.d f11, f26, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x2, 0xaeaa54f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb5fea49f # load x3 with 32 MSBs 0x00000000b5fea49f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b5fea49f
sw x3, 0(x2) # store x3 (0xb5fea49f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000b5fea49f from memory into f27
li x3, 0x2c49c974 # load x3 with 32 MSBs 0x000000002c49c974
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002c49c974
sw x3, 0(x2) # store x3 (0x2c49c974) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000002c49c974 from memory into f17
fmin.d f2, f27, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x21, 0xea663979 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd5ca4ed3 # load x3 with 32 MSBs 0x00000000d5ca4ed3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d5ca4ed3
sw x3, 0(x2) # store x3 (0xd5ca4ed3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000d5ca4ed3 from memory into f28
li x3, 0x8a82cec4 # load x3 with 32 MSBs 0x000000008a82cec4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008a82cec4
sw x3, 0(x2) # store x3 (0x8a82cec4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000008a82cec4 from memory into f19
fmin.d f21, f28, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x4, 0x86ab863f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1a630125 # load x3 with 32 MSBs 0x000000001a630125
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001a630125
sw x3, 0(x2) # store x3 (0x1a630125) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000001a630125 from memory into f29
li x3, 0x7db43d7e # load x3 with 32 MSBs 0x000000007db43d7e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007db43d7e
sw x3, 0(x2) # store x3 (0x7db43d7e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000007db43d7e from memory into f31
fmin.d f4, f29, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x27, 0x3f7655a7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d5cbb6f # load x3 with 32 MSBs 0x000000009d5cbb6f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009d5cbb6f
sw x3, 0(x2) # store x3 (0x9d5cbb6f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000009d5cbb6f from memory into f30
li x3, 0xe78a28d6 # load x3 with 32 MSBs 0x00000000e78a28d6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e78a28d6
sw x3, 0(x2) # store x3 (0xe78a28d6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000e78a28d6 from memory into f17
fmin.d f27, f30, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x28, 0x8f800826 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0313fc9e # load x3 with 32 MSBs 0x000000000313fc9e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000313fc9e
sw x3, 0(x2) # store x3 (0x0313fc9e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000000313fc9e from memory into f31
li x3, 0x264b0881 # load x3 with 32 MSBs 0x00000000264b0881
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000264b0881
sw x3, 0(x2) # store x3 (0x264b0881) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000264b0881 from memory into f5
fmin.d f28, f31, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x30, 0xa3c6c29a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b004bff # load x3 with 32 MSBs 0x000000004b004bff
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004b004bff
sw x3, 0(x2) # store x3 (0x4b004bff) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000004b004bff from memory into f29
li x3, 0xf11ab4c7 # load x3 with 32 MSBs 0x00000000f11ab4c7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f11ab4c7
sw x3, 0(x2) # store x3 (0xf11ab4c7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000f11ab4c7 from memory into f0
fmin.d f30, f29, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x11, 0x7e342c3a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d6eae61 # load x3 with 32 MSBs 0x000000007d6eae61
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007d6eae61
sw x3, 0(x2) # store x3 (0x7d6eae61) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000007d6eae61 from memory into f29
li x3, 0xa456b747 # load x3 with 32 MSBs 0x00000000a456b747
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a456b747
sw x3, 0(x2) # store x3 (0xa456b747) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000a456b747 from memory into f1
fmin.d f11, f29, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x27, 0xc9db8c5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed558602 # load x3 with 32 MSBs 0x00000000ed558602
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ed558602
sw x3, 0(x2) # store x3 (0xed558602) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000ed558602 from memory into f9
li x3, 0xd665547e # load x3 with 32 MSBs 0x00000000d665547e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d665547e
sw x3, 0(x2) # store x3 (0xd665547e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000d665547e from memory into f2
fmin.d f27, f9, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x16, 0x02c89376 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2883812a # load x3 with 32 MSBs 0x000000002883812a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002883812a
sw x3, 0(x2) # store x3 (0x2883812a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000002883812a from memory into f19
li x3, 0x67103a40 # load x3 with 32 MSBs 0x0000000067103a40
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000067103a40
sw x3, 0(x2) # store x3 (0x67103a40) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000067103a40 from memory into f3
fmin.d f16, f19, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x23, 0x277533a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x806e5bb9 # load x3 with 32 MSBs 0x00000000806e5bb9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000806e5bb9
sw x3, 0(x2) # store x3 (0x806e5bb9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000806e5bb9 from memory into f24
li x3, 0x90d294e4 # load x3 with 32 MSBs 0x0000000090d294e4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000090d294e4
sw x3, 0(x2) # store x3 (0x90d294e4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000090d294e4 from memory into f4
fmin.d f23, f24, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x5, 0x58439b28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1869d453 # load x3 with 32 MSBs 0x000000001869d453
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001869d453
sw x3, 0(x2) # store x3 (0x1869d453) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000001869d453 from memory into f3
li x3, 0x8f75e310 # load x3 with 32 MSBs 0x000000008f75e310
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008f75e310
sw x3, 0(x2) # store x3 (0x8f75e310) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000008f75e310 from memory into f5
fmin.d f5, f3, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x3, 0xb0157b6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd2433cad # load x3 with 32 MSBs 0x00000000d2433cad
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d2433cad
sw x3, 0(x2) # store x3 (0xd2433cad) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000d2433cad from memory into f19
li x3, 0x8dc955fa # load x3 with 32 MSBs 0x000000008dc955fa
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008dc955fa
sw x3, 0(x2) # store x3 (0x8dc955fa) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000008dc955fa from memory into f6
fmin.d f3, f19, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x22, 0x4df01ac1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e8973c3 # load x3 with 32 MSBs 0x000000004e8973c3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004e8973c3
sw x3, 0(x2) # store x3 (0x4e8973c3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000004e8973c3 from memory into f25
li x3, 0xcf6ddc80 # load x3 with 32 MSBs 0x00000000cf6ddc80
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cf6ddc80
sw x3, 0(x2) # store x3 (0xcf6ddc80) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000cf6ddc80 from memory into f7
fmin.d f22, f25, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x24, 0x244b53b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9390fdc5 # load x3 with 32 MSBs 0x000000009390fdc5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009390fdc5
sw x3, 0(x2) # store x3 (0x9390fdc5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000009390fdc5 from memory into f7
li x3, 0x53f5a960 # load x3 with 32 MSBs 0x0000000053f5a960
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000053f5a960
sw x3, 0(x2) # store x3 (0x53f5a960) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000053f5a960 from memory into f8
fmin.d f24, f7, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x14, 0x48ed9916 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x918a1050 # load x3 with 32 MSBs 0x00000000918a1050
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000918a1050
sw x3, 0(x2) # store x3 (0x918a1050) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000918a1050 from memory into f28
li x3, 0x93a20fa3 # load x3 with 32 MSBs 0x0000000093a20fa3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000093a20fa3
sw x3, 0(x2) # store x3 (0x93a20fa3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000093a20fa3 from memory into f9
fmin.d f14, f28, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x18, 0x018a19d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x046cfee7 # load x3 with 32 MSBs 0x00000000046cfee7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000046cfee7
sw x3, 0(x2) # store x3 (0x046cfee7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000046cfee7 from memory into f27
li x3, 0xa81ae430 # load x3 with 32 MSBs 0x00000000a81ae430
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a81ae430
sw x3, 0(x2) # store x3 (0xa81ae430) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000a81ae430 from memory into f10
fmin.d f18, f27, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x17, 0x9b26f8b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x991802a4 # load x3 with 32 MSBs 0x00000000991802a4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000991802a4
sw x3, 0(x2) # store x3 (0x991802a4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000991802a4 from memory into f20
li x3, 0x3648531b # load x3 with 32 MSBs 0x000000003648531b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003648531b
sw x3, 0(x2) # store x3 (0x3648531b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000003648531b from memory into f11
fmin.d f17, f20, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x21, 0x953f0cd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa65b1a22 # load x3 with 32 MSBs 0x00000000a65b1a22
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a65b1a22
sw x3, 0(x2) # store x3 (0xa65b1a22) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000a65b1a22 from memory into f6
li x3, 0xc871a8b8 # load x3 with 32 MSBs 0x00000000c871a8b8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c871a8b8
sw x3, 0(x2) # store x3 (0xc871a8b8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000c871a8b8 from memory into f12
fmin.d f21, f6, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x29, 0x6e940384 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ddbfb56 # load x3 with 32 MSBs 0x000000001ddbfb56
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001ddbfb56
sw x3, 0(x2) # store x3 (0x1ddbfb56) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000001ddbfb56 from memory into f20
li x3, 0xefb72387 # load x3 with 32 MSBs 0x00000000efb72387
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000efb72387
sw x3, 0(x2) # store x3 (0xefb72387) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000efb72387 from memory into f13
fmin.d f29, f20, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x28, 0x60e53847 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1f7898e # load x3 with 32 MSBs 0x00000000c1f7898e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c1f7898e
sw x3, 0(x2) # store x3 (0xc1f7898e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000c1f7898e from memory into f6
li x3, 0x9393a858 # load x3 with 32 MSBs 0x000000009393a858
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009393a858
sw x3, 0(x2) # store x3 (0x9393a858) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000009393a858 from memory into f14
fmin.d f28, f6, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x9, 0x165dffc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x186e8831 # load x3 with 32 MSBs 0x00000000186e8831
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000186e8831
sw x3, 0(x2) # store x3 (0x186e8831) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000186e8831 from memory into f12
li x3, 0x29809921 # load x3 with 32 MSBs 0x0000000029809921
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000029809921
sw x3, 0(x2) # store x3 (0x29809921) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000029809921 from memory into f15
fmin.d f9, f12, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x23, 0x9f5bd909 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5e87717 # load x3 with 32 MSBs 0x00000000e5e87717
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e5e87717
sw x3, 0(x2) # store x3 (0xe5e87717) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000e5e87717 from memory into f31
li x3, 0xb86f7a29 # load x3 with 32 MSBs 0x00000000b86f7a29
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b86f7a29
sw x3, 0(x2) # store x3 (0xb86f7a29) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000b86f7a29 from memory into f16
fmin.d f23, f31, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x6, 0x5a1a7287 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xacfbcb45 # load x3 with 32 MSBs 0x00000000acfbcb45
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000acfbcb45
sw x3, 0(x2) # store x3 (0xacfbcb45) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000acfbcb45 from memory into f18
li x3, 0xa09fe596 # load x3 with 32 MSBs 0x00000000a09fe596
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a09fe596
sw x3, 0(x2) # store x3 (0xa09fe596) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000a09fe596 from memory into f17
fmin.d f6, f18, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x3, 0x8fe15835 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2da0350d # load x3 with 32 MSBs 0x000000002da0350d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002da0350d
sw x3, 0(x2) # store x3 (0x2da0350d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000002da0350d from memory into f5
li x3, 0x380b8f68 # load x3 with 32 MSBs 0x00000000380b8f68
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000380b8f68
sw x3, 0(x2) # store x3 (0x380b8f68) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000380b8f68 from memory into f18
fmin.d f3, f5, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x23, 0x0937f2ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe9641193 # load x3 with 32 MSBs 0x00000000e9641193
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e9641193
sw x3, 0(x2) # store x3 (0xe9641193) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000e9641193 from memory into f6
li x3, 0x91fcd550 # load x3 with 32 MSBs 0x0000000091fcd550
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000091fcd550
sw x3, 0(x2) # store x3 (0x91fcd550) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000091fcd550 from memory into f19
fmin.d f23, f6, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x1, 0x50daea2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ff5e4a0 # load x3 with 32 MSBs 0x000000005ff5e4a0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005ff5e4a0
sw x3, 0(x2) # store x3 (0x5ff5e4a0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000005ff5e4a0 from memory into f23
li x3, 0xcfaf24de # load x3 with 32 MSBs 0x00000000cfaf24de
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cfaf24de
sw x3, 0(x2) # store x3 (0xcfaf24de) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000cfaf24de from memory into f20
fmin.d f1, f23, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x5, 0xd3187a0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa25e5776 # load x3 with 32 MSBs 0x00000000a25e5776
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a25e5776
sw x3, 0(x2) # store x3 (0xa25e5776) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000a25e5776 from memory into f2
li x3, 0xbdf56dd3 # load x3 with 32 MSBs 0x00000000bdf56dd3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bdf56dd3
sw x3, 0(x2) # store x3 (0xbdf56dd3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000bdf56dd3 from memory into f21
fmin.d f5, f2, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x2, 0x3c65dca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbacc0922 # load x3 with 32 MSBs 0x00000000bacc0922
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bacc0922
sw x3, 0(x2) # store x3 (0xbacc0922) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000bacc0922 from memory into f20
li x3, 0xe2cbfbc2 # load x3 with 32 MSBs 0x00000000e2cbfbc2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e2cbfbc2
sw x3, 0(x2) # store x3 (0xe2cbfbc2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000e2cbfbc2 from memory into f22
fmin.d f2, f20, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x7, 0x4a24e682 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60a80eec # load x3 with 32 MSBs 0x0000000060a80eec
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000060a80eec
sw x3, 0(x2) # store x3 (0x60a80eec) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000060a80eec from memory into f27
li x3, 0x47ac8fec # load x3 with 32 MSBs 0x0000000047ac8fec
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000047ac8fec
sw x3, 0(x2) # store x3 (0x47ac8fec) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000047ac8fec from memory into f23
fmin.d f7, f27, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x5, 0x8dab325f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75c70204 # load x3 with 32 MSBs 0x0000000075c70204
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000075c70204
sw x3, 0(x2) # store x3 (0x75c70204) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000075c70204 from memory into f10
li x3, 0xe1df1b17 # load x3 with 32 MSBs 0x00000000e1df1b17
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e1df1b17
sw x3, 0(x2) # store x3 (0xe1df1b17) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000e1df1b17 from memory into f24
fmin.d f5, f10, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x1, 0x432d82e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b48049e # load x3 with 32 MSBs 0x000000005b48049e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005b48049e
sw x3, 0(x2) # store x3 (0x5b48049e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000005b48049e from memory into f6
li x3, 0xd7474f44 # load x3 with 32 MSBs 0x00000000d7474f44
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d7474f44
sw x3, 0(x2) # store x3 (0xd7474f44) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000d7474f44 from memory into f25
fmin.d f1, f6, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x11, 0x740f42af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x35387d96 # load x3 with 32 MSBs 0x0000000035387d96
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000035387d96
sw x3, 0(x2) # store x3 (0x35387d96) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000035387d96 from memory into f1
li x3, 0x52106f86 # load x3 with 32 MSBs 0x0000000052106f86
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000052106f86
sw x3, 0(x2) # store x3 (0x52106f86) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000052106f86 from memory into f26
fmin.d f11, f1, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x10, 0x39b811e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1f4b4ea # load x3 with 32 MSBs 0x00000000f1f4b4ea
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f1f4b4ea
sw x3, 0(x2) # store x3 (0xf1f4b4ea) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000f1f4b4ea from memory into f2
li x3, 0x90aa17c7 # load x3 with 32 MSBs 0x0000000090aa17c7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000090aa17c7
sw x3, 0(x2) # store x3 (0x90aa17c7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000090aa17c7 from memory into f27
fmin.d f10, f2, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x6, 0x2145f188 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc6346bf8 # load x3 with 32 MSBs 0x00000000c6346bf8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c6346bf8
sw x3, 0(x2) # store x3 (0xc6346bf8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000c6346bf8 from memory into f18
li x3, 0x540598a8 # load x3 with 32 MSBs 0x00000000540598a8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000540598a8
sw x3, 0(x2) # store x3 (0x540598a8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000540598a8 from memory into f28
fmin.d f6, f18, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x25, 0x869bf594 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x628491bd # load x3 with 32 MSBs 0x00000000628491bd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000628491bd
sw x3, 0(x2) # store x3 (0x628491bd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000628491bd from memory into f21
li x3, 0xf923d8b6 # load x3 with 32 MSBs 0x00000000f923d8b6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f923d8b6
sw x3, 0(x2) # store x3 (0xf923d8b6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000f923d8b6 from memory into f29
fmin.d f25, f21, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x11, 0x2c110693 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1caae1d8 # load x3 with 32 MSBs 0x000000001caae1d8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001caae1d8
sw x3, 0(x2) # store x3 (0x1caae1d8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000001caae1d8 from memory into f9
li x3, 0x291dda7c # load x3 with 32 MSBs 0x00000000291dda7c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000291dda7c
sw x3, 0(x2) # store x3 (0x291dda7c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000291dda7c from memory into f30
fmin.d f11, f9, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x22, 0xba18dd4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x36cf90a6 # load x3 with 32 MSBs 0x0000000036cf90a6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000036cf90a6
sw x3, 0(x2) # store x3 (0x36cf90a6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000036cf90a6 from memory into f29
li x3, 0xae051a92 # load x3 with 32 MSBs 0x00000000ae051a92
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ae051a92
sw x3, 0(x2) # store x3 (0xae051a92) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000ae051a92 from memory into f31
fmin.d f22, f29, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
