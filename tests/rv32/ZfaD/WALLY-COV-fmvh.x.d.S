///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/ZfaD//WALLY-COV-fmvh.x.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.117885
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


# Testcase cp_rd (Test destination rd = x0)
li x0, 0x762003d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4579f0e6 # load x3 with 32 MSBs 0x000000004579f0e6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004579f0e6
sw x3, 0(x2) # store x3 (0x4579f0e6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000004579f0e6 from memory into f14
fmvh.x.d x0, f14 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0xee8a1745 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6f5f648c # load x3 with 32 MSBs 0x000000006f5f648c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006f5f648c
sw x3, 0(x2) # store x3 (0x6f5f648c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000006f5f648c from memory into f15
fmvh.x.d x1, f15 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x40c8fbc0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6bc26123 # load x3 with 32 MSBs 0x000000006bc26123
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006bc26123
sw x3, 0(x2) # store x3 (0x6bc26123) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000006bc26123 from memory into f17
fmvh.x.d x2, f17 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0xbeffa303 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8e0c6679 # load x3 with 32 MSBs 0x000000008e0c6679
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008e0c6679
sw x3, 0(x2) # store x3 (0x8e0c6679) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000008e0c6679 from memory into f16
fmvh.x.d x3, f16 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x1d0bbc5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x40f6fdf2 # load x3 with 32 MSBs 0x0000000040f6fdf2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000040f6fdf2
sw x3, 0(x2) # store x3 (0x40f6fdf2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000040f6fdf2 from memory into f12
fmvh.x.d x4, f12 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0x0fdd1bbc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3d156a18 # load x3 with 32 MSBs 0x000000003d156a18
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003d156a18
sw x3, 0(x2) # store x3 (0x3d156a18) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000003d156a18 from memory into f29
fmvh.x.d x5, f29 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0xa3606f3b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc12c743a # load x3 with 32 MSBs 0x00000000c12c743a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c12c743a
sw x3, 0(x2) # store x3 (0xc12c743a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000c12c743a from memory into f4
fmvh.x.d x6, f4 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x381ef5b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x73ad5631 # load x3 with 32 MSBs 0x0000000073ad5631
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000073ad5631
sw x3, 0(x2) # store x3 (0x73ad5631) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000073ad5631 from memory into f22
fmvh.x.d x7, f22 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x725467ea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9da56c85 # load x3 with 32 MSBs 0x000000009da56c85
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009da56c85
sw x3, 0(x2) # store x3 (0x9da56c85) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000009da56c85 from memory into f6
fmvh.x.d x8, f6 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xa243b48b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x32bb9d79 # load x3 with 32 MSBs 0x0000000032bb9d79
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000032bb9d79
sw x3, 0(x2) # store x3 (0x32bb9d79) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000032bb9d79 from memory into f31
fmvh.x.d x9, f31 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x484d41ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xddcb1e18 # load x3 with 32 MSBs 0x00000000ddcb1e18
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ddcb1e18
sw x3, 0(x2) # store x3 (0xddcb1e18) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000ddcb1e18 from memory into f15
fmvh.x.d x10, f15 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xb24271db # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9c8f08b1 # load x3 with 32 MSBs 0x000000009c8f08b1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009c8f08b1
sw x3, 0(x2) # store x3 (0x9c8f08b1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000009c8f08b1 from memory into f24
fmvh.x.d x11, f24 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0x821fbec3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2f8dc64f # load x3 with 32 MSBs 0x000000002f8dc64f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002f8dc64f
sw x3, 0(x2) # store x3 (0x2f8dc64f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000002f8dc64f from memory into f11
fmvh.x.d x12, f11 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x01d06cb9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x828a2d12 # load x3 with 32 MSBs 0x00000000828a2d12
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000828a2d12
sw x3, 0(x2) # store x3 (0x828a2d12) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000828a2d12 from memory into f5
fmvh.x.d x13, f5 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0xac013d22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4e885390 # load x3 with 32 MSBs 0x000000004e885390
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004e885390
sw x3, 0(x2) # store x3 (0x4e885390) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000004e885390 from memory into f19
fmvh.x.d x14, f19 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x4938738c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x54ed3e4a # load x3 with 32 MSBs 0x0000000054ed3e4a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000054ed3e4a
sw x3, 0(x2) # store x3 (0x54ed3e4a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000054ed3e4a from memory into f4
fmvh.x.d x15, f4 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xe4deab55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd744b01f # load x3 with 32 MSBs 0x00000000d744b01f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d744b01f
sw x3, 0(x2) # store x3 (0xd744b01f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000d744b01f from memory into f5
fmvh.x.d x16, f5 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xa3d8c6fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe1ab2204 # load x3 with 32 MSBs 0x00000000e1ab2204
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e1ab2204
sw x3, 0(x2) # store x3 (0xe1ab2204) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000e1ab2204 from memory into f24
fmvh.x.d x17, f24 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x0c57258a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x41075410 # load x3 with 32 MSBs 0x0000000041075410
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000041075410
sw x3, 0(x2) # store x3 (0x41075410) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000041075410 from memory into f23
fmvh.x.d x18, f23 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0xfeec0a7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb7ff2df6 # load x3 with 32 MSBs 0x00000000b7ff2df6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b7ff2df6
sw x3, 0(x2) # store x3 (0xb7ff2df6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000b7ff2df6 from memory into f4
fmvh.x.d x19, f4 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xdb566c7d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3631d3e5 # load x3 with 32 MSBs 0x000000003631d3e5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003631d3e5
sw x3, 0(x2) # store x3 (0x3631d3e5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000003631d3e5 from memory into f27
fmvh.x.d x20, f27 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x1acc035b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbaf935cd # load x3 with 32 MSBs 0x00000000baf935cd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000baf935cd
sw x3, 0(x2) # store x3 (0xbaf935cd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000baf935cd from memory into f30
fmvh.x.d x21, f30 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x0e67be14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xae1bb9a1 # load x3 with 32 MSBs 0x00000000ae1bb9a1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ae1bb9a1
sw x3, 0(x2) # store x3 (0xae1bb9a1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000ae1bb9a1 from memory into f24
fmvh.x.d x22, f24 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0x551e1ddc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6ab4313b # load x3 with 32 MSBs 0x000000006ab4313b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006ab4313b
sw x3, 0(x2) # store x3 (0x6ab4313b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000006ab4313b from memory into f22
fmvh.x.d x23, f22 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0x6befee82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd3066735 # load x3 with 32 MSBs 0x00000000d3066735
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d3066735
sw x3, 0(x2) # store x3 (0xd3066735) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000d3066735 from memory into f26
fmvh.x.d x24, f26 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x918a5d13 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0d41d5d2 # load x3 with 32 MSBs 0x000000000d41d5d2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000d41d5d2
sw x3, 0(x2) # store x3 (0x0d41d5d2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000000d41d5d2 from memory into f20
fmvh.x.d x25, f20 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x44864288 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x16d375f0 # load x3 with 32 MSBs 0x0000000016d375f0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000016d375f0
sw x3, 0(x2) # store x3 (0x16d375f0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000016d375f0 from memory into f15
fmvh.x.d x26, f15 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0x5fb8c5c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x71ecfa18 # load x3 with 32 MSBs 0x0000000071ecfa18
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000071ecfa18
sw x3, 0(x2) # store x3 (0x71ecfa18) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000071ecfa18 from memory into f3
fmvh.x.d x27, f3 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x9b3edae7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc0afb922 # load x3 with 32 MSBs 0x00000000c0afb922
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c0afb922
sw x3, 0(x2) # store x3 (0xc0afb922) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000c0afb922 from memory into f23
fmvh.x.d x28, f23 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xca2f3cba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0ef1b7cb # load x3 with 32 MSBs 0x000000000ef1b7cb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000ef1b7cb
sw x3, 0(x2) # store x3 (0x0ef1b7cb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000000ef1b7cb from memory into f21
fmvh.x.d x29, f21 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xe3e098b5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9a47538c # load x3 with 32 MSBs 0x000000009a47538c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009a47538c
sw x3, 0(x2) # store x3 (0x9a47538c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000009a47538c from memory into f16
fmvh.x.d x30, f16 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x391d49ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbaa85025 # load x3 with 32 MSBs 0x00000000baa85025
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000baa85025
sw x3, 0(x2) # store x3 (0xbaa85025) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000baa85025 from memory into f6
fmvh.x.d x31, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x18, 0x5a36a7e3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000000000000 from memory into f30
fmvh.x.d x18, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x8, 0xabaff141 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x8000000000000000 from memory into f20
fmvh.x.d x8, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x29, 0x0551897e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x3ff0000000000000 from memory into f14
fmvh.x.d x29, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x28, 0x55356398 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xbff0000000000000 from memory into f2
fmvh.x.d x28, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x22, 0x6ebf0ef4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x3ff8000000000000 from memory into f24
fmvh.x.d x22, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x18, 0xcd6767c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xbff8000000000000 from memory into f5
fmvh.x.d x18, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x19, 0x86aa1e4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x4000000000000000 from memory into f21
fmvh.x.d x19, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x12, 0xcc69e214 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xc000000000000000 from memory into f26
fmvh.x.d x12, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x4, 0x1bd0227f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0010000000000000 from memory into f26
fmvh.x.d x4, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x23, 0x843d3ad6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x8010000000000000 from memory into f8
fmvh.x.d x23, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x10, 0x9f7c9b14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x7fefffffffffffff from memory into f1
fmvh.x.d x10, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x31, 0xb3cb591e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffefffffffffffff from memory into f14
fmvh.x.d x31, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x10, 0x2e0a5999 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
fmvh.x.d x10, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x30, 0x9dc328bb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x800fffffffffffff from memory into f28
fmvh.x.d x30, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x2, 0x179ca1ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0008000000000000 from memory into f7
fmvh.x.d x2, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x18, 0x6c6d135a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x8008000000000000 from memory into f28
fmvh.x.d x18, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x3, 0xf7b35c8d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000000000001 from memory into f27
fmvh.x.d x3, f27 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x13, 0x2e0c29e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x8000000000000001 from memory into f1
fmvh.x.d x13, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x11, 0x0104fdc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x7ff0000000000000 from memory into f4
fmvh.x.d x11, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x24, 0xca06ab24 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfff0000000000000 from memory into f18
fmvh.x.d x24, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x15, 0x1ca0bf6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x7ff8000000000000 from memory into f10
fmvh.x.d x15, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x9, 0xfd2d0fd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7fffffffffffffff from memory into f13
fmvh.x.d x9, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x27, 0xc1e8bc54 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7ff0000000000001 from memory into f26
fmvh.x.d x27, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x15, 0xafee835a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7ff7ffffffffffff from memory into f25
fmvh.x.d x15, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x21, 0x6e89af6f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x5a392534a57711ad from memory into f12
fmvh.x.d x21, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x11, 0x774d6a98 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xa6e895993737426c from memory into f9
fmvh.x.d x11, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x1, 0x074b6407 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xcacc4911 # load x3 with 32 MSBs 0x00000000cacc4911
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cacc4911
sw x3, 0(x2) # store x3 (0xcacc4911) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000cacc4911 from memory into f0
fmvh.x.d x1, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x18, 0x207d6393 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x524e10d6 # load x3 with 32 MSBs 0x00000000524e10d6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000524e10d6
sw x3, 0(x2) # store x3 (0x524e10d6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000524e10d6 from memory into f1
fmvh.x.d x18, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x28, 0xdbea3ab8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xacb07ab2 # load x3 with 32 MSBs 0x00000000acb07ab2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000acb07ab2
sw x3, 0(x2) # store x3 (0xacb07ab2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000acb07ab2 from memory into f2
fmvh.x.d x28, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x11, 0xe1e0fe55 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd82e43bc # load x3 with 32 MSBs 0x00000000d82e43bc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d82e43bc
sw x3, 0(x2) # store x3 (0xd82e43bc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000d82e43bc from memory into f3
fmvh.x.d x11, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x4, 0x8c8652fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8a48b183 # load x3 with 32 MSBs 0x000000008a48b183
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008a48b183
sw x3, 0(x2) # store x3 (0x8a48b183) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x000000008a48b183 from memory into f4
fmvh.x.d x4, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x3, 0x9fc7d79e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe11f8d80 # load x3 with 32 MSBs 0x00000000e11f8d80
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e11f8d80
sw x3, 0(x2) # store x3 (0xe11f8d80) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000e11f8d80 from memory into f5
fmvh.x.d x3, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x17, 0x5cf57b52 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd93a4421 # load x3 with 32 MSBs 0x00000000d93a4421
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d93a4421
sw x3, 0(x2) # store x3 (0xd93a4421) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000d93a4421 from memory into f6
fmvh.x.d x17, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x22, 0x5a622360 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x54d71c00 # load x3 with 32 MSBs 0x0000000054d71c00
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000054d71c00
sw x3, 0(x2) # store x3 (0x54d71c00) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000054d71c00 from memory into f7
fmvh.x.d x22, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x9, 0x0bf7e4f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x87093b5c # load x3 with 32 MSBs 0x0000000087093b5c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000087093b5c
sw x3, 0(x2) # store x3 (0x87093b5c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000087093b5c from memory into f8
fmvh.x.d x9, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x8, 0x553cbec8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x84800d76 # load x3 with 32 MSBs 0x0000000084800d76
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000084800d76
sw x3, 0(x2) # store x3 (0x84800d76) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000084800d76 from memory into f9
fmvh.x.d x8, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x22, 0xb5318c5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8a21a4a2 # load x3 with 32 MSBs 0x000000008a21a4a2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008a21a4a2
sw x3, 0(x2) # store x3 (0x8a21a4a2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000008a21a4a2 from memory into f10
fmvh.x.d x22, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x13, 0xd3a9e8da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xeef03f1f # load x3 with 32 MSBs 0x00000000eef03f1f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000eef03f1f
sw x3, 0(x2) # store x3 (0xeef03f1f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000eef03f1f from memory into f11
fmvh.x.d x13, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x4, 0xdd130034 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7937b78b # load x3 with 32 MSBs 0x000000007937b78b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007937b78b
sw x3, 0(x2) # store x3 (0x7937b78b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000007937b78b from memory into f12
fmvh.x.d x4, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x29, 0x600bf894 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xad8e7b64 # load x3 with 32 MSBs 0x00000000ad8e7b64
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ad8e7b64
sw x3, 0(x2) # store x3 (0xad8e7b64) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000ad8e7b64 from memory into f13
fmvh.x.d x29, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x24, 0x329bbba0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x464c6b9a # load x3 with 32 MSBs 0x00000000464c6b9a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000464c6b9a
sw x3, 0(x2) # store x3 (0x464c6b9a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000464c6b9a from memory into f14
fmvh.x.d x24, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x15, 0xe5e8d55a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa22012db # load x3 with 32 MSBs 0x00000000a22012db
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a22012db
sw x3, 0(x2) # store x3 (0xa22012db) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000a22012db from memory into f15
fmvh.x.d x15, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x14, 0x83d21b4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3b50c3fc # load x3 with 32 MSBs 0x000000003b50c3fc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003b50c3fc
sw x3, 0(x2) # store x3 (0x3b50c3fc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000003b50c3fc from memory into f16
fmvh.x.d x14, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x14, 0x3e70c3b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x873b0d40 # load x3 with 32 MSBs 0x00000000873b0d40
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000873b0d40
sw x3, 0(x2) # store x3 (0x873b0d40) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000873b0d40 from memory into f17
fmvh.x.d x14, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x4, 0xd1c39a23 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x9ae7de5f # load x3 with 32 MSBs 0x000000009ae7de5f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009ae7de5f
sw x3, 0(x2) # store x3 (0x9ae7de5f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000009ae7de5f from memory into f18
fmvh.x.d x4, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x30, 0x72d700c7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xeda4b18b # load x3 with 32 MSBs 0x00000000eda4b18b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000eda4b18b
sw x3, 0(x2) # store x3 (0xeda4b18b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000eda4b18b from memory into f19
fmvh.x.d x30, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x2, 0x07db0344 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8e574909 # load x3 with 32 MSBs 0x000000008e574909
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008e574909
sw x3, 0(x2) # store x3 (0x8e574909) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000008e574909 from memory into f20
fmvh.x.d x2, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x18, 0x1251c6f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xcf27917e # load x3 with 32 MSBs 0x00000000cf27917e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cf27917e
sw x3, 0(x2) # store x3 (0xcf27917e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000cf27917e from memory into f21
fmvh.x.d x18, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x10, 0x1804ea84 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe01cf7f8 # load x3 with 32 MSBs 0x00000000e01cf7f8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e01cf7f8
sw x3, 0(x2) # store x3 (0xe01cf7f8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000e01cf7f8 from memory into f22
fmvh.x.d x10, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x17, 0x58fbc672 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdbd9b35d # load x3 with 32 MSBs 0x00000000dbd9b35d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000dbd9b35d
sw x3, 0(x2) # store x3 (0xdbd9b35d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000dbd9b35d from memory into f23
fmvh.x.d x17, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x24, 0x4d9e9ac2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x1e9bbb5a # load x3 with 32 MSBs 0x000000001e9bbb5a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001e9bbb5a
sw x3, 0(x2) # store x3 (0x1e9bbb5a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000001e9bbb5a from memory into f24
fmvh.x.d x24, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x29, 0x30843c11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8cd610c1 # load x3 with 32 MSBs 0x000000008cd610c1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008cd610c1
sw x3, 0(x2) # store x3 (0x8cd610c1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000008cd610c1 from memory into f25
fmvh.x.d x29, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x21, 0x3786915a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xda131efb # load x3 with 32 MSBs 0x00000000da131efb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000da131efb
sw x3, 0(x2) # store x3 (0xda131efb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000da131efb from memory into f26
fmvh.x.d x21, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x6, 0x8ac02d34 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x83a30e98 # load x3 with 32 MSBs 0x0000000083a30e98
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000083a30e98
sw x3, 0(x2) # store x3 (0x83a30e98) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000083a30e98 from memory into f27
fmvh.x.d x6, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x12, 0x802b0acb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd94481bb # load x3 with 32 MSBs 0x00000000d94481bb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d94481bb
sw x3, 0(x2) # store x3 (0xd94481bb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000d94481bb from memory into f28
fmvh.x.d x12, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x5, 0x5e8c9e5d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x30abdc9c # load x3 with 32 MSBs 0x0000000030abdc9c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000030abdc9c
sw x3, 0(x2) # store x3 (0x30abdc9c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000030abdc9c from memory into f29
fmvh.x.d x5, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x4, 0x26ff9034 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xf56de998 # load x3 with 32 MSBs 0x00000000f56de998
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f56de998
sw x3, 0(x2) # store x3 (0xf56de998) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000f56de998 from memory into f30
fmvh.x.d x4, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x25, 0xf0e71e9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x20b91f91 # load x3 with 32 MSBs 0x0000000020b91f91
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000020b91f91
sw x3, 0(x2) # store x3 (0x20b91f91) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000020b91f91 from memory into f31
fmvh.x.d x25, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
