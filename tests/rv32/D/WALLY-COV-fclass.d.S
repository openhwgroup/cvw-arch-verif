///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/D//WALLY-COV-fclass.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.849873
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
li x0, 0x065362ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa7553614 # load x3 with 32 MSBs 0x00000000a7553614
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a7553614
sw x3, 0(x2) # store x3 (0xa7553614) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000a7553614 from memory into f9
fclass.d x0, f9 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x51d3461b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd384a08b # load x3 with 32 MSBs 0x00000000d384a08b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d384a08b
sw x3, 0(x2) # store x3 (0xd384a08b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000d384a08b from memory into f10
fclass.d x1, f10 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x66a4aa8c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d22fa0b # load x3 with 32 MSBs 0x000000007d22fa0b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007d22fa0b
sw x3, 0(x2) # store x3 (0x7d22fa0b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000007d22fa0b from memory into f1
fclass.d x2, f1 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x19cecf9c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x56a990e4 # load x3 with 32 MSBs 0x0000000056a990e4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000056a990e4
sw x3, 0(x2) # store x3 (0x56a990e4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000056a990e4 from memory into f5
fclass.d x3, f5 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x0f95b835 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb37b95ea # load x3 with 32 MSBs 0x00000000b37b95ea
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b37b95ea
sw x3, 0(x2) # store x3 (0xb37b95ea) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000b37b95ea from memory into f26
fclass.d x4, f26 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xff4d94d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84b00ac4 # load x3 with 32 MSBs 0x0000000084b00ac4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000084b00ac4
sw x3, 0(x2) # store x3 (0x84b00ac4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000084b00ac4 from memory into f28
fclass.d x5, f28 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x99dac172 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x54d69fe0 # load x3 with 32 MSBs 0x0000000054d69fe0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000054d69fe0
sw x3, 0(x2) # store x3 (0x54d69fe0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000054d69fe0 from memory into f5
fclass.d x6, f5 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0x567c02d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb8d1d5e # load x3 with 32 MSBs 0x00000000fb8d1d5e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fb8d1d5e
sw x3, 0(x2) # store x3 (0xfb8d1d5e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000fb8d1d5e from memory into f13
fclass.d x7, f13 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0xf99e14d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x70ee6d44 # load x3 with 32 MSBs 0x0000000070ee6d44
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000070ee6d44
sw x3, 0(x2) # store x3 (0x70ee6d44) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000070ee6d44 from memory into f31
fclass.d x8, f31 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0xeac937b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x289688d8 # load x3 with 32 MSBs 0x00000000289688d8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000289688d8
sw x3, 0(x2) # store x3 (0x289688d8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000289688d8 from memory into f18
fclass.d x9, f18 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0xc730babd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3036b42e # load x3 with 32 MSBs 0x000000003036b42e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003036b42e
sw x3, 0(x2) # store x3 (0x3036b42e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000003036b42e from memory into f14
fclass.d x10, f14 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xb7348697 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3ed118a2 # load x3 with 32 MSBs 0x000000003ed118a2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003ed118a2
sw x3, 0(x2) # store x3 (0x3ed118a2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000003ed118a2 from memory into f11
fclass.d x11, f11 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xe8f7b12b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6f7b7a9a # load x3 with 32 MSBs 0x000000006f7b7a9a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006f7b7a9a
sw x3, 0(x2) # store x3 (0x6f7b7a9a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000006f7b7a9a from memory into f24
fclass.d x12, f24 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0xfc68efa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1131a4da # load x3 with 32 MSBs 0x000000001131a4da
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001131a4da
sw x3, 0(x2) # store x3 (0x1131a4da) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000001131a4da from memory into f16
fclass.d x13, f16 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x84d7cf38 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x01cfc129 # load x3 with 32 MSBs 0x0000000001cfc129
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000001cfc129
sw x3, 0(x2) # store x3 (0x01cfc129) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000001cfc129 from memory into f22
fclass.d x14, f22 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0xe5d172a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd852ef9 # load x3 with 32 MSBs 0x00000000cd852ef9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cd852ef9
sw x3, 0(x2) # store x3 (0xcd852ef9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000cd852ef9 from memory into f5
fclass.d x15, f5 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xd306d1ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x61902409 # load x3 with 32 MSBs 0x0000000061902409
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000061902409
sw x3, 0(x2) # store x3 (0x61902409) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000061902409 from memory into f23
fclass.d x16, f23 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0x644bc891 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe13de13 # load x3 with 32 MSBs 0x00000000be13de13
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000be13de13
sw x3, 0(x2) # store x3 (0xbe13de13) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000be13de13 from memory into f17
fclass.d x17, f17 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x06ce2195 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x008f3531 # load x3 with 32 MSBs 0x00000000008f3531
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000008f3531
sw x3, 0(x2) # store x3 (0x008f3531) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000008f3531 from memory into f10
fclass.d x18, f10 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x9ac58a5f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc05fedbc # load x3 with 32 MSBs 0x00000000c05fedbc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c05fedbc
sw x3, 0(x2) # store x3 (0xc05fedbc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000c05fedbc from memory into f21
fclass.d x19, f21 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0xafebdd51 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9562d58c # load x3 with 32 MSBs 0x000000009562d58c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009562d58c
sw x3, 0(x2) # store x3 (0x9562d58c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000009562d58c from memory into f23
fclass.d x20, f23 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0x33f7ee48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcdc2893d # load x3 with 32 MSBs 0x00000000cdc2893d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cdc2893d
sw x3, 0(x2) # store x3 (0xcdc2893d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000cdc2893d from memory into f18
fclass.d x21, f18 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x7067a0d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x155fee9f # load x3 with 32 MSBs 0x00000000155fee9f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000155fee9f
sw x3, 0(x2) # store x3 (0x155fee9f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000155fee9f from memory into f27
fclass.d x22, f27 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xa2b6ec26 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x77fd214d # load x3 with 32 MSBs 0x0000000077fd214d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000077fd214d
sw x3, 0(x2) # store x3 (0x77fd214d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000077fd214d from memory into f18
fclass.d x23, f18 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xdde18478 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x325b0e25 # load x3 with 32 MSBs 0x00000000325b0e25
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000325b0e25
sw x3, 0(x2) # store x3 (0x325b0e25) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000325b0e25 from memory into f20
fclass.d x24, f20 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x4fce01ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4b09232d # load x3 with 32 MSBs 0x000000004b09232d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004b09232d
sw x3, 0(x2) # store x3 (0x4b09232d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000004b09232d from memory into f20
fclass.d x25, f20 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x3ea643c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf504e2ab # load x3 with 32 MSBs 0x00000000f504e2ab
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f504e2ab
sw x3, 0(x2) # store x3 (0xf504e2ab) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000f504e2ab from memory into f5
fclass.d x26, f5 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xefd3b991 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa35519c1 # load x3 with 32 MSBs 0x00000000a35519c1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a35519c1
sw x3, 0(x2) # store x3 (0xa35519c1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000a35519c1 from memory into f28
fclass.d x27, f28 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0x771adf11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x1d3e50a7 # load x3 with 32 MSBs 0x000000001d3e50a7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001d3e50a7
sw x3, 0(x2) # store x3 (0x1d3e50a7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000001d3e50a7 from memory into f17
fclass.d x28, f17 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0x9953215d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb2b800a3 # load x3 with 32 MSBs 0x00000000b2b800a3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b2b800a3
sw x3, 0(x2) # store x3 (0xb2b800a3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000b2b800a3 from memory into f6
fclass.d x29, f6 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0xc2dfc6ee # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3086cb65 # load x3 with 32 MSBs 0x000000003086cb65
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003086cb65
sw x3, 0(x2) # store x3 (0x3086cb65) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000003086cb65 from memory into f7
fclass.d x30, f7 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0x5618ace3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x178cd7a1 # load x3 with 32 MSBs 0x00000000178cd7a1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000178cd7a1
sw x3, 0(x2) # store x3 (0x178cd7a1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000178cd7a1 from memory into f28
fclass.d x31, f28 # perform operation

