///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/D//WALLY-COV-fsgnjx.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:22.019584
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
li x6, 0x32b20c33 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000000000000 from memory into f31
li x3, 0xddd3f392 # load x3 with 32 MSBs 0x00000000ddd3f392
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ddd3f392
sw x3, 0(x2) # store x3 (0xddd3f392) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000ddd3f392 from memory into f26
fsgnjx.d f6, f31, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x4, 0x18075fc9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x8000000000000000 from memory into f31
li x3, 0xc348fc50 # load x3 with 32 MSBs 0x00000000c348fc50
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c348fc50
sw x3, 0(x2) # store x3 (0xc348fc50) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000c348fc50 from memory into f23
fsgnjx.d f4, f31, f23 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x17, 0x5bc05cd3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x3ff0000000000000 from memory into f9
li x3, 0xf18ab523 # load x3 with 32 MSBs 0x00000000f18ab523
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f18ab523
sw x3, 0(x2) # store x3 (0xf18ab523) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000f18ab523 from memory into f25
fsgnjx.d f17, f9, f25 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x27, 0x1407fe36 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xbff0000000000000 from memory into f31
li x3, 0xde46e844 # load x3 with 32 MSBs 0x00000000de46e844
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000de46e844
sw x3, 0(x2) # store x3 (0xde46e844) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000de46e844 from memory into f10
fsgnjx.d f27, f31, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x29, 0x445bff15 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x3ff8000000000000 from memory into f7
li x3, 0xa10aa500 # load x3 with 32 MSBs 0x00000000a10aa500
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a10aa500
sw x3, 0(x2) # store x3 (0xa10aa500) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000a10aa500 from memory into f14
fsgnjx.d f29, f7, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x22, 0x5e15020e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xbff8000000000000 from memory into f24
li x3, 0x83068691 # load x3 with 32 MSBs 0x0000000083068691
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000083068691
sw x3, 0(x2) # store x3 (0x83068691) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000083068691 from memory into f20
fsgnjx.d f22, f24, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x2, 0x5cd33fbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x4000000000000000 from memory into f4
li x3, 0xbcd48720 # load x3 with 32 MSBs 0x00000000bcd48720
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bcd48720
sw x3, 0(x2) # store x3 (0xbcd48720) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000bcd48720 from memory into f19
fsgnjx.d f2, f4, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x20, 0xa9765a56 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xc000000000000000 from memory into f10
li x3, 0xa1ec624b # load x3 with 32 MSBs 0x00000000a1ec624b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a1ec624b
sw x3, 0(x2) # store x3 (0xa1ec624b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000a1ec624b from memory into f9
fsgnjx.d f20, f10, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x5, 0x5d87bc47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0010000000000000 from memory into f18
li x3, 0x23dbcc30 # load x3 with 32 MSBs 0x0000000023dbcc30
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000023dbcc30
sw x3, 0(x2) # store x3 (0x23dbcc30) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000023dbcc30 from memory into f13
fsgnjx.d f5, f18, f13 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x14, 0x607c778b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x8010000000000000 from memory into f24
li x3, 0xaada5c64 # load x3 with 32 MSBs 0x00000000aada5c64
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000aada5c64
sw x3, 0(x2) # store x3 (0xaada5c64) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000aada5c64 from memory into f6
fsgnjx.d f14, f24, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x21, 0xd8699e21 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7fefffffffffffff from memory into f11
li x3, 0xbbdacc39 # load x3 with 32 MSBs 0x00000000bbdacc39
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bbdacc39
sw x3, 0(x2) # store x3 (0xbbdacc39) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000bbdacc39 from memory into f2
fsgnjx.d f21, f11, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x13, 0xe39d63c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xffefffffffffffff from memory into f2
li x3, 0xe06dedae # load x3 with 32 MSBs 0x00000000e06dedae
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e06dedae
sw x3, 0(x2) # store x3 (0xe06dedae) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000e06dedae from memory into f6
fsgnjx.d f13, f2, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x29, 0x07d2bb09 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000fffffffffffff from memory into f18
li x3, 0x919cd8db # load x3 with 32 MSBs 0x00000000919cd8db
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000919cd8db
sw x3, 0(x2) # store x3 (0x919cd8db) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000919cd8db from memory into f20
fsgnjx.d f29, f18, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x22, 0x592b225e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x800fffffffffffff from memory into f3
li x3, 0xce3f7b84 # load x3 with 32 MSBs 0x00000000ce3f7b84
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ce3f7b84
sw x3, 0(x2) # store x3 (0xce3f7b84) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000ce3f7b84 from memory into f5
fsgnjx.d f22, f3, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x14, 0x51297b32 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0008000000000000 from memory into f10
li x3, 0x0f4249ec # load x3 with 32 MSBs 0x000000000f4249ec
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000f4249ec
sw x3, 0(x2) # store x3 (0x0f4249ec) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000000f4249ec from memory into f26
fsgnjx.d f14, f10, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x4, 0x6b9f7ab3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x8008000000000000 from memory into f8
li x3, 0xf1d389bc # load x3 with 32 MSBs 0x00000000f1d389bc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f1d389bc
sw x3, 0(x2) # store x3 (0xf1d389bc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000f1d389bc from memory into f14
fsgnjx.d f4, f8, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x6, 0x05873fe5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000000000001 from memory into f1
li x3, 0x1aa39db4 # load x3 with 32 MSBs 0x000000001aa39db4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001aa39db4
sw x3, 0(x2) # store x3 (0x1aa39db4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000001aa39db4 from memory into f30
fsgnjx.d f6, f1, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x9, 0x22438315 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x8000000000000001 from memory into f7
li x3, 0x1ed97b76 # load x3 with 32 MSBs 0x000000001ed97b76
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000001ed97b76
sw x3, 0(x2) # store x3 (0x1ed97b76) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000001ed97b76 from memory into f24
fsgnjx.d f9, f7, f24 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x8, 0x9098266c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7ff0000000000000 from memory into f31
li x3, 0xb5837d30 # load x3 with 32 MSBs 0x00000000b5837d30
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b5837d30
sw x3, 0(x2) # store x3 (0xb5837d30) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000b5837d30 from memory into f29
fsgnjx.d f8, f31, f29 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x3, 0x8c18c567 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfff0000000000000 from memory into f15
li x3, 0x33578c14 # load x3 with 32 MSBs 0x0000000033578c14
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000033578c14
sw x3, 0(x2) # store x3 (0x33578c14) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000033578c14 from memory into f26
fsgnjx.d f3, f15, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x19, 0xfb178e1d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7ff8000000000000 from memory into f26
li x3, 0x0ed367cf # load x3 with 32 MSBs 0x000000000ed367cf
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000ed367cf
sw x3, 0(x2) # store x3 (0x0ed367cf) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000000ed367cf from memory into f6
fsgnjx.d f19, f26, f6 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x28, 0xb3f0b9e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7fffffffffffffff from memory into f21
li x3, 0xe7c0b9db # load x3 with 32 MSBs 0x00000000e7c0b9db
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e7c0b9db
sw x3, 0(x2) # store x3 (0xe7c0b9db) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000e7c0b9db from memory into f20
fsgnjx.d f28, f21, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x29, 0x1ea38ae5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x7ff0000000000001 from memory into f17
li x3, 0x87553820 # load x3 with 32 MSBs 0x0000000087553820
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000087553820
sw x3, 0(x2) # store x3 (0x87553820) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000087553820 from memory into f12
fsgnjx.d f29, f17, f12 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x22, 0xe4cd79bc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7ff7ffffffffffff from memory into f18
li x3, 0x84542911 # load x3 with 32 MSBs 0x0000000084542911
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000084542911
sw x3, 0(x2) # store x3 (0x84542911) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000084542911 from memory into f5
fsgnjx.d f22, f18, f5 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x30, 0x0035407f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x5a392534a57711ad from memory into f27
li x3, 0x066c1f07 # load x3 with 32 MSBs 0x00000000066c1f07
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000066c1f07
sw x3, 0(x2) # store x3 (0x066c1f07) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000066c1f07 from memory into f1
fsgnjx.d f30, f27, f1 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x3, 0xdcff7b5b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xa6e895993737426c from memory into f21
li x3, 0x9a8de0c1 # load x3 with 32 MSBs 0x000000009a8de0c1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009a8de0c1
sw x3, 0(x2) # store x3 (0x9a8de0c1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000009a8de0c1 from memory into f29
fsgnjx.d f3, f21, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x0)
li x17, 0xc72b3841 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf5f59892 # load x3 with 32 MSBs 0x00000000f5f59892
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f5f59892
sw x3, 0(x2) # store x3 (0xf5f59892) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000f5f59892 from memory into f12
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000000000000 from memory into f26
fsgnjx.d f17, f12, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000000)
li x2, 0x161c0e31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x66124e9e # load x3 with 32 MSBs 0x0000000066124e9e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000066124e9e
sw x3, 0(x2) # store x3 (0x66124e9e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000066124e9e from memory into f5
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x8000000000000000 from memory into f7
fsgnjx.d f2, f5, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff0000000000000)
li x5, 0xcd9875d0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5fa229c8 # load x3 with 32 MSBs 0x000000005fa229c8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005fa229c8
sw x3, 0(x2) # store x3 (0x5fa229c8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000005fa229c8 from memory into f19
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x3ff0000000000000 from memory into f13
fsgnjx.d f5, f19, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff0000000000000)
li x31, 0x252873a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x901c7e41 # load x3 with 32 MSBs 0x00000000901c7e41
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000901c7e41
sw x3, 0(x2) # store x3 (0x901c7e41) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000901c7e41 from memory into f25
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xbff0000000000000 from memory into f27
fsgnjx.d f31, f25, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3ff8000000000000)
li x24, 0xd2589b07 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f3bbbd7 # load x3 with 32 MSBs 0x000000003f3bbbd7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003f3bbbd7
sw x3, 0(x2) # store x3 (0x3f3bbbd7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000003f3bbbd7 from memory into f28
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x3ff8000000000000 from memory into f12
fsgnjx.d f24, f28, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xbff8000000000000)
li x29, 0x4875f91e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3c50fb91 # load x3 with 32 MSBs 0x000000003c50fb91
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003c50fb91
sw x3, 0(x2) # store x3 (0x3c50fb91) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000003c50fb91 from memory into f15
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xbff8000000000000 from memory into f25
fsgnjx.d f29, f15, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x4000000000000000)
li x22, 0x046368a4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x653b64d5 # load x3 with 32 MSBs 0x00000000653b64d5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000653b64d5
sw x3, 0(x2) # store x3 (0x653b64d5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000653b64d5 from memory into f2
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x4000000000000000 from memory into f19
fsgnjx.d f22, f2, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc000000000000000)
li x13, 0xb8e0544c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6833d934 # load x3 with 32 MSBs 0x000000006833d934
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006833d934
sw x3, 0(x2) # store x3 (0x6833d934) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000006833d934 from memory into f28
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xc000000000000000 from memory into f27
fsgnjx.d f13, f28, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x10000000000000)
li x9, 0x4f194f43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf77c7a99 # load x3 with 32 MSBs 0x00000000f77c7a99
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f77c7a99
sw x3, 0(x2) # store x3 (0xf77c7a99) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000f77c7a99 from memory into f1
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0010000000000000 from memory into f23
fsgnjx.d f9, f1, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8010000000000000)
li x4, 0x1d9b25d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x59cc831d # load x3 with 32 MSBs 0x0000000059cc831d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000059cc831d
sw x3, 0(x2) # store x3 (0x59cc831d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000059cc831d from memory into f5
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x8010000000000000 from memory into f21
fsgnjx.d f4, f5, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fefffffffffffff)
li x17, 0x345b8fbf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfd32756e # load x3 with 32 MSBs 0x00000000fd32756e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fd32756e
sw x3, 0(x2) # store x3 (0xfd32756e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000fd32756e from memory into f5
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7fefffffffffffff from memory into f15
fsgnjx.d f17, f5, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffefffffffffffff)
li x2, 0x1722181e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe2f647b0 # load x3 with 32 MSBs 0x00000000e2f647b0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e2f647b0
sw x3, 0(x2) # store x3 (0xe2f647b0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000e2f647b0 from memory into f15
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffefffffffffffff from memory into f11
fsgnjx.d f2, f15, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffff)
li x5, 0xc23ada0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x915dd7f4 # load x3 with 32 MSBs 0x00000000915dd7f4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000915dd7f4
sw x3, 0(x2) # store x3 (0x915dd7f4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000915dd7f4 from memory into f1
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000fffffffffffff from memory into f21
fsgnjx.d f5, f1, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x800fffffffffffff)
li x7, 0x58cc48b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd864a4b1 # load x3 with 32 MSBs 0x00000000d864a4b1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d864a4b1
sw x3, 0(x2) # store x3 (0xd864a4b1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000d864a4b1 from memory into f19
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x800fffffffffffff from memory into f15
fsgnjx.d f7, f19, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000)
li x23, 0xc57bf838 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x611975e9 # load x3 with 32 MSBs 0x00000000611975e9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000611975e9
sw x3, 0(x2) # store x3 (0x611975e9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000611975e9 from memory into f10
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0008000000000000 from memory into f11
fsgnjx.d f23, f10, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8008000000000000)
li x25, 0x7060919f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xad4ff0bf # load x3 with 32 MSBs 0x00000000ad4ff0bf
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ad4ff0bf
sw x3, 0(x2) # store x3 (0xad4ff0bf) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000ad4ff0bf from memory into f15
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x8008000000000000 from memory into f29
fsgnjx.d f25, f15, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x1)
li x31, 0x20be7b76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe2f6463f # load x3 with 32 MSBs 0x00000000e2f6463f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e2f6463f
sw x3, 0(x2) # store x3 (0xe2f6463f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000e2f6463f from memory into f18
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000000000001 from memory into f4
fsgnjx.d f31, f18, f4 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x8000000000000001)
li x19, 0x4225f618 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbecf6d68 # load x3 with 32 MSBs 0x00000000becf6d68
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000becf6d68
sw x3, 0(x2) # store x3 (0xbecf6d68) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000becf6d68 from memory into f18
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x8000000000000001 from memory into f10
fsgnjx.d f19, f18, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000000)
li x8, 0x1083e143 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x21c90807 # load x3 with 32 MSBs 0x0000000021c90807
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000021c90807
sw x3, 0(x2) # store x3 (0x21c90807) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000021c90807 from memory into f24
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7ff0000000000000 from memory into f3
fsgnjx.d f8, f24, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfff0000000000000)
li x17, 0x5c7cf678 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8c466b50 # load x3 with 32 MSBs 0x000000008c466b50
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008c466b50
sw x3, 0(x2) # store x3 (0x8c466b50) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000008c466b50 from memory into f12
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfff0000000000000 from memory into f15
fsgnjx.d f17, f12, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff8000000000000)
li x21, 0xf6838939 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xebac98be # load x3 with 32 MSBs 0x00000000ebac98be
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ebac98be
sw x3, 0(x2) # store x3 (0xebac98be) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000ebac98be from memory into f22
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7ff8000000000000 from memory into f2
fsgnjx.d f21, f22, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffffffff)
li x20, 0x800279b0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb05d15d5 # load x3 with 32 MSBs 0x00000000b05d15d5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b05d15d5
sw x3, 0(x2) # store x3 (0xb05d15d5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000b05d15d5 from memory into f28
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7fffffffffffffff from memory into f5
fsgnjx.d f20, f28, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff0000000000001)
li x11, 0x4dc3d586 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x79694fb9 # load x3 with 32 MSBs 0x0000000079694fb9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000079694fb9
sw x3, 0(x2) # store x3 (0x79694fb9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000079694fb9 from memory into f21
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7ff0000000000001 from memory into f26
fsgnjx.d f11, f21, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7ff7ffffffffffff)
li x22, 0x5bad5695 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23fb9e15 # load x3 with 32 MSBs 0x0000000023fb9e15
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000023fb9e15
sw x3, 0(x2) # store x3 (0x23fb9e15) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x0000000023fb9e15 from memory into f4
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7ff7ffffffffffff from memory into f30
fsgnjx.d f22, f4, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x5a392534a57711ad)
li x4, 0x129ceb4a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3e3feb89 # load x3 with 32 MSBs 0x000000003e3feb89
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003e3feb89
sw x3, 0(x2) # store x3 (0x3e3feb89) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000003e3feb89 from memory into f25
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x5a392534a57711ad from memory into f7
fsgnjx.d f4, f25, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa6e895993737426c)
li x1, 0x80e002e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6618a9fc # load x3 with 32 MSBs 0x000000006618a9fc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006618a9fc
sw x3, 0(x2) # store x3 (0x6618a9fc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000006618a9fc from memory into f3
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xa6e895993737426c from memory into f19
fsgnjx.d f1, f3, f19 # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0xf260b0f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfaa423e6 # load x3 with 32 MSBs 0x00000000faa423e6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000faa423e6
sw x3, 0(x2) # store x3 (0xfaa423e6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000faa423e6 from memory into f28
li x3, 0x3a465ac9 # load x3 with 32 MSBs 0x000000003a465ac9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003a465ac9
sw x3, 0(x2) # store x3 (0x3a465ac9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000003a465ac9 from memory into f31
fsgnjx.d f0, f28, f31 # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0xa871f9d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x84ef9874 # load x3 with 32 MSBs 0x0000000084ef9874
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000084ef9874
sw x3, 0(x2) # store x3 (0x84ef9874) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000084ef9874 from memory into f20
li x3, 0xae80250b # load x3 with 32 MSBs 0x00000000ae80250b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ae80250b
sw x3, 0(x2) # store x3 (0xae80250b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000ae80250b from memory into f3
fsgnjx.d f1, f20, f3 # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0x26607f76 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xed3e139e # load x3 with 32 MSBs 0x00000000ed3e139e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ed3e139e
sw x3, 0(x2) # store x3 (0xed3e139e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000ed3e139e from memory into f4
li x3, 0xbb280b1a # load x3 with 32 MSBs 0x00000000bb280b1a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bb280b1a
sw x3, 0(x2) # store x3 (0xbb280b1a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000bb280b1a from memory into f7
fsgnjx.d f2, f4, f7 # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x585947bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaebdf0b2 # load x3 with 32 MSBs 0x00000000aebdf0b2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000aebdf0b2
sw x3, 0(x2) # store x3 (0xaebdf0b2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000aebdf0b2 from memory into f29
li x3, 0xe75bd820 # load x3 with 32 MSBs 0x00000000e75bd820
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e75bd820
sw x3, 0(x2) # store x3 (0xe75bd820) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000e75bd820 from memory into f4
fsgnjx.d f3, f29, f4 # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x44b4bb22 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf7c5a743 # load x3 with 32 MSBs 0x00000000f7c5a743
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f7c5a743
sw x3, 0(x2) # store x3 (0xf7c5a743) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000f7c5a743 from memory into f10
li x3, 0x50b4ce08 # load x3 with 32 MSBs 0x0000000050b4ce08
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000050b4ce08
sw x3, 0(x2) # store x3 (0x50b4ce08) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000050b4ce08 from memory into f22
fsgnjx.d f4, f10, f22 # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x56ddfc04 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe29e775c # load x3 with 32 MSBs 0x00000000e29e775c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e29e775c
sw x3, 0(x2) # store x3 (0xe29e775c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000e29e775c from memory into f9
li x3, 0x21e10976 # load x3 with 32 MSBs 0x0000000021e10976
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000021e10976
sw x3, 0(x2) # store x3 (0x21e10976) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000021e10976 from memory into f21
fsgnjx.d f5, f9, f21 # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xe4b2bba0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2cb12bc1 # load x3 with 32 MSBs 0x000000002cb12bc1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002cb12bc1
sw x3, 0(x2) # store x3 (0x2cb12bc1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000002cb12bc1 from memory into f3
li x3, 0x98d3d941 # load x3 with 32 MSBs 0x0000000098d3d941
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000098d3d941
sw x3, 0(x2) # store x3 (0x98d3d941) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000098d3d941 from memory into f18
fsgnjx.d f6, f3, f18 # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xb94541c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfc62b5ed # load x3 with 32 MSBs 0x00000000fc62b5ed
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fc62b5ed
sw x3, 0(x2) # store x3 (0xfc62b5ed) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000fc62b5ed from memory into f1
li x3, 0x7bd3f254 # load x3 with 32 MSBs 0x000000007bd3f254
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007bd3f254
sw x3, 0(x2) # store x3 (0x7bd3f254) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000007bd3f254 from memory into f11
fsgnjx.d f7, f1, f11 # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0x21e2ffd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x68bc2af5 # load x3 with 32 MSBs 0x0000000068bc2af5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000068bc2af5
sw x3, 0(x2) # store x3 (0x68bc2af5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000068bc2af5 from memory into f18
li x3, 0x789fcd6c # load x3 with 32 MSBs 0x00000000789fcd6c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000789fcd6c
sw x3, 0(x2) # store x3 (0x789fcd6c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000789fcd6c from memory into f7
fsgnjx.d f8, f18, f7 # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xedd9a825 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x092f0ae1 # load x3 with 32 MSBs 0x00000000092f0ae1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000092f0ae1
sw x3, 0(x2) # store x3 (0x092f0ae1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000092f0ae1 from memory into f7
li x3, 0x7faf3303 # load x3 with 32 MSBs 0x000000007faf3303
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007faf3303
sw x3, 0(x2) # store x3 (0x7faf3303) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000007faf3303 from memory into f27
fsgnjx.d f9, f7, f27 # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0xd6f4fb50 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8dbd5440 # load x3 with 32 MSBs 0x000000008dbd5440
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008dbd5440
sw x3, 0(x2) # store x3 (0x8dbd5440) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000008dbd5440 from memory into f28
li x3, 0x4a18ea03 # load x3 with 32 MSBs 0x000000004a18ea03
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004a18ea03
sw x3, 0(x2) # store x3 (0x4a18ea03) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000004a18ea03 from memory into f29
fsgnjx.d f10, f28, f29 # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x3d2c191c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e10ebc1 # load x3 with 32 MSBs 0x000000005e10ebc1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005e10ebc1
sw x3, 0(x2) # store x3 (0x5e10ebc1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000005e10ebc1 from memory into f19
li x3, 0xdf544b5f # load x3 with 32 MSBs 0x00000000df544b5f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000df544b5f
sw x3, 0(x2) # store x3 (0xdf544b5f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000df544b5f from memory into f18
fsgnjx.d f11, f19, f18 # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x3cfd24cd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x568939c1 # load x3 with 32 MSBs 0x00000000568939c1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000568939c1
sw x3, 0(x2) # store x3 (0x568939c1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000568939c1 from memory into f10
li x3, 0xe497963a # load x3 with 32 MSBs 0x00000000e497963a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e497963a
sw x3, 0(x2) # store x3 (0xe497963a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000e497963a from memory into f6
fsgnjx.d f12, f10, f6 # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x576aadac # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xe61a5b7f # load x3 with 32 MSBs 0x00000000e61a5b7f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e61a5b7f
sw x3, 0(x2) # store x3 (0xe61a5b7f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000e61a5b7f from memory into f7
li x3, 0xb50efc09 # load x3 with 32 MSBs 0x00000000b50efc09
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b50efc09
sw x3, 0(x2) # store x3 (0xb50efc09) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000b50efc09 from memory into f24
fsgnjx.d f13, f7, f24 # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x66d47446 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd206ddca # load x3 with 32 MSBs 0x00000000d206ddca
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d206ddca
sw x3, 0(x2) # store x3 (0xd206ddca) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000d206ddca from memory into f4
li x3, 0xb711369d # load x3 with 32 MSBs 0x00000000b711369d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b711369d
sw x3, 0(x2) # store x3 (0xb711369d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000b711369d from memory into f13
fsgnjx.d f14, f4, f13 # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xd8be318a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x99646f75 # load x3 with 32 MSBs 0x0000000099646f75
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000099646f75
sw x3, 0(x2) # store x3 (0x99646f75) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000099646f75 from memory into f7
li x3, 0x272a90bb # load x3 with 32 MSBs 0x00000000272a90bb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000272a90bb
sw x3, 0(x2) # store x3 (0x272a90bb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000272a90bb from memory into f21
fsgnjx.d f15, f7, f21 # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x41ac2075 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0a6013ce # load x3 with 32 MSBs 0x000000000a6013ce
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000a6013ce
sw x3, 0(x2) # store x3 (0x0a6013ce) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000000a6013ce from memory into f7
li x3, 0xdad4ccf2 # load x3 with 32 MSBs 0x00000000dad4ccf2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000dad4ccf2
sw x3, 0(x2) # store x3 (0xdad4ccf2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000dad4ccf2 from memory into f31
fsgnjx.d f16, f7, f31 # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x4cea0fd1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa605d1d9 # load x3 with 32 MSBs 0x00000000a605d1d9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a605d1d9
sw x3, 0(x2) # store x3 (0xa605d1d9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000a605d1d9 from memory into f20
li x3, 0xaecda5ee # load x3 with 32 MSBs 0x00000000aecda5ee
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000aecda5ee
sw x3, 0(x2) # store x3 (0xaecda5ee) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000aecda5ee from memory into f24
fsgnjx.d f17, f20, f24 # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x5a356bf5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb0433bcc # load x3 with 32 MSBs 0x00000000b0433bcc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b0433bcc
sw x3, 0(x2) # store x3 (0xb0433bcc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000b0433bcc from memory into f30
li x3, 0x4b5f656a # load x3 with 32 MSBs 0x000000004b5f656a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004b5f656a
sw x3, 0(x2) # store x3 (0x4b5f656a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000004b5f656a from memory into f19
fsgnjx.d f18, f30, f19 # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0x38cb4ecf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd0185f76 # load x3 with 32 MSBs 0x00000000d0185f76
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d0185f76
sw x3, 0(x2) # store x3 (0xd0185f76) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000d0185f76 from memory into f7
li x3, 0x5ac1732b # load x3 with 32 MSBs 0x000000005ac1732b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005ac1732b
sw x3, 0(x2) # store x3 (0x5ac1732b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000005ac1732b from memory into f25
fsgnjx.d f19, f7, f25 # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0x700a5ba8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa24e4c06 # load x3 with 32 MSBs 0x00000000a24e4c06
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a24e4c06
sw x3, 0(x2) # store x3 (0xa24e4c06) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000a24e4c06 from memory into f1
li x3, 0x529e21c8 # load x3 with 32 MSBs 0x00000000529e21c8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000529e21c8
sw x3, 0(x2) # store x3 (0x529e21c8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000529e21c8 from memory into f8
fsgnjx.d f20, f1, f8 # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0x1a290424 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x2419a612 # load x3 with 32 MSBs 0x000000002419a612
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002419a612
sw x3, 0(x2) # store x3 (0x2419a612) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000002419a612 from memory into f12
li x3, 0x0d005cb8 # load x3 with 32 MSBs 0x000000000d005cb8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000d005cb8
sw x3, 0(x2) # store x3 (0x0d005cb8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000000d005cb8 from memory into f5
fsgnjx.d f21, f12, f5 # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0x8fd4b914 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x086541d7 # load x3 with 32 MSBs 0x00000000086541d7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000086541d7
sw x3, 0(x2) # store x3 (0x086541d7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000086541d7 from memory into f27
li x3, 0xb5a37705 # load x3 with 32 MSBs 0x00000000b5a37705
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b5a37705
sw x3, 0(x2) # store x3 (0xb5a37705) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000b5a37705 from memory into f31
fsgnjx.d f22, f27, f31 # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x2ad357da # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x67e8d7e6 # load x3 with 32 MSBs 0x0000000067e8d7e6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000067e8d7e6
sw x3, 0(x2) # store x3 (0x67e8d7e6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000067e8d7e6 from memory into f18
li x3, 0x2f9e4fac # load x3 with 32 MSBs 0x000000002f9e4fac
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002f9e4fac
sw x3, 0(x2) # store x3 (0x2f9e4fac) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000002f9e4fac from memory into f10
fsgnjx.d f23, f18, f10 # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0x6dc0e63f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa717b578 # load x3 with 32 MSBs 0x00000000a717b578
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a717b578
sw x3, 0(x2) # store x3 (0xa717b578) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000a717b578 from memory into f11
li x3, 0x311d492d # load x3 with 32 MSBs 0x00000000311d492d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000311d492d
sw x3, 0(x2) # store x3 (0x311d492d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000311d492d from memory into f30
fsgnjx.d f24, f11, f30 # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0x6ed2a079 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4463ea1d # load x3 with 32 MSBs 0x000000004463ea1d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004463ea1d
sw x3, 0(x2) # store x3 (0x4463ea1d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000004463ea1d from memory into f19
li x3, 0x8df4c619 # load x3 with 32 MSBs 0x000000008df4c619
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008df4c619
sw x3, 0(x2) # store x3 (0x8df4c619) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000008df4c619 from memory into f14
fsgnjx.d f25, f19, f14 # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x1cca4282 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf41b1ee2 # load x3 with 32 MSBs 0x00000000f41b1ee2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f41b1ee2
sw x3, 0(x2) # store x3 (0xf41b1ee2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000f41b1ee2 from memory into f20
li x3, 0x66aa05c2 # load x3 with 32 MSBs 0x0000000066aa05c2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000066aa05c2
sw x3, 0(x2) # store x3 (0x66aa05c2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000066aa05c2 from memory into f31
fsgnjx.d f26, f20, f31 # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0x218b64ae # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x3f17b9b2 # load x3 with 32 MSBs 0x000000003f17b9b2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003f17b9b2
sw x3, 0(x2) # store x3 (0x3f17b9b2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000003f17b9b2 from memory into f11
li x3, 0x17b4b27c # load x3 with 32 MSBs 0x0000000017b4b27c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000017b4b27c
sw x3, 0(x2) # store x3 (0x17b4b27c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000017b4b27c from memory into f22
fsgnjx.d f27, f11, f22 # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0xec8eed95 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4c583bd8 # load x3 with 32 MSBs 0x000000004c583bd8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004c583bd8
sw x3, 0(x2) # store x3 (0x4c583bd8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000004c583bd8 from memory into f5
li x3, 0x2c5d5b0a # load x3 with 32 MSBs 0x000000002c5d5b0a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002c5d5b0a
sw x3, 0(x2) # store x3 (0x2c5d5b0a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000002c5d5b0a from memory into f13
fsgnjx.d f28, f5, f13 # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0x60c60fb3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7e91eaf1 # load x3 with 32 MSBs 0x000000007e91eaf1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007e91eaf1
sw x3, 0(x2) # store x3 (0x7e91eaf1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x000000007e91eaf1 from memory into f4
li x3, 0xbb0d2d9a # load x3 with 32 MSBs 0x00000000bb0d2d9a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bb0d2d9a
sw x3, 0(x2) # store x3 (0xbb0d2d9a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000bb0d2d9a from memory into f11
fsgnjx.d f29, f4, f11 # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xb45dc8ba # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x330ab321 # load x3 with 32 MSBs 0x00000000330ab321
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000330ab321
sw x3, 0(x2) # store x3 (0x330ab321) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000330ab321 from memory into f15
li x3, 0x238efde8 # load x3 with 32 MSBs 0x00000000238efde8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000238efde8
sw x3, 0(x2) # store x3 (0x238efde8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000238efde8 from memory into f22
fsgnjx.d f30, f15, f22 # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x67f5b8b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xc52ded6c # load x3 with 32 MSBs 0x00000000c52ded6c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c52ded6c
sw x3, 0(x2) # store x3 (0xc52ded6c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000c52ded6c from memory into f20
li x3, 0x069d8853 # load x3 with 32 MSBs 0x00000000069d8853
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000069d8853
sw x3, 0(x2) # store x3 (0x069d8853) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000069d8853 from memory into f1
fsgnjx.d f31, f20, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x2, 0x3b81e3aa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xcd93be5a # load x3 with 32 MSBs 0x00000000cd93be5a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cd93be5a
sw x3, 0(x2) # store x3 (0xcd93be5a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000cd93be5a from memory into f0
li x3, 0xb87b4543 # load x3 with 32 MSBs 0x00000000b87b4543
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b87b4543
sw x3, 0(x2) # store x3 (0xb87b4543) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000b87b4543 from memory into f25
fsgnjx.d f2, f0, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x28, 0xfacb4dd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa0ae5f41 # load x3 with 32 MSBs 0x00000000a0ae5f41
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a0ae5f41
sw x3, 0(x2) # store x3 (0xa0ae5f41) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000a0ae5f41 from memory into f1
li x3, 0x0574f125 # load x3 with 32 MSBs 0x000000000574f125
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000574f125
sw x3, 0(x2) # store x3 (0x0574f125) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000000574f125 from memory into f29
fsgnjx.d f28, f1, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x25, 0x9747466d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf7b3527 # load x3 with 32 MSBs 0x00000000af7b3527
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000af7b3527
sw x3, 0(x2) # store x3 (0xaf7b3527) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000af7b3527 from memory into f2
li x3, 0x23d46c09 # load x3 with 32 MSBs 0x0000000023d46c09
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000023d46c09
sw x3, 0(x2) # store x3 (0x23d46c09) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000023d46c09 from memory into f21
fsgnjx.d f25, f2, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x19, 0xddbfa2b3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x75ce997c # load x3 with 32 MSBs 0x0000000075ce997c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000075ce997c
sw x3, 0(x2) # store x3 (0x75ce997c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000075ce997c from memory into f3
li x3, 0xd472e579 # load x3 with 32 MSBs 0x00000000d472e579
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d472e579
sw x3, 0(x2) # store x3 (0xd472e579) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000d472e579 from memory into f23
fsgnjx.d f19, f3, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x15, 0x7e25228b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbe5ed8f8 # load x3 with 32 MSBs 0x00000000be5ed8f8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000be5ed8f8
sw x3, 0(x2) # store x3 (0xbe5ed8f8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000be5ed8f8 from memory into f4
li x3, 0xdb3adbcd # load x3 with 32 MSBs 0x00000000db3adbcd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000db3adbcd
sw x3, 0(x2) # store x3 (0xdb3adbcd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000db3adbcd from memory into f17
fsgnjx.d f15, f4, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x8, 0xe0ce390c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x28cc3939 # load x3 with 32 MSBs 0x0000000028cc3939
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000028cc3939
sw x3, 0(x2) # store x3 (0x28cc3939) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000028cc3939 from memory into f5
li x3, 0xb7b3fe4a # load x3 with 32 MSBs 0x00000000b7b3fe4a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b7b3fe4a
sw x3, 0(x2) # store x3 (0xb7b3fe4a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000b7b3fe4a from memory into f21
fsgnjx.d f8, f5, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x12, 0x347d4f5e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf4316290 # load x3 with 32 MSBs 0x00000000f4316290
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f4316290
sw x3, 0(x2) # store x3 (0xf4316290) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000f4316290 from memory into f6
li x3, 0xc101f3a6 # load x3 with 32 MSBs 0x00000000c101f3a6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c101f3a6
sw x3, 0(x2) # store x3 (0xc101f3a6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000c101f3a6 from memory into f13
fsgnjx.d f12, f6, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x26, 0x7d2b7f43 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x77470396 # load x3 with 32 MSBs 0x0000000077470396
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000077470396
sw x3, 0(x2) # store x3 (0x77470396) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000077470396 from memory into f7
li x3, 0x674afc30 # load x3 with 32 MSBs 0x00000000674afc30
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000674afc30
sw x3, 0(x2) # store x3 (0x674afc30) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000674afc30 from memory into f17
fsgnjx.d f26, f7, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x11, 0x2deb00be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xaf002af1 # load x3 with 32 MSBs 0x00000000af002af1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000af002af1
sw x3, 0(x2) # store x3 (0xaf002af1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000af002af1 from memory into f8
li x3, 0x8a98d086 # load x3 with 32 MSBs 0x000000008a98d086
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008a98d086
sw x3, 0(x2) # store x3 (0x8a98d086) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000008a98d086 from memory into f9
fsgnjx.d f11, f8, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x17, 0xf0054c83 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb31e7d71 # load x3 with 32 MSBs 0x00000000b31e7d71
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b31e7d71
sw x3, 0(x2) # store x3 (0xb31e7d71) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000b31e7d71 from memory into f9
li x3, 0xd1ea6a2b # load x3 with 32 MSBs 0x00000000d1ea6a2b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d1ea6a2b
sw x3, 0(x2) # store x3 (0xd1ea6a2b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000d1ea6a2b from memory into f18
fsgnjx.d f17, f9, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x20, 0xd8286fc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e5f6f2f # load x3 with 32 MSBs 0x000000005e5f6f2f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005e5f6f2f
sw x3, 0(x2) # store x3 (0x5e5f6f2f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000005e5f6f2f from memory into f10
li x3, 0xf5023e9d # load x3 with 32 MSBs 0x00000000f5023e9d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f5023e9d
sw x3, 0(x2) # store x3 (0xf5023e9d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000f5023e9d from memory into f30
fsgnjx.d f20, f10, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x17, 0x8344146f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd1d9fba3 # load x3 with 32 MSBs 0x00000000d1d9fba3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d1d9fba3
sw x3, 0(x2) # store x3 (0xd1d9fba3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000d1d9fba3 from memory into f11
li x3, 0x68db60d5 # load x3 with 32 MSBs 0x0000000068db60d5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000068db60d5
sw x3, 0(x2) # store x3 (0x68db60d5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000068db60d5 from memory into f29
fsgnjx.d f17, f11, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x2, 0x9ff48775 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb1bb66d9 # load x3 with 32 MSBs 0x00000000b1bb66d9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b1bb66d9
sw x3, 0(x2) # store x3 (0xb1bb66d9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000b1bb66d9 from memory into f12
li x3, 0x24b5b2c3 # load x3 with 32 MSBs 0x0000000024b5b2c3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000024b5b2c3
sw x3, 0(x2) # store x3 (0x24b5b2c3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000024b5b2c3 from memory into f22
fsgnjx.d f2, f12, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x10, 0x73d5af8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd334e0d6 # load x3 with 32 MSBs 0x00000000d334e0d6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d334e0d6
sw x3, 0(x2) # store x3 (0xd334e0d6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000d334e0d6 from memory into f13
li x3, 0xa557ca5a # load x3 with 32 MSBs 0x00000000a557ca5a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a557ca5a
sw x3, 0(x2) # store x3 (0xa557ca5a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000a557ca5a from memory into f18
fsgnjx.d f10, f13, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x28, 0xaf5e66ec # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x79c08eed # load x3 with 32 MSBs 0x0000000079c08eed
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000079c08eed
sw x3, 0(x2) # store x3 (0x79c08eed) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000079c08eed from memory into f14
li x3, 0x8d921c39 # load x3 with 32 MSBs 0x000000008d921c39
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008d921c39
sw x3, 0(x2) # store x3 (0x8d921c39) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000008d921c39 from memory into f26
fsgnjx.d f28, f14, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x14, 0xa370bb29 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9bfed902 # load x3 with 32 MSBs 0x000000009bfed902
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009bfed902
sw x3, 0(x2) # store x3 (0x9bfed902) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000009bfed902 from memory into f15
li x3, 0x31e92fde # load x3 with 32 MSBs 0x0000000031e92fde
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000031e92fde
sw x3, 0(x2) # store x3 (0x31e92fde) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000031e92fde from memory into f9
fsgnjx.d f14, f15, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x8, 0x69a2218b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x4d00ba09 # load x3 with 32 MSBs 0x000000004d00ba09
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004d00ba09
sw x3, 0(x2) # store x3 (0x4d00ba09) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000004d00ba09 from memory into f16
li x3, 0x97c7c94e # load x3 with 32 MSBs 0x0000000097c7c94e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000097c7c94e
sw x3, 0(x2) # store x3 (0x97c7c94e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000097c7c94e from memory into f27
fsgnjx.d f8, f16, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x10, 0x00856a6a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8011a6ec # load x3 with 32 MSBs 0x000000008011a6ec
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008011a6ec
sw x3, 0(x2) # store x3 (0x8011a6ec) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000008011a6ec from memory into f17
li x3, 0x01a0396d # load x3 with 32 MSBs 0x0000000001a0396d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000001a0396d
sw x3, 0(x2) # store x3 (0x01a0396d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000001a0396d from memory into f1
fsgnjx.d f10, f17, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x14, 0x4aaae5df # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf062405e # load x3 with 32 MSBs 0x00000000f062405e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f062405e
sw x3, 0(x2) # store x3 (0xf062405e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000f062405e from memory into f18
li x3, 0x064144a8 # load x3 with 32 MSBs 0x00000000064144a8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000064144a8
sw x3, 0(x2) # store x3 (0x064144a8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000064144a8 from memory into f24
fsgnjx.d f14, f18, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x19, 0xf8ce112a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf443eb2f # load x3 with 32 MSBs 0x00000000f443eb2f
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f443eb2f
sw x3, 0(x2) # store x3 (0xf443eb2f) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000f443eb2f from memory into f19
li x3, 0xd4209bfc # load x3 with 32 MSBs 0x00000000d4209bfc
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d4209bfc
sw x3, 0(x2) # store x3 (0xd4209bfc) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000d4209bfc from memory into f25
fsgnjx.d f19, f19, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x6, 0x80e5f81b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0c5565e4 # load x3 with 32 MSBs 0x000000000c5565e4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000c5565e4
sw x3, 0(x2) # store x3 (0x0c5565e4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000000c5565e4 from memory into f20
li x3, 0x7cee4922 # load x3 with 32 MSBs 0x000000007cee4922
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007cee4922
sw x3, 0(x2) # store x3 (0x7cee4922) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000007cee4922 from memory into f23
fsgnjx.d f6, f20, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x6, 0xf98e690a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0114eb06 # load x3 with 32 MSBs 0x000000000114eb06
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000114eb06
sw x3, 0(x2) # store x3 (0x0114eb06) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000000114eb06 from memory into f21
li x3, 0x2aff11ce # load x3 with 32 MSBs 0x000000002aff11ce
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002aff11ce
sw x3, 0(x2) # store x3 (0x2aff11ce) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000002aff11ce from memory into f1
fsgnjx.d f6, f21, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x2, 0x713a508a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x874ae729 # load x3 with 32 MSBs 0x00000000874ae729
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000874ae729
sw x3, 0(x2) # store x3 (0x874ae729) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000874ae729 from memory into f22
li x3, 0x90520f4b # load x3 with 32 MSBs 0x0000000090520f4b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000090520f4b
sw x3, 0(x2) # store x3 (0x90520f4b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000090520f4b from memory into f15
fsgnjx.d f2, f22, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x30, 0x83b58a0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x23035d3a # load x3 with 32 MSBs 0x0000000023035d3a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000023035d3a
sw x3, 0(x2) # store x3 (0x23035d3a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000023035d3a from memory into f23
li x3, 0x2e6f5d26 # load x3 with 32 MSBs 0x000000002e6f5d26
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002e6f5d26
sw x3, 0(x2) # store x3 (0x2e6f5d26) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000002e6f5d26 from memory into f15
fsgnjx.d f30, f23, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x5, 0x2af6d493 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d0935ac # load x3 with 32 MSBs 0x000000007d0935ac
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007d0935ac
sw x3, 0(x2) # store x3 (0x7d0935ac) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000007d0935ac from memory into f24
li x3, 0xeba720b8 # load x3 with 32 MSBs 0x00000000eba720b8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000eba720b8
sw x3, 0(x2) # store x3 (0xeba720b8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000eba720b8 from memory into f7
fsgnjx.d f5, f24, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x24, 0x1defe547 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb0b3ce0 # load x3 with 32 MSBs 0x00000000fb0b3ce0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fb0b3ce0
sw x3, 0(x2) # store x3 (0xfb0b3ce0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000fb0b3ce0 from memory into f25
li x3, 0x0a85e4c6 # load x3 with 32 MSBs 0x000000000a85e4c6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000a85e4c6
sw x3, 0(x2) # store x3 (0x0a85e4c6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000000a85e4c6 from memory into f12
fsgnjx.d f24, f25, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x20, 0xe80d7478 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x757f5128 # load x3 with 32 MSBs 0x00000000757f5128
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000757f5128
sw x3, 0(x2) # store x3 (0x757f5128) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000757f5128 from memory into f26
li x3, 0xbaedd495 # load x3 with 32 MSBs 0x00000000baedd495
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000baedd495
sw x3, 0(x2) # store x3 (0xbaedd495) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000baedd495 from memory into f22
fsgnjx.d f20, f26, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x19, 0x2507ddb0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb7239dba # load x3 with 32 MSBs 0x00000000b7239dba
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b7239dba
sw x3, 0(x2) # store x3 (0xb7239dba) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000b7239dba from memory into f27
li x3, 0xf7a6a786 # load x3 with 32 MSBs 0x00000000f7a6a786
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f7a6a786
sw x3, 0(x2) # store x3 (0xf7a6a786) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000f7a6a786 from memory into f1
fsgnjx.d f19, f27, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x11, 0x412ea513 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x39dcd915 # load x3 with 32 MSBs 0x0000000039dcd915
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000039dcd915
sw x3, 0(x2) # store x3 (0x39dcd915) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000039dcd915 from memory into f28
li x3, 0xc5aba2df # load x3 with 32 MSBs 0x00000000c5aba2df
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c5aba2df
sw x3, 0(x2) # store x3 (0xc5aba2df) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000c5aba2df from memory into f31
fsgnjx.d f11, f28, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x26, 0xe8393d74 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb981193e # load x3 with 32 MSBs 0x00000000b981193e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b981193e
sw x3, 0(x2) # store x3 (0xb981193e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000b981193e from memory into f29
li x3, 0xf604d372 # load x3 with 32 MSBs 0x00000000f604d372
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f604d372
sw x3, 0(x2) # store x3 (0xf604d372) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000f604d372 from memory into f3
fsgnjx.d f26, f29, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x29, 0xd8d91878 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x10568180 # load x3 with 32 MSBs 0x0000000010568180
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000010568180
sw x3, 0(x2) # store x3 (0x10568180) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000010568180 from memory into f30
li x3, 0xda3d3ab6 # load x3 with 32 MSBs 0x00000000da3d3ab6
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000da3d3ab6
sw x3, 0(x2) # store x3 (0xda3d3ab6) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000da3d3ab6 from memory into f31
fsgnjx.d f29, f30, f31 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x21, 0x7963dd48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0a6705db # load x3 with 32 MSBs 0x000000000a6705db
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000a6705db
sw x3, 0(x2) # store x3 (0x0a6705db) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000000a6705db from memory into f31
li x3, 0x9caeef2d # load x3 with 32 MSBs 0x000000009caeef2d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009caeef2d
sw x3, 0(x2) # store x3 (0x9caeef2d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000009caeef2d from memory into f28
fsgnjx.d f21, f31, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f0)
li x20, 0xea29130f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x8bd7ee72 # load x3 with 32 MSBs 0x000000008bd7ee72
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008bd7ee72
sw x3, 0(x2) # store x3 (0x8bd7ee72) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000008bd7ee72 from memory into f12
li x3, 0x6db58a71 # load x3 with 32 MSBs 0x000000006db58a71
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006db58a71
sw x3, 0(x2) # store x3 (0x6db58a71) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x000000006db58a71 from memory into f0
fsgnjx.d f20, f12, f0 # perform operation

