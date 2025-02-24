///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/D//WALLY-COV-fsqrt.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.021052
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
fsqrt.d f20, f30 # perform first operation
fsqrt.d f31, f20 # perform second operation

# Testcase cmp_gpr_hazard raw test
fsqrt.d f27, f4 # perform first operation
fsqrt.d f22, f5 # perform second operation

# Testcase cmp_gpr_hazard waw test
fsqrt.d f4, f3 # perform first operation
fsqrt.d f4, f19 # perform second operation

# Testcase cmp_gpr_hazard waw test
fsqrt.d f28, f26 # perform first operation
fsqrt.d f28, f19 # perform second operation

# Testcase cmp_gpr_hazard war test
fsqrt.d f1, f28 # perform first operation
fsqrt.d f28, f22 # perform second operation

# Testcase cmp_gpr_hazard war test
fsqrt.d f25, f14 # perform first operation
fsqrt.d f26, f2 # perform second operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f0)
li x0, 0x6a300085 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e28ef6e # load x3 with 32 MSBs 0x000000001e28ef6e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001e28ef6e
sw x3, 0(x2) # store x3 (0x1e28ef6e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x000000001e28ef6e from memory into f0
fsqrt.d f0, f0 # perform operation
fsqrt.d f0, f0 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f1)
li x1, 0x7ad7357f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x67e15c43 # load x3 with 32 MSBs 0x0000000067e15c43
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000067e15c43
sw x3, 0(x2) # store x3 (0x67e15c43) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000067e15c43 from memory into f1
fsqrt.d f1, f1 # perform operation
fsqrt.d f1, f1 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f2)
li x2, 0xc518e56e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb031604f # load x3 with 32 MSBs 0x00000000b031604f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b031604f
sw x3, 0(x2) # store x3 (0xb031604f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000b031604f from memory into f2
fsqrt.d f2, f2 # perform operation
fsqrt.d f2, f2 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f3)
li x3, 0xfcb0260c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdc1a95bc # load x3 with 32 MSBs 0x00000000dc1a95bc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000dc1a95bc
sw x3, 0(x2) # store x3 (0xdc1a95bc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000dc1a95bc from memory into f3
fsqrt.d f3, f3 # perform operation
fsqrt.d f3, f3 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f4)
li x4, 0x24f6a78c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x17c09482 # load x3 with 32 MSBs 0x0000000017c09482
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000017c09482
sw x3, 0(x2) # store x3 (0x17c09482) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000017c09482 from memory into f4
fsqrt.d f4, f4 # perform operation
fsqrt.d f4, f4 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f5)
li x5, 0x1059ac4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaca0259f # load x3 with 32 MSBs 0x00000000aca0259f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000aca0259f
sw x3, 0(x2) # store x3 (0xaca0259f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000aca0259f from memory into f5
fsqrt.d f5, f5 # perform operation
fsqrt.d f5, f5 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f6)
li x6, 0x02b8e9ed # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x25307207 # load x3 with 32 MSBs 0x0000000025307207
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000025307207
sw x3, 0(x2) # store x3 (0x25307207) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000025307207 from memory into f6
fsqrt.d f6, f6 # perform operation
fsqrt.d f6, f6 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f7)
li x7, 0xd8c84e7e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xddef3eb4 # load x3 with 32 MSBs 0x00000000ddef3eb4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ddef3eb4
sw x3, 0(x2) # store x3 (0xddef3eb4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000ddef3eb4 from memory into f7
fsqrt.d f7, f7 # perform operation
fsqrt.d f7, f7 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f8)
li x8, 0x3f63463b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x08dba116 # load x3 with 32 MSBs 0x0000000008dba116
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000008dba116
sw x3, 0(x2) # store x3 (0x08dba116) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000008dba116 from memory into f8
fsqrt.d f8, f8 # perform operation
fsqrt.d f8, f8 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f9)
li x9, 0xa053c497 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7be54622 # load x3 with 32 MSBs 0x000000007be54622
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007be54622
sw x3, 0(x2) # store x3 (0x7be54622) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000007be54622 from memory into f9
fsqrt.d f9, f9 # perform operation
fsqrt.d f9, f9 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f10)
li x10, 0xba67fe97 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4e6691c1 # load x3 with 32 MSBs 0x000000004e6691c1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004e6691c1
sw x3, 0(x2) # store x3 (0x4e6691c1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000004e6691c1 from memory into f10
fsqrt.d f10, f10 # perform operation
fsqrt.d f10, f10 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f11)
li x11, 0xc978332e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x78afa75b # load x3 with 32 MSBs 0x0000000078afa75b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000078afa75b
sw x3, 0(x2) # store x3 (0x78afa75b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000078afa75b from memory into f11
fsqrt.d f11, f11 # perform operation
fsqrt.d f11, f11 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f12)
li x12, 0xf1c61e60 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0af1ce3b # load x3 with 32 MSBs 0x000000000af1ce3b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000af1ce3b
sw x3, 0(x2) # store x3 (0x0af1ce3b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000000af1ce3b from memory into f12
fsqrt.d f12, f12 # perform operation
fsqrt.d f12, f12 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f13)
li x13, 0x8bc184cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6cd78220 # load x3 with 32 MSBs 0x000000006cd78220
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006cd78220
sw x3, 0(x2) # store x3 (0x6cd78220) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000006cd78220 from memory into f13
fsqrt.d f13, f13 # perform operation
fsqrt.d f13, f13 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f14)
li x14, 0xdad045ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x371eeece # load x3 with 32 MSBs 0x00000000371eeece
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000371eeece
sw x3, 0(x2) # store x3 (0x371eeece) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000371eeece from memory into f14
fsqrt.d f14, f14 # perform operation
fsqrt.d f14, f14 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f15)
li x15, 0x6425f9f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x771b3d12 # load x3 with 32 MSBs 0x00000000771b3d12
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000771b3d12
sw x3, 0(x2) # store x3 (0x771b3d12) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000771b3d12 from memory into f15
fsqrt.d f15, f15 # perform operation
fsqrt.d f15, f15 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f16)
li x16, 0xca59fd99 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa6839bff # load x3 with 32 MSBs 0x00000000a6839bff
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a6839bff
sw x3, 0(x2) # store x3 (0xa6839bff) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000a6839bff from memory into f16
fsqrt.d f16, f16 # perform operation
fsqrt.d f16, f16 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f17)
li x17, 0x52e57d36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9cb6cdaf # load x3 with 32 MSBs 0x000000009cb6cdaf
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009cb6cdaf
sw x3, 0(x2) # store x3 (0x9cb6cdaf) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000009cb6cdaf from memory into f17
fsqrt.d f17, f17 # perform operation
fsqrt.d f17, f17 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f18)
li x18, 0x1a65abab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x28fc143d # load x3 with 32 MSBs 0x0000000028fc143d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000028fc143d
sw x3, 0(x2) # store x3 (0x28fc143d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000028fc143d from memory into f18
fsqrt.d f18, f18 # perform operation
fsqrt.d f18, f18 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f19)
li x19, 0x9d3bfbe9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x47a81def # load x3 with 32 MSBs 0x0000000047a81def
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000047a81def
sw x3, 0(x2) # store x3 (0x47a81def) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000047a81def from memory into f19
fsqrt.d f19, f19 # perform operation
fsqrt.d f19, f19 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f20)
li x20, 0x73a627f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x650a2f9f # load x3 with 32 MSBs 0x00000000650a2f9f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000650a2f9f
sw x3, 0(x2) # store x3 (0x650a2f9f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000650a2f9f from memory into f20
fsqrt.d f20, f20 # perform operation
fsqrt.d f20, f20 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f21)
li x21, 0x050294d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xab8611ce # load x3 with 32 MSBs 0x00000000ab8611ce
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ab8611ce
sw x3, 0(x2) # store x3 (0xab8611ce) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000ab8611ce from memory into f21
fsqrt.d f21, f21 # perform operation
fsqrt.d f21, f21 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f22)
li x22, 0xc6f27725 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0978585f # load x3 with 32 MSBs 0x000000000978585f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000978585f
sw x3, 0(x2) # store x3 (0x0978585f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000000978585f from memory into f22
fsqrt.d f22, f22 # perform operation
fsqrt.d f22, f22 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f23)
li x23, 0x08a4ed30 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3415e4ca # load x3 with 32 MSBs 0x000000003415e4ca
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003415e4ca
sw x3, 0(x2) # store x3 (0x3415e4ca) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000003415e4ca from memory into f23
fsqrt.d f23, f23 # perform operation
fsqrt.d f23, f23 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f24)
li x24, 0xcf3efafe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x183916f3 # load x3 with 32 MSBs 0x00000000183916f3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000183916f3
sw x3, 0(x2) # store x3 (0x183916f3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000183916f3 from memory into f24
fsqrt.d f24, f24 # perform operation
fsqrt.d f24, f24 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f25)
li x25, 0xac85a915 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfc17b76e # load x3 with 32 MSBs 0x00000000fc17b76e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fc17b76e
sw x3, 0(x2) # store x3 (0xfc17b76e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000fc17b76e from memory into f25
fsqrt.d f25, f25 # perform operation
fsqrt.d f25, f25 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f26)
li x26, 0x1697b160 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xba87166c # load x3 with 32 MSBs 0x00000000ba87166c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ba87166c
sw x3, 0(x2) # store x3 (0xba87166c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000ba87166c from memory into f26
fsqrt.d f26, f26 # perform operation
fsqrt.d f26, f26 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f27)
li x27, 0xfacb7415 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5709a97e # load x3 with 32 MSBs 0x000000005709a97e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005709a97e
sw x3, 0(x2) # store x3 (0x5709a97e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000005709a97e from memory into f27
fsqrt.d f27, f27 # perform operation
fsqrt.d f27, f27 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f28)
li x28, 0x193ba24f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x370d220b # load x3 with 32 MSBs 0x00000000370d220b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000370d220b
sw x3, 0(x2) # store x3 (0x370d220b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000370d220b from memory into f28
fsqrt.d f28, f28 # perform operation
fsqrt.d f28, f28 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f29)
li x29, 0xbbff5f4d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6ce914f5 # load x3 with 32 MSBs 0x000000006ce914f5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006ce914f5
sw x3, 0(x2) # store x3 (0x6ce914f5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000006ce914f5 from memory into f29
fsqrt.d f29, f29 # perform operation
fsqrt.d f29, f29 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f30)
li x30, 0xa110b6a0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x736adacd # load x3 with 32 MSBs 0x00000000736adacd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000736adacd
sw x3, 0(x2) # store x3 (0x736adacd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000736adacd from memory into f30
fsqrt.d f30, f30 # perform operation
fsqrt.d f30, f30 # perform operation

