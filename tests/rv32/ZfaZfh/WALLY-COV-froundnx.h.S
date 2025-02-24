///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/ZfaZfh//WALLY-COV-froundnx.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.156504
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
froundnx.h f10, f27 # perform first operation
froundnx.h f16, f10 # perform second operation

# Testcase cmp_gpr_hazard raw test
froundnx.h f6, f12 # perform first operation
froundnx.h f15, f11 # perform second operation

# Testcase cmp_gpr_hazard waw test
froundnx.h f14, f24 # perform first operation
froundnx.h f14, f4 # perform second operation

# Testcase cmp_gpr_hazard waw test
froundnx.h f31, f16 # perform first operation
froundnx.h f31, f31 # perform second operation

# Testcase cmp_gpr_hazard war test
froundnx.h f27, f26 # perform first operation
froundnx.h f26, f4 # perform second operation

# Testcase cmp_gpr_hazard war test
froundnx.h f15, f26 # perform first operation
froundnx.h f2, f11 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x2016bea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e6bb81f # load x3 with value 0x4e6bb81f
sw x3, 0(x2) # store 0x4e6bb81f in memory
flh f0, 0(x2) # load 0x4e6bb81f from memory into f0
froundnx.h f0, f0 # perform operation
froundnx.h f0, f0 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x9e362d77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0e9c053 # load x3 with value 0xd0e9c053
sw x3, 0(x2) # store 0xd0e9c053 in memory
flh f1, 0(x2) # load 0xd0e9c053 from memory into f1
froundnx.h f1, f1 # perform operation
froundnx.h f1, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0x7a31057d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab963054 # load x3 with value 0xab963054
sw x3, 0(x2) # store 0xab963054 in memory
flh f2, 0(x2) # load 0xab963054 from memory into f2
froundnx.h f2, f2 # perform operation
froundnx.h f2, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0xda430176 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x92ac49f6 # load x3 with value 0x92ac49f6
sw x3, 0(x2) # store 0x92ac49f6 in memory
flh f3, 0(x2) # load 0x92ac49f6 from memory into f3
froundnx.h f3, f3 # perform operation
froundnx.h f3, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x838da5e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x902398a1 # load x3 with value 0x902398a1
sw x3, 0(x2) # store 0x902398a1 in memory
flh f4, 0(x2) # load 0x902398a1 from memory into f4
froundnx.h f4, f4 # perform operation
froundnx.h f4, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x8957f3b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3737e1f # load x3 with value 0xf3737e1f
sw x3, 0(x2) # store 0xf3737e1f in memory
flh f5, 0(x2) # load 0xf3737e1f from memory into f5
froundnx.h f5, f5 # perform operation
froundnx.h f5, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x68cd6f80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x61fc2b20 # load x3 with value 0x61fc2b20
sw x3, 0(x2) # store 0x61fc2b20 in memory
flh f6, 0(x2) # load 0x61fc2b20 from memory into f6
froundnx.h f6, f6 # perform operation
froundnx.h f6, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0xb26a8cea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf7e959dd # load x3 with value 0xf7e959dd
sw x3, 0(x2) # store 0xf7e959dd in memory
flh f7, 0(x2) # load 0xf7e959dd from memory into f7
froundnx.h f7, f7 # perform operation
froundnx.h f7, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x6f6948b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0fddd175 # load x3 with value 0x0fddd175
sw x3, 0(x2) # store 0x0fddd175 in memory
flh f8, 0(x2) # load 0x0fddd175 from memory into f8
froundnx.h f8, f8 # perform operation
froundnx.h f8, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0x99124663 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f1e7547 # load x3 with value 0x3f1e7547
sw x3, 0(x2) # store 0x3f1e7547 in memory
flh f9, 0(x2) # load 0x3f1e7547 from memory into f9
froundnx.h f9, f9 # perform operation
froundnx.h f9, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0xb29715f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf811a646 # load x3 with value 0xf811a646
sw x3, 0(x2) # store 0xf811a646 in memory
flh f10, 0(x2) # load 0xf811a646 from memory into f10
froundnx.h f10, f10 # perform operation
froundnx.h f10, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x59aea13d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5afc542 # load x3 with value 0xc5afc542
sw x3, 0(x2) # store 0xc5afc542 in memory
flh f11, 0(x2) # load 0xc5afc542 from memory into f11
froundnx.h f11, f11 # perform operation
froundnx.h f11, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x17e67d93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3b66fb50 # load x3 with value 0x3b66fb50
sw x3, 0(x2) # store 0x3b66fb50 in memory
flh f12, 0(x2) # load 0x3b66fb50 from memory into f12
froundnx.h f12, f12 # perform operation
froundnx.h f12, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0xb46cd8f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaa464d32 # load x3 with value 0xaa464d32
sw x3, 0(x2) # store 0xaa464d32 in memory
flh f13, 0(x2) # load 0xaa464d32 from memory into f13
froundnx.h f13, f13 # perform operation
froundnx.h f13, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0x36f3f963 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c0c86eb # load x3 with value 0x7c0c86eb
sw x3, 0(x2) # store 0x7c0c86eb in memory
flh f14, 0(x2) # load 0x7c0c86eb from memory into f14
froundnx.h f14, f14 # perform operation
froundnx.h f14, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x2b6947a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe07bb33d # load x3 with value 0xe07bb33d
sw x3, 0(x2) # store 0xe07bb33d in memory
flh f15, 0(x2) # load 0xe07bb33d from memory into f15
froundnx.h f15, f15 # perform operation
froundnx.h f15, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x60f78fb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x540e65b1 # load x3 with value 0x540e65b1
sw x3, 0(x2) # store 0x540e65b1 in memory
flh f16, 0(x2) # load 0x540e65b1 from memory into f16
froundnx.h f16, f16 # perform operation
froundnx.h f16, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x02645bfb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf9253c2 # load x3 with value 0xdf9253c2
sw x3, 0(x2) # store 0xdf9253c2 in memory
flh f17, 0(x2) # load 0xdf9253c2 from memory into f17
froundnx.h f17, f17 # perform operation
froundnx.h f17, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0xdb3591bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f3cdaf2 # load x3 with value 0x3f3cdaf2
sw x3, 0(x2) # store 0x3f3cdaf2 in memory
flh f18, 0(x2) # load 0x3f3cdaf2 from memory into f18
froundnx.h f18, f18 # perform operation
froundnx.h f18, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x6ed07a8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1490ba32 # load x3 with value 0x1490ba32
sw x3, 0(x2) # store 0x1490ba32 in memory
flh f19, 0(x2) # load 0x1490ba32 from memory into f19
froundnx.h f19, f19 # perform operation
froundnx.h f19, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x9fa326e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb211bf45 # load x3 with value 0xb211bf45
sw x3, 0(x2) # store 0xb211bf45 in memory
flh f20, 0(x2) # load 0xb211bf45 from memory into f20
froundnx.h f20, f20 # perform operation
froundnx.h f20, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x9ee86470 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xef2382bc # load x3 with value 0xef2382bc
sw x3, 0(x2) # store 0xef2382bc in memory
flh f21, 0(x2) # load 0xef2382bc from memory into f21
froundnx.h f21, f21 # perform operation
froundnx.h f21, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0xa47e247c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1f64f7d7 # load x3 with value 0x1f64f7d7
sw x3, 0(x2) # store 0x1f64f7d7 in memory
flh f22, 0(x2) # load 0x1f64f7d7 from memory into f22
froundnx.h f22, f22 # perform operation
froundnx.h f22, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x8cf370d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x633b457f # load x3 with value 0x633b457f
sw x3, 0(x2) # store 0x633b457f in memory
flh f23, 0(x2) # load 0x633b457f from memory into f23
froundnx.h f23, f23 # perform operation
froundnx.h f23, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0xbe42c14f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2973aba1 # load x3 with value 0x2973aba1
sw x3, 0(x2) # store 0x2973aba1 in memory
flh f24, 0(x2) # load 0x2973aba1 from memory into f24
froundnx.h f24, f24 # perform operation
froundnx.h f24, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x73d75fde # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab7d4b97 # load x3 with value 0xab7d4b97
sw x3, 0(x2) # store 0xab7d4b97 in memory
flh f25, 0(x2) # load 0xab7d4b97 from memory into f25
froundnx.h f25, f25 # perform operation
froundnx.h f25, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0xb19bf9d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x96771dd7 # load x3 with value 0x96771dd7
sw x3, 0(x2) # store 0x96771dd7 in memory
flh f26, 0(x2) # load 0x96771dd7 from memory into f26
froundnx.h f26, f26 # perform operation
froundnx.h f26, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0xc27ed1ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84fcd72b # load x3 with value 0x84fcd72b
sw x3, 0(x2) # store 0x84fcd72b in memory
flh f27, 0(x2) # load 0x84fcd72b from memory into f27
froundnx.h f27, f27 # perform operation
froundnx.h f27, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x180a1505 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd484229f # load x3 with value 0xd484229f
sw x3, 0(x2) # store 0xd484229f in memory
flh f28, 0(x2) # load 0xd484229f from memory into f28
froundnx.h f28, f28 # perform operation
froundnx.h f28, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x43715775 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d920ee1 # load x3 with value 0x9d920ee1
sw x3, 0(x2) # store 0x9d920ee1 in memory
flh f29, 0(x2) # load 0x9d920ee1 from memory into f29
froundnx.h f29, f29 # perform operation
froundnx.h f29, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0x0f89d2a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ed7fb0b # load x3 with value 0x3ed7fb0b
sw x3, 0(x2) # store 0x3ed7fb0b in memory
flh f30, 0(x2) # load 0x3ed7fb0b from memory into f30
froundnx.h f30, f30 # perform operation
froundnx.h f30, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0xec3615c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5d90b443 # load x3 with value 0x5d90b443
sw x3, 0(x2) # store 0x5d90b443 in memory
flh f31, 0(x2) # load 0x5d90b443 from memory into f31
froundnx.h f31, f31 # perform operation
froundnx.h f31, f31 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x45b50f5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b6598b9 # load x3 with value 0x6b6598b9
sw x3, 0(x2) # store 0x6b6598b9 in memory
flh f8, 0(x2) # load 0x6b6598b9 from memory into f8
froundnx.h f0, f8 # perform operation
froundnx.h f0, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0x563f5c16 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50f26c55 # load x3 with value 0x50f26c55
sw x3, 0(x2) # store 0x50f26c55 in memory
flh f28, 0(x2) # load 0x50f26c55 from memory into f28
froundnx.h f1, f28 # perform operation
froundnx.h f1, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0x65119028 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x01b18f8a # load x3 with value 0x01b18f8a
sw x3, 0(x2) # store 0x01b18f8a in memory
flh f13, 0(x2) # load 0x01b18f8a from memory into f13
froundnx.h f2, f13 # perform operation
froundnx.h f2, f13 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0x286aaa84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe82ea4d2 # load x3 with value 0xe82ea4d2
sw x3, 0(x2) # store 0xe82ea4d2 in memory
flh f23, 0(x2) # load 0xe82ea4d2 from memory into f23
froundnx.h f3, f23 # perform operation
froundnx.h f3, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0x09c0c7b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2afb501a # load x3 with value 0x2afb501a
sw x3, 0(x2) # store 0x2afb501a in memory
flh f29, 0(x2) # load 0x2afb501a from memory into f29
froundnx.h f4, f29 # perform operation
froundnx.h f4, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0x8da9a95c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa25223d0 # load x3 with value 0xa25223d0
sw x3, 0(x2) # store 0xa25223d0 in memory
flh f23, 0(x2) # load 0xa25223d0 from memory into f23
froundnx.h f5, f23 # perform operation
froundnx.h f5, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0xf6884459 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd9530435 # load x3 with value 0xd9530435
sw x3, 0(x2) # store 0xd9530435 in memory
flh f27, 0(x2) # load 0xd9530435 from memory into f27
froundnx.h f6, f27 # perform operation
froundnx.h f6, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0x7fef702b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e723c49 # load x3 with value 0x1e723c49
sw x3, 0(x2) # store 0x1e723c49 in memory
flh f30, 0(x2) # load 0x1e723c49 from memory into f30
froundnx.h f7, f30 # perform operation
froundnx.h f7, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0x4521a5ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd8f6e874 # load x3 with value 0xd8f6e874
sw x3, 0(x2) # store 0xd8f6e874 in memory
flh f28, 0(x2) # load 0xd8f6e874 from memory into f28
froundnx.h f8, f28 # perform operation
froundnx.h f8, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x7f8b318d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x840273ae # load x3 with value 0x840273ae
sw x3, 0(x2) # store 0x840273ae in memory
flh f16, 0(x2) # load 0x840273ae from memory into f16
froundnx.h f9, f16 # perform operation
froundnx.h f9, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0xe4cac618 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae2fe8fa # load x3 with value 0xae2fe8fa
sw x3, 0(x2) # store 0xae2fe8fa in memory
flh f30, 0(x2) # load 0xae2fe8fa from memory into f30
froundnx.h f10, f30 # perform operation
froundnx.h f10, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x191ca4d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x373894c4 # load x3 with value 0x373894c4
sw x3, 0(x2) # store 0x373894c4 in memory
flh f9, 0(x2) # load 0x373894c4 from memory into f9
froundnx.h f11, f9 # perform operation
froundnx.h f11, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0xcf2df382 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14000f2e # load x3 with value 0x14000f2e
sw x3, 0(x2) # store 0x14000f2e in memory
flh f29, 0(x2) # load 0x14000f2e from memory into f29
froundnx.h f12, f29 # perform operation
froundnx.h f12, f29 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0xd1f54e8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe8e56e25 # load x3 with value 0xe8e56e25
sw x3, 0(x2) # store 0xe8e56e25 in memory
flh f23, 0(x2) # load 0xe8e56e25 from memory into f23
froundnx.h f13, f23 # perform operation
froundnx.h f13, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0x9c947b58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab7c7775 # load x3 with value 0xab7c7775
sw x3, 0(x2) # store 0xab7c7775 in memory
flh f27, 0(x2) # load 0xab7c7775 from memory into f27
froundnx.h f14, f27 # perform operation
froundnx.h f14, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0x62007a1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9111afc1 # load x3 with value 0x9111afc1
sw x3, 0(x2) # store 0x9111afc1 in memory
flh f14, 0(x2) # load 0x9111afc1 from memory into f14
froundnx.h f15, f14 # perform operation
froundnx.h f15, f14 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0x81701aa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4cf9905 # load x3 with value 0xb4cf9905
sw x3, 0(x2) # store 0xb4cf9905 in memory
flh f8, 0(x2) # load 0xb4cf9905 from memory into f8
froundnx.h f16, f8 # perform operation
froundnx.h f16, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x29ebd6f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc5125806 # load x3 with value 0xc5125806
sw x3, 0(x2) # store 0xc5125806 in memory
flh f20, 0(x2) # load 0xc5125806 from memory into f20
froundnx.h f17, f20 # perform operation
froundnx.h f17, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0x274bf9ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0dcf88e4 # load x3 with value 0x0dcf88e4
sw x3, 0(x2) # store 0x0dcf88e4 in memory
flh f16, 0(x2) # load 0x0dcf88e4 from memory into f16
froundnx.h f18, f16 # perform operation
froundnx.h f18, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0xce8ec155 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x462371c4 # load x3 with value 0x462371c4
sw x3, 0(x2) # store 0x462371c4 in memory
flh f8, 0(x2) # load 0x462371c4 from memory into f8
froundnx.h f19, f8 # perform operation
froundnx.h f19, f8 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0x93cc43f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb51e48d # load x3 with value 0xbb51e48d
sw x3, 0(x2) # store 0xbb51e48d in memory
flh f9, 0(x2) # load 0xbb51e48d from memory into f9
froundnx.h f20, f9 # perform operation
froundnx.h f20, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x548aa4a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x791e5e07 # load x3 with value 0x791e5e07
sw x3, 0(x2) # store 0x791e5e07 in memory
flh f22, 0(x2) # load 0x791e5e07 from memory into f22
froundnx.h f21, f22 # perform operation
froundnx.h f21, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0x5e579629 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ee318ab # load x3 with value 0x7ee318ab
sw x3, 0(x2) # store 0x7ee318ab in memory
flh f15, 0(x2) # load 0x7ee318ab from memory into f15
froundnx.h f22, f15 # perform operation
froundnx.h f22, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0x9cbd4e25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc10c5813 # load x3 with value 0xc10c5813
sw x3, 0(x2) # store 0xc10c5813 in memory
flh f6, 0(x2) # load 0xc10c5813 from memory into f6
froundnx.h f23, f6 # perform operation
froundnx.h f23, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0xc0362253 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce5f2380 # load x3 with value 0xce5f2380
sw x3, 0(x2) # store 0xce5f2380 in memory
flh f5, 0(x2) # load 0xce5f2380 from memory into f5
froundnx.h f24, f5 # perform operation
froundnx.h f24, f5 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0xfd0bec25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x850ea0c2 # load x3 with value 0x850ea0c2
sw x3, 0(x2) # store 0x850ea0c2 in memory
flh f4, 0(x2) # load 0x850ea0c2 from memory into f4
froundnx.h f25, f4 # perform operation
froundnx.h f25, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0xa7813a2b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x601b385c # load x3 with value 0x601b385c
sw x3, 0(x2) # store 0x601b385c in memory
flh f10, 0(x2) # load 0x601b385c from memory into f10
froundnx.h f26, f10 # perform operation
froundnx.h f26, f10 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0x28252865 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb456bc87 # load x3 with value 0xb456bc87
sw x3, 0(x2) # store 0xb456bc87 in memory
flh f25, 0(x2) # load 0xb456bc87 from memory into f25
froundnx.h f27, f25 # perform operation
froundnx.h f27, f25 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0x0d36a2dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x599a0e9f # load x3 with value 0x599a0e9f
sw x3, 0(x2) # store 0x599a0e9f in memory
flh f16, 0(x2) # load 0x599a0e9f from memory into f16
froundnx.h f28, f16 # perform operation
froundnx.h f28, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0x18880d79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x70fc8e03 # load x3 with value 0x70fc8e03
sw x3, 0(x2) # store 0x70fc8e03 in memory
flh f1, 0(x2) # load 0x70fc8e03 from memory into f1
froundnx.h f29, f1 # perform operation
froundnx.h f29, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0x9e659f8a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x37c00d59 # load x3 with value 0x37c00d59
sw x3, 0(x2) # store 0x37c00d59 in memory
flh f30, 0(x2) # load 0x37c00d59 from memory into f30
froundnx.h f30, f30 # perform operation
froundnx.h f30, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0x014a431d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3bf96a2e # load x3 with value 0x3bf96a2e
sw x3, 0(x2) # store 0x3bf96a2e in memory
flh f13, 0(x2) # load 0x3bf96a2e from memory into f13
froundnx.h f31, f13 # perform operation
froundnx.h f31, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x27, 0xa3181d48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f21, 0(x2) # load 0x00000000 from memory into f21
froundnx.h f27, f21 # perform operation
froundnx.h f27, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x14, 0x2b9bee12 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f4, 0(x2) # load 0x00008000 from memory into f4
froundnx.h f14, f4 # perform operation
froundnx.h f14, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x14, 0xebe94983 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f28, 0(x2) # load 0x00003c00 from memory into f28
froundnx.h f14, f28 # perform operation
froundnx.h f14, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x30, 0x344efa83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f19, 0(x2) # load 0x0000bc00 from memory into f19
froundnx.h f30, f19 # perform operation
froundnx.h f30, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x3, 0xe3d9f33d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f5, 0(x2) # load 0x00003e00 from memory into f5
froundnx.h f3, f5 # perform operation
froundnx.h f3, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x16, 0xa2d6debe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f26, 0(x2) # load 0x0000be00 from memory into f26
froundnx.h f16, f26 # perform operation
froundnx.h f16, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x17, 0xbc2bd169 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f20, 0(x2) # load 0x00004000 from memory into f20
froundnx.h f17, f20 # perform operation
froundnx.h f17, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x31, 0xac77fd35 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f10, 0(x2) # load 0x0000c000 from memory into f10
froundnx.h f31, f10 # perform operation
froundnx.h f31, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x23, 0x48a97e62 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f19, 0(x2) # load 0x00000400 from memory into f19
froundnx.h f23, f19 # perform operation
froundnx.h f23, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x10, 0x8e7b8466 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f21, 0(x2) # load 0x00008400 from memory into f21
froundnx.h f10, f21 # perform operation
froundnx.h f10, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x19, 0x01bfa9e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f22, 0(x2) # load 0x00007bff from memory into f22
froundnx.h f19, f22 # perform operation
froundnx.h f19, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x16, 0x670dda94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f23, 0(x2) # load 0x0000fbff from memory into f23
froundnx.h f16, f23 # perform operation
froundnx.h f16, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x15, 0x719853e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f10, 0(x2) # load 0x000003ff from memory into f10
froundnx.h f15, f10 # perform operation
froundnx.h f15, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x17, 0xef6d4454 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f6, 0(x2) # load 0x000083ff from memory into f6
froundnx.h f17, f6 # perform operation
froundnx.h f17, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x12, 0x7baaafc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f31, 0(x2) # load 0x00000200 from memory into f31
froundnx.h f12, f31 # perform operation
froundnx.h f12, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x15, 0x3389a9a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f17, 0(x2) # load 0x00008200 from memory into f17
froundnx.h f15, f17 # perform operation
froundnx.h f15, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x6, 0x4430d9c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f21, 0(x2) # load 0x00000001 from memory into f21
froundnx.h f6, f21 # perform operation
froundnx.h f6, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x26, 0xa00f4cce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f21, 0(x2) # load 0x00008001 from memory into f21
froundnx.h f26, f21 # perform operation
froundnx.h f26, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x25, 0x5d9956fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f30, 0(x2) # load 0x00007c00 from memory into f30
froundnx.h f25, f30 # perform operation
froundnx.h f25, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x19, 0x5073101c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f4, 0(x2) # load 0x0000fc00 from memory into f4
froundnx.h f19, f4 # perform operation
froundnx.h f19, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x24, 0x156c6fc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f2, 0(x2) # load 0x00007e00 from memory into f2
froundnx.h f24, f2 # perform operation
froundnx.h f24, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x6, 0x4406427d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f23, 0(x2) # load 0x00007fff from memory into f23
froundnx.h f6, f23 # perform operation
froundnx.h f6, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x17, 0x0dde5afb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f18, 0(x2) # load 0x00007c01 from memory into f18
froundnx.h f17, f18 # perform operation
froundnx.h f17, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x5, 0xbc7df933 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f30, 0(x2) # load 0x00007dff from memory into f30
froundnx.h f5, f30 # perform operation
froundnx.h f5, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x20, 0x3766d85e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f27, 0(x2) # load 0x000058b4 from memory into f27
froundnx.h f20, f27 # perform operation
froundnx.h f20, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x12, 0x664e72ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f21, 0(x2) # load 0x0000c93a from memory into f21
froundnx.h f12, f21 # perform operation
froundnx.h f12, f21 # perform operation