# Testcase cp_fs2 (Test source fs2 = f1)
li x24, 0xab12dede # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x470dcc3b # load x3 with 32 MSBs 0x00000000470dcc3b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000470dcc3b
sw x3, 0(x2) # store x3 (0x470dcc3b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000470dcc3b from memory into f31
li x3, 0xedbbcde4 # load x3 with 32 MSBs 0x00000000edbbcde4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000edbbcde4
sw x3, 0(x2) # store x3 (0xedbbcde4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000edbbcde4 from memory into f1
fsgnjx.d f24, f31, f1 # perform operation

# Testcase cp_fs2 (Test source fs2 = f2)
li x27, 0xa90a3819 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xbb68f099 # load x3 with 32 MSBs 0x00000000bb68f099
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bb68f099
sw x3, 0(x2) # store x3 (0xbb68f099) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000bb68f099 from memory into f26
li x3, 0x8687b426 # load x3 with 32 MSBs 0x000000008687b426
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008687b426
sw x3, 0(x2) # store x3 (0x8687b426) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000008687b426 from memory into f2
fsgnjx.d f27, f26, f2 # perform operation

# Testcase cp_fs2 (Test source fs2 = f3)
li x17, 0x4ea18bb6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x6c8090f8 # load x3 with 32 MSBs 0x000000006c8090f8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006c8090f8
sw x3, 0(x2) # store x3 (0x6c8090f8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000006c8090f8 from memory into f13
li x3, 0xcc76605c # load x3 with 32 MSBs 0x00000000cc76605c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cc76605c
sw x3, 0(x2) # store x3 (0xcc76605c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000cc76605c from memory into f3
fsgnjx.d f17, f13, f3 # perform operation