# Testcase cmp_fd_fs1 (Test fd = fs1 = f31)
li x31, 0x5dc30252 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50a8caac # load x3 with 32 MSBs 0x0000000050a8caac
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000050a8caac
sw x3, 0(x2) # store x3 (0x50a8caac) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000050a8caac from memory into f31
fsqrt.d f31, f31 # perform operation
fsqrt.d f31, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x21, 0x47d23769 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000000000000 from memory into f26
fsqrt.d f21, f26 # perform operation
fsqrt.d f21, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x5, 0xe149d1dc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x8000000000000000 from memory into f24
fsqrt.d f5, f24 # perform operation
fsqrt.d f5, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x1, 0x87d88595 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x3ff0000000000000 from memory into f27
fsqrt.d f1, f27 # perform operation
fsqrt.d f1, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x6, 0xd39f9867 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xbff0000000000000 from memory into f11
fsqrt.d f6, f11 # perform operation
fsqrt.d f6, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x31, 0xb1106502 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x3ff8000000000000 from memory into f25
fsqrt.d f31, f25 # perform operation
fsqrt.d f31, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x3, 0x4067d2b8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xbff8000000000000 from memory into f16
fsqrt.d f3, f16 # perform operation
fsqrt.d f3, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x11, 0xd20f6ae1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x4000000000000000 from memory into f14
fsqrt.d f11, f14 # perform operation
fsqrt.d f11, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x14, 0x6ededd79 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xc000000000000000 from memory into f18
fsqrt.d f14, f18 # perform operation
fsqrt.d f14, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x10, 0xa92398aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0010000000000000 from memory into f17
fsqrt.d f10, f17 # perform operation
fsqrt.d f10, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x3, 0x068ec0da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x8010000000000000 from memory into f22
fsqrt.d f3, f22 # perform operation
fsqrt.d f3, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x19, 0xe8ce1978 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7fefffffffffffff from memory into f14
fsqrt.d f19, f14 # perform operation
fsqrt.d f19, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x9, 0x80752164 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xffefffffffffffff from memory into f25
fsqrt.d f9, f25 # perform operation
fsqrt.d f9, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x9, 0x4479efd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000fffffffffffff from memory into f14
fsqrt.d f9, f14 # perform operation
fsqrt.d f9, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x10, 0xe3fe310d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x800fffffffffffff from memory into f30
fsqrt.d f10, f30 # perform operation
fsqrt.d f10, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x17, 0xd476eee7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0008000000000000 from memory into f22
fsqrt.d f17, f22 # perform operation
fsqrt.d f17, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x18, 0x9debb0a9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x8008000000000000 from memory into f6
fsqrt.d f18, f6 # perform operation
fsqrt.d f18, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x22, 0x2dd71e04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000000000001 from memory into f29
fsqrt.d f22, f29 # perform operation
fsqrt.d f22, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x26, 0x7f2377ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x8000000000000001 from memory into f24
fsqrt.d f26, f24 # perform operation
fsqrt.d f26, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x7, 0x878d2e06 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7ff0000000000000 from memory into f21
fsqrt.d f7, f21 # perform operation
fsqrt.d f7, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x8, 0x7d2e595a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfff0000000000000 from memory into f28
fsqrt.d f8, f28 # perform operation
fsqrt.d f8, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x5, 0xd583d727 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7ff8000000000000 from memory into f1
fsqrt.d f5, f1 # perform operation
fsqrt.d f5, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x19, 0x9fa5b54e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7fffffffffffffff from memory into f7
fsqrt.d f19, f7 # perform operation
fsqrt.d f19, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x9, 0x7efb3f33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7ff0000000000001 from memory into f11
fsqrt.d f9, f11 # perform operation
fsqrt.d f9, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x11, 0xe7469617 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7ff7ffffffffffff from memory into f24
fsqrt.d f11, f24 # perform operation
fsqrt.d f11, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x15, 0xcdd5b6f6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x5a392534a57711ad from memory into f30
fsqrt.d f15, f30 # perform operation
fsqrt.d f15, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x8, 0xfb459706 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xa6e895993737426c from memory into f7
fsqrt.d f8, f7 # perform operation
fsqrt.d f8, f7 # perform operation