# Testcase cmp_gpr_hazard raw test
fclass.d x14, f11 # perform first operation
fclass.d x20, f14 # perform second operation

# Testcase cmp_gpr_hazard raw test
fclass.d x19, f23 # perform first operation
fclass.d x7, f27 # perform second operation

# Testcase cmp_gpr_hazard waw test
fclass.d x7, f31 # perform first operation
fclass.d x7, f15 # perform second operation

# Testcase cmp_gpr_hazard waw test
fclass.d x21, f11 # perform first operation
fclass.d x21, f7 # perform second operation

# Testcase cmp_gpr_hazard war test
fclass.d x24, f30 # perform first operation
fclass.d x30, f22 # perform second operation

# Testcase cmp_gpr_hazard war test
fclass.d x31, f18 # perform first operation
fclass.d x27, f2 # perform second operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x9, 0x0221eccd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000000000000 from memory into f11
fclass.d x9, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x8, 0xbf977ecc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x8000000000000000 from memory into f5
fclass.d x8, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x18, 0x092fe972 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x3ff0000000000000 from memory into f14
fclass.d x18, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x8, 0xb9069e28 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xbff0000000000000 from memory into f22
fclass.d x8, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x29, 0x79654b17 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x3ff8000000000000 from memory into f23
fclass.d x29, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x14, 0xbf524c0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0xbff8000000000000 from memory into f4
fclass.d x14, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x20, 0xb7b73f6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x4000000000000000 from memory into f18
fclass.d x20, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x3, 0xb17bc01a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xc000000000000000 from memory into f5
fclass.d x3, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x30, 0x7659bdd4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0010000000000000 from memory into f9
fclass.d x30, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x11, 0x777df1ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x8010000000000000 from memory into f5
fclass.d x11, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x18, 0xca213f94 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x7fefffffffffffff from memory into f8
fclass.d x18, f8 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x28, 0x57ef6755 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xffefffffffffffff from memory into f6
fclass.d x28, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x6, 0x49304c37 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000fffffffffffff from memory into f25
fclass.d x6, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x7, 0xab900ded # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x800fffffffffffff from memory into f4
fclass.d x7, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x16, 0xae9602ca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0008000000000000 from memory into f11
fclass.d x16, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x5, 0x92bbed7a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x8008000000000000 from memory into f19
fclass.d x5, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x20, 0x16dc45f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000000000001 from memory into f11
fclass.d x20, f11 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x3, 0xeb170004 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x8000000000000001 from memory into f20
fclass.d x3, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x1, 0x960fceb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7ff0000000000000 from memory into f31
fclass.d x1, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x24, 0xde5035ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfff0000000000000 from memory into f25
fclass.d x24, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x31, 0x68cd7ce8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7ff8000000000000 from memory into f6
fclass.d x31, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x7, 0xd2d09ae9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7fffffffffffffff from memory into f26
fclass.d x7, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x1, 0xcc58ee1b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7ff0000000000001 from memory into f19
fclass.d x1, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x8, 0x213fc91a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7ff7ffffffffffff from memory into f25
fclass.d x8, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x1, 0x26fa5587 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x5a392534a57711ad from memory into f10
fclass.d x1, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x14, 0x12424bce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xa6e895993737426c from memory into f24
fclass.d x14, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x30, 0x038284fc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe9fdb02d # load x3 with 32 MSBs 0x00000000e9fdb02d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e9fdb02d
sw x3, 0(x2) # store x3 (0xe9fdb02d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000e9fdb02d from memory into f0
fclass.d x30, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x6, 0xf34b6437 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x510bec4f # load x3 with 32 MSBs 0x00000000510bec4f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000510bec4f
sw x3, 0(x2) # store x3 (0x510bec4f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000510bec4f from memory into f1
fclass.d x6, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x16, 0xac320e29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf555d10d # load x3 with 32 MSBs 0x00000000f555d10d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f555d10d
sw x3, 0(x2) # store x3 (0xf555d10d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000f555d10d from memory into f2
fclass.d x16, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x10, 0x2e760956 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x10c3c53c # load x3 with 32 MSBs 0x0000000010c3c53c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000010c3c53c
sw x3, 0(x2) # store x3 (0x10c3c53c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000010c3c53c from memory into f3
fclass.d x10, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x10, 0x4676b7cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x772d0d56 # load x3 with 32 MSBs 0x00000000772d0d56
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000772d0d56
sw x3, 0(x2) # store x3 (0x772d0d56) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000772d0d56 from memory into f4
fclass.d x10, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x15, 0x379a7e00 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa7ea29ad # load x3 with 32 MSBs 0x00000000a7ea29ad
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a7ea29ad
sw x3, 0(x2) # store x3 (0xa7ea29ad) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000a7ea29ad from memory into f5
fclass.d x15, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x3, 0xa5b82523 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xdc1c860f # load x3 with 32 MSBs 0x00000000dc1c860f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000dc1c860f
sw x3, 0(x2) # store x3 (0xdc1c860f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000dc1c860f from memory into f6
fclass.d x3, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x16, 0xb7c0c706 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x044f83c0 # load x3 with 32 MSBs 0x00000000044f83c0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000044f83c0
sw x3, 0(x2) # store x3 (0x044f83c0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000044f83c0 from memory into f7
fclass.d x16, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x17, 0x7e986958 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc1e151fc # load x3 with 32 MSBs 0x00000000c1e151fc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c1e151fc
sw x3, 0(x2) # store x3 (0xc1e151fc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000c1e151fc from memory into f8
fclass.d x17, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x24, 0xa4dd9f88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2176226f # load x3 with 32 MSBs 0x000000002176226f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002176226f
sw x3, 0(x2) # store x3 (0x2176226f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000002176226f from memory into f9
fclass.d x24, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x18, 0xd3041b93 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0c6cbc0 # load x3 with 32 MSBs 0x00000000a0c6cbc0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a0c6cbc0
sw x3, 0(x2) # store x3 (0xa0c6cbc0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000a0c6cbc0 from memory into f10
fclass.d x18, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x9, 0x442a6193 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x73970eef # load x3 with 32 MSBs 0x0000000073970eef
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000073970eef
sw x3, 0(x2) # store x3 (0x73970eef) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000073970eef from memory into f11
fclass.d x9, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x2, 0xf148350a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x62053fa1 # load x3 with 32 MSBs 0x0000000062053fa1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000062053fa1
sw x3, 0(x2) # store x3 (0x62053fa1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000062053fa1 from memory into f12
fclass.d x2, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x25, 0x321aeb39 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x11c28783 # load x3 with 32 MSBs 0x0000000011c28783
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000011c28783
sw x3, 0(x2) # store x3 (0x11c28783) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000011c28783 from memory into f13
fclass.d x25, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x28, 0x55fe00ac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x77ed31d6 # load x3 with 32 MSBs 0x0000000077ed31d6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000077ed31d6
sw x3, 0(x2) # store x3 (0x77ed31d6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000077ed31d6 from memory into f14
fclass.d x28, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x22, 0xe0fa42ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5936abb1 # load x3 with 32 MSBs 0x000000005936abb1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005936abb1
sw x3, 0(x2) # store x3 (0x5936abb1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000005936abb1 from memory into f15
fclass.d x22, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x15, 0x6466b807 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x937b79a3 # load x3 with 32 MSBs 0x00000000937b79a3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000937b79a3
sw x3, 0(x2) # store x3 (0x937b79a3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000937b79a3 from memory into f16
fclass.d x15, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x25, 0xc2994606 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x119a5432 # load x3 with 32 MSBs 0x00000000119a5432
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000119a5432
sw x3, 0(x2) # store x3 (0x119a5432) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000119a5432 from memory into f17
fclass.d x25, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x14, 0x57647481 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc2a739fe # load x3 with 32 MSBs 0x00000000c2a739fe
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c2a739fe
sw x3, 0(x2) # store x3 (0xc2a739fe) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000c2a739fe from memory into f18
fclass.d x14, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x5, 0xe3bda4d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5acb6f5e # load x3 with 32 MSBs 0x000000005acb6f5e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005acb6f5e
sw x3, 0(x2) # store x3 (0x5acb6f5e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000005acb6f5e from memory into f19
fclass.d x5, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x24, 0xeaf4ab4e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbbf4353e # load x3 with 32 MSBs 0x00000000bbf4353e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bbf4353e
sw x3, 0(x2) # store x3 (0xbbf4353e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000bbf4353e from memory into f20
fclass.d x24, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x30, 0x36801297 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d6e0f6a # load x3 with 32 MSBs 0x000000007d6e0f6a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007d6e0f6a
sw x3, 0(x2) # store x3 (0x7d6e0f6a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000007d6e0f6a from memory into f21
fclass.d x30, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x6, 0x1e3dd757 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x04377c15 # load x3 with 32 MSBs 0x0000000004377c15
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000004377c15
sw x3, 0(x2) # store x3 (0x04377c15) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000004377c15 from memory into f22
fclass.d x6, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x16, 0x9f25c7e0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x95681311 # load x3 with 32 MSBs 0x0000000095681311
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000095681311
sw x3, 0(x2) # store x3 (0x95681311) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000095681311 from memory into f23
fclass.d x16, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x9, 0x305827ef # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf3e94fbf # load x3 with 32 MSBs 0x00000000f3e94fbf
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f3e94fbf
sw x3, 0(x2) # store x3 (0xf3e94fbf) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000f3e94fbf from memory into f24
fclass.d x9, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x27, 0x5486f08a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd66be06 # load x3 with 32 MSBs 0x00000000fd66be06
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fd66be06
sw x3, 0(x2) # store x3 (0xfd66be06) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000fd66be06 from memory into f25
fclass.d x27, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x24, 0xcfa7b2ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1d7aef6 # load x3 with 32 MSBs 0x00000000b1d7aef6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b1d7aef6
sw x3, 0(x2) # store x3 (0xb1d7aef6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000b1d7aef6 from memory into f26
fclass.d x24, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x20, 0x0c80c34e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd76fa6a2 # load x3 with 32 MSBs 0x00000000d76fa6a2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d76fa6a2
sw x3, 0(x2) # store x3 (0xd76fa6a2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000d76fa6a2 from memory into f27
fclass.d x20, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x14, 0x01ebbaea # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe744ab15 # load x3 with 32 MSBs 0x00000000e744ab15
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e744ab15
sw x3, 0(x2) # store x3 (0xe744ab15) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000e744ab15 from memory into f28
fclass.d x14, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x30, 0xbe4b3887 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcb12f254 # load x3 with 32 MSBs 0x00000000cb12f254
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cb12f254
sw x3, 0(x2) # store x3 (0xcb12f254) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000cb12f254 from memory into f29
fclass.d x30, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x3, 0x93f3e82a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8831290a # load x3 with 32 MSBs 0x000000008831290a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008831290a
sw x3, 0(x2) # store x3 (0x8831290a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000008831290a from memory into f30
fclass.d x3, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x17, 0x449e53a8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd8c103dd # load x3 with 32 MSBs 0x00000000d8c103dd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d8c103dd
sw x3, 0(x2) # store x3 (0xd8c103dd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000d8c103dd from memory into f31
fclass.d x17, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