# Testcase cp_fs2 (Test source fs2 = f4)
li x25, 0x38a63f31 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xd4c20495 # load x3 with 32 MSBs 0x00000000d4c20495
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d4c20495
sw x3, 0(x2) # store x3 (0xd4c20495) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000d4c20495 from memory into f24
li x3, 0x0b16731a # load x3 with 32 MSBs 0x000000000b16731a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000b16731a
sw x3, 0(x2) # store x3 (0x0b16731a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x000000000b16731a from memory into f4
fsgnjx.d f25, f24, f4 # perform operation

# Testcase cp_fs2 (Test source fs2 = f5)
li x28, 0x2edd7f88 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f95cf9c # load x3 with 32 MSBs 0x000000005f95cf9c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005f95cf9c
sw x3, 0(x2) # store x3 (0x5f95cf9c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000005f95cf9c from memory into f29
li x3, 0xc1ae80b8 # load x3 with 32 MSBs 0x00000000c1ae80b8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c1ae80b8
sw x3, 0(x2) # store x3 (0xc1ae80b8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000c1ae80b8 from memory into f5
fsgnjx.d f28, f29, f5 # perform operation

# Testcase cp_fs2 (Test source fs2 = f6)
li x7, 0xd196b2af # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x14f507c5 # load x3 with 32 MSBs 0x0000000014f507c5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000014f507c5
sw x3, 0(x2) # store x3 (0x14f507c5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000014f507c5 from memory into f28
li x3, 0x0467ff45 # load x3 with 32 MSBs 0x000000000467ff45
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000467ff45
sw x3, 0(x2) # store x3 (0x0467ff45) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000000467ff45 from memory into f6
fsgnjx.d f7, f28, f6 # perform operation

