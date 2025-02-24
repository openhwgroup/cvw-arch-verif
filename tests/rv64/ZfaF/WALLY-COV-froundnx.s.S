///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv64/ZfaF//WALLY-COV-froundnx.s.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:23.909876
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
froundnx.s f13, f31 # perform first operation
froundnx.s f5, f13 # perform second operation

# Testcase cmp_gpr_hazard raw test
froundnx.s f31, f9 # perform first operation
froundnx.s f14, f24 # perform second operation

# Testcase cmp_gpr_hazard waw test
froundnx.s f12, f16 # perform first operation
froundnx.s f12, f29 # perform second operation

# Testcase cmp_gpr_hazard waw test
froundnx.s f13, f27 # perform first operation
froundnx.s f13, f26 # perform second operation

# Testcase cmp_gpr_hazard war test
froundnx.s f23, f17 # perform first operation
froundnx.s f17, f30 # perform second operation

# Testcase cmp_gpr_hazard war test
froundnx.s f22, f9 # perform first operation
froundnx.s f28, f30 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x57ef6b14a2f383a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe433aa294780fa87 # load x3 with value 0xe433aa294780fa87
sw x3, 0(x2) # store 0xe433aa294780fa87 in memory
flw f0, 0(x2) # load 0xe433aa294780fa87 from memory into f0
froundnx.s f0, f0 # perform operation
froundnx.s f0, f0 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0xe74aafed610cd2c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8fc4709250199e71 # load x3 with value 0x8fc4709250199e71
sw x3, 0(x2) # store 0x8fc4709250199e71 in memory
flw f1, 0(x2) # load 0x8fc4709250199e71 from memory into f1
froundnx.s f1, f1 # perform operation
froundnx.s f1, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0xa8920c8aac548238 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae7f08364110ae4a # load x3 with value 0xae7f08364110ae4a
sw x3, 0(x2) # store 0xae7f08364110ae4a in memory
flw f2, 0(x2) # load 0xae7f08364110ae4a from memory into f2
froundnx.s f2, f2 # perform operation
froundnx.s f2, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0x50d021891f6093b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf275f084e7709671 # load x3 with value 0xf275f084e7709671
sw x3, 0(x2) # store 0xf275f084e7709671 in memory
flw f3, 0(x2) # load 0xf275f084e7709671 from memory into f3
froundnx.s f3, f3 # perform operation
froundnx.s f3, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0xa74f0303266fc4ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x20f35e22078d4d5c # load x3 with value 0x20f35e22078d4d5c
sw x3, 0(x2) # store 0x20f35e22078d4d5c in memory
flw f4, 0(x2) # load 0x20f35e22078d4d5c from memory into f4
froundnx.s f4, f4 # perform operation
froundnx.s f4, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0xad147b9b385897dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf57c9310138b403 # load x3 with value 0xbf57c9310138b403
sw x3, 0(x2) # store 0xbf57c9310138b403 in memory
flw f5, 0(x2) # load 0xbf57c9310138b403 from memory into f5
froundnx.s f5, f5 # perform operation
froundnx.s f5, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0xab9412ff2317fd25 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4c3cca55fa01b18e # load x3 with value 0x4c3cca55fa01b18e
sw x3, 0(x2) # store 0x4c3cca55fa01b18e in memory
flw f6, 0(x2) # load 0x4c3cca55fa01b18e from memory into f6
froundnx.s f6, f6 # perform operation
froundnx.s f6, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0xa823c318ae6b4929 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0001d0b244d2cdc # load x3 with value 0xb0001d0b244d2cdc
sw x3, 0(x2) # store 0xb0001d0b244d2cdc in memory
flw f7, 0(x2) # load 0xb0001d0b244d2cdc from memory into f7
froundnx.s f7, f7 # perform operation
froundnx.s f7, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x154b68086539e0fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x98ac6f350fddc3df # load x3 with value 0x98ac6f350fddc3df
sw x3, 0(x2) # store 0x98ac6f350fddc3df in memory
flw f8, 0(x2) # load 0x98ac6f350fddc3df from memory into f8
froundnx.s f8, f8 # perform operation
froundnx.s f8, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0x00a0ef77f3dd4656 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe1d163c18842264a # load x3 with value 0xe1d163c18842264a
sw x3, 0(x2) # store 0xe1d163c18842264a in memory
flw f9, 0(x2) # load 0xe1d163c18842264a from memory into f9
froundnx.s f9, f9 # perform operation
froundnx.s f9, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0x3dc9f3008d1cc100 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x27fc81032ec77f4d # load x3 with value 0x27fc81032ec77f4d
sw x3, 0(x2) # store 0x27fc81032ec77f4d in memory
flw f10, 0(x2) # load 0x27fc81032ec77f4d from memory into f10
froundnx.s f10, f10 # perform operation
froundnx.s f10, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0x82f673babc4119ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8a3fb0e62299e798 # load x3 with value 0x8a3fb0e62299e798
sw x3, 0(x2) # store 0x8a3fb0e62299e798 in memory
flw f11, 0(x2) # load 0x8a3fb0e62299e798 from memory into f11
froundnx.s f11, f11 # perform operation
froundnx.s f11, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0xa8a3e5406cbd8b0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2cd951d1b96e7bba # load x3 with value 0x2cd951d1b96e7bba
sw x3, 0(x2) # store 0x2cd951d1b96e7bba in memory
flw f12, 0(x2) # load 0x2cd951d1b96e7bba from memory into f12
froundnx.s f12, f12 # perform operation
froundnx.s f12, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0x25daf68a101d7fb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x551f4eab73b2458f # load x3 with value 0x551f4eab73b2458f
sw x3, 0(x2) # store 0x551f4eab73b2458f in memory
flw f13, 0(x2) # load 0x551f4eab73b2458f from memory into f13
froundnx.s f13, f13 # perform operation
froundnx.s f13, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0x609f57bc0b373c29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9650513a9810761a # load x3 with value 0x9650513a9810761a
sw x3, 0(x2) # store 0x9650513a9810761a in memory
flw f14, 0(x2) # load 0x9650513a9810761a from memory into f14
froundnx.s f14, f14 # perform operation
froundnx.s f14, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0xc6f4156050614799 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdf2b7b8fc9518e44 # load x3 with value 0xdf2b7b8fc9518e44
sw x3, 0(x2) # store 0xdf2b7b8fc9518e44 in memory
flw f15, 0(x2) # load 0xdf2b7b8fc9518e44 from memory into f15
froundnx.s f15, f15 # perform operation
froundnx.s f15, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0x7945f8a1ba93d053 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x97553ada8c43b752 # load x3 with value 0x97553ada8c43b752
sw x3, 0(x2) # store 0x97553ada8c43b752 in memory
flw f16, 0(x2) # load 0x97553ada8c43b752 from memory into f16
froundnx.s f16, f16 # perform operation
froundnx.s f16, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x4eb442b935195672 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4c836af593c5a29a # load x3 with value 0x4c836af593c5a29a
sw x3, 0(x2) # store 0x4c836af593c5a29a in memory
flw f17, 0(x2) # load 0x4c836af593c5a29a from memory into f17
froundnx.s f17, f17 # perform operation
froundnx.s f17, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0xeef9394db7b3c543 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x18b6bc80841d7b00 # load x3 with value 0x18b6bc80841d7b00
sw x3, 0(x2) # store 0x18b6bc80841d7b00 in memory
flw f18, 0(x2) # load 0x18b6bc80841d7b00 from memory into f18
froundnx.s f18, f18 # perform operation
froundnx.s f18, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x1896a48c466b1232 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5ff29ef77b9b451f # load x3 with value 0x5ff29ef77b9b451f
sw x3, 0(x2) # store 0x5ff29ef77b9b451f in memory
flw f19, 0(x2) # load 0x5ff29ef77b9b451f from memory into f19
froundnx.s f19, f19 # perform operation
froundnx.s f19, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x40d36044107c8faa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc03ce1ee210995eb # load x3 with value 0xc03ce1ee210995eb
sw x3, 0(x2) # store 0xc03ce1ee210995eb in memory
flw f20, 0(x2) # load 0xc03ce1ee210995eb from memory into f20
froundnx.s f20, f20 # perform operation
froundnx.s f20, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0xd2f5c72199c79b2f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x46a79ff20a041996 # load x3 with value 0x46a79ff20a041996
sw x3, 0(x2) # store 0x46a79ff20a041996 in memory
flw f21, 0(x2) # load 0x46a79ff20a041996 from memory into f21
froundnx.s f21, f21 # perform operation
froundnx.s f21, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0xc195034d70ae18ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x22f4c5eaa808240c # load x3 with value 0x22f4c5eaa808240c
sw x3, 0(x2) # store 0x22f4c5eaa808240c in memory
flw f22, 0(x2) # load 0x22f4c5eaa808240c from memory into f22
froundnx.s f22, f22 # perform operation
froundnx.s f22, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x93e599f8a9be1979 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb346ea0e0ef3f007 # load x3 with value 0xb346ea0e0ef3f007
sw x3, 0(x2) # store 0xb346ea0e0ef3f007 in memory
flw f23, 0(x2) # load 0xb346ea0e0ef3f007 from memory into f23
froundnx.s f23, f23 # perform operation
froundnx.s f23, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0x3febf4a942d5002e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x86e029c524ced4b8 # load x3 with value 0x86e029c524ced4b8
sw x3, 0(x2) # store 0x86e029c524ced4b8 in memory
flw f24, 0(x2) # load 0x86e029c524ced4b8 from memory into f24
froundnx.s f24, f24 # perform operation
froundnx.s f24, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0x6c643479945a78a5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc3328fbd7ded748f # load x3 with value 0xc3328fbd7ded748f
sw x3, 0(x2) # store 0xc3328fbd7ded748f in memory
flw f25, 0(x2) # load 0xc3328fbd7ded748f from memory into f25
froundnx.s f25, f25 # perform operation
froundnx.s f25, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0xe5fae44e4d8e13b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x738d963489536023 # load x3 with value 0x738d963489536023
sw x3, 0(x2) # store 0x738d963489536023 in memory
flw f26, 0(x2) # load 0x738d963489536023 from memory into f26
froundnx.s f26, f26 # perform operation
froundnx.s f26, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0x5b409bb84437de95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf9e1bf69ba3f73 # load x3 with value 0xaf9e1bf69ba3f73
sw x3, 0(x2) # store 0xaf9e1bf69ba3f73 in memory
flw f27, 0(x2) # load 0xaf9e1bf69ba3f73 from memory into f27
froundnx.s f27, f27 # perform operation
froundnx.s f27, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x04b5c8507bfe4948 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7aabcb9e2361f826 # load x3 with value 0x7aabcb9e2361f826
sw x3, 0(x2) # store 0x7aabcb9e2361f826 in memory
flw f28, 0(x2) # load 0x7aabcb9e2361f826 from memory into f28
froundnx.s f28, f28 # perform operation
froundnx.s f28, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0xee7ff8083ebca173 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8e803fa1ffcdef3a # load x3 with value 0x8e803fa1ffcdef3a
sw x3, 0(x2) # store 0x8e803fa1ffcdef3a in memory
flw f29, 0(x2) # load 0x8e803fa1ffcdef3a from memory into f29
froundnx.s f29, f29 # perform operation
froundnx.s f29, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0xd72572692e3a6df0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe8f30984e24b73d # load x3 with value 0xe8f30984e24b73d
sw x3, 0(x2) # store 0xe8f30984e24b73d in memory
flw f30, 0(x2) # load 0xe8f30984e24b73d from memory into f30
froundnx.s f30, f30 # perform operation
froundnx.s f30, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0xe53dd7e1bd6a82e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x619eeeade2afc110 # load x3 with value 0x619eeeade2afc110
sw x3, 0(x2) # store 0x619eeeade2afc110 in memory
flw f31, 0(x2) # load 0x619eeeade2afc110 from memory into f31
froundnx.s f31, f31 # perform operation
froundnx.s f31, f31 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f0)
li x0, 0x03e668e8372b8232 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd87b9b34cbd7c27 # load x3 with value 0xd87b9b34cbd7c27
sw x3, 0(x2) # store 0xd87b9b34cbd7c27 in memory
flw f26, 0(x2) # load 0xd87b9b34cbd7c27 from memory into f26
froundnx.s f0, f26 # perform operation
froundnx.s f0, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f1)
li x1, 0xc0ecb29ce2e17c81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae97407aa1067b94 # load x3 with value 0xae97407aa1067b94
sw x3, 0(x2) # store 0xae97407aa1067b94 in memory
flw f17, 0(x2) # load 0xae97407aa1067b94 from memory into f17
froundnx.s f1, f17 # perform operation
froundnx.s f1, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f2)
li x2, 0xddfc52ad875fe5ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1424429cbebf685c # load x3 with value 0x1424429cbebf685c
sw x3, 0(x2) # store 0x1424429cbebf685c in memory
flw f16, 0(x2) # load 0x1424429cbebf685c from memory into f16
froundnx.s f2, f16 # perform operation
froundnx.s f2, f16 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f3)
li x3, 0xddc2f173f65e5ebf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe475f5d5aa271f06 # load x3 with value 0xe475f5d5aa271f06
sw x3, 0(x2) # store 0xe475f5d5aa271f06 in memory
flw f18, 0(x2) # load 0xe475f5d5aa271f06 from memory into f18
froundnx.s f3, f18 # perform operation
froundnx.s f3, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f4)
li x4, 0xf81c58df3321c580 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2994e3d09e2328fb # load x3 with value 0x2994e3d09e2328fb
sw x3, 0(x2) # store 0x2994e3d09e2328fb in memory
flw f15, 0(x2) # load 0x2994e3d09e2328fb from memory into f15
froundnx.s f4, f15 # perform operation
froundnx.s f4, f15 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f5)
li x5, 0xfdf6a3cfd9e7a24e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x165956ba866a2bc4 # load x3 with value 0x165956ba866a2bc4
sw x3, 0(x2) # store 0x165956ba866a2bc4 in memory
flw f28, 0(x2) # load 0x165956ba866a2bc4 from memory into f28
froundnx.s f5, f28 # perform operation
froundnx.s f5, f28 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f6)
li x6, 0x15a3a652088366b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf32a37c2ceb9557 # load x3 with value 0xf32a37c2ceb9557
sw x3, 0(x2) # store 0xf32a37c2ceb9557 in memory
flw f30, 0(x2) # load 0xf32a37c2ceb9557 from memory into f30
froundnx.s f6, f30 # perform operation
froundnx.s f6, f30 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f7)
li x7, 0x528fab6b183ee79d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2c19dced59b06a98 # load x3 with value 0x2c19dced59b06a98
sw x3, 0(x2) # store 0x2c19dced59b06a98 in memory
flw f1, 0(x2) # load 0x2c19dced59b06a98 from memory into f1
froundnx.s f7, f1 # perform operation
froundnx.s f7, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f8)
li x8, 0xeffcd1db3a8cfbdb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x431f2241a997695a # load x3 with value 0x431f2241a997695a
sw x3, 0(x2) # store 0x431f2241a997695a in memory
flw f26, 0(x2) # load 0x431f2241a997695a from memory into f26
froundnx.s f8, f26 # perform operation
froundnx.s f8, f26 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f9)
li x9, 0x0984417d4124f4da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8fb95a5286fe87bd # load x3 with value 0x8fb95a5286fe87bd
sw x3, 0(x2) # store 0x8fb95a5286fe87bd in memory
flw f9, 0(x2) # load 0x8fb95a5286fe87bd from memory into f9
froundnx.s f9, f9 # perform operation
froundnx.s f9, f9 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f10)
li x10, 0x5d3da329bad6c3d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdcb184cf04606343 # load x3 with value 0xdcb184cf04606343
sw x3, 0(x2) # store 0xdcb184cf04606343 in memory
flw f11, 0(x2) # load 0xdcb184cf04606343 from memory into f11
froundnx.s f10, f11 # perform operation
froundnx.s f10, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f11)
li x11, 0x83c0d457f8b942e6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd8d4b25698ae2918 # load x3 with value 0xd8d4b25698ae2918
sw x3, 0(x2) # store 0xd8d4b25698ae2918 in memory
flw f11, 0(x2) # load 0xd8d4b25698ae2918 from memory into f11
froundnx.s f11, f11 # perform operation
froundnx.s f11, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f12)
li x12, 0x6079ff4b73e78ee2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa9a81fbfd6226311 # load x3 with value 0xa9a81fbfd6226311
sw x3, 0(x2) # store 0xa9a81fbfd6226311 in memory
flw f4, 0(x2) # load 0xa9a81fbfd6226311 from memory into f4
froundnx.s f12, f4 # perform operation
froundnx.s f12, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f13)
li x13, 0x011575f16d8ae441 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf17654b432a7583 # load x3 with value 0xbf17654b432a7583
sw x3, 0(x2) # store 0xbf17654b432a7583 in memory
flw f7, 0(x2) # load 0xbf17654b432a7583 from memory into f7
froundnx.s f13, f7 # perform operation
froundnx.s f13, f7 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f14)
li x14, 0xb65cfb14fd1382f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca8c7e1a5199f018 # load x3 with value 0xca8c7e1a5199f018
sw x3, 0(x2) # store 0xca8c7e1a5199f018 in memory
flw f11, 0(x2) # load 0xca8c7e1a5199f018 from memory into f11
froundnx.s f14, f11 # perform operation
froundnx.s f14, f11 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f15)
li x15, 0xe02de1fa660a78ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4900a7028a2437a # load x3 with value 0xa4900a7028a2437a
sw x3, 0(x2) # store 0xa4900a7028a2437a in memory
flw f4, 0(x2) # load 0xa4900a7028a2437a from memory into f4
froundnx.s f15, f4 # perform operation
froundnx.s f15, f4 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f16)
li x16, 0xaf8c0a151e3e35b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x85619268e55cdf67 # load x3 with value 0x85619268e55cdf67
sw x3, 0(x2) # store 0x85619268e55cdf67 in memory
flw f27, 0(x2) # load 0x85619268e55cdf67 from memory into f27
froundnx.s f16, f27 # perform operation
froundnx.s f16, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f17)
li x17, 0x9979c4a7c54eb667 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x900084645fcbdc18 # load x3 with value 0x900084645fcbdc18
sw x3, 0(x2) # store 0x900084645fcbdc18 in memory
flw f20, 0(x2) # load 0x900084645fcbdc18 from memory into f20
froundnx.s f17, f20 # perform operation
froundnx.s f17, f20 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f18)
li x18, 0xf9428fd96af8cc9e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa8aa64ccb14841dd # load x3 with value 0xa8aa64ccb14841dd
sw x3, 0(x2) # store 0xa8aa64ccb14841dd in memory
flw f22, 0(x2) # load 0xa8aa64ccb14841dd from memory into f22
froundnx.s f18, f22 # perform operation
froundnx.s f18, f22 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f19)
li x19, 0x24915886015495f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x99646ce4e8e8d788 # load x3 with value 0x99646ce4e8e8d788
sw x3, 0(x2) # store 0x99646ce4e8e8d788 in memory
flw f12, 0(x2) # load 0x99646ce4e8e8d788 from memory into f12
froundnx.s f19, f12 # perform operation
froundnx.s f19, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f20)
li x20, 0xa7ea5ab91e16a783 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2b1b1ffd383ea914 # load x3 with value 0x2b1b1ffd383ea914
sw x3, 0(x2) # store 0x2b1b1ffd383ea914 in memory
flw f23, 0(x2) # load 0x2b1b1ffd383ea914 from memory into f23
froundnx.s f20, f23 # perform operation
froundnx.s f20, f23 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f21)
li x21, 0x96693b1f61c62140 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x574cf20006771a2e # load x3 with value 0x574cf20006771a2e
sw x3, 0(x2) # store 0x574cf20006771a2e in memory
flw f1, 0(x2) # load 0x574cf20006771a2e from memory into f1
froundnx.s f21, f1 # perform operation
froundnx.s f21, f1 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f22)
li x22, 0x0ea4f73f28e32159 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd77d4b2c3429a62a # load x3 with value 0xd77d4b2c3429a62a
sw x3, 0(x2) # store 0xd77d4b2c3429a62a in memory
flw f27, 0(x2) # load 0xd77d4b2c3429a62a from memory into f27
froundnx.s f22, f27 # perform operation
froundnx.s f22, f27 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f23)
li x23, 0x50b166c6136e8ac4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x29fa02bf4fb3c4c3 # load x3 with value 0x29fa02bf4fb3c4c3
sw x3, 0(x2) # store 0x29fa02bf4fb3c4c3 in memory
flw f17, 0(x2) # load 0x29fa02bf4fb3c4c3 from memory into f17
froundnx.s f23, f17 # perform operation
froundnx.s f23, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f24)
li x24, 0xab55aeb1e46df0b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4732cf465a8dbc4 # load x3 with value 0xa4732cf465a8dbc4
sw x3, 0(x2) # store 0xa4732cf465a8dbc4 in memory
flw f19, 0(x2) # load 0xa4732cf465a8dbc4 from memory into f19
froundnx.s f24, f19 # perform operation
froundnx.s f24, f19 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f25)
li x25, 0xab4be2399a15e71c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc6dc803ecb0612a2 # load x3 with value 0xc6dc803ecb0612a2
sw x3, 0(x2) # store 0xc6dc803ecb0612a2 in memory
flw f6, 0(x2) # load 0xc6dc803ecb0612a2 from memory into f6
froundnx.s f25, f6 # perform operation
froundnx.s f25, f6 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f26)
li x26, 0x349820cd90cb275b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f6e60592b09a510 # load x3 with value 0x5f6e60592b09a510
sw x3, 0(x2) # store 0x5f6e60592b09a510 in memory
flw f17, 0(x2) # load 0x5f6e60592b09a510 from memory into f17
froundnx.s f26, f17 # perform operation
froundnx.s f26, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f27)
li x27, 0x08d66d7addb73eb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x251c630f7bb817b2 # load x3 with value 0x251c630f7bb817b2
sw x3, 0(x2) # store 0x251c630f7bb817b2 in memory
flw f17, 0(x2) # load 0x251c630f7bb817b2 from memory into f17
froundnx.s f27, f17 # perform operation
froundnx.s f27, f17 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f28)
li x28, 0xdb4003099ca50fce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a004188e084fda3 # load x3 with value 0x2a004188e084fda3
sw x3, 0(x2) # store 0x2a004188e084fda3 in memory
flw f12, 0(x2) # load 0x2a004188e084fda3 from memory into f12
froundnx.s f28, f12 # perform operation
froundnx.s f28, f12 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f29)
li x29, 0xfd278ca75e45d148 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5bd6f8e60d4b08a9 # load x3 with value 0x5bd6f8e60d4b08a9
sw x3, 0(x2) # store 0x5bd6f8e60d4b08a9 in memory
flw f21, 0(x2) # load 0x5bd6f8e60d4b08a9 from memory into f21
froundnx.s f29, f21 # perform operation
froundnx.s f29, f21 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f30)
li x30, 0xe2c035a8943fc798 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x82b97ac62ccdc084 # load x3 with value 0x82b97ac62ccdc084
sw x3, 0(x2) # store 0x82b97ac62ccdc084 in memory
flw f18, 0(x2) # load 0x82b97ac62ccdc084 from memory into f18
froundnx.s f30, f18 # perform operation
froundnx.s f30, f18 # perform operation