# Testcase cp_frm
li x25, 0xc1a123cb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb95e3e0 # load x3 with 32 MSBs 0x00000000bb95e3e0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bb95e3e0
sw x3, 0(x2) # store x3 (0xbb95e3e0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000bb95e3e0 from memory into f6
fsqrt.d f25, f6 # perform operation
fsqrt.d f25, f6, dyn # perform operation
fsqrt.d f25, f6, rdn # perform operation
fsqrt.d f25, f6, rmm # perform operation
fsqrt.d f25, f6, rne # perform operation
fsqrt.d f25, f6, rtz # perform operation
fsqrt.d f25, f6, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fsqrt.d f25, f6 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fsqrt.d f25, f6 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fsqrt.d f25, f6 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fsqrt.d f25, f6 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fsqrt.d f25, f6 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x7e691710 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x130845d2 # load x3 with 32 MSBs 0x00000000130845d2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000130845d2
sw x3, 0(x2) # store x3 (0x130845d2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000130845d2 from memory into f1
fsqrt.d f0, f1 # perform operation
fsqrt.d f0, f1 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xe8505452 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe3388e8 # load x3 with 32 MSBs 0x00000000be3388e8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000be3388e8
sw x3, 0(x2) # store x3 (0xbe3388e8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000be3388e8 from memory into f6
fsqrt.d f1, f6 # perform operation
fsqrt.d f1, f6 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x800f9e7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5c0e3d8 # load x3 with 32 MSBs 0x00000000f5c0e3d8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f5c0e3d8
sw x3, 0(x2) # store x3 (0xf5c0e3d8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000f5c0e3d8 from memory into f11
fsqrt.d f2, f11 # perform operation
fsqrt.d f2, f11 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x66005184 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x62a0596d # load x3 with 32 MSBs 0x0000000062a0596d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000062a0596d
sw x3, 0(x2) # store x3 (0x62a0596d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000062a0596d from memory into f29
fsqrt.d f3, f29 # perform operation
fsqrt.d f3, f29 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0xbf281486 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x62e993a2 # load x3 with 32 MSBs 0x0000000062e993a2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000062e993a2
sw x3, 0(x2) # store x3 (0x62e993a2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000062e993a2 from memory into f12
fsqrt.d f4, f12 # perform operation
fsqrt.d f4, f12 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0xcbf109f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x50c38288 # load x3 with 32 MSBs 0x0000000050c38288
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000050c38288
sw x3, 0(x2) # store x3 (0x50c38288) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000050c38288 from memory into f4
fsqrt.d f5, f4 # perform operation
fsqrt.d f5, f4 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0x8951ac31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x062d808e # load x3 with 32 MSBs 0x00000000062d808e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000062d808e
sw x3, 0(x2) # store x3 (0x062d808e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000062d808e from memory into f6
fsqrt.d f6, f6 # perform operation
fsqrt.d f6, f6 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0x0e2bfa0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf2b6ec72 # load x3 with 32 MSBs 0x00000000f2b6ec72
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f2b6ec72
sw x3, 0(x2) # store x3 (0xf2b6ec72) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000f2b6ec72 from memory into f12
fsqrt.d f7, f12 # perform operation
fsqrt.d f7, f12 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x50348500 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3cbe3718 # load x3 with 32 MSBs 0x000000003cbe3718
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003cbe3718
sw x3, 0(x2) # store x3 (0x3cbe3718) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000003cbe3718 from memory into f17
fsqrt.d f8, f17 # perform operation
fsqrt.d f8, f17 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0x27cc824f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x044e1ee7 # load x3 with 32 MSBs 0x00000000044e1ee7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000044e1ee7
sw x3, 0(x2) # store x3 (0x044e1ee7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000044e1ee7 from memory into f30
fsqrt.d f9, f30 # perform operation
fsqrt.d f9, f30 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x5483f211 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5ba53d3 # load x3 with 32 MSBs 0x00000000f5ba53d3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f5ba53d3
sw x3, 0(x2) # store x3 (0xf5ba53d3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000f5ba53d3 from memory into f27
fsqrt.d f10, f27 # perform operation
fsqrt.d f10, f27 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x1a86feb8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8f9510d0 # load x3 with 32 MSBs 0x000000008f9510d0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008f9510d0
sw x3, 0(x2) # store x3 (0x8f9510d0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000008f9510d0 from memory into f14
fsqrt.d f11, f14 # perform operation
fsqrt.d f11, f14 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x772ca71d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x44e5cc6c # load x3 with 32 MSBs 0x0000000044e5cc6c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000044e5cc6c
sw x3, 0(x2) # store x3 (0x44e5cc6c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000044e5cc6c from memory into f11
fsqrt.d f12, f11 # perform operation
fsqrt.d f12, f11 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x327f31f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1ef7433d # load x3 with 32 MSBs 0x000000001ef7433d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001ef7433d
sw x3, 0(x2) # store x3 (0x1ef7433d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000001ef7433d from memory into f9
fsqrt.d f13, f9 # perform operation
fsqrt.d f13, f9 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x2d132193 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x67cd83de # load x3 with 32 MSBs 0x0000000067cd83de
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000067cd83de
sw x3, 0(x2) # store x3 (0x67cd83de) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000067cd83de from memory into f16
fsqrt.d f14, f16 # perform operation
fsqrt.d f14, f16 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0x4e1b2a03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x944f39de # load x3 with 32 MSBs 0x00000000944f39de
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000944f39de
sw x3, 0(x2) # store x3 (0x944f39de) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000944f39de from memory into f10
fsqrt.d f15, f10 # perform operation
fsqrt.d f15, f10 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x2d364d3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8af0089b # load x3 with 32 MSBs 0x000000008af0089b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008af0089b
sw x3, 0(x2) # store x3 (0x8af0089b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000008af0089b from memory into f23
fsqrt.d f16, f23 # perform operation
fsqrt.d f16, f23 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x95cae887 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4310576a # load x3 with 32 MSBs 0x000000004310576a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004310576a
sw x3, 0(x2) # store x3 (0x4310576a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000004310576a from memory into f12
fsqrt.d f17, f12 # perform operation
fsqrt.d f17, f12 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0xe2c919b4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf16e8a86 # load x3 with 32 MSBs 0x00000000f16e8a86
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f16e8a86
sw x3, 0(x2) # store x3 (0xf16e8a86) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000f16e8a86 from memory into f4
fsqrt.d f18, f4 # perform operation
fsqrt.d f18, f4 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xa9d979c2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2b5df159 # load x3 with 32 MSBs 0x000000002b5df159
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002b5df159
sw x3, 0(x2) # store x3 (0x2b5df159) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000002b5df159 from memory into f23
fsqrt.d f19, f23 # perform operation
fsqrt.d f19, f23 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x26e2c657 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2a117131 # load x3 with 32 MSBs 0x000000002a117131
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002a117131
sw x3, 0(x2) # store x3 (0x2a117131) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000002a117131 from memory into f8
fsqrt.d f20, f8 # perform operation
fsqrt.d f20, f8 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xec685470 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0160e32f # load x3 with 32 MSBs 0x000000000160e32f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000160e32f
sw x3, 0(x2) # store x3 (0x0160e32f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000000160e32f from memory into f28
fsqrt.d f21, f28 # perform operation
fsqrt.d f21, f28 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x1fcbf6ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9e256c4f # load x3 with 32 MSBs 0x000000009e256c4f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009e256c4f
sw x3, 0(x2) # store x3 (0x9e256c4f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000009e256c4f from memory into f17
fsqrt.d f22, f17 # perform operation
fsqrt.d f22, f17 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x90f48d98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x54efa983 # load x3 with 32 MSBs 0x0000000054efa983
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000054efa983
sw x3, 0(x2) # store x3 (0x54efa983) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000054efa983 from memory into f12
fsqrt.d f23, f12 # perform operation
fsqrt.d f23, f12 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x1fef55c1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf4c986b7 # load x3 with 32 MSBs 0x00000000f4c986b7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f4c986b7
sw x3, 0(x2) # store x3 (0xf4c986b7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000f4c986b7 from memory into f14
fsqrt.d f24, f14 # perform operation
fsqrt.d f24, f14 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x69a43e26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4981f089 # load x3 with 32 MSBs 0x000000004981f089
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004981f089
sw x3, 0(x2) # store x3 (0x4981f089) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000004981f089 from memory into f7
fsqrt.d f25, f7 # perform operation
fsqrt.d f25, f7 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0xa1cb84fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2b1754c4 # load x3 with 32 MSBs 0x000000002b1754c4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002b1754c4
sw x3, 0(x2) # store x3 (0x2b1754c4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000002b1754c4 from memory into f20
fsqrt.d f26, f20 # perform operation
fsqrt.d f26, f20 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x74c32873 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00c36611 # load x3 with 32 MSBs 0x0000000000c36611
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000c36611
sw x3, 0(x2) # store x3 (0x00c36611) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000000c36611 from memory into f28
fsqrt.d f27, f28 # perform operation
fsqrt.d f27, f28 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xc5ba9b42 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa5e6c707 # load x3 with 32 MSBs 0x00000000a5e6c707
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a5e6c707
sw x3, 0(x2) # store x3 (0xa5e6c707) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000a5e6c707 from memory into f4
fsqrt.d f28, f4 # perform operation
fsqrt.d f28, f4 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x61bc74ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x488edd56 # load x3 with 32 MSBs 0x00000000488edd56
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000488edd56
sw x3, 0(x2) # store x3 (0x488edd56) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000488edd56 from memory into f24
fsqrt.d f29, f24 # perform operation
fsqrt.d f29, f24 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xe454148d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb824df57 # load x3 with 32 MSBs 0x00000000b824df57
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b824df57
sw x3, 0(x2) # store x3 (0xb824df57) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000b824df57 from memory into f9
fsqrt.d f30, f9 # perform operation
fsqrt.d f30, f9 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0xd0cef9f4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd94dfc5c # load x3 with 32 MSBs 0x00000000d94dfc5c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d94dfc5c
sw x3, 0(x2) # store x3 (0xd94dfc5c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000d94dfc5c from memory into f21
fsqrt.d f31, f21 # perform operation
fsqrt.d f31, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x12, 0x28ff31e7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xae2126ef # load x3 with 32 MSBs 0x00000000ae2126ef
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ae2126ef
sw x3, 0(x2) # store x3 (0xae2126ef) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000ae2126ef from memory into f0
fsqrt.d f12, f0 # perform operation
fsqrt.d f12, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x2, 0x42ed9da2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe1227f5d # load x3 with 32 MSBs 0x00000000e1227f5d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e1227f5d
sw x3, 0(x2) # store x3 (0xe1227f5d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000e1227f5d from memory into f1
fsqrt.d f2, f1 # perform operation
fsqrt.d f2, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x27, 0xc0a7e776 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x07e0b279 # load x3 with 32 MSBs 0x0000000007e0b279
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000007e0b279
sw x3, 0(x2) # store x3 (0x07e0b279) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000007e0b279 from memory into f2
fsqrt.d f27, f2 # perform operation
fsqrt.d f27, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x1, 0xc8196caf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1e1e0188 # load x3 with 32 MSBs 0x000000001e1e0188
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001e1e0188
sw x3, 0(x2) # store x3 (0x1e1e0188) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000001e1e0188 from memory into f3
fsqrt.d f1, f3 # perform operation
fsqrt.d f1, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x28, 0x44e40b57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x96ba3098 # load x3 with 32 MSBs 0x0000000096ba3098
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000096ba3098
sw x3, 0(x2) # store x3 (0x96ba3098) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000096ba3098 from memory into f4
fsqrt.d f28, f4 # perform operation
fsqrt.d f28, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x10, 0xea725509 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcc3f01e2 # load x3 with 32 MSBs 0x00000000cc3f01e2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cc3f01e2
sw x3, 0(x2) # store x3 (0xcc3f01e2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000cc3f01e2 from memory into f5
fsqrt.d f10, f5 # perform operation
fsqrt.d f10, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x2, 0x4ddb3f69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3413ae3d # load x3 with 32 MSBs 0x000000003413ae3d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003413ae3d
sw x3, 0(x2) # store x3 (0x3413ae3d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000003413ae3d from memory into f6
fsqrt.d f2, f6 # perform operation
fsqrt.d f2, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x1, 0x10e5ed3c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x360d6cda # load x3 with 32 MSBs 0x00000000360d6cda
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000360d6cda
sw x3, 0(x2) # store x3 (0x360d6cda) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000360d6cda from memory into f7
fsqrt.d f1, f7 # perform operation
fsqrt.d f1, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x25, 0x36511cfd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6882fd99 # load x3 with 32 MSBs 0x000000006882fd99
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006882fd99
sw x3, 0(x2) # store x3 (0x6882fd99) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000006882fd99 from memory into f8
fsqrt.d f25, f8 # perform operation
fsqrt.d f25, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x19, 0xd27e7073 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a899d29 # load x3 with 32 MSBs 0x000000004a899d29
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004a899d29
sw x3, 0(x2) # store x3 (0x4a899d29) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000004a899d29 from memory into f9
fsqrt.d f19, f9 # perform operation
fsqrt.d f19, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x16, 0xaa12bb0b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x40379433 # load x3 with 32 MSBs 0x0000000040379433
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000040379433
sw x3, 0(x2) # store x3 (0x40379433) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000040379433 from memory into f10
fsqrt.d f16, f10 # perform operation
fsqrt.d f16, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x15, 0x49e46007 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d862a74 # load x3 with 32 MSBs 0x000000001d862a74
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001d862a74
sw x3, 0(x2) # store x3 (0x1d862a74) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000001d862a74 from memory into f11
fsqrt.d f15, f11 # perform operation
fsqrt.d f15, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x23, 0x0630ffca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c560bda # load x3 with 32 MSBs 0x000000003c560bda
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003c560bda
sw x3, 0(x2) # store x3 (0x3c560bda) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000003c560bda from memory into f12
fsqrt.d f23, f12 # perform operation
fsqrt.d f23, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x15, 0x5deb49ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9ede3c78 # load x3 with 32 MSBs 0x000000009ede3c78
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009ede3c78
sw x3, 0(x2) # store x3 (0x9ede3c78) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000009ede3c78 from memory into f13
fsqrt.d f15, f13 # perform operation
fsqrt.d f15, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x12, 0x89033d33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x15381af5 # load x3 with 32 MSBs 0x0000000015381af5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000015381af5
sw x3, 0(x2) # store x3 (0x15381af5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000015381af5 from memory into f14
fsqrt.d f12, f14 # perform operation
fsqrt.d f12, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x17, 0x8d31db69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x51ea9885 # load x3 with 32 MSBs 0x0000000051ea9885
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000051ea9885
sw x3, 0(x2) # store x3 (0x51ea9885) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000051ea9885 from memory into f15
fsqrt.d f17, f15 # perform operation
fsqrt.d f17, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x25, 0x010fd1e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xeb1b6459 # load x3 with 32 MSBs 0x00000000eb1b6459
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000eb1b6459
sw x3, 0(x2) # store x3 (0xeb1b6459) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000eb1b6459 from memory into f16
fsqrt.d f25, f16 # perform operation
fsqrt.d f25, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x25, 0xe4b7da1c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7c63c3ac # load x3 with 32 MSBs 0x000000007c63c3ac
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007c63c3ac
sw x3, 0(x2) # store x3 (0x7c63c3ac) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000007c63c3ac from memory into f17
fsqrt.d f25, f17 # perform operation
fsqrt.d f25, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x26, 0x9a13c6d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd7c474c9 # load x3 with 32 MSBs 0x00000000d7c474c9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d7c474c9
sw x3, 0(x2) # store x3 (0xd7c474c9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000d7c474c9 from memory into f18
fsqrt.d f26, f18 # perform operation
fsqrt.d f26, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x27, 0x28179c59 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6069f707 # load x3 with 32 MSBs 0x000000006069f707
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006069f707
sw x3, 0(x2) # store x3 (0x6069f707) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000006069f707 from memory into f19
fsqrt.d f27, f19 # perform operation
fsqrt.d f27, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x3, 0x71ddc752 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2ddab4a5 # load x3 with 32 MSBs 0x000000002ddab4a5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002ddab4a5
sw x3, 0(x2) # store x3 (0x2ddab4a5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000002ddab4a5 from memory into f20
fsqrt.d f3, f20 # perform operation
fsqrt.d f3, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x24, 0x3d88c8a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x582961b9 # load x3 with 32 MSBs 0x00000000582961b9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000582961b9
sw x3, 0(x2) # store x3 (0x582961b9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000582961b9 from memory into f21
fsqrt.d f24, f21 # perform operation
fsqrt.d f24, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x17, 0xba54ca5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x08999343 # load x3 with 32 MSBs 0x0000000008999343
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000008999343
sw x3, 0(x2) # store x3 (0x08999343) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000008999343 from memory into f22
fsqrt.d f17, f22 # perform operation
fsqrt.d f17, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x4, 0x162d0d41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4a8233ee # load x3 with 32 MSBs 0x000000004a8233ee
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004a8233ee
sw x3, 0(x2) # store x3 (0x4a8233ee) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000004a8233ee from memory into f23
fsqrt.d f4, f23 # perform operation
fsqrt.d f4, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x29, 0x82a0b61f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x95416582 # load x3 with 32 MSBs 0x0000000095416582
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000095416582
sw x3, 0(x2) # store x3 (0x95416582) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000095416582 from memory into f24
fsqrt.d f29, f24 # perform operation
fsqrt.d f29, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x19, 0x80234bf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd810a22d # load x3 with 32 MSBs 0x00000000d810a22d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d810a22d
sw x3, 0(x2) # store x3 (0xd810a22d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000d810a22d from memory into f25
fsqrt.d f19, f25 # perform operation
fsqrt.d f19, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x6, 0xe3247837 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd6cb8d0b # load x3 with 32 MSBs 0x00000000d6cb8d0b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d6cb8d0b
sw x3, 0(x2) # store x3 (0xd6cb8d0b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000d6cb8d0b from memory into f26
fsqrt.d f6, f26 # perform operation
fsqrt.d f6, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x4, 0xaccbaf01 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbfa69098 # load x3 with 32 MSBs 0x00000000bfa69098
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bfa69098
sw x3, 0(x2) # store x3 (0xbfa69098) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000bfa69098 from memory into f27
fsqrt.d f4, f27 # perform operation
fsqrt.d f4, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x19, 0xea8baca2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x369943a3 # load x3 with 32 MSBs 0x00000000369943a3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000369943a3
sw x3, 0(x2) # store x3 (0x369943a3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000369943a3 from memory into f28
fsqrt.d f19, f28 # perform operation
fsqrt.d f19, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x17, 0xcfdf8d0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7046de4d # load x3 with 32 MSBs 0x000000007046de4d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007046de4d
sw x3, 0(x2) # store x3 (0x7046de4d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000007046de4d from memory into f29
fsqrt.d f17, f29 # perform operation
fsqrt.d f17, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x11, 0x03898808 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb185073c # load x3 with 32 MSBs 0x00000000b185073c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b185073c
sw x3, 0(x2) # store x3 (0xb185073c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000b185073c from memory into f30
fsqrt.d f11, f30 # perform operation
fsqrt.d f11, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x4, 0x446c053d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7aa33ec0 # load x3 with 32 MSBs 0x000000007aa33ec0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007aa33ec0
sw x3, 0(x2) # store x3 (0x7aa33ec0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000007aa33ec0 from memory into f31
fsqrt.d f4, f31 # perform operation
fsqrt.d f4, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
