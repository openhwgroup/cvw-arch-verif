///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/Zfh//WALLY-COV-fsqrt.h.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.279010
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
fsqrt.h f10, f16 # perform first operation
fsqrt.h f2, f10 # perform second operation

# Testcase cmp_gpr_hazard raw test
fsqrt.h f19, f26 # perform first operation
fsqrt.h f19, f22 # perform second operation

# Testcase cmp_gpr_hazard waw test
fsqrt.h f24, f30 # perform first operation
fsqrt.h f24, f14 # perform second operation

# Testcase cmp_gpr_hazard waw test
fsqrt.h f1, f17 # perform first operation
fsqrt.h f1, f1 # perform second operation

# Testcase cmp_gpr_hazard war test
fsqrt.h f20, f23 # perform first operation
fsqrt.h f23, f8 # perform second operation

# Testcase cmp_gpr_hazard war test
fsqrt.h f1, f15 # perform first operation
fsqrt.h f3, f24 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0xc61352e4a9f3f7d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6a84bd8358e924c6 # load x3 with value 0x6a84bd8358e924c6
sw x3, 0(x2) # store 0x6a84bd8358e924c6 in memory
flh f0, 0(x2) # load 0x6a84bd8358e924c6 from memory into f0
fsqrt.h f0, f0 # perform operation
fsqrt.h f0, f0 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x08311533989aa7db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x439f9a38e6d5092f # load x3 with value 0x439f9a38e6d5092f
sw x3, 0(x2) # store 0x439f9a38e6d5092f in memory
flh f1, 0(x2) # load 0x439f9a38e6d5092f from memory into f1
fsqrt.h f1, f1 # perform operation
fsqrt.h f1, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0xd2b13d5e6476fcc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6ea3ef1ce9b775ef # load x3 with value 0x6ea3ef1ce9b775ef
sw x3, 0(x2) # store 0x6ea3ef1ce9b775ef in memory
flh f2, 0(x2) # load 0x6ea3ef1ce9b775ef from memory into f2
fsqrt.h f2, f2 # perform operation
fsqrt.h f2, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0xb170b935846790d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x92d0f8bae162ba7e # load x3 with value 0x92d0f8bae162ba7e
sw x3, 0(x2) # store 0x92d0f8bae162ba7e in memory
flh f3, 0(x2) # load 0x92d0f8bae162ba7e from memory into f3
fsqrt.h f3, f3 # perform operation
fsqrt.h f3, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x164216dc71b53d53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x74d9beb7e875ada3 # load x3 with value 0x74d9beb7e875ada3
sw x3, 0(x2) # store 0x74d9beb7e875ada3 in memory
flh f4, 0(x2) # load 0x74d9beb7e875ada3 from memory into f4
fsqrt.h f4, f4 # perform operation
fsqrt.h f4, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x532c982a2ae48486 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x30f3b8c3e353b1d4 # load x3 with value 0x30f3b8c3e353b1d4
sw x3, 0(x2) # store 0x30f3b8c3e353b1d4 in memory
flh f5, 0(x2) # load 0x30f3b8c3e353b1d4 from memory into f5
fsqrt.h f5, f5 # perform operation
fsqrt.h f5, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0xf2a7e568a352abc6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4eb9bfd6c33879a8 # load x3 with value 0x4eb9bfd6c33879a8
sw x3, 0(x2) # store 0x4eb9bfd6c33879a8 in memory
flh f6, 0(x2) # load 0x4eb9bfd6c33879a8 from memory into f6
fsqrt.h f6, f6 # perform operation
fsqrt.h f6, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0x46ddb4c956b027b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3b8f66765a1f4eb1 # load x3 with value 0x3b8f66765a1f4eb1
sw x3, 0(x2) # store 0x3b8f66765a1f4eb1 in memory
flh f7, 0(x2) # load 0x3b8f66765a1f4eb1 from memory into f7
fsqrt.h f7, f7 # perform operation
fsqrt.h f7, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0xd45f1924c47797d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdfc4f6b021dd2795 # load x3 with value 0xdfc4f6b021dd2795
sw x3, 0(x2) # store 0xdfc4f6b021dd2795 in memory
flh f8, 0(x2) # load 0xdfc4f6b021dd2795 from memory into f8
fsqrt.h f8, f8 # perform operation
fsqrt.h f8, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0x2be6b77ca762b2ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfe901287ce380ae0 # load x3 with value 0xfe901287ce380ae0
sw x3, 0(x2) # store 0xfe901287ce380ae0 in memory
flh f9, 0(x2) # load 0xfe901287ce380ae0 from memory into f9
fsqrt.h f9, f9 # perform operation
fsqrt.h f9, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x1b29f80b45e4144d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d71d1093f470f53 # load x3 with value 0x4d71d1093f470f53
sw x3, 0(x2) # store 0x4d71d1093f470f53 in memory
flh f10, 0(x2) # load 0x4d71d1093f470f53 from memory into f10
fsqrt.h f10, f10 # perform operation
fsqrt.h f10, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x81ec42e08b3e4cda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb25f4a766e0cf5f6 # load x3 with value 0xb25f4a766e0cf5f6
sw x3, 0(x2) # store 0xb25f4a766e0cf5f6 in memory
flh f11, 0(x2) # load 0xb25f4a766e0cf5f6 from memory into f11
fsqrt.h f11, f11 # perform operation
fsqrt.h f11, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0x76f30f4013d78849 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x867ad39cda409d0f # load x3 with value 0x867ad39cda409d0f
sw x3, 0(x2) # store 0x867ad39cda409d0f in memory
flh f12, 0(x2) # load 0x867ad39cda409d0f from memory into f12
fsqrt.h f12, f12 # perform operation
fsqrt.h f12, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0xe36a184f23710f93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x79523837a2fefa4b # load x3 with value 0x79523837a2fefa4b
sw x3, 0(x2) # store 0x79523837a2fefa4b in memory
flh f13, 0(x2) # load 0x79523837a2fefa4b from memory into f13
fsqrt.h f13, f13 # perform operation
fsqrt.h f13, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0x0c1ac79738e65b26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x329f0a69062da5eb # load x3 with value 0x329f0a69062da5eb
sw x3, 0(x2) # store 0x329f0a69062da5eb in memory
flh f14, 0(x2) # load 0x329f0a69062da5eb from memory into f14
fsqrt.h f14, f14 # perform operation
fsqrt.h f14, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x2bc04c5d3d899e6d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x94da7cb39238ab19 # load x3 with value 0x94da7cb39238ab19
sw x3, 0(x2) # store 0x94da7cb39238ab19 in memory
flh f15, 0(x2) # load 0x94da7cb39238ab19 from memory into f15
fsqrt.h f15, f15 # perform operation
fsqrt.h f15, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0xc1201cc9b31766ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0cc866c7715806e # load x3 with value 0xa0cc866c7715806e
sw x3, 0(x2) # store 0xa0cc866c7715806e in memory
flh f16, 0(x2) # load 0xa0cc866c7715806e from memory into f16
fsqrt.h f16, f16 # perform operation
fsqrt.h f16, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0xcfe58e235f25c48b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb2596094ac90ea54 # load x3 with value 0xb2596094ac90ea54
sw x3, 0(x2) # store 0xb2596094ac90ea54 in memory
flh f17, 0(x2) # load 0xb2596094ac90ea54 from memory into f17
fsqrt.h f17, f17 # perform operation
fsqrt.h f17, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0xb7294c9dbdf1288d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x588481379631fad0 # load x3 with value 0x588481379631fad0
sw x3, 0(x2) # store 0x588481379631fad0 in memory
flh f18, 0(x2) # load 0x588481379631fad0 from memory into f18
fsqrt.h f18, f18 # perform operation
fsqrt.h f18, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0xcd6b48429aea92b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa385c3e9c885be82 # load x3 with value 0xa385c3e9c885be82
sw x3, 0(x2) # store 0xa385c3e9c885be82 in memory
flh f19, 0(x2) # load 0xa385c3e9c885be82 from memory into f19
fsqrt.h f19, f19 # perform operation
fsqrt.h f19, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x1c181995344c8c39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x26ff3ee186fd0758 # load x3 with value 0x26ff3ee186fd0758
sw x3, 0(x2) # store 0x26ff3ee186fd0758 in memory
flh f20, 0(x2) # load 0x26ff3ee186fd0758 from memory into f20
fsqrt.h f20, f20 # perform operation
fsqrt.h f20, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x82d657ab16b9b064 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf07d183cba4e553d # load x3 with value 0xf07d183cba4e553d
sw x3, 0(x2) # store 0xf07d183cba4e553d in memory
flh f21, 0(x2) # load 0xf07d183cba4e553d from memory into f21
fsqrt.h f21, f21 # perform operation
fsqrt.h f21, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0x0f6c67f679f02168 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x33a0b7a2abee66d1 # load x3 with value 0x33a0b7a2abee66d1
sw x3, 0(x2) # store 0x33a0b7a2abee66d1 in memory
flh f22, 0(x2) # load 0x33a0b7a2abee66d1 from memory into f22
fsqrt.h f22, f22 # perform operation
fsqrt.h f22, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x3d8e3d3f5f5477a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xccb9557f3fa3d58b # load x3 with value 0xccb9557f3fa3d58b
sw x3, 0(x2) # store 0xccb9557f3fa3d58b in memory
flh f23, 0(x2) # load 0xccb9557f3fa3d58b from memory into f23
fsqrt.h f23, f23 # perform operation
fsqrt.h f23, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0xc0fbf58fd8bb5d71 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5b3d67ef0f4dbd49 # load x3 with value 0x5b3d67ef0f4dbd49
sw x3, 0(x2) # store 0x5b3d67ef0f4dbd49 in memory
flh f24, 0(x2) # load 0x5b3d67ef0f4dbd49 from memory into f24
fsqrt.h f24, f24 # perform operation
fsqrt.h f24, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x9507b741166bb47c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x138c6a41adf07cf2 # load x3 with value 0x138c6a41adf07cf2
sw x3, 0(x2) # store 0x138c6a41adf07cf2 in memory
flh f25, 0(x2) # load 0x138c6a41adf07cf2 from memory into f25
fsqrt.h f25, f25 # perform operation
fsqrt.h f25, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x007b6cef2d0ef599 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x34f3699b59e6f8af # load x3 with value 0x34f3699b59e6f8af
sw x3, 0(x2) # store 0x34f3699b59e6f8af in memory
flh f26, 0(x2) # load 0x34f3699b59e6f8af from memory into f26
fsqrt.h f26, f26 # perform operation
fsqrt.h f26, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x916f467aed4d8ab0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x25e7e1ce96a0a9bb # load x3 with value 0x25e7e1ce96a0a9bb
sw x3, 0(x2) # store 0x25e7e1ce96a0a9bb in memory
flh f27, 0(x2) # load 0x25e7e1ce96a0a9bb from memory into f27
fsqrt.h f27, f27 # perform operation
fsqrt.h f27, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x675482a165809549 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb44c61d9271a4418 # load x3 with value 0xb44c61d9271a4418
sw x3, 0(x2) # store 0xb44c61d9271a4418 in memory
flh f28, 0(x2) # load 0xb44c61d9271a4418 from memory into f28
fsqrt.h f28, f28 # perform operation
fsqrt.h f28, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0x1233cfe1857c7c90 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5bce1e59b4f4cbb2 # load x3 with value 0x5bce1e59b4f4cbb2
sw x3, 0(x2) # store 0x5bce1e59b4f4cbb2 in memory
flh f29, 0(x2) # load 0x5bce1e59b4f4cbb2 from memory into f29
fsqrt.h f29, f29 # perform operation
fsqrt.h f29, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0xb1f22a554fae0f72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x26d956e6aa2bd7ea # load x3 with value 0x26d956e6aa2bd7ea
sw x3, 0(x2) # store 0x26d956e6aa2bd7ea in memory
flh f30, 0(x2) # load 0x26d956e6aa2bd7ea from memory into f30
fsqrt.h f30, f30 # perform operation
fsqrt.h f30, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x68b58ebede9d405d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3670e36fe0c40bc # load x3 with value 0xf3670e36fe0c40bc
sw x3, 0(x2) # store 0xf3670e36fe0c40bc in memory
flh f31, 0(x2) # load 0xf3670e36fe0c40bc from memory into f31
fsqrt.h f31, f31 # perform operation
fsqrt.h f31, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x30, 0x12fb8326e5b91338 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flh f29, 0(x2) # load 0x00000000 from memory into f29
fsqrt.h f30, f29 # perform operation
fsqrt.h f30, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000)
li x1, 0xefe233e357e69836 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008000 # load x3 with value 0x00008000
sw x3, 0(x2) # store 0x00008000 in memory
flh f24, 0(x2) # load 0x00008000 from memory into f24
fsqrt.h f1, f24 # perform operation
fsqrt.h f1, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3c00)
li x20, 0x6847c061f95a3509 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003c00 # load x3 with value 0x00003c00
sw x3, 0(x2) # store 0x00003c00 in memory
flh f16, 0(x2) # load 0x00003c00 from memory into f16
fsqrt.h f20, f16 # perform operation
fsqrt.h f20, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbc00)
li x12, 0x80556d70b7f68df6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000bc00 # load x3 with value 0x0000bc00
sw x3, 0(x2) # store 0x0000bc00 in memory
flh f18, 0(x2) # load 0x0000bc00 from memory into f18
fsqrt.h f12, f18 # perform operation
fsqrt.h f12, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3e00)
li x22, 0x05acc2e6f988213f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00003e00 # load x3 with value 0x00003e00
sw x3, 0(x2) # store 0x00003e00 in memory
flh f9, 0(x2) # load 0x00003e00 from memory into f9
fsqrt.h f22, f9 # perform operation
fsqrt.h f22, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbe00)
li x20, 0x1e224d30391343a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000be00 # load x3 with value 0x0000be00
sw x3, 0(x2) # store 0x0000be00 in memory
flh f13, 0(x2) # load 0x0000be00 from memory into f13
fsqrt.h f20, f13 # perform operation
fsqrt.h f20, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000)
li x24, 0x5176044f8f0ff4b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00004000 # load x3 with value 0x00004000
sw x3, 0(x2) # store 0x00004000 in memory
flh f23, 0(x2) # load 0x00004000 from memory into f23
fsqrt.h f24, f23 # perform operation
fsqrt.h f24, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000)
li x25, 0xda6a1699de9556e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c000 # load x3 with value 0x0000c000
sw x3, 0(x2) # store 0x0000c000 in memory
flh f21, 0(x2) # load 0x0000c000 from memory into f21
fsqrt.h f25, f21 # perform operation
fsqrt.h f25, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400)
li x15, 0xb3bc99a70d35be24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000400 # load x3 with value 0x00000400
sw x3, 0(x2) # store 0x00000400 in memory
flh f26, 0(x2) # load 0x00000400 from memory into f26
fsqrt.h f15, f26 # perform operation
fsqrt.h f15, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8400)
li x10, 0x1d5c52711eb42da9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008400 # load x3 with value 0x00008400
sw x3, 0(x2) # store 0x00008400 in memory
flh f5, 0(x2) # load 0x00008400 from memory into f5
fsqrt.h f10, f5 # perform operation
fsqrt.h f10, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7bff)
li x6, 0x3b5dfa9782aca8d9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007bff # load x3 with value 0x00007bff
sw x3, 0(x2) # store 0x00007bff in memory
flh f12, 0(x2) # load 0x00007bff from memory into f12
fsqrt.h f6, f12 # perform operation
fsqrt.h f6, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfbff)
li x17, 0x35d92986096a37d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fbff # load x3 with value 0x0000fbff
sw x3, 0(x2) # store 0x0000fbff in memory
flh f6, 0(x2) # load 0x0000fbff from memory into f6
fsqrt.h f17, f6 # perform operation
fsqrt.h f17, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff)
li x21, 0x8a2911c852310a5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000003ff # load x3 with value 0x000003ff
sw x3, 0(x2) # store 0x000003ff in memory
flh f8, 0(x2) # load 0x000003ff from memory into f8
fsqrt.h f21, f8 # perform operation
fsqrt.h f21, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x83ff)
li x8, 0xb8943e8ac4377d14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000083ff # load x3 with value 0x000083ff
sw x3, 0(x2) # store 0x000083ff in memory
flh f22, 0(x2) # load 0x000083ff from memory into f22
fsqrt.h f8, f22 # perform operation
fsqrt.h f8, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x200)
li x24, 0x9cb9f202f2f5857f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000200 # load x3 with value 0x00000200
sw x3, 0(x2) # store 0x00000200 in memory
flh f23, 0(x2) # load 0x00000200 from memory into f23
fsqrt.h f24, f23 # perform operation
fsqrt.h f24, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8200)
li x13, 0xd67cb6cfae6e451e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008200 # load x3 with value 0x00008200
sw x3, 0(x2) # store 0x00008200 in memory
flh f11, 0(x2) # load 0x00008200 from memory into f11
fsqrt.h f13, f11 # perform operation
fsqrt.h f13, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x27, 0x1dcbcf2cabb97a24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flh f5, 0(x2) # load 0x00000001 from memory into f5
fsqrt.h f27, f5 # perform operation
fsqrt.h f27, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8001)
li x28, 0xf802d9e38b1bd10c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00008001 # load x3 with value 0x00008001
sw x3, 0(x2) # store 0x00008001 in memory
flh f12, 0(x2) # load 0x00008001 from memory into f12
fsqrt.h f28, f12 # perform operation
fsqrt.h f28, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c00)
li x3, 0x78061051aa0e4077 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c00 # load x3 with value 0x00007c00
sw x3, 0(x2) # store 0x00007c00 in memory
flh f8, 0(x2) # load 0x00007c00 from memory into f8
fsqrt.h f3, f8 # perform operation
fsqrt.h f3, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfc00)
li x8, 0xf83feb299c178257 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000fc00 # load x3 with value 0x0000fc00
sw x3, 0(x2) # store 0x0000fc00 in memory
flh f6, 0(x2) # load 0x0000fc00 from memory into f6
fsqrt.h f8, f6 # perform operation
fsqrt.h f8, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7e00)
li x1, 0x34466cd29cd6951d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007e00 # load x3 with value 0x00007e00
sw x3, 0(x2) # store 0x00007e00 in memory
flh f29, 0(x2) # load 0x00007e00 from memory into f29
fsqrt.h f1, f29 # perform operation
fsqrt.h f1, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fff)
li x15, 0x22cbdb03657ceb5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007fff # load x3 with value 0x00007fff
sw x3, 0(x2) # store 0x00007fff in memory
flh f16, 0(x2) # load 0x00007fff from memory into f16
fsqrt.h f15, f16 # perform operation
fsqrt.h f15, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7c01)
li x25, 0xd17d1d1c96bbaffb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007c01 # load x3 with value 0x00007c01
sw x3, 0(x2) # store 0x00007c01 in memory
flh f6, 0(x2) # load 0x00007c01 from memory into f6
fsqrt.h f25, f6 # perform operation
fsqrt.h f25, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7dff)
li x10, 0x4a90030646c9966e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00007dff # load x3 with value 0x00007dff
sw x3, 0(x2) # store 0x00007dff in memory
flh f1, 0(x2) # load 0x00007dff from memory into f1
fsqrt.h f10, f1 # perform operation
fsqrt.h f10, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x58b4)
li x29, 0x0fe4747802dd6958 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x000058b4 # load x3 with value 0x000058b4
sw x3, 0(x2) # store 0x000058b4 in memory
flh f4, 0(x2) # load 0x000058b4 from memory into f4
fsqrt.h f29, f4 # perform operation
fsqrt.h f29, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc93a)
li x20, 0x83a3f0f4c3c643a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0000c93a # load x3 with value 0x0000c93a
sw x3, 0(x2) # store 0x0000c93a in memory
flh f30, 0(x2) # load 0x0000c93a from memory into f30
fsqrt.h f20, f30 # perform operation
fsqrt.h f20, f30 # perform operation