# Testcase cmp_fd_fs2 (Test fd = fs2 = f31)
li x31, 0x4ce461d674f8aa3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb07463542f5aa6c1 # load x3 with value 0xb07463542f5aa6c1
sw x3, 0(x2) # store 0xb07463542f5aa6c1 in memory
flw f5, 0(x2) # load 0xb07463542f5aa6c1 from memory into f5
froundnx.s f31, f5 # perform operation
froundnx.s f31, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x4, 0xeecf762e48dcc53a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with value 0x00000000
sw x3, 0(x2) # store 0x00000000 in memory
flw f26, 0(x2) # load 0x00000000 from memory into f26
froundnx.s f4, f26 # perform operation
froundnx.s f4, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000000)
li x22, 0x2b0549c19894bea8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000000 # load x3 with value 0x80000000
sw x3, 0(x2) # store 0x80000000 in memory
flw f6, 0(x2) # load 0x80000000 from memory into f6
froundnx.s f22, f6 # perform operation
froundnx.s f22, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3f800000)
li x31, 0xee7279318983572d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f800000 # load x3 with value 0x3f800000
sw x3, 0(x2) # store 0x3f800000 in memory
flw f25, 0(x2) # load 0x3f800000 from memory into f25
froundnx.s f31, f25 # perform operation
froundnx.s f31, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbf800000)
li x30, 0x662092118a0b0393 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbf800000 # load x3 with value 0xbf800000
sw x3, 0(x2) # store 0xbf800000 in memory
flw f22, 0(x2) # load 0xbf800000 from memory into f22
froundnx.s f30, f22 # perform operation
froundnx.s f30, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3fc00000)
li x12, 0x0cd34a91e16f2825 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3fc00000 # load x3 with value 0x3fc00000
sw x3, 0(x2) # store 0x3fc00000 in memory
flw f16, 0(x2) # load 0x3fc00000 from memory into f16
froundnx.s f12, f16 # perform operation
froundnx.s f12, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbfc00000)
li x9, 0xec7ae177e4b13f7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfc00000 # load x3 with value 0xbfc00000
sw x3, 0(x2) # store 0xbfc00000 in memory
flw f23, 0(x2) # load 0xbfc00000 from memory into f23
froundnx.s f9, f23 # perform operation
froundnx.s f9, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x40000000)
li x19, 0x02e780d8c05357e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40000000 # load x3 with value 0x40000000
sw x3, 0(x2) # store 0x40000000 in memory
flw f10, 0(x2) # load 0x40000000 from memory into f10
froundnx.s f19, f10 # perform operation
froundnx.s f19, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc0000000)
li x14, 0xf3523d1cbfd4ceec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc0000000 # load x3 with value 0xc0000000
sw x3, 0(x2) # store 0xc0000000 in memory
flw f3, 0(x2) # load 0xc0000000 from memory into f3
froundnx.s f14, f3 # perform operation
froundnx.s f14, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800000)
li x25, 0x80f120e005835c61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00800000 # load x3 with value 0x00800000
sw x3, 0(x2) # store 0x00800000 in memory
flw f16, 0(x2) # load 0x00800000 from memory into f16
froundnx.s f25, f16 # perform operation
froundnx.s f25, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80800000)
li x3, 0x9427006b2e51177e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80800000 # load x3 with value 0x80800000
sw x3, 0(x2) # store 0x80800000 in memory
flw f23, 0(x2) # load 0x80800000 from memory into f23
froundnx.s f3, f23 # perform operation
froundnx.s f3, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f7fffff)
li x29, 0x39f3fb36bc7bedd0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f7fffff # load x3 with value 0x7f7fffff
sw x3, 0(x2) # store 0x7f7fffff in memory
flw f3, 0(x2) # load 0x7f7fffff from memory into f3
froundnx.s f29, f3 # perform operation
froundnx.s f29, f3 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff7fffff)
li x13, 0x3da354730cadbaad # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff7fffff # load x3 with value 0xff7fffff
sw x3, 0(x2) # store 0xff7fffff in memory
flw f26, 0(x2) # load 0xff7fffff from memory into f26
froundnx.s f13, f26 # perform operation
froundnx.s f13, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffff)
li x31, 0x402cea08d65fae0e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x007fffff # load x3 with value 0x007fffff
sw x3, 0(x2) # store 0x007fffff in memory
flw f28, 0(x2) # load 0x007fffff from memory into f28
froundnx.s f31, f28 # perform operation
froundnx.s f31, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x807fffff)
li x24, 0x78ded0dccb5c4c4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x807fffff # load x3 with value 0x807fffff
sw x3, 0(x2) # store 0x807fffff in memory
flw f31, 0(x2) # load 0x807fffff from memory into f31
froundnx.s f24, f31 # perform operation
froundnx.s f24, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x400000)
li x29, 0x0c76af1823cf4762 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00400000 # load x3 with value 0x00400000
sw x3, 0(x2) # store 0x00400000 in memory
flw f25, 0(x2) # load 0x00400000 from memory into f25
froundnx.s f29, f25 # perform operation
froundnx.s f29, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80400000)
li x2, 0xdb794ca989b6b4e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80400000 # load x3 with value 0x80400000
sw x3, 0(x2) # store 0x80400000 in memory
flw f25, 0(x2) # load 0x80400000 from memory into f25
froundnx.s f2, f25 # perform operation
froundnx.s f2, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x23, 0x07eb996b73cb8698 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with value 0x00000001
sw x3, 0(x2) # store 0x00000001 in memory
flw f21, 0(x2) # load 0x00000001 from memory into f21
froundnx.s f23, f21 # perform operation
froundnx.s f23, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x80000001)
li x16, 0x874b042d228369a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x80000001 # load x3 with value 0x80000001
sw x3, 0(x2) # store 0x80000001 in memory
flw f6, 0(x2) # load 0x80000001 from memory into f6
froundnx.s f16, f6 # perform operation
froundnx.s f16, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800000)
li x29, 0x7d1cf25c2afcbef6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800000 # load x3 with value 0x7f800000
sw x3, 0(x2) # store 0x7f800000 in memory
flw f15, 0(x2) # load 0x7f800000 from memory into f15
froundnx.s f29, f15 # perform operation
froundnx.s f29, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xff800000)
li x20, 0x9b1a1af50524ce4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xff800000 # load x3 with value 0xff800000
sw x3, 0(x2) # store 0xff800000 in memory
flw f19, 0(x2) # load 0xff800000 from memory into f19
froundnx.s f20, f19 # perform operation
froundnx.s f20, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fc00000)
li x13, 0xafa168778f862a9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fc00000 # load x3 with value 0x7fc00000
sw x3, 0(x2) # store 0x7fc00000 in memory
flw f20, 0(x2) # load 0x7fc00000 from memory into f20
froundnx.s f13, f20 # perform operation
froundnx.s f13, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffff)
li x7, 0x8fb1e2de5498811e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fffffff # load x3 with value 0x7fffffff
sw x3, 0(x2) # store 0x7fffffff in memory
flw f29, 0(x2) # load 0x7fffffff from memory into f29
froundnx.s f7, f29 # perform operation
froundnx.s f7, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7f800001)
li x23, 0x2b2989464ba160fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7f800001 # load x3 with value 0x7f800001
sw x3, 0(x2) # store 0x7f800001 in memory
flw f18, 0(x2) # load 0x7f800001 from memory into f18
froundnx.s f23, f18 # perform operation
froundnx.s f23, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fbfffff)
li x8, 0x5960f432b2ada0f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7fbfffff # load x3 with value 0x7fbfffff
sw x3, 0(x2) # store 0x7fbfffff in memory
flw f30, 0(x2) # load 0x7fbfffff from memory into f30
froundnx.s f8, f30 # perform operation
froundnx.s f8, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ef8654f)
li x5, 0x761002379c9661fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7ef8654f # load x3 with value 0x7ef8654f
sw x3, 0(x2) # store 0x7ef8654f in memory
flw f2, 0(x2) # load 0x7ef8654f from memory into f2
froundnx.s f5, f2 # perform operation
froundnx.s f5, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x813d9ab0)
li x29, 0x1691da735eba9ebb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x813d9ab0 # load x3 with value 0x813d9ab0
sw x3, 0(x2) # store 0x813d9ab0 in memory
flw f15, 0(x2) # load 0x813d9ab0 from memory into f15
froundnx.s f29, f15 # perform operation
froundnx.s f29, f15 # perform operation