# Testcase cp_fs2 (Test source fs2 = f7)
li x17, 0x3606d37f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfce284cf # load x3 with 32 MSBs 0x00000000fce284cf
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fce284cf
sw x3, 0(x2) # store x3 (0xfce284cf) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000fce284cf from memory into f8
li x3, 0xb3996cb5 # load x3 with 32 MSBs 0x00000000b3996cb5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b3996cb5
sw x3, 0(x2) # store x3 (0xb3996cb5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000b3996cb5 from memory into f7
fsgnjx.d f17, f8, f7 # perform operation

# Testcase cp_fs2 (Test source fs2 = f8)
li x20, 0x222707e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0970d217 # load x3 with 32 MSBs 0x000000000970d217
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000970d217
sw x3, 0(x2) # store x3 (0x0970d217) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000000970d217 from memory into f31
li x3, 0x554a6a6a # load x3 with 32 MSBs 0x00000000554a6a6a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000554a6a6a
sw x3, 0(x2) # store x3 (0x554a6a6a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000554a6a6a from memory into f8
fsgnjx.d f20, f31, f8 # perform operation

# Testcase cp_fs2 (Test source fs2 = f9)
li x26, 0xa6718cab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5e6e6cb3 # load x3 with 32 MSBs 0x000000005e6e6cb3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005e6e6cb3
sw x3, 0(x2) # store x3 (0x5e6e6cb3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000005e6e6cb3 from memory into f21
li x3, 0x31b88685 # load x3 with 32 MSBs 0x0000000031b88685
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000031b88685
sw x3, 0(x2) # store x3 (0x31b88685) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000031b88685 from memory into f9
fsgnjx.d f26, f21, f9 # perform operation