# Testcase cp_frm
li x16, 0xdd3c1078 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x083c4d9e # load x3 with value 0x083c4d9e
sw x3, 0(x2) # store 0x083c4d9e in memory
flh f1, 0(x2) # load 0x083c4d9e from memory into f1
froundnx.h f16, f1 # perform operation
froundnx.h f16, f1, dyn # perform operation
froundnx.h f16, f1, rdn # perform operation
froundnx.h f16, f1, rmm # perform operation
froundnx.h f16, f1, rne # perform operation
froundnx.h f16, f1, rtz # perform operation
froundnx.h f16, f1, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
froundnx.h f16, f1 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
froundnx.h f16, f1 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
froundnx.h f16, f1 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
froundnx.h f16, f1 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
froundnx.h f16, f1 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xbf868750 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d8f4c61 # load x3 with value 0x4d8f4c61
sw x3, 0(x2) # store 0x4d8f4c61 in memory
flh f2, 0(x2) # load 0x4d8f4c61 from memory into f2
froundnx.h f0, f2 # perform operation
froundnx.h f0, f2 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x98b717d4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813650a7 # load x3 with value 0x813650a7
sw x3, 0(x2) # store 0x813650a7 in memory
flh f30, 0(x2) # load 0x813650a7 from memory into f30
froundnx.h f1, f30 # perform operation
froundnx.h f1, f30 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xc875abd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdec4cbb9 # load x3 with value 0xdec4cbb9
sw x3, 0(x2) # store 0xdec4cbb9 in memory
flh f17, 0(x2) # load 0xdec4cbb9 from memory into f17
froundnx.h f2, f17 # perform operation
froundnx.h f2, f17 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x2980e822 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2528e005 # load x3 with value 0x2528e005
sw x3, 0(x2) # store 0x2528e005 in memory
flh f11, 0(x2) # load 0x2528e005 from memory into f11
froundnx.h f3, f11 # perform operation
froundnx.h f3, f11 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x47f29c19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c9a0ad1 # load x3 with value 0x3c9a0ad1
sw x3, 0(x2) # store 0x3c9a0ad1 in memory
flh f7, 0(x2) # load 0x3c9a0ad1 from memory into f7
froundnx.h f4, f7 # perform operation
froundnx.h f4, f7 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x8ac88e6e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60215b6f # load x3 with value 0x60215b6f
sw x3, 0(x2) # store 0x60215b6f in memory
flh f13, 0(x2) # load 0x60215b6f from memory into f13
froundnx.h f5, f13 # perform operation
froundnx.h f5, f13 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xd512724a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa5568b9e # load x3 with value 0xa5568b9e
sw x3, 0(x2) # store 0xa5568b9e in memory
flh f21, 0(x2) # load 0xa5568b9e from memory into f21
froundnx.h f6, f21 # perform operation
froundnx.h f6, f21 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xd1bad6b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x177c96b4 # load x3 with value 0x177c96b4
sw x3, 0(x2) # store 0x177c96b4 in memory
flh f24, 0(x2) # load 0x177c96b4 from memory into f24
froundnx.h f7, f24 # perform operation
froundnx.h f7, f24 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xb431407f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe1a7b792 # load x3 with value 0xe1a7b792
sw x3, 0(x2) # store 0xe1a7b792 in memory
flh f31, 0(x2) # load 0xe1a7b792 from memory into f31
froundnx.h f8, f31 # perform operation
froundnx.h f8, f31 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xcbd0d2c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f7518c0 # load x3 with value 0x2f7518c0
sw x3, 0(x2) # store 0x2f7518c0 in memory
flh f16, 0(x2) # load 0x2f7518c0 from memory into f16
froundnx.h f9, f16 # perform operation
froundnx.h f9, f16 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xd9d33503 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0258c9cb # load x3 with value 0x0258c9cb
sw x3, 0(x2) # store 0x0258c9cb in memory
flh f26, 0(x2) # load 0x0258c9cb from memory into f26
froundnx.h f10, f26 # perform operation
froundnx.h f10, f26 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xcea7fec2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ef217ad # load x3 with value 0x2ef217ad
sw x3, 0(x2) # store 0x2ef217ad in memory
flh f29, 0(x2) # load 0x2ef217ad from memory into f29
froundnx.h f11, f29 # perform operation
froundnx.h f11, f29 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x361cef9f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9d1e5ee9 # load x3 with value 0x9d1e5ee9
sw x3, 0(x2) # store 0x9d1e5ee9 in memory
flh f5, 0(x2) # load 0x9d1e5ee9 from memory into f5
froundnx.h f12, f5 # perform operation
froundnx.h f12, f5 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xc6c05cc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6cd5081c # load x3 with value 0x6cd5081c
sw x3, 0(x2) # store 0x6cd5081c in memory
flh f7, 0(x2) # load 0x6cd5081c from memory into f7
froundnx.h f13, f7 # perform operation
froundnx.h f13, f7 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xcefe1844 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeeaea28a # load x3 with value 0xeeaea28a
sw x3, 0(x2) # store 0xeeaea28a in memory
flh f9, 0(x2) # load 0xeeaea28a from memory into f9
froundnx.h f14, f9 # perform operation
froundnx.h f14, f9 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xdf7176c5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5c4ebda # load x3 with value 0xe5c4ebda
sw x3, 0(x2) # store 0xe5c4ebda in memory
flh f18, 0(x2) # load 0xe5c4ebda from memory into f18
froundnx.h f15, f18 # perform operation
froundnx.h f15, f18 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x7214def3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x52984a9c # load x3 with value 0x52984a9c
sw x3, 0(x2) # store 0x52984a9c in memory
flh f25, 0(x2) # load 0x52984a9c from memory into f25
froundnx.h f16, f25 # perform operation
froundnx.h f16, f25 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x2ae992ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd38c87e8 # load x3 with value 0xd38c87e8
sw x3, 0(x2) # store 0xd38c87e8 in memory
flh f11, 0(x2) # load 0xd38c87e8 from memory into f11
froundnx.h f17, f11 # perform operation
froundnx.h f17, f11 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x9a609806 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x215d78c2 # load x3 with value 0x215d78c2
sw x3, 0(x2) # store 0x215d78c2 in memory
flh f19, 0(x2) # load 0x215d78c2 from memory into f19
froundnx.h f18, f19 # perform operation
froundnx.h f18, f19 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x054bb4dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfae217f8 # load x3 with value 0xfae217f8
sw x3, 0(x2) # store 0xfae217f8 in memory
flh f18, 0(x2) # load 0xfae217f8 from memory into f18
froundnx.h f19, f18 # perform operation
froundnx.h f19, f18 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x2a7b5d25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6870bc22 # load x3 with value 0x6870bc22
sw x3, 0(x2) # store 0x6870bc22 in memory
flh f14, 0(x2) # load 0x6870bc22 from memory into f14
froundnx.h f20, f14 # perform operation
froundnx.h f20, f14 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xebaaaed0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2da01e97 # load x3 with value 0x2da01e97
sw x3, 0(x2) # store 0x2da01e97 in memory
flh f5, 0(x2) # load 0x2da01e97 from memory into f5
froundnx.h f21, f5 # perform operation
froundnx.h f21, f5 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x237d0971 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3a593ef8 # load x3 with value 0x3a593ef8
sw x3, 0(x2) # store 0x3a593ef8 in memory
flh f12, 0(x2) # load 0x3a593ef8 from memory into f12
froundnx.h f22, f12 # perform operation
froundnx.h f22, f12 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x455382c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdcd21d1c # load x3 with value 0xdcd21d1c
sw x3, 0(x2) # store 0xdcd21d1c in memory
flh f25, 0(x2) # load 0xdcd21d1c from memory into f25
froundnx.h f23, f25 # perform operation
froundnx.h f23, f25 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x5f0de748 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde258980 # load x3 with value 0xde258980
sw x3, 0(x2) # store 0xde258980 in memory
flh f18, 0(x2) # load 0xde258980 from memory into f18
froundnx.h f24, f18 # perform operation
froundnx.h f24, f18 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x909b3824 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e1b90de # load x3 with value 0x1e1b90de
sw x3, 0(x2) # store 0x1e1b90de in memory
flh f27, 0(x2) # load 0x1e1b90de from memory into f27
froundnx.h f25, f27 # perform operation
froundnx.h f25, f27 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xa6b0b59e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x244f69de # load x3 with value 0x244f69de
sw x3, 0(x2) # store 0x244f69de in memory
flh f26, 0(x2) # load 0x244f69de from memory into f26
froundnx.h f26, f26 # perform operation
froundnx.h f26, f26 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xb87065b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7b86532e # load x3 with value 0x7b86532e
sw x3, 0(x2) # store 0x7b86532e in memory
flh f9, 0(x2) # load 0x7b86532e from memory into f9
froundnx.h f27, f9 # perform operation
froundnx.h f27, f9 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x62456f57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2646637 # load x3 with value 0xf2646637
sw x3, 0(x2) # store 0xf2646637 in memory
flh f30, 0(x2) # load 0xf2646637 from memory into f30
froundnx.h f28, f30 # perform operation
froundnx.h f28, f30 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x54bd8144 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcbab5f10 # load x3 with value 0xcbab5f10
sw x3, 0(x2) # store 0xcbab5f10 in memory
flh f17, 0(x2) # load 0xcbab5f10 from memory into f17
froundnx.h f29, f17 # perform operation
froundnx.h f29, f17 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xb8b5d573 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c9fd5d0 # load x3 with value 0x7c9fd5d0
sw x3, 0(x2) # store 0x7c9fd5d0 in memory
flh f10, 0(x2) # load 0x7c9fd5d0 from memory into f10
froundnx.h f30, f10 # perform operation
froundnx.h f30, f10 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x1b9b20d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6553b9ff # load x3 with value 0x6553b9ff
sw x3, 0(x2) # store 0x6553b9ff in memory
flh f14, 0(x2) # load 0x6553b9ff from memory into f14
froundnx.h f31, f14 # perform operation
froundnx.h f31, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x13, 0xfa82ec58 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfaf5da32 # load x3 with value 0xfaf5da32
sw x3, 0(x2) # store 0xfaf5da32 in memory
flh f0, 0(x2) # load 0xfaf5da32 from memory into f0
froundnx.h f13, f0 # perform operation
froundnx.h f13, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x25, 0x7e244c34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdbfe4518 # load x3 with value 0xdbfe4518
sw x3, 0(x2) # store 0xdbfe4518 in memory
flh f1, 0(x2) # load 0xdbfe4518 from memory into f1
froundnx.h f25, f1 # perform operation
froundnx.h f25, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x8, 0x28767aea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75c72b29 # load x3 with value 0x75c72b29
sw x3, 0(x2) # store 0x75c72b29 in memory
flh f2, 0(x2) # load 0x75c72b29 from memory into f2
froundnx.h f8, f2 # perform operation
froundnx.h f8, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x2, 0xe2d2a513 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7acddec9 # load x3 with value 0x7acddec9
sw x3, 0(x2) # store 0x7acddec9 in memory
flh f3, 0(x2) # load 0x7acddec9 from memory into f3
froundnx.h f2, f3 # perform operation
froundnx.h f2, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x2, 0x29020628 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6cbf7911 # load x3 with value 0x6cbf7911
sw x3, 0(x2) # store 0x6cbf7911 in memory
flh f4, 0(x2) # load 0x6cbf7911 from memory into f4
froundnx.h f2, f4 # perform operation
froundnx.h f2, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x13, 0xaf04685b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x18dcf2a4 # load x3 with value 0x18dcf2a4
sw x3, 0(x2) # store 0x18dcf2a4 in memory
flh f5, 0(x2) # load 0x18dcf2a4 from memory into f5
froundnx.h f13, f5 # perform operation
froundnx.h f13, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x23, 0x7f910292 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x90af3c1d # load x3 with value 0x90af3c1d
sw x3, 0(x2) # store 0x90af3c1d in memory
flh f6, 0(x2) # load 0x90af3c1d from memory into f6
froundnx.h f23, f6 # perform operation
froundnx.h f23, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x22, 0x035dcc98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x78350ec9 # load x3 with value 0x78350ec9
sw x3, 0(x2) # store 0x78350ec9 in memory
flh f7, 0(x2) # load 0x78350ec9 from memory into f7
froundnx.h f22, f7 # perform operation
froundnx.h f22, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x19, 0xb63d1753 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1388268a # load x3 with value 0x1388268a
sw x3, 0(x2) # store 0x1388268a in memory
flh f8, 0(x2) # load 0x1388268a from memory into f8
froundnx.h f19, f8 # perform operation
froundnx.h f19, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x29, 0xc4a9bb05 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf94a0bf6 # load x3 with value 0xf94a0bf6
sw x3, 0(x2) # store 0xf94a0bf6 in memory
flh f9, 0(x2) # load 0xf94a0bf6 from memory into f9
froundnx.h f29, f9 # perform operation
froundnx.h f29, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x9, 0xeae589a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x08c2c975 # load x3 with value 0x08c2c975
sw x3, 0(x2) # store 0x08c2c975 in memory
flh f10, 0(x2) # load 0x08c2c975 from memory into f10
froundnx.h f9, f10 # perform operation
froundnx.h f9, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x6, 0x7526dad8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x06d85bd7 # load x3 with value 0x06d85bd7
sw x3, 0(x2) # store 0x06d85bd7 in memory
flh f11, 0(x2) # load 0x06d85bd7 from memory into f11
froundnx.h f6, f11 # perform operation
froundnx.h f6, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x1, 0x580cca9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9c79679c # load x3 with value 0x9c79679c
sw x3, 0(x2) # store 0x9c79679c in memory
flh f12, 0(x2) # load 0x9c79679c from memory into f12
froundnx.h f1, f12 # perform operation
froundnx.h f1, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x14, 0xfadfbbff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1c05e2f9 # load x3 with value 0x1c05e2f9
sw x3, 0(x2) # store 0x1c05e2f9 in memory
flh f13, 0(x2) # load 0x1c05e2f9 from memory into f13
froundnx.h f14, f13 # perform operation
froundnx.h f14, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x25, 0xc790a4f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x01a390c5 # load x3 with value 0x01a390c5
sw x3, 0(x2) # store 0x01a390c5 in memory
flh f14, 0(x2) # load 0x01a390c5 from memory into f14
froundnx.h f25, f14 # perform operation
froundnx.h f25, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x9, 0xe20ad576 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x799a4e2c # load x3 with value 0x799a4e2c
sw x3, 0(x2) # store 0x799a4e2c in memory
flh f15, 0(x2) # load 0x799a4e2c from memory into f15
froundnx.h f9, f15 # perform operation
froundnx.h f9, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x30, 0x3f206cc2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6094e031 # load x3 with value 0x6094e031
sw x3, 0(x2) # store 0x6094e031 in memory
flh f16, 0(x2) # load 0x6094e031 from memory into f16
froundnx.h f30, f16 # perform operation
froundnx.h f30, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x4, 0xb25f665c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeaffa0e5 # load x3 with value 0xeaffa0e5
sw x3, 0(x2) # store 0xeaffa0e5 in memory
flh f17, 0(x2) # load 0xeaffa0e5 from memory into f17
froundnx.h f4, f17 # perform operation
froundnx.h f4, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x5, 0x75eab412 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6beefc0 # load x3 with value 0xa6beefc0
sw x3, 0(x2) # store 0xa6beefc0 in memory
flh f18, 0(x2) # load 0xa6beefc0 from memory into f18
froundnx.h f5, f18 # perform operation
froundnx.h f5, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x10, 0xf0806c7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2295f61d # load x3 with value 0x2295f61d
sw x3, 0(x2) # store 0x2295f61d in memory
flh f19, 0(x2) # load 0x2295f61d from memory into f19
froundnx.h f10, f19 # perform operation
froundnx.h f10, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x1, 0x1eee5066 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a6e1345 # load x3 with value 0x7a6e1345
sw x3, 0(x2) # store 0x7a6e1345 in memory
flh f20, 0(x2) # load 0x7a6e1345 from memory into f20
froundnx.h f1, f20 # perform operation
froundnx.h f1, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x28, 0xf63ff982 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbc086365 # load x3 with value 0xbc086365
sw x3, 0(x2) # store 0xbc086365 in memory
flh f21, 0(x2) # load 0xbc086365 from memory into f21
froundnx.h f28, f21 # perform operation
froundnx.h f28, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x12, 0xcec8ef7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2f1a7eda # load x3 with value 0x2f1a7eda
sw x3, 0(x2) # store 0x2f1a7eda in memory
flh f22, 0(x2) # load 0x2f1a7eda from memory into f22
froundnx.h f12, f22 # perform operation
froundnx.h f12, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x24, 0x798eb025 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0be6fa35 # load x3 with value 0x0be6fa35
sw x3, 0(x2) # store 0x0be6fa35 in memory
flh f23, 0(x2) # load 0x0be6fa35 from memory into f23
froundnx.h f24, f23 # perform operation
froundnx.h f24, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x7, 0xf90b9a61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x991a7435 # load x3 with value 0x991a7435
sw x3, 0(x2) # store 0x991a7435 in memory
flh f24, 0(x2) # load 0x991a7435 from memory into f24
froundnx.h f7, f24 # perform operation
froundnx.h f7, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x13, 0x3d3d0632 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x01b355e7 # load x3 with value 0x01b355e7
sw x3, 0(x2) # store 0x01b355e7 in memory
flh f25, 0(x2) # load 0x01b355e7 from memory into f25
froundnx.h f13, f25 # perform operation
froundnx.h f13, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x5, 0xdf2276d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x04444f30 # load x3 with value 0x04444f30
sw x3, 0(x2) # store 0x04444f30 in memory
flh f26, 0(x2) # load 0x04444f30 from memory into f26
froundnx.h f5, f26 # perform operation
froundnx.h f5, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x22, 0x60ee6f17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd3207a2 # load x3 with value 0xfd3207a2
sw x3, 0(x2) # store 0xfd3207a2 in memory
flh f27, 0(x2) # load 0xfd3207a2 from memory into f27
froundnx.h f22, f27 # perform operation
froundnx.h f22, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x18, 0xf14a3ee8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x365ca809 # load x3 with value 0x365ca809
sw x3, 0(x2) # store 0x365ca809 in memory
flh f28, 0(x2) # load 0x365ca809 from memory into f28
froundnx.h f18, f28 # perform operation
froundnx.h f18, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x25, 0xae99ce24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe72b4c13 # load x3 with value 0xe72b4c13
sw x3, 0(x2) # store 0xe72b4c13 in memory
flh f29, 0(x2) # load 0xe72b4c13 from memory into f29
froundnx.h f25, f29 # perform operation
froundnx.h f25, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x24, 0x6bb407a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb8ee030c # load x3 with value 0xb8ee030c
sw x3, 0(x2) # store 0xb8ee030c in memory
flh f30, 0(x2) # load 0xb8ee030c from memory into f30
froundnx.h f24, f30 # perform operation
froundnx.h f24, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x31, 0x38941773 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ef040c5 # load x3 with value 0x5ef040c5
sw x3, 0(x2) # store 0x5ef040c5 in memory
flh f31, 0(x2) # load 0x5ef040c5 from memory into f31
froundnx.h f31, f31 # perform operation
froundnx.h f31, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