# Testcase cp_frm
li x15, 0x67c158d86f1b8df9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x897070d007eaefbd # load x3 with value 0x897070d007eaefbd
sw x3, 0(x2) # store 0x897070d007eaefbd in memory
flw f10, 0(x2) # load 0x897070d007eaefbd from memory into f10
froundnx.s f15, f10 # perform operation
froundnx.s f15, f10, dyn # perform operation
froundnx.s f15, f10, rdn # perform operation
froundnx.s f15, f10, rmm # perform operation
froundnx.s f15, f10, rne # perform operation
froundnx.s f15, f10, rtz # perform operation
froundnx.s f15, f10, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
froundnx.s f15, f10 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
froundnx.s f15, f10 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
froundnx.s f15, f10 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
froundnx.s f15, f10 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
froundnx.s f15, f10 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x99dead83e16f8baf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3b88743fa4a2de7 # load x3 with value 0x3b88743fa4a2de7
sw x3, 0(x2) # store 0x3b88743fa4a2de7 in memory
flw f8, 0(x2) # load 0x3b88743fa4a2de7 from memory into f8
froundnx.s f0, f8 # perform operation
froundnx.s f0, f8 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xaa34e58605057a02 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x695504b9d4bdbcb3 # load x3 with value 0x695504b9d4bdbcb3
sw x3, 0(x2) # store 0x695504b9d4bdbcb3 in memory
flw f9, 0(x2) # load 0x695504b9d4bdbcb3 from memory into f9
froundnx.s f1, f9 # perform operation
froundnx.s f1, f9 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x9334c5bc5e9fce81 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6d4499aca143711a # load x3 with value 0x6d4499aca143711a
sw x3, 0(x2) # store 0x6d4499aca143711a in memory
flw f9, 0(x2) # load 0x6d4499aca143711a from memory into f9
froundnx.s f2, f9 # perform operation
froundnx.s f2, f9 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0xfaeb9645e1f829e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe12d3090b9e54d1d # load x3 with value 0xe12d3090b9e54d1d
sw x3, 0(x2) # store 0xe12d3090b9e54d1d in memory
flw f3, 0(x2) # load 0xe12d3090b9e54d1d from memory into f3
froundnx.s f3, f3 # perform operation
froundnx.s f3, f3 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x2b8496b00d6cd09d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x818f6b6834bd9bf7 # load x3 with value 0x818f6b6834bd9bf7
sw x3, 0(x2) # store 0x818f6b6834bd9bf7 in memory
flw f25, 0(x2) # load 0x818f6b6834bd9bf7 from memory into f25
froundnx.s f4, f25 # perform operation
froundnx.s f4, f25 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x5634fd83602eb234 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xce432d55aa652982 # load x3 with value 0xce432d55aa652982
sw x3, 0(x2) # store 0xce432d55aa652982 in memory
flw f26, 0(x2) # load 0xce432d55aa652982 from memory into f26
froundnx.s f5, f26 # perform operation
froundnx.s f5, f26 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x9966923c34463acc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x20577edb6cef1b1c # load x3 with value 0x20577edb6cef1b1c
sw x3, 0(x2) # store 0x20577edb6cef1b1c in memory
flw f12, 0(x2) # load 0x20577edb6cef1b1c from memory into f12
froundnx.s f6, f12 # perform operation
froundnx.s f6, f12 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x2b2422bf6a5c1064 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6acee44dc0d5e016 # load x3 with value 0x6acee44dc0d5e016
sw x3, 0(x2) # store 0x6acee44dc0d5e016 in memory
flw f11, 0(x2) # load 0x6acee44dc0d5e016 from memory into f11
froundnx.s f7, f11 # perform operation
froundnx.s f7, f11 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x21b27c8fd357e4d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x635d1da0d84ac4ab # load x3 with value 0x635d1da0d84ac4ab
sw x3, 0(x2) # store 0x635d1da0d84ac4ab in memory
flw f18, 0(x2) # load 0x635d1da0d84ac4ab from memory into f18
froundnx.s f8, f18 # perform operation
froundnx.s f8, f18 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x02fafd8b915567b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8dcbf84284c86a6b # load x3 with value 0x8dcbf84284c86a6b
sw x3, 0(x2) # store 0x8dcbf84284c86a6b in memory
flw f12, 0(x2) # load 0x8dcbf84284c86a6b from memory into f12
froundnx.s f9, f12 # perform operation
froundnx.s f9, f12 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x352e3b0fd7fb12c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9dc741cff276ea1 # load x3 with value 0x9dc741cff276ea1
sw x3, 0(x2) # store 0x9dc741cff276ea1 in memory
flw f3, 0(x2) # load 0x9dc741cff276ea1 from memory into f3
froundnx.s f10, f3 # perform operation
froundnx.s f10, f3 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x124be1c5a6c12fcb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x411fbaba3386acbe # load x3 with value 0x411fbaba3386acbe
sw x3, 0(x2) # store 0x411fbaba3386acbe in memory
flw f29, 0(x2) # load 0x411fbaba3386acbe from memory into f29
froundnx.s f11, f29 # perform operation
froundnx.s f11, f29 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x79eafeb3e712f626 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e4b210d31b8943a # load x3 with value 0x1e4b210d31b8943a
sw x3, 0(x2) # store 0x1e4b210d31b8943a in memory
flw f28, 0(x2) # load 0x1e4b210d31b8943a from memory into f28
froundnx.s f12, f28 # perform operation
froundnx.s f12, f28 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0xdfe804ab1295226b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf64818bd1107e353 # load x3 with value 0xf64818bd1107e353
sw x3, 0(x2) # store 0xf64818bd1107e353 in memory
flw f26, 0(x2) # load 0xf64818bd1107e353 from memory into f26
froundnx.s f13, f26 # perform operation
froundnx.s f13, f26 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x7b23510e1deef8fe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ad9a7ce8b3fc931 # load x3 with value 0x2ad9a7ce8b3fc931
sw x3, 0(x2) # store 0x2ad9a7ce8b3fc931 in memory
flw f6, 0(x2) # load 0x2ad9a7ce8b3fc931 from memory into f6
froundnx.s f14, f6 # perform operation
froundnx.s f14, f6 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x3f8c9c139db7990f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x88e294a947bead81 # load x3 with value 0x88e294a947bead81
sw x3, 0(x2) # store 0x88e294a947bead81 in memory
flw f14, 0(x2) # load 0x88e294a947bead81 from memory into f14
froundnx.s f15, f14 # perform operation
froundnx.s f15, f14 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x1685319757f60156 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xca8d8c1527694cf7 # load x3 with value 0xca8d8c1527694cf7
sw x3, 0(x2) # store 0xca8d8c1527694cf7 in memory
flw f14, 0(x2) # load 0xca8d8c1527694cf7 from memory into f14
froundnx.s f16, f14 # perform operation
froundnx.s f16, f14 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0xf81d6dd4e1e97978 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc36ea8f4906d992 # load x3 with value 0xc36ea8f4906d992
sw x3, 0(x2) # store 0xc36ea8f4906d992 in memory
flw f6, 0(x2) # load 0xc36ea8f4906d992 from memory into f6
froundnx.s f17, f6 # perform operation
froundnx.s f17, f6 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x8fc65f9c57c99fed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x469203641743a3c7 # load x3 with value 0x469203641743a3c7
sw x3, 0(x2) # store 0x469203641743a3c7 in memory
flw f1, 0(x2) # load 0x469203641743a3c7 from memory into f1
froundnx.s f18, f1 # perform operation
froundnx.s f18, f1 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x5da564ebce4dedd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1acc141f0c021250 # load x3 with value 0x1acc141f0c021250
sw x3, 0(x2) # store 0x1acc141f0c021250 in memory
flw f25, 0(x2) # load 0x1acc141f0c021250 from memory into f25
froundnx.s f19, f25 # perform operation
froundnx.s f19, f25 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x9248d67d168d6cae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x115c3c6f647cc979 # load x3 with value 0x115c3c6f647cc979
sw x3, 0(x2) # store 0x115c3c6f647cc979 in memory
flw f19, 0(x2) # load 0x115c3c6f647cc979 from memory into f19
froundnx.s f20, f19 # perform operation
froundnx.s f20, f19 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xd5728295f4f5af03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x73654fe9dfbc2d4f # load x3 with value 0x73654fe9dfbc2d4f
sw x3, 0(x2) # store 0x73654fe9dfbc2d4f in memory
flw f2, 0(x2) # load 0x73654fe9dfbc2d4f from memory into f2
froundnx.s f21, f2 # perform operation
froundnx.s f21, f2 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x17198a546844f3c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe25b16e42542f9f9 # load x3 with value 0xe25b16e42542f9f9
sw x3, 0(x2) # store 0xe25b16e42542f9f9 in memory
flw f30, 0(x2) # load 0xe25b16e42542f9f9 from memory into f30
froundnx.s f22, f30 # perform operation
froundnx.s f22, f30 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x48faeb748eda972c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3209a51464a64881 # load x3 with value 0x3209a51464a64881
sw x3, 0(x2) # store 0x3209a51464a64881 in memory
flw f29, 0(x2) # load 0x3209a51464a64881 from memory into f29
froundnx.s f23, f29 # perform operation
froundnx.s f23, f29 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x36c0793e87acac80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4c751c484b73d61c # load x3 with value 0x4c751c484b73d61c
sw x3, 0(x2) # store 0x4c751c484b73d61c in memory
flw f23, 0(x2) # load 0x4c751c484b73d61c from memory into f23
froundnx.s f24, f23 # perform operation
froundnx.s f24, f23 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xbad7d5426f9bdb6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e07ba7b522026b9 # load x3 with value 0x5e07ba7b522026b9
sw x3, 0(x2) # store 0x5e07ba7b522026b9 in memory
flw f7, 0(x2) # load 0x5e07ba7b522026b9 from memory into f7
froundnx.s f25, f7 # perform operation
froundnx.s f25, f7 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x9f441f3fdae6d864 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa82b1a9e2df458a1 # load x3 with value 0xa82b1a9e2df458a1
sw x3, 0(x2) # store 0xa82b1a9e2df458a1 in memory
flw f5, 0(x2) # load 0xa82b1a9e2df458a1 from memory into f5
froundnx.s f26, f5 # perform operation
froundnx.s f26, f5 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xca49659c5c24bf41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe06d311fee21c135 # load x3 with value 0xe06d311fee21c135
sw x3, 0(x2) # store 0xe06d311fee21c135 in memory
flw f17, 0(x2) # load 0xe06d311fee21c135 from memory into f17
froundnx.s f27, f17 # perform operation
froundnx.s f27, f17 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x65c6fc2765137865 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb5042e956c79dc9 # load x3 with value 0xb5042e956c79dc9
sw x3, 0(x2) # store 0xb5042e956c79dc9 in memory
flw f29, 0(x2) # load 0xb5042e956c79dc9 from memory into f29
froundnx.s f28, f29 # perform operation
froundnx.s f28, f29 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x99e0d6035af1157e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4962844db292e389 # load x3 with value 0x4962844db292e389
sw x3, 0(x2) # store 0x4962844db292e389 in memory
flw f9, 0(x2) # load 0x4962844db292e389 from memory into f9
froundnx.s f29, f9 # perform operation
froundnx.s f29, f9 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0x3cdf359bffb93443 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd1559ac8e3f9f21c # load x3 with value 0xd1559ac8e3f9f21c
sw x3, 0(x2) # store 0xd1559ac8e3f9f21c in memory
flw f8, 0(x2) # load 0xd1559ac8e3f9f21c from memory into f8
froundnx.s f30, f8 # perform operation
froundnx.s f30, f8 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xe6401f742b2ef201 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1617f1469d0b3c6 # load x3 with value 0xc1617f1469d0b3c6
sw x3, 0(x2) # store 0xc1617f1469d0b3c6 in memory
flw f22, 0(x2) # load 0xc1617f1469d0b3c6 from memory into f22
froundnx.s f31, f22 # perform operation
froundnx.s f31, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x25, 0xe0e4b60749f2f952 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x71b19eda954aa30d # load x3 with value 0x71b19eda954aa30d
sw x3, 0(x2) # store 0x71b19eda954aa30d in memory
flw f0, 0(x2) # load 0x71b19eda954aa30d from memory into f0
froundnx.s f25, f0 # perform operation
froundnx.s f25, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x13, 0x85a6668a13905551 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60f5ec1506342acf # load x3 with value 0x60f5ec1506342acf
sw x3, 0(x2) # store 0x60f5ec1506342acf in memory
flw f1, 0(x2) # load 0x60f5ec1506342acf from memory into f1
froundnx.s f13, f1 # perform operation
froundnx.s f13, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x9, 0x2eec7fbbcf96ebf6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdc3a648960dcbfcc # load x3 with value 0xdc3a648960dcbfcc
sw x3, 0(x2) # store 0xdc3a648960dcbfcc in memory
flw f2, 0(x2) # load 0xdc3a648960dcbfcc from memory into f2
froundnx.s f9, f2 # perform operation
froundnx.s f9, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x25, 0xa01938b1ae725495 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd5067b3e732c7571 # load x3 with value 0xd5067b3e732c7571
sw x3, 0(x2) # store 0xd5067b3e732c7571 in memory
flw f3, 0(x2) # load 0xd5067b3e732c7571 from memory into f3
froundnx.s f25, f3 # perform operation
froundnx.s f25, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x9, 0x383592e3c863b724 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb542a5befe2504a2 # load x3 with value 0xb542a5befe2504a2
sw x3, 0(x2) # store 0xb542a5befe2504a2 in memory
flw f4, 0(x2) # load 0xb542a5befe2504a2 from memory into f4
froundnx.s f9, f4 # perform operation
froundnx.s f9, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x30, 0xa04e264d55d85440 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2b81dd6dee56a2d5 # load x3 with value 0x2b81dd6dee56a2d5
sw x3, 0(x2) # store 0x2b81dd6dee56a2d5 in memory
flw f5, 0(x2) # load 0x2b81dd6dee56a2d5 from memory into f5
froundnx.s f30, f5 # perform operation
froundnx.s f30, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x26, 0x3d271b91ff08b6dd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x31f2750415ec2c4c # load x3 with value 0x31f2750415ec2c4c
sw x3, 0(x2) # store 0x31f2750415ec2c4c in memory
flw f6, 0(x2) # load 0x31f2750415ec2c4c from memory into f6
froundnx.s f26, f6 # perform operation
froundnx.s f26, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x5, 0x63918ae3af4a5a45 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4bbf063026da80ae # load x3 with value 0x4bbf063026da80ae
sw x3, 0(x2) # store 0x4bbf063026da80ae in memory
flw f7, 0(x2) # load 0x4bbf063026da80ae from memory into f7
froundnx.s f5, f7 # perform operation
froundnx.s f5, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x7, 0xae28754b38c0632c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x65e96d20201d335e # load x3 with value 0x65e96d20201d335e
sw x3, 0(x2) # store 0x65e96d20201d335e in memory
flw f8, 0(x2) # load 0x65e96d20201d335e from memory into f8
froundnx.s f7, f8 # perform operation
froundnx.s f7, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x25, 0x1c354de9bd4c38cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9cba02b441c8ef35 # load x3 with value 0x9cba02b441c8ef35
sw x3, 0(x2) # store 0x9cba02b441c8ef35 in memory
flw f9, 0(x2) # load 0x9cba02b441c8ef35 from memory into f9
froundnx.s f25, f9 # perform operation
froundnx.s f25, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x5, 0xf282e829382d618c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe7f5831f4fe982cb # load x3 with value 0xe7f5831f4fe982cb
sw x3, 0(x2) # store 0xe7f5831f4fe982cb in memory
flw f10, 0(x2) # load 0xe7f5831f4fe982cb from memory into f10
froundnx.s f5, f10 # perform operation
froundnx.s f5, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x2, 0xfa925797d0d6aaae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc7fc8ce0788f79e1 # load x3 with value 0xc7fc8ce0788f79e1
sw x3, 0(x2) # store 0xc7fc8ce0788f79e1 in memory
flw f11, 0(x2) # load 0xc7fc8ce0788f79e1 from memory into f11
froundnx.s f2, f11 # perform operation
froundnx.s f2, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x21, 0x254880004ed81ee6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x10aa22a518a48f60 # load x3 with value 0x10aa22a518a48f60
sw x3, 0(x2) # store 0x10aa22a518a48f60 in memory
flw f12, 0(x2) # load 0x10aa22a518a48f60 from memory into f12
froundnx.s f21, f12 # perform operation
froundnx.s f21, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x27, 0x7a86a47138f838e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xef0d5eb6a629f4bf # load x3 with value 0xef0d5eb6a629f4bf
sw x3, 0(x2) # store 0xef0d5eb6a629f4bf in memory
flw f13, 0(x2) # load 0xef0d5eb6a629f4bf from memory into f13
froundnx.s f27, f13 # perform operation
froundnx.s f27, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x23, 0x8426c2b6b09cbb82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcc8c0f0ca3a25914 # load x3 with value 0xcc8c0f0ca3a25914
sw x3, 0(x2) # store 0xcc8c0f0ca3a25914 in memory
flw f14, 0(x2) # load 0xcc8c0f0ca3a25914 from memory into f14
froundnx.s f23, f14 # perform operation
froundnx.s f23, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x29, 0xbf1e8b965b4051ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe5fc27a03d43b6b8 # load x3 with value 0xe5fc27a03d43b6b8
sw x3, 0(x2) # store 0xe5fc27a03d43b6b8 in memory
flw f15, 0(x2) # load 0xe5fc27a03d43b6b8 from memory into f15
froundnx.s f29, f15 # perform operation
froundnx.s f29, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x10, 0x2e13dce33087f100 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x60bac61d7f93d76e # load x3 with value 0x60bac61d7f93d76e
sw x3, 0(x2) # store 0x60bac61d7f93d76e in memory
flw f16, 0(x2) # load 0x60bac61d7f93d76e from memory into f16
froundnx.s f10, f16 # perform operation
froundnx.s f10, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x5, 0x17167e17a53aae09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x69118098f3ad659 # load x3 with value 0x69118098f3ad659
sw x3, 0(x2) # store 0x69118098f3ad659 in memory
flw f17, 0(x2) # load 0x69118098f3ad659 from memory into f17
froundnx.s f5, f17 # perform operation
froundnx.s f5, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x17, 0x3e2c52a463db3942 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd85bec6c1202369a # load x3 with value 0xd85bec6c1202369a
sw x3, 0(x2) # store 0xd85bec6c1202369a in memory
flw f18, 0(x2) # load 0xd85bec6c1202369a from memory into f18
froundnx.s f17, f18 # perform operation
froundnx.s f17, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x28, 0xbbbe397c3d47701a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47b29697b217d5d1 # load x3 with value 0x47b29697b217d5d1
sw x3, 0(x2) # store 0x47b29697b217d5d1 in memory
flw f19, 0(x2) # load 0x47b29697b217d5d1 from memory into f19
froundnx.s f28, f19 # perform operation
froundnx.s f28, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x31, 0x63dbd4b12ffd79de # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc75eac5a40d5f01 # load x3 with value 0xc75eac5a40d5f01
sw x3, 0(x2) # store 0xc75eac5a40d5f01 in memory
flw f20, 0(x2) # load 0xc75eac5a40d5f01 from memory into f20
froundnx.s f31, f20 # perform operation
froundnx.s f31, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x18, 0x1df5b37dfe83ef61 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb01bd03f68d7e78d # load x3 with value 0xb01bd03f68d7e78d
sw x3, 0(x2) # store 0xb01bd03f68d7e78d in memory
flw f21, 0(x2) # load 0xb01bd03f68d7e78d from memory into f21
froundnx.s f18, f21 # perform operation
froundnx.s f18, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x14, 0x089886d9f6be078f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf06b96db0851b47b # load x3 with value 0xf06b96db0851b47b
sw x3, 0(x2) # store 0xf06b96db0851b47b in memory
flw f22, 0(x2) # load 0xf06b96db0851b47b from memory into f22
froundnx.s f14, f22 # perform operation
froundnx.s f14, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x28, 0x74c8c6f5076c5541 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c4c7cf04a6960b5 # load x3 with value 0x7c4c7cf04a6960b5
sw x3, 0(x2) # store 0x7c4c7cf04a6960b5 in memory
flw f23, 0(x2) # load 0x7c4c7cf04a6960b5 from memory into f23
froundnx.s f28, f23 # perform operation
froundnx.s f28, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x3, 0x694586e84cb75368 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x304328c99467a571 # load x3 with value 0x304328c99467a571
sw x3, 0(x2) # store 0x304328c99467a571 in memory
flw f24, 0(x2) # load 0x304328c99467a571 from memory into f24
froundnx.s f3, f24 # perform operation
froundnx.s f3, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x11, 0xec58d23a72765abb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x22162c5f055d12ab # load x3 with value 0x22162c5f055d12ab
sw x3, 0(x2) # store 0x22162c5f055d12ab in memory
flw f25, 0(x2) # load 0x22162c5f055d12ab from memory into f25
froundnx.s f11, f25 # perform operation
froundnx.s f11, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x9, 0xfa4654baaed836f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfa5f816633506665 # load x3 with value 0xfa5f816633506665
sw x3, 0(x2) # store 0xfa5f816633506665 in memory
flw f26, 0(x2) # load 0xfa5f816633506665 from memory into f26
froundnx.s f9, f26 # perform operation
froundnx.s f9, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x18, 0x259fbbe922381ce5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e717926c7316c01 # load x3 with value 0x7e717926c7316c01
sw x3, 0(x2) # store 0x7e717926c7316c01 in memory
flw f27, 0(x2) # load 0x7e717926c7316c01 from memory into f27
froundnx.s f18, f27 # perform operation
froundnx.s f18, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x15, 0x01632368db5c6aa8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed624f47146b46fd # load x3 with value 0xed624f47146b46fd
sw x3, 0(x2) # store 0xed624f47146b46fd in memory
flw f28, 0(x2) # load 0xed624f47146b46fd from memory into f28
froundnx.s f15, f28 # perform operation
froundnx.s f15, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x28, 0xe4e7b0dc5501178d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa4288c617b159713 # load x3 with value 0xa4288c617b159713
sw x3, 0(x2) # store 0xa4288c617b159713 in memory
flw f29, 0(x2) # load 0xa4288c617b159713 from memory into f29
froundnx.s f28, f29 # perform operation
froundnx.s f28, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x13, 0xfa8c7e992febef11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x67e75ae4949f650e # load x3 with value 0x67e75ae4949f650e
sw x3, 0(x2) # store 0x67e75ae4949f650e in memory
flw f30, 0(x2) # load 0x67e75ae4949f650e from memory into f30
froundnx.s f13, f30 # perform operation
froundnx.s f13, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x26, 0x0fe15bc23b15b397 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd01102f214743a2b # load x3 with value 0xd01102f214743a2b
sw x3, 0(x2) # store 0xd01102f214743a2b in memory
flw f31, 0(x2) # load 0xd01102f214743a2b from memory into f31
froundnx.s f26, f31 # perform operation
froundnx.s f26, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