# Testcase cp_fs2 (Test source fs2 = f10)
li x8, 0x9c42ddaf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x46c2f598 # load x3 with 32 MSBs 0x0000000046c2f598
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000046c2f598
sw x3, 0(x2) # store x3 (0x46c2f598) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000046c2f598 from memory into f27
li x3, 0x050386f9 # load x3 with 32 MSBs 0x00000000050386f9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000050386f9
sw x3, 0(x2) # store x3 (0x050386f9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000050386f9 from memory into f10
fsgnjx.d f8, f27, f10 # perform operation

# Testcase cp_fs2 (Test source fs2 = f11)
li x18, 0x0dad101f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x87b6ddf8 # load x3 with 32 MSBs 0x0000000087b6ddf8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000087b6ddf8
sw x3, 0(x2) # store x3 (0x87b6ddf8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000087b6ddf8 from memory into f16
li x3, 0x68acc3d9 # load x3 with 32 MSBs 0x0000000068acc3d9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000068acc3d9
sw x3, 0(x2) # store x3 (0x68acc3d9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000068acc3d9 from memory into f11
fsgnjx.d f18, f16, f11 # perform operation

# Testcase cp_fs2 (Test source fs2 = f12)
li x17, 0xe901a569 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf326d3a0 # load x3 with 32 MSBs 0x00000000f326d3a0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f326d3a0
sw x3, 0(x2) # store x3 (0xf326d3a0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000f326d3a0 from memory into f9
li x3, 0x15cb1d31 # load x3 with 32 MSBs 0x0000000015cb1d31
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000015cb1d31
sw x3, 0(x2) # store x3 (0x15cb1d31) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000015cb1d31 from memory into f12
fsgnjx.d f17, f9, f12 # perform operation