# Testcase cp_frm
li x18, 0x08b1abe4d55c485f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x919374f15fe1ec13 # load x3 with value 0x919374f15fe1ec13
sw x3, 0(x2) # store 0x919374f15fe1ec13 in memory
flh f14, 0(x2) # load 0x919374f15fe1ec13 from memory into f14
fsqrt.h f18, f14 # perform operation
fsqrt.h f18, f14, dyn # perform operation
fsqrt.h f18, f14, rdn # perform operation
fsqrt.h f18, f14, rmm # perform operation
fsqrt.h f18, f14, rne # perform operation
fsqrt.h f18, f14, rtz # perform operation
fsqrt.h f18, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsqrt.h f18, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsqrt.h f18, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsqrt.h f18, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsqrt.h f18, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsqrt.h f18, f14 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x7a1aa51ccb436918 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a8b32591b72a726 # load x3 with value 0x8a8b32591b72a726
sw x3, 0(x2) # store 0x8a8b32591b72a726 in memory
flh f17, 0(x2) # load 0x8a8b32591b72a726 from memory into f17
fsqrt.h f0, f17 # perform operation
fsqrt.h f0, f17 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xab7bd6d62574abdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa29b6b99ab424d0a # load x3 with value 0xa29b6b99ab424d0a
sw x3, 0(x2) # store 0xa29b6b99ab424d0a in memory
flh f7, 0(x2) # load 0xa29b6b99ab424d0a from memory into f7
fsqrt.h f1, f7 # perform operation
fsqrt.h f1, f7 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x7362e660f8da38fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae03a68639b94092 # load x3 with value 0xae03a68639b94092
sw x3, 0(x2) # store 0xae03a68639b94092 in memory
flh f4, 0(x2) # load 0xae03a68639b94092 from memory into f4
fsqrt.h f2, f4 # perform operation
fsqrt.h f2, f4 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x286a4751719dcfa9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc96866a830e52f1 # load x3 with value 0xc96866a830e52f1
sw x3, 0(x2) # store 0xc96866a830e52f1 in memory
flh f25, 0(x2) # load 0xc96866a830e52f1 from memory into f25
fsqrt.h f3, f25 # perform operation
fsqrt.h f3, f25 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x1843000cfcb7b973 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe7d130af631d7d94 # load x3 with value 0xe7d130af631d7d94
sw x3, 0(x2) # store 0xe7d130af631d7d94 in memory
flh f24, 0(x2) # load 0xe7d130af631d7d94 from memory into f24
fsqrt.h f4, f24 # perform operation
fsqrt.h f4, f24 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x724e484a9443f4da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x98664a81aff58298 # load x3 with value 0x98664a81aff58298
sw x3, 0(x2) # store 0x98664a81aff58298 in memory
flh f19, 0(x2) # load 0x98664a81aff58298 from memory into f19
fsqrt.h f5, f19 # perform operation
fsqrt.h f5, f19 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x0161f1051375f077 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x45a6be1f634a8fa # load x3 with value 0x45a6be1f634a8fa
sw x3, 0(x2) # store 0x45a6be1f634a8fa in memory
flh f6, 0(x2) # load 0x45a6be1f634a8fa from memory into f6
fsqrt.h f6, f6 # perform operation
fsqrt.h f6, f6 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xf411df8cf99b2b50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x10370444d04955cd # load x3 with value 0x10370444d04955cd
sw x3, 0(x2) # store 0x10370444d04955cd in memory
flh f13, 0(x2) # load 0x10370444d04955cd from memory into f13
fsqrt.h f7, f13 # perform operation
fsqrt.h f7, f13 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xc37d9e2007873bb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3578420bbbd27b4d # load x3 with value 0x3578420bbbd27b4d
sw x3, 0(x2) # store 0x3578420bbbd27b4d in memory
flh f31, 0(x2) # load 0x3578420bbbd27b4d from memory into f31
fsqrt.h f8, f31 # perform operation
fsqrt.h f8, f31 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x5759abe3ffdc1dae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x27e56bcf9009d048 # load x3 with value 0x27e56bcf9009d048
sw x3, 0(x2) # store 0x27e56bcf9009d048 in memory
flh f10, 0(x2) # load 0x27e56bcf9009d048 from memory into f10
fsqrt.h f9, f10 # perform operation
fsqrt.h f9, f10 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x323944708b38fbd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5fc13a7675adb0fc # load x3 with value 0x5fc13a7675adb0fc
sw x3, 0(x2) # store 0x5fc13a7675adb0fc in memory
flh f14, 0(x2) # load 0x5fc13a7675adb0fc from memory into f14
fsqrt.h f10, f14 # perform operation
fsqrt.h f10, f14 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0xe88c1a601ec321e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7bd961bc724287f5 # load x3 with value 0x7bd961bc724287f5
sw x3, 0(x2) # store 0x7bd961bc724287f5 in memory
flh f15, 0(x2) # load 0x7bd961bc724287f5 from memory into f15
fsqrt.h f11, f15 # perform operation
fsqrt.h f11, f15 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x07801a69bd0d3408 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd8409c86176fa53 # load x3 with value 0xd8409c86176fa53
sw x3, 0(x2) # store 0xd8409c86176fa53 in memory
flh f12, 0(x2) # load 0xd8409c86176fa53 from memory into f12
fsqrt.h f12, f12 # perform operation
fsqrt.h f12, f12 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xbc10866c00aafc75 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xad47915c6bc5b91f # load x3 with value 0xad47915c6bc5b91f
sw x3, 0(x2) # store 0xad47915c6bc5b91f in memory
flh f19, 0(x2) # load 0xad47915c6bc5b91f from memory into f19
fsqrt.h f13, f19 # perform operation
fsqrt.h f13, f19 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0xbc94838c034139e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdff55d114f2702c7 # load x3 with value 0xdff55d114f2702c7
sw x3, 0(x2) # store 0xdff55d114f2702c7 in memory
flh f30, 0(x2) # load 0xdff55d114f2702c7 from memory into f30
fsqrt.h f14, f30 # perform operation
fsqrt.h f14, f30 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xef238af4747c95ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xddd113765c429f47 # load x3 with value 0xddd113765c429f47
sw x3, 0(x2) # store 0xddd113765c429f47 in memory
flh f6, 0(x2) # load 0xddd113765c429f47 from memory into f6
fsqrt.h f15, f6 # perform operation
fsqrt.h f15, f6 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x208398e36afd79e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d69a1e757972afd # load x3 with value 0x7d69a1e757972afd
sw x3, 0(x2) # store 0x7d69a1e757972afd in memory
flh f8, 0(x2) # load 0x7d69a1e757972afd from memory into f8
fsqrt.h f16, f8 # perform operation
fsqrt.h f16, f8 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xa43d42cb51ab6354 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf68d411b8ff477d4 # load x3 with value 0xf68d411b8ff477d4
sw x3, 0(x2) # store 0xf68d411b8ff477d4 in memory
flh f13, 0(x2) # load 0xf68d411b8ff477d4 from memory into f13
fsqrt.h f17, f13 # perform operation
fsqrt.h f17, f13 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xcf27f9099b635b19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5c2e2c5193c55224 # load x3 with value 0x5c2e2c5193c55224
sw x3, 0(x2) # store 0x5c2e2c5193c55224 in memory
flh f13, 0(x2) # load 0x5c2e2c5193c55224 from memory into f13
fsqrt.h f18, f13 # perform operation
fsqrt.h f18, f13 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xf1e239dc3aaf197e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb8a793b2fb41303b # load x3 with value 0xb8a793b2fb41303b
sw x3, 0(x2) # store 0xb8a793b2fb41303b in memory
flh f23, 0(x2) # load 0xb8a793b2fb41303b from memory into f23
fsqrt.h f19, f23 # perform operation
fsqrt.h f19, f23 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x69488ff6e64f29da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x776bf7a82d0cea9c # load x3 with value 0x776bf7a82d0cea9c
sw x3, 0(x2) # store 0x776bf7a82d0cea9c in memory
flh f28, 0(x2) # load 0x776bf7a82d0cea9c from memory into f28
fsqrt.h f20, f28 # perform operation
fsqrt.h f20, f28 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xdf8d035afe6ac749 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdabab1b96ae2ad31 # load x3 with value 0xdabab1b96ae2ad31
sw x3, 0(x2) # store 0xdabab1b96ae2ad31 in memory
flh f28, 0(x2) # load 0xdabab1b96ae2ad31 from memory into f28
fsqrt.h f21, f28 # perform operation
fsqrt.h f21, f28 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xbe31dbdc02c603d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf1ac8be935896303 # load x3 with value 0xf1ac8be935896303
sw x3, 0(x2) # store 0xf1ac8be935896303 in memory
flh f21, 0(x2) # load 0xf1ac8be935896303 from memory into f21
fsqrt.h f22, f21 # perform operation
fsqrt.h f22, f21 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0xbbb21022c5525c69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x980f9cded6b98378 # load x3 with value 0x980f9cded6b98378
sw x3, 0(x2) # store 0x980f9cded6b98378 in memory
flh f13, 0(x2) # load 0x980f9cded6b98378 from memory into f13
fsqrt.h f23, f13 # perform operation
fsqrt.h f23, f13 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x33dfaca836cef890 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x11141c01bdf3002f # load x3 with value 0x11141c01bdf3002f
sw x3, 0(x2) # store 0x11141c01bdf3002f in memory
flh f6, 0(x2) # load 0x11141c01bdf3002f from memory into f6
fsqrt.h f24, f6 # perform operation
fsqrt.h f24, f6 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x711a05d2e6ffa865 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe970652638eb55b2 # load x3 with value 0xe970652638eb55b2
sw x3, 0(x2) # store 0xe970652638eb55b2 in memory
flh f27, 0(x2) # load 0xe970652638eb55b2 from memory into f27
fsqrt.h f25, f27 # perform operation
fsqrt.h f25, f27 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x614e8f46c7215b0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50f8d813176d9c4c # load x3 with value 0x50f8d813176d9c4c
sw x3, 0(x2) # store 0x50f8d813176d9c4c in memory
flh f25, 0(x2) # load 0x50f8d813176d9c4c from memory into f25
fsqrt.h f26, f25 # perform operation
fsqrt.h f26, f25 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xd29cc96e188ea0ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffa8a98e3fff67b7 # load x3 with value 0xffa8a98e3fff67b7
sw x3, 0(x2) # store 0xffa8a98e3fff67b7 in memory
flh f5, 0(x2) # load 0xffa8a98e3fff67b7 from memory into f5
fsqrt.h f27, f5 # perform operation
fsqrt.h f27, f5 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x6f966777f24bc5bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x87e23ef202b140fe # load x3 with value 0x87e23ef202b140fe
sw x3, 0(x2) # store 0x87e23ef202b140fe in memory
flh f21, 0(x2) # load 0x87e23ef202b140fe from memory into f21
fsqrt.h f28, f21 # perform operation
fsqrt.h f28, f21 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x4532c43f0fe225f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x167611e6055d6d5b # load x3 with value 0x167611e6055d6d5b
sw x3, 0(x2) # store 0x167611e6055d6d5b in memory
flh f13, 0(x2) # load 0x167611e6055d6d5b from memory into f13
fsqrt.h f29, f13 # perform operation
fsqrt.h f29, f13 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x0e35185dc520ae3f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x79ed2bf2038cd76e # load x3 with value 0x79ed2bf2038cd76e
sw x3, 0(x2) # store 0x79ed2bf2038cd76e in memory
flh f21, 0(x2) # load 0x79ed2bf2038cd76e from memory into f21
fsqrt.h f30, f21 # perform operation
fsqrt.h f30, f21 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xd4498018cffa1c67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e20ba723b1bb8a1 # load x3 with value 0x4e20ba723b1bb8a1
sw x3, 0(x2) # store 0x4e20ba723b1bb8a1 in memory
flh f10, 0(x2) # load 0x4e20ba723b1bb8a1 from memory into f10
fsqrt.h f31, f10 # perform operation
fsqrt.h f31, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x28, 0xa827912322b48d56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7a48b6ea707619d9 # load x3 with value 0x7a48b6ea707619d9
sw x3, 0(x2) # store 0x7a48b6ea707619d9 in memory
flh f0, 0(x2) # load 0x7a48b6ea707619d9 from memory into f0
fsqrt.h f28, f0 # perform operation
fsqrt.h f28, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x3, 0x2ba8e9710a0b3c9d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x26b8c8d75d469c57 # load x3 with value 0x26b8c8d75d469c57
sw x3, 0(x2) # store 0x26b8c8d75d469c57 in memory
flh f1, 0(x2) # load 0x26b8c8d75d469c57 from memory into f1
fsqrt.h f3, f1 # perform operation
fsqrt.h f3, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x4, 0x4dcc3ff5cdc0f398 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3eb30b93677f6d7e # load x3 with value 0x3eb30b93677f6d7e
sw x3, 0(x2) # store 0x3eb30b93677f6d7e in memory
flh f2, 0(x2) # load 0x3eb30b93677f6d7e from memory into f2
fsqrt.h f4, f2 # perform operation
fsqrt.h f4, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x23, 0x7668ebf456962146 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x455a076dca42b29f # load x3 with value 0x455a076dca42b29f
sw x3, 0(x2) # store 0x455a076dca42b29f in memory
flh f3, 0(x2) # load 0x455a076dca42b29f from memory into f3
fsqrt.h f23, f3 # perform operation
fsqrt.h f23, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x15, 0x017ee5364bd5b45d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc10d284b151287c2 # load x3 with value 0xc10d284b151287c2
sw x3, 0(x2) # store 0xc10d284b151287c2 in memory
flh f4, 0(x2) # load 0xc10d284b151287c2 from memory into f4
fsqrt.h f15, f4 # perform operation
fsqrt.h f15, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x12, 0x2a8c7054bd2806e5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd316fca44171c5c2 # load x3 with value 0xd316fca44171c5c2
sw x3, 0(x2) # store 0xd316fca44171c5c2 in memory
flh f5, 0(x2) # load 0xd316fca44171c5c2 from memory into f5
fsqrt.h f12, f5 # perform operation
fsqrt.h f12, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x19, 0x9343f24c0a0956d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x49b0f5c2acaddb21 # load x3 with value 0x49b0f5c2acaddb21
sw x3, 0(x2) # store 0x49b0f5c2acaddb21 in memory
flh f6, 0(x2) # load 0x49b0f5c2acaddb21 from memory into f6
fsqrt.h f19, f6 # perform operation
fsqrt.h f19, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x12, 0xe70ac5c0102bd8bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa264cfb31bfb8180 # load x3 with value 0xa264cfb31bfb8180
sw x3, 0(x2) # store 0xa264cfb31bfb8180 in memory
flh f7, 0(x2) # load 0xa264cfb31bfb8180 from memory into f7
fsqrt.h f12, f7 # perform operation
fsqrt.h f12, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x21, 0x6832a24b99b497e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc9f3541ce20d5fe3 # load x3 with value 0xc9f3541ce20d5fe3
sw x3, 0(x2) # store 0xc9f3541ce20d5fe3 in memory
flh f8, 0(x2) # load 0xc9f3541ce20d5fe3 from memory into f8
fsqrt.h f21, f8 # perform operation
fsqrt.h f21, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x20, 0xd917275c10a23748 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa94ee93debb7293b # load x3 with value 0xa94ee93debb7293b
sw x3, 0(x2) # store 0xa94ee93debb7293b in memory
flh f9, 0(x2) # load 0xa94ee93debb7293b from memory into f9
fsqrt.h f20, f9 # perform operation
fsqrt.h f20, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x28, 0x35155ad3f6a2e1a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x284df514f81058bd # load x3 with value 0x284df514f81058bd
sw x3, 0(x2) # store 0x284df514f81058bd in memory
flh f10, 0(x2) # load 0x284df514f81058bd from memory into f10
fsqrt.h f28, f10 # perform operation
fsqrt.h f28, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x13, 0x7d0ba54c278aea77 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17945524270dc20f # load x3 with value 0x17945524270dc20f
sw x3, 0(x2) # store 0x17945524270dc20f in memory
flh f11, 0(x2) # load 0x17945524270dc20f from memory into f11
fsqrt.h f13, f11 # perform operation
fsqrt.h f13, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x19, 0xd146c1dd5df3dc63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3b915d88f2ba118a # load x3 with value 0x3b915d88f2ba118a
sw x3, 0(x2) # store 0x3b915d88f2ba118a in memory
flh f12, 0(x2) # load 0x3b915d88f2ba118a from memory into f12
fsqrt.h f19, f12 # perform operation
fsqrt.h f19, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x6, 0x1aa9181bd497dea9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x52099e6624b1ad0d # load x3 with value 0x52099e6624b1ad0d
sw x3, 0(x2) # store 0x52099e6624b1ad0d in memory
flh f13, 0(x2) # load 0x52099e6624b1ad0d from memory into f13
fsqrt.h f6, f13 # perform operation
fsqrt.h f6, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x25, 0x390bd73077c884b2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc74458cadc6c974a # load x3 with value 0xc74458cadc6c974a
sw x3, 0(x2) # store 0xc74458cadc6c974a in memory
flh f14, 0(x2) # load 0xc74458cadc6c974a from memory into f14
fsqrt.h f25, f14 # perform operation
fsqrt.h f25, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x9, 0x05aec90d916d34b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2dd499cf21571019 # load x3 with value 0x2dd499cf21571019
sw x3, 0(x2) # store 0x2dd499cf21571019 in memory
flh f15, 0(x2) # load 0x2dd499cf21571019 from memory into f15
fsqrt.h f9, f15 # perform operation
fsqrt.h f9, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x12, 0x139b2ae689db579f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xabc1570b54851952 # load x3 with value 0xabc1570b54851952
sw x3, 0(x2) # store 0xabc1570b54851952 in memory
flh f16, 0(x2) # load 0xabc1570b54851952 from memory into f16
fsqrt.h f12, f16 # perform operation
fsqrt.h f12, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x31, 0x5e9f354e18d0e67f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x88b858d2b2932b63 # load x3 with value 0x88b858d2b2932b63
sw x3, 0(x2) # store 0x88b858d2b2932b63 in memory
flh f17, 0(x2) # load 0x88b858d2b2932b63 from memory into f17
fsqrt.h f31, f17 # perform operation
fsqrt.h f31, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x28, 0x87c25916aec20c8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd09603af5e041920 # load x3 with value 0xd09603af5e041920
sw x3, 0(x2) # store 0xd09603af5e041920 in memory
flh f18, 0(x2) # load 0xd09603af5e041920 from memory into f18
fsqrt.h f28, f18 # perform operation
fsqrt.h f28, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x15, 0x4fb4290bdc755aea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x37118fc1e650c4fc # load x3 with value 0x37118fc1e650c4fc
sw x3, 0(x2) # store 0x37118fc1e650c4fc in memory
flh f19, 0(x2) # load 0x37118fc1e650c4fc from memory into f19
fsqrt.h f15, f19 # perform operation
fsqrt.h f15, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x2, 0xe04e28663a46541e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xde8be26b23b9c223 # load x3 with value 0xde8be26b23b9c223
sw x3, 0(x2) # store 0xde8be26b23b9c223 in memory
flh f20, 0(x2) # load 0xde8be26b23b9c223 from memory into f20
fsqrt.h f2, f20 # perform operation
fsqrt.h f2, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x18, 0xe40a6746462aebad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xddcb7944c286d782 # load x3 with value 0xddcb7944c286d782
sw x3, 0(x2) # store 0xddcb7944c286d782 in memory
flh f21, 0(x2) # load 0xddcb7944c286d782 from memory into f21
fsqrt.h f18, f21 # perform operation
fsqrt.h f18, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x31, 0x160ddbee8483f1f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8500c2dff911968 # load x3 with value 0x8500c2dff911968
sw x3, 0(x2) # store 0x8500c2dff911968 in memory
flh f22, 0(x2) # load 0x8500c2dff911968 from memory into f22
fsqrt.h f31, f22 # perform operation
fsqrt.h f31, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x10, 0x83280c14dbfa2e04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9ee2986e6b4f051d # load x3 with value 0x9ee2986e6b4f051d
sw x3, 0(x2) # store 0x9ee2986e6b4f051d in memory
flh f23, 0(x2) # load 0x9ee2986e6b4f051d from memory into f23
fsqrt.h f10, f23 # perform operation
fsqrt.h f10, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x4, 0xa7220939e885e14f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c8ba2d1c48e6adf # load x3 with value 0x7c8ba2d1c48e6adf
sw x3, 0(x2) # store 0x7c8ba2d1c48e6adf in memory
flh f24, 0(x2) # load 0x7c8ba2d1c48e6adf from memory into f24
fsqrt.h f4, f24 # perform operation
fsqrt.h f4, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x22, 0xb7c6e335d8e26491 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6b60b7c5720b06df # load x3 with value 0x6b60b7c5720b06df
sw x3, 0(x2) # store 0x6b60b7c5720b06df in memory
flh f25, 0(x2) # load 0x6b60b7c5720b06df from memory into f25
fsqrt.h f22, f25 # perform operation
fsqrt.h f22, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x17, 0xa5e9755b5c68c7cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8d1a2d30b346de66 # load x3 with value 0x8d1a2d30b346de66
sw x3, 0(x2) # store 0x8d1a2d30b346de66 in memory
flh f26, 0(x2) # load 0x8d1a2d30b346de66 from memory into f26
fsqrt.h f17, f26 # perform operation
fsqrt.h f17, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x25, 0x23cbc10aa7168eda # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x365a99ef2a0b4d45 # load x3 with value 0x365a99ef2a0b4d45
sw x3, 0(x2) # store 0x365a99ef2a0b4d45 in memory
flh f27, 0(x2) # load 0x365a99ef2a0b4d45 from memory into f27
fsqrt.h f25, f27 # perform operation
fsqrt.h f25, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x15, 0x13edb989755b73dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc04cdbd087f136b2 # load x3 with value 0xc04cdbd087f136b2
sw x3, 0(x2) # store 0xc04cdbd087f136b2 in memory
flh f28, 0(x2) # load 0xc04cdbd087f136b2 from memory into f28
fsqrt.h f15, f28 # perform operation
fsqrt.h f15, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x2, 0x4983a828875e8e57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc66bccfd96d28d9f # load x3 with value 0xc66bccfd96d28d9f
sw x3, 0(x2) # store 0xc66bccfd96d28d9f in memory
flh f29, 0(x2) # load 0xc66bccfd96d28d9f from memory into f29
fsqrt.h f2, f29 # perform operation
fsqrt.h f2, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x10, 0x64eb34a01647aac7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb5e7f1b3a7538665 # load x3 with value 0xb5e7f1b3a7538665
sw x3, 0(x2) # store 0xb5e7f1b3a7538665 in memory
flh f30, 0(x2) # load 0xb5e7f1b3a7538665 from memory into f30
fsqrt.h f10, f30 # perform operation
fsqrt.h f10, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x15, 0xf4029a4fa383a119 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x41a8ed8812156935 # load x3 with value 0x41a8ed8812156935
sw x3, 0(x2) # store 0x41a8ed8812156935 in memory
flh f31, 0(x2) # load 0x41a8ed8812156935 from memory into f31
fsqrt.h f15, f31 # perform operation
fsqrt.h f15, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