# Testcase cp_fs2 (Test source fs2 = f13)
li x1, 0x78f27cf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9dc4f1b1 # load x3 with 32 MSBs 0x000000009dc4f1b1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009dc4f1b1
sw x3, 0(x2) # store x3 (0x9dc4f1b1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000009dc4f1b1 from memory into f21
li x3, 0x66cb655e # load x3 with 32 MSBs 0x0000000066cb655e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000066cb655e
sw x3, 0(x2) # store x3 (0x66cb655e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000066cb655e from memory into f13
fsgnjx.d f1, f21, f13 # perform operation

# Testcase cp_fs2 (Test source fs2 = f14)
li x13, 0x515a124f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x71f681ac # load x3 with 32 MSBs 0x0000000071f681ac
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000071f681ac
sw x3, 0(x2) # store x3 (0x71f681ac) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000071f681ac from memory into f17
li x3, 0xa2b69a45 # load x3 with 32 MSBs 0x00000000a2b69a45
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a2b69a45
sw x3, 0(x2) # store x3 (0xa2b69a45) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000a2b69a45 from memory into f14
fsgnjx.d f13, f17, f14 # perform operation

# Testcase cp_fs2 (Test source fs2 = f15)
li x21, 0xfad20a80 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x0a5a4c55 # load x3 with 32 MSBs 0x000000000a5a4c55
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000a5a4c55
sw x3, 0(x2) # store x3 (0x0a5a4c55) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000000a5a4c55 from memory into f22
li x3, 0x60f70985 # load x3 with 32 MSBs 0x0000000060f70985
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000060f70985
sw x3, 0(x2) # store x3 (0x60f70985) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000060f70985 from memory into f15
fsgnjx.d f21, f22, f15 # perform operation

# Testcase cp_fs2 (Test source fs2 = f16)
li x29, 0x99772b72 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfb0e2853 # load x3 with 32 MSBs 0x00000000fb0e2853
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fb0e2853
sw x3, 0(x2) # store x3 (0xfb0e2853) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000fb0e2853 from memory into f9
li x3, 0xaade4010 # load x3 with 32 MSBs 0x00000000aade4010
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000aade4010
sw x3, 0(x2) # store x3 (0xaade4010) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000aade4010 from memory into f16
fsgnjx.d f29, f9, f16 # perform operation

# Testcase cp_fs2 (Test source fs2 = f17)
li x4, 0x8153c6bd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5f99a9d0 # load x3 with 32 MSBs 0x000000005f99a9d0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005f99a9d0
sw x3, 0(x2) # store x3 (0x5f99a9d0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000005f99a9d0 from memory into f7
li x3, 0xcadcabc2 # load x3 with 32 MSBs 0x00000000cadcabc2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cadcabc2
sw x3, 0(x2) # store x3 (0xcadcabc2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000cadcabc2 from memory into f17
fsgnjx.d f4, f7, f17 # perform operation

# Testcase cp_fs2 (Test source fs2 = f18)
li x14, 0x2f0b7e69 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x7d617aaa # load x3 with 32 MSBs 0x000000007d617aaa
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007d617aaa
sw x3, 0(x2) # store x3 (0x7d617aaa) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000007d617aaa from memory into f25
li x3, 0xbfd54016 # load x3 with 32 MSBs 0x00000000bfd54016
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bfd54016
sw x3, 0(x2) # store x3 (0xbfd54016) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000bfd54016 from memory into f18
fsgnjx.d f14, f25, f18 # perform operation

# Testcase cp_fs2 (Test source fs2 = f19)
li x19, 0x807b63f9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf01ee957 # load x3 with 32 MSBs 0x00000000f01ee957
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f01ee957
sw x3, 0(x2) # store x3 (0xf01ee957) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000f01ee957 from memory into f8
li x3, 0x9f4576d0 # load x3 with 32 MSBs 0x000000009f4576d0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009f4576d0
sw x3, 0(x2) # store x3 (0x9f4576d0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000009f4576d0 from memory into f19
fsgnjx.d f19, f8, f19 # perform operation

# Testcase cp_fs2 (Test source fs2 = f20)
li x5, 0x95f330c6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x9be8a046 # load x3 with 32 MSBs 0x000000009be8a046
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000009be8a046
sw x3, 0(x2) # store x3 (0x9be8a046) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000009be8a046 from memory into f26
li x3, 0x09b6067e # load x3 with 32 MSBs 0x0000000009b6067e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000009b6067e
sw x3, 0(x2) # store x3 (0x09b6067e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000009b6067e from memory into f20
fsgnjx.d f5, f26, f20 # perform operation

# Testcase cp_fs2 (Test source fs2 = f21)
li x31, 0x58d1a323 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb217f4a1 # load x3 with 32 MSBs 0x00000000b217f4a1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b217f4a1
sw x3, 0(x2) # store x3 (0xb217f4a1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000b217f4a1 from memory into f23
li x3, 0x22ff82b2 # load x3 with 32 MSBs 0x0000000022ff82b2
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000022ff82b2
sw x3, 0(x2) # store x3 (0x22ff82b2) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000022ff82b2 from memory into f21
fsgnjx.d f31, f23, f21 # perform operation

# Testcase cp_fs2 (Test source fs2 = f22)
li x8, 0x8dd1f9cc # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xfba2b16c # load x3 with 32 MSBs 0x00000000fba2b16c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000fba2b16c
sw x3, 0(x2) # store x3 (0xfba2b16c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000fba2b16c from memory into f28
li x3, 0x45dd561e # load x3 with 32 MSBs 0x0000000045dd561e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000045dd561e
sw x3, 0(x2) # store x3 (0x45dd561e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000045dd561e from memory into f22
fsgnjx.d f8, f28, f22 # perform operation

# Testcase cp_fs2 (Test source fs2 = f23)
li x6, 0xee2cf542 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x12a1cb61 # load x3 with 32 MSBs 0x0000000012a1cb61
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000012a1cb61
sw x3, 0(x2) # store x3 (0x12a1cb61) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000012a1cb61 from memory into f10
li x3, 0xbfa55737 # load x3 with 32 MSBs 0x00000000bfa55737
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bfa55737
sw x3, 0(x2) # store x3 (0xbfa55737) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000bfa55737 from memory into f23
fsgnjx.d f6, f10, f23 # perform operation

# Testcase cp_fs2 (Test source fs2 = f24)
li x12, 0x77bf5612 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xb4cd9380 # load x3 with 32 MSBs 0x00000000b4cd9380
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b4cd9380
sw x3, 0(x2) # store x3 (0xb4cd9380) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000b4cd9380 from memory into f28
li x3, 0x4ac4306a # load x3 with 32 MSBs 0x000000004ac4306a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004ac4306a
sw x3, 0(x2) # store x3 (0x4ac4306a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000004ac4306a from memory into f24
fsgnjx.d f12, f28, f24 # perform operation

# Testcase cp_fs2 (Test source fs2 = f25)
li x30, 0x3c804cf2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x19c34e76 # load x3 with 32 MSBs 0x0000000019c34e76
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000019c34e76
sw x3, 0(x2) # store x3 (0x19c34e76) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000019c34e76 from memory into f3
li x3, 0x67af92c3 # load x3 with 32 MSBs 0x0000000067af92c3
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000067af92c3
sw x3, 0(x2) # store x3 (0x67af92c3) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000067af92c3 from memory into f25
fsgnjx.d f30, f3, f25 # perform operation

# Testcase cp_fs2 (Test source fs2 = f26)
li x26, 0x886e1f0a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xedb308da # load x3 with 32 MSBs 0x00000000edb308da
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000edb308da
sw x3, 0(x2) # store x3 (0xedb308da) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000edb308da from memory into f23
li x3, 0x927fc560 # load x3 with 32 MSBs 0x00000000927fc560
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000927fc560
sw x3, 0(x2) # store x3 (0x927fc560) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000927fc560 from memory into f26
fsgnjx.d f26, f23, f26 # perform operation

# Testcase cp_fs2 (Test source fs2 = f27)
li x25, 0xb6fbb5fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x77018427 # load x3 with 32 MSBs 0x0000000077018427
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000077018427
sw x3, 0(x2) # store x3 (0x77018427) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000077018427 from memory into f19
li x3, 0xc5439d7d # load x3 with 32 MSBs 0x00000000c5439d7d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c5439d7d
sw x3, 0(x2) # store x3 (0xc5439d7d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000c5439d7d from memory into f27
fsgnjx.d f25, f19, f27 # perform operation

# Testcase cp_fs2 (Test source fs2 = f28)
li x2, 0x5deccaa6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xf6ea682c # load x3 with 32 MSBs 0x00000000f6ea682c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000f6ea682c
sw x3, 0(x2) # store x3 (0xf6ea682c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000f6ea682c from memory into f13
li x3, 0x933bfbda # load x3 with 32 MSBs 0x00000000933bfbda
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000933bfbda
sw x3, 0(x2) # store x3 (0x933bfbda) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000933bfbda from memory into f28
fsgnjx.d f2, f13, f28 # perform operation

# Testcase cp_fs2 (Test source fs2 = f29)
li x28, 0x80b2237c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x5610e6ed # load x3 with 32 MSBs 0x000000005610e6ed
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005610e6ed
sw x3, 0(x2) # store x3 (0x5610e6ed) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000005610e6ed from memory into f14
li x3, 0x0e01d99b # load x3 with 32 MSBs 0x000000000e01d99b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000e01d99b
sw x3, 0(x2) # store x3 (0x0e01d99b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000000e01d99b from memory into f29
fsgnjx.d f28, f14, f29 # perform operation

# Testcase cp_fs2 (Test source fs2 = f30)
li x5, 0xbe58d6f2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0x38abbe8a # load x3 with 32 MSBs 0x0000000038abbe8a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000038abbe8a
sw x3, 0(x2) # store x3 (0x38abbe8a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000038abbe8a from memory into f7
li x3, 0x62ed569b # load x3 with 32 MSBs 0x0000000062ed569b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000062ed569b
sw x3, 0(x2) # store x3 (0x62ed569b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000062ed569b from memory into f30
fsgnjx.d f5, f7, f30 # perform operation

# Testcase cp_fs2 (Test source fs2 = f31)
li x8, 0x4cb9752d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch
li x3, 0xa1961953 # load x3 with 32 MSBs 0x00000000a1961953
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a1961953
sw x3, 0(x2) # store x3 (0xa1961953) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000a1961953 from memory into f28
li x3, 0xbe0097c7 # load x3 with 32 MSBs 0x00000000be0097c7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000be0097c7
sw x3, 0(x2) # store x3 (0xbe0097c7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000be0097c7 from memory into f31
fsgnjx.d f8, f28, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
