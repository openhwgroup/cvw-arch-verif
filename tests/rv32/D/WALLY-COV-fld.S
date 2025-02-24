///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/D//WALLY-COV-fld.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.873098
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


# Testcase cp_rs1 (Test source rs1 = x1)
li x11, 0xfa244a11 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x1, scratch # base address 
addi x1, x1, 1002 # sub immediate from rs1 to counter offset
li x23, 0x00000000 # load x3 with 32 LSBs of 0x000000005a0312da
li x2, 0x5a0312da # load x3 with 32 MSBs 0x000000005a0312da
sw x23, -1002(x1) # store x3 (0x00000000) in memory
addi x1, x1, 4 # move address up by 4
sw x2, -1002(x1) # store x4 (0x5a0312da) in memory 4 bytes after x3
addi x1, x1, - 4 # move back to scratch
fld f11, -1002(x1) # perform operation

# Testcase cp_rs1 (Test source rs1 = x2)
li x30, 0xfd2834d8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
addi x2, x2, 435 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000a6e0a12d
li x8, 0xa6e0a12d # load x3 with 32 MSBs 0x00000000a6e0a12d
sw x1, -435(x2) # store x3 (0x00000000) in memory
addi x2, x2, 4 # move address up by 4
sw x8, -435(x2) # store x4 (0xa6e0a12d) in memory 4 bytes after x3
addi x2, x2, - 4 # move back to scratch
fld f30, -435(x2) # perform operation

# Testcase cp_rs1 (Test source rs1 = x3)
li x22, 0x31cad90f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, scratch # base address 
addi x3, x3, 896 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x000000003c447afc
li x2, 0x3c447afc # load x3 with 32 MSBs 0x000000003c447afc
sw x1, -896(x3) # store x3 (0x00000000) in memory
addi x3, x3, 4 # move address up by 4
sw x2, -896(x3) # store x4 (0x3c447afc) in memory 4 bytes after x3
addi x3, x3, - 4 # move back to scratch
fld f22, -896(x3) # perform operation

# Testcase cp_rs1 (Test source rs1 = x4)
li x25, 0x39cdd5f1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x4, scratch # base address 
addi x4, x4, 889 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x0000000043e8173c
li x20, 0x43e8173c # load x3 with 32 MSBs 0x0000000043e8173c
sw x1, -889(x4) # store x3 (0x00000000) in memory
addi x4, x4, 4 # move address up by 4
sw x20, -889(x4) # store x4 (0x43e8173c) in memory 4 bytes after x3
addi x4, x4, - 4 # move back to scratch
fld f25, -889(x4) # perform operation

# Testcase cp_rs1 (Test source rs1 = x5)
li x25, 0x0ef59cbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x5, scratch # base address 
addi x5, x5, 1114 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000b4a27f70
li x2, 0xb4a27f70 # load x3 with 32 MSBs 0x00000000b4a27f70
sw x1, -1114(x5) # store x3 (0x00000000) in memory
addi x5, x5, 4 # move address up by 4
sw x2, -1114(x5) # store x4 (0xb4a27f70) in memory 4 bytes after x3
addi x5, x5, - 4 # move back to scratch
fld f25, -1114(x5) # perform operation

# Testcase cp_rs1 (Test source rs1 = x6)
li x27, 0xcc9043a3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x6, scratch # base address 
addi x6, x6, 1744 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000be3ca6c2
li x2, 0xbe3ca6c2 # load x3 with 32 MSBs 0x00000000be3ca6c2
sw x1, -1744(x6) # store x3 (0x00000000) in memory
addi x6, x6, 4 # move address up by 4
sw x2, -1744(x6) # store x4 (0xbe3ca6c2) in memory 4 bytes after x3
addi x6, x6, - 4 # move back to scratch
fld f27, -1744(x6) # perform operation

# Testcase cp_rs1 (Test source rs1 = x7)
li x5, 0x2365dbce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x7, scratch # base address 
addi x7, x7, 608 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000a8d43ace
li x2, 0xa8d43ace # load x3 with 32 MSBs 0x00000000a8d43ace
sw x1, -608(x7) # store x3 (0x00000000) in memory
addi x7, x7, 4 # move address up by 4
sw x2, -608(x7) # store x4 (0xa8d43ace) in memory 4 bytes after x3
addi x7, x7, - 4 # move back to scratch
fld f5, -608(x7) # perform operation

# Testcase cp_rs1 (Test source rs1 = x8)
li x28, 0xe88a95d3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x8, scratch # base address 
addi x8, x8, -1669 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000a1b0cfd0
li x2, 0xa1b0cfd0 # load x3 with 32 MSBs 0x00000000a1b0cfd0
sw x1, 1669(x8) # store x3 (0x00000000) in memory
addi x8, x8, 4 # move address up by 4
sw x2, 1669(x8) # store x4 (0xa1b0cfd0) in memory 4 bytes after x3
addi x8, x8, - 4 # move back to scratch
fld f28, 1669(x8) # perform operation

# Testcase cp_rs1 (Test source rs1 = x9)
li x29, 0x1575c469 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address 
addi x9, x9, -801 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x000000008d9fd6be
li x2, 0x8d9fd6be # load x3 with 32 MSBs 0x000000008d9fd6be
sw x1, 801(x9) # store x3 (0x00000000) in memory
addi x9, x9, 4 # move address up by 4
sw x2, 801(x9) # store x4 (0x8d9fd6be) in memory 4 bytes after x3
addi x9, x9, - 4 # move back to scratch
fld f29, 801(x9) # perform operation

# Testcase cp_rs1 (Test source rs1 = x10)
li x21, 0xc18a6240 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address 
addi x10, x10, -1792 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x000000008a14c3bd
li x2, 0x8a14c3bd # load x3 with 32 MSBs 0x000000008a14c3bd
sw x1, 1792(x10) # store x3 (0x00000000) in memory
addi x10, x10, 4 # move address up by 4
sw x2, 1792(x10) # store x4 (0x8a14c3bd) in memory 4 bytes after x3
addi x10, x10, - 4 # move back to scratch
fld f21, 1792(x10) # perform operation

# Testcase cp_rs1 (Test source rs1 = x11)
li x16, 0xe60b0411 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address 
addi x11, x11, -1257 # sub immediate from rs1 to counter offset
li x14, 0x00000000 # load x3 with 32 LSBs of 0x00000000170cd183
li x2, 0x170cd183 # load x3 with 32 MSBs 0x00000000170cd183
sw x14, 1257(x11) # store x3 (0x00000000) in memory
addi x11, x11, 4 # move address up by 4
sw x2, 1257(x11) # store x4 (0x170cd183) in memory 4 bytes after x3
addi x11, x11, - 4 # move back to scratch
fld f16, 1257(x11) # perform operation

# Testcase cp_rs1 (Test source rs1 = x12)
li x24, 0x775fc2fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address 
addi x12, x12, 1498 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000cf139419
li x2, 0xcf139419 # load x3 with 32 MSBs 0x00000000cf139419
sw x1, -1498(x12) # store x3 (0x00000000) in memory
addi x12, x12, 4 # move address up by 4
sw x2, -1498(x12) # store x4 (0xcf139419) in memory 4 bytes after x3
addi x12, x12, - 4 # move back to scratch
fld f24, -1498(x12) # perform operation

# Testcase cp_rs1 (Test source rs1 = x13)
li x11, 0xfdf7e6ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address 
addi x13, x13, -1224 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000b9d55437
li x2, 0xb9d55437 # load x3 with 32 MSBs 0x00000000b9d55437
sw x1, 1224(x13) # store x3 (0x00000000) in memory
addi x13, x13, 4 # move address up by 4
sw x2, 1224(x13) # store x4 (0xb9d55437) in memory 4 bytes after x3
addi x13, x13, - 4 # move back to scratch
fld f11, 1224(x13) # perform operation

# Testcase cp_rs1 (Test source rs1 = x14)
li x18, 0x6871f18f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x14, scratch # base address 
addi x14, x14, 391 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000b824b9da
li x2, 0xb824b9da # load x3 with 32 MSBs 0x00000000b824b9da
sw x1, -391(x14) # store x3 (0x00000000) in memory
addi x14, x14, 4 # move address up by 4
sw x2, -391(x14) # store x4 (0xb824b9da) in memory 4 bytes after x3
addi x14, x14, - 4 # move back to scratch
fld f18, -391(x14) # perform operation

# Testcase cp_rs1 (Test source rs1 = x15)
li x2, 0x15a14b48 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x15, scratch # base address 
addi x15, x15, -339 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x000000002dad5d5c
li x2, 0x2dad5d5c # load x3 with 32 MSBs 0x000000002dad5d5c
sw x1, 339(x15) # store x3 (0x00000000) in memory
addi x15, x15, 4 # move address up by 4
sw x2, 339(x15) # store x4 (0x2dad5d5c) in memory 4 bytes after x3
addi x15, x15, - 4 # move back to scratch
fld f2, 339(x15) # perform operation

# Testcase cp_rs1 (Test source rs1 = x16)
li x17, 0xa691806e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x16, scratch # base address 
addi x16, x16, -1918 # sub immediate from rs1 to counter offset
li x11, 0x00000000 # load x3 with 32 LSBs of 0x000000009f1a04da
li x2, 0x9f1a04da # load x3 with 32 MSBs 0x000000009f1a04da
sw x11, 1918(x16) # store x3 (0x00000000) in memory
addi x16, x16, 4 # move address up by 4
sw x2, 1918(x16) # store x4 (0x9f1a04da) in memory 4 bytes after x3
addi x16, x16, - 4 # move back to scratch
fld f17, 1918(x16) # perform operation

# Testcase cp_rs1 (Test source rs1 = x17)
li x6, 0xfa3cda41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x17, scratch # base address 
addi x17, x17, 171 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x000000004a1f4851
li x2, 0x4a1f4851 # load x3 with 32 MSBs 0x000000004a1f4851
sw x1, -171(x17) # store x3 (0x00000000) in memory
addi x17, x17, 4 # move address up by 4
sw x2, -171(x17) # store x4 (0x4a1f4851) in memory 4 bytes after x3
addi x17, x17, - 4 # move back to scratch
fld f6, -171(x17) # perform operation

# Testcase cp_rs1 (Test source rs1 = x18)
li x20, 0x94bf0bf0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x18, scratch # base address 
addi x18, x18, 1473 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x000000007823264f
li x7, 0x7823264f # load x3 with 32 MSBs 0x000000007823264f
sw x1, -1473(x18) # store x3 (0x00000000) in memory
addi x18, x18, 4 # move address up by 4
sw x7, -1473(x18) # store x4 (0x7823264f) in memory 4 bytes after x3
addi x18, x18, - 4 # move back to scratch
fld f20, -1473(x18) # perform operation

# Testcase cp_rs1 (Test source rs1 = x19)
li x14, 0x62711fa3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x19, scratch # base address 
addi x19, x19, -260 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x000000000dd0b927
li x2, 0x0dd0b927 # load x3 with 32 MSBs 0x000000000dd0b927
sw x1, 260(x19) # store x3 (0x00000000) in memory
addi x19, x19, 4 # move address up by 4
sw x2, 260(x19) # store x4 (0x0dd0b927) in memory 4 bytes after x3
addi x19, x19, - 4 # move back to scratch
fld f14, 260(x19) # perform operation

# Testcase cp_rs1 (Test source rs1 = x20)
li x16, 0x698bd2d1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x20, scratch # base address 
addi x20, x20, 846 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000adb8bfae
li x2, 0xadb8bfae # load x3 with 32 MSBs 0x00000000adb8bfae
sw x1, -846(x20) # store x3 (0x00000000) in memory
addi x20, x20, 4 # move address up by 4
sw x2, -846(x20) # store x4 (0xadb8bfae) in memory 4 bytes after x3
addi x20, x20, - 4 # move back to scratch
fld f16, -846(x20) # perform operation

# Testcase cp_rs1 (Test source rs1 = x21)
li x25, 0x30f9a834 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x21, scratch # base address 
addi x21, x21, -761 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000a9642323
li x2, 0xa9642323 # load x3 with 32 MSBs 0x00000000a9642323
sw x1, 761(x21) # store x3 (0x00000000) in memory
addi x21, x21, 4 # move address up by 4
sw x2, 761(x21) # store x4 (0xa9642323) in memory 4 bytes after x3
addi x21, x21, - 4 # move back to scratch
fld f25, 761(x21) # perform operation

# Testcase cp_rs1 (Test source rs1 = x22)
li x28, 0xe76ea998 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x22, scratch # base address 
addi x22, x22, 1506 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x000000000b78122b
li x2, 0x0b78122b # load x3 with 32 MSBs 0x000000000b78122b
sw x1, -1506(x22) # store x3 (0x00000000) in memory
addi x22, x22, 4 # move address up by 4
sw x2, -1506(x22) # store x4 (0x0b78122b) in memory 4 bytes after x3
addi x22, x22, - 4 # move back to scratch
fld f28, -1506(x22) # perform operation

# Testcase cp_rs1 (Test source rs1 = x23)
li x13, 0x683165ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x23, scratch # base address 
addi x23, x23, 652 # sub immediate from rs1 to counter offset
li x19, 0x00000000 # load x3 with 32 LSBs of 0x00000000cfb482ae
li x2, 0xcfb482ae # load x3 with 32 MSBs 0x00000000cfb482ae
sw x19, -652(x23) # store x3 (0x00000000) in memory
addi x23, x23, 4 # move address up by 4
sw x2, -652(x23) # store x4 (0xcfb482ae) in memory 4 bytes after x3
addi x23, x23, - 4 # move back to scratch
fld f13, -652(x23) # perform operation

# Testcase cp_rs1 (Test source rs1 = x24)
li x4, 0x07579223 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x24, scratch # base address 
addi x24, x24, -36 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x000000009452da28
li x2, 0x9452da28 # load x3 with 32 MSBs 0x000000009452da28
sw x1, 36(x24) # store x3 (0x00000000) in memory
addi x24, x24, 4 # move address up by 4
sw x2, 36(x24) # store x4 (0x9452da28) in memory 4 bytes after x3
addi x24, x24, - 4 # move back to scratch
fld f4, 36(x24) # perform operation

# Testcase cp_rs1 (Test source rs1 = x25)
li x29, 0xd7f80184 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x25, scratch # base address 
addi x25, x25, -848 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000237dc46f
li x2, 0x237dc46f # load x3 with 32 MSBs 0x00000000237dc46f
sw x1, 848(x25) # store x3 (0x00000000) in memory
addi x25, x25, 4 # move address up by 4
sw x2, 848(x25) # store x4 (0x237dc46f) in memory 4 bytes after x3
addi x25, x25, - 4 # move back to scratch
fld f29, 848(x25) # perform operation

# Testcase cp_rs1 (Test source rs1 = x26)
li x2, 0xdcd3bc1a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x26, scratch # base address 
addi x26, x26, 1419 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x0000000084b659b9
li x2, 0x84b659b9 # load x3 with 32 MSBs 0x0000000084b659b9
sw x1, -1419(x26) # store x3 (0x00000000) in memory
addi x26, x26, 4 # move address up by 4
sw x2, -1419(x26) # store x4 (0x84b659b9) in memory 4 bytes after x3
addi x26, x26, - 4 # move back to scratch
fld f2, -1419(x26) # perform operation

# Testcase cp_rs1 (Test source rs1 = x27)
li x17, 0x56abf7c8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x27, scratch # base address 
addi x27, x27, -604 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000d9f5aeb1
li x2, 0xd9f5aeb1 # load x3 with 32 MSBs 0x00000000d9f5aeb1
sw x1, 604(x27) # store x3 (0x00000000) in memory
addi x27, x27, 4 # move address up by 4
sw x2, 604(x27) # store x4 (0xd9f5aeb1) in memory 4 bytes after x3
addi x27, x27, - 4 # move back to scratch
fld f17, 604(x27) # perform operation

# Testcase cp_rs1 (Test source rs1 = x28)
li x2, 0xd25aefe8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x28, scratch # base address 
addi x28, x28, 216 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x0000000092c3353f
li x2, 0x92c3353f # load x3 with 32 MSBs 0x0000000092c3353f
sw x1, -216(x28) # store x3 (0x00000000) in memory
addi x28, x28, 4 # move address up by 4
sw x2, -216(x28) # store x4 (0x92c3353f) in memory 4 bytes after x3
addi x28, x28, - 4 # move back to scratch
fld f2, -216(x28) # perform operation

# Testcase cp_rs1 (Test source rs1 = x29)
li x30, 0x846c18e2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x29, scratch # base address 
addi x29, x29, 1305 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x0000000085551399
li x2, 0x85551399 # load x3 with 32 MSBs 0x0000000085551399
sw x1, -1305(x29) # store x3 (0x00000000) in memory
addi x29, x29, 4 # move address up by 4
sw x2, -1305(x29) # store x4 (0x85551399) in memory 4 bytes after x3
addi x29, x29, - 4 # move back to scratch
fld f30, -1305(x29) # perform operation

# Testcase cp_rs1 (Test source rs1 = x30)
li x9, 0x96b85bd2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, scratch # base address 
addi x30, x30, 261 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x000000009310c0fa
li x2, 0x9310c0fa # load x3 with 32 MSBs 0x000000009310c0fa
sw x1, -261(x30) # store x3 (0x00000000) in memory
addi x30, x30, 4 # move address up by 4
sw x2, -261(x30) # store x4 (0x9310c0fa) in memory 4 bytes after x3
addi x30, x30, - 4 # move back to scratch
fld f9, -261(x30) # perform operation

# Testcase cp_rs1 (Test source rs1 = x31)
li x2, 0x34e6b4d6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x31, scratch # base address 
addi x31, x31, 538 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000f4a8be8e
li x2, 0xf4a8be8e # load x3 with 32 MSBs 0x00000000f4a8be8e
sw x1, -538(x31) # store x3 (0x00000000) in memory
addi x31, x31, 4 # move address up by 4
sw x2, -538(x31) # store x4 (0xf4a8be8e) in memory 4 bytes after x3
addi x31, x31, - 4 # move back to scratch
fld f2, -538(x31) # perform operation

# Testcase cp_imm_zero
li x4, 0x0a22acc7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address 
addi x12, x12, 0 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x0000000043f7d801
li x2, 0x43f7d801 # load x3 with 32 MSBs 0x0000000043f7d801
sw x1, 0(x12) # store x3 (0x00000000) in memory
addi x12, x12, 4 # move address up by 4
sw x2, 0(x12) # store x4 (0x43f7d801) in memory 4 bytes after x3
addi x12, x12, - 4 # move back to scratch
fld f4, 0(x12) # perform operation

# Testcase cp_fd (Test destination fd = x0)
li x0, 0x7ff3ab03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x5, scratch # base address 
addi x5, x5, 1731 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x000000004aafa931
li x2, 0x4aafa931 # load x3 with 32 MSBs 0x000000004aafa931
sw x1, -1731(x5) # store x3 (0x00000000) in memory
addi x5, x5, 4 # move address up by 4
sw x2, -1731(x5) # store x4 (0x4aafa931) in memory 4 bytes after x3
addi x5, x5, - 4 # move back to scratch
fld f0, -1731(x5) # perform operation

# Testcase cp_fd (Test destination fd = x1)
li x1, 0x41ec6924 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x19, scratch # base address 
addi x19, x19, 1614 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000e6f6de08
li x2, 0xe6f6de08 # load x3 with 32 MSBs 0x00000000e6f6de08
sw x1, -1614(x19) # store x3 (0x00000000) in memory
addi x19, x19, 4 # move address up by 4
sw x2, -1614(x19) # store x4 (0xe6f6de08) in memory 4 bytes after x3
addi x19, x19, - 4 # move back to scratch
fld f1, -1614(x19) # perform operation

# Testcase cp_fd (Test destination fd = x2)
li x2, 0xecc491e8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x7, scratch # base address 
addi x7, x7, -1150 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000a2b9843b
li x2, 0xa2b9843b # load x3 with 32 MSBs 0x00000000a2b9843b
sw x1, 1150(x7) # store x3 (0x00000000) in memory
addi x7, x7, 4 # move address up by 4
sw x2, 1150(x7) # store x4 (0xa2b9843b) in memory 4 bytes after x3
addi x7, x7, - 4 # move back to scratch
fld f2, 1150(x7) # perform operation

# Testcase cp_fd (Test destination fd = x3)
li x3, 0x8da6ec86 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x21, scratch # base address 
addi x21, x21, 787 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x0000000048235e97
li x2, 0x48235e97 # load x3 with 32 MSBs 0x0000000048235e97
sw x1, -787(x21) # store x3 (0x00000000) in memory
addi x21, x21, 4 # move address up by 4
sw x2, -787(x21) # store x4 (0x48235e97) in memory 4 bytes after x3
addi x21, x21, - 4 # move back to scratch
fld f3, -787(x21) # perform operation

# Testcase cp_fd (Test destination fd = x4)
li x4, 0x4b9f32a6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x27, scratch # base address 
addi x27, x27, -1807 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000d74b8cc3
li x2, 0xd74b8cc3 # load x3 with 32 MSBs 0x00000000d74b8cc3
sw x1, 1807(x27) # store x3 (0x00000000) in memory
addi x27, x27, 4 # move address up by 4
sw x2, 1807(x27) # store x4 (0xd74b8cc3) in memory 4 bytes after x3
addi x27, x27, - 4 # move back to scratch
fld f4, 1807(x27) # perform operation

# Testcase cp_fd (Test destination fd = x5)
li x5, 0x62ec33eb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x23, scratch # base address 
addi x23, x23, -1504 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x0000000071d3e5f4
li x2, 0x71d3e5f4 # load x3 with 32 MSBs 0x0000000071d3e5f4
sw x1, 1504(x23) # store x3 (0x00000000) in memory
addi x23, x23, 4 # move address up by 4
sw x2, 1504(x23) # store x4 (0x71d3e5f4) in memory 4 bytes after x3
addi x23, x23, - 4 # move back to scratch
fld f5, 1504(x23) # perform operation

# Testcase cp_fd (Test destination fd = x6)
li x6, 0xf1e5908d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address 
addi x13, x13, -699 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000d4ae7a7a
li x2, 0xd4ae7a7a # load x3 with 32 MSBs 0x00000000d4ae7a7a
sw x1, 699(x13) # store x3 (0x00000000) in memory
addi x13, x13, 4 # move address up by 4
sw x2, 699(x13) # store x4 (0xd4ae7a7a) in memory 4 bytes after x3
addi x13, x13, - 4 # move back to scratch
fld f6, 699(x13) # perform operation

# Testcase cp_fd (Test destination fd = x7)
li x7, 0xfc74f5b1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x5, scratch # base address 
addi x5, x5, 1324 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000bc833d3b
li x2, 0xbc833d3b # load x3 with 32 MSBs 0x00000000bc833d3b
sw x1, -1324(x5) # store x3 (0x00000000) in memory
addi x5, x5, 4 # move address up by 4
sw x2, -1324(x5) # store x4 (0xbc833d3b) in memory 4 bytes after x3
addi x5, x5, - 4 # move back to scratch
fld f7, -1324(x5) # perform operation

# Testcase cp_fd (Test destination fd = x8)
li x8, 0xf8094ff9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x13, scratch # base address 
addi x13, x13, 1354 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x0000000011ae2f61
li x2, 0x11ae2f61 # load x3 with 32 MSBs 0x0000000011ae2f61
sw x1, -1354(x13) # store x3 (0x00000000) in memory
addi x13, x13, 4 # move address up by 4
sw x2, -1354(x13) # store x4 (0x11ae2f61) in memory 4 bytes after x3
addi x13, x13, - 4 # move back to scratch
fld f8, -1354(x13) # perform operation

# Testcase cp_fd (Test destination fd = x9)
li x9, 0xbf460c63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x27, scratch # base address 
addi x27, x27, 1377 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000b3dd76d7
li x2, 0xb3dd76d7 # load x3 with 32 MSBs 0x00000000b3dd76d7
sw x1, -1377(x27) # store x3 (0x00000000) in memory
addi x27, x27, 4 # move address up by 4
sw x2, -1377(x27) # store x4 (0xb3dd76d7) in memory 4 bytes after x3
addi x27, x27, - 4 # move back to scratch
fld f9, -1377(x27) # perform operation

# Testcase cp_fd (Test destination fd = x10)
li x10, 0x8e0290b7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x25, scratch # base address 
addi x25, x25, -1342 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000052c5905
li x2, 0x052c5905 # load x3 with 32 MSBs 0x00000000052c5905
sw x1, 1342(x25) # store x3 (0x00000000) in memory
addi x25, x25, 4 # move address up by 4
sw x2, 1342(x25) # store x4 (0x052c5905) in memory 4 bytes after x3
addi x25, x25, - 4 # move back to scratch
fld f10, 1342(x25) # perform operation

# Testcase cp_fd (Test destination fd = x11)
li x11, 0x05968bd5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x5, scratch # base address 
addi x5, x5, 133 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x000000002dafa50a
li x2, 0x2dafa50a # load x3 with 32 MSBs 0x000000002dafa50a
sw x1, -133(x5) # store x3 (0x00000000) in memory
addi x5, x5, 4 # move address up by 4
sw x2, -133(x5) # store x4 (0x2dafa50a) in memory 4 bytes after x3
addi x5, x5, - 4 # move back to scratch
fld f11, -133(x5) # perform operation

# Testcase cp_fd (Test destination fd = x12)
li x12, 0x3bab2df7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x18, scratch # base address 
addi x18, x18, 1717 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x000000004706e017
li x2, 0x4706e017 # load x3 with 32 MSBs 0x000000004706e017
sw x1, -1717(x18) # store x3 (0x00000000) in memory
addi x18, x18, 4 # move address up by 4
sw x2, -1717(x18) # store x4 (0x4706e017) in memory 4 bytes after x3
addi x18, x18, - 4 # move back to scratch
fld f12, -1717(x18) # perform operation

# Testcase cp_fd (Test destination fd = x13)
li x13, 0x94993a14 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x6, scratch # base address 
addi x6, x6, 1435 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000bfc2db23
li x2, 0xbfc2db23 # load x3 with 32 MSBs 0x00000000bfc2db23
sw x1, -1435(x6) # store x3 (0x00000000) in memory
addi x6, x6, 4 # move address up by 4
sw x2, -1435(x6) # store x4 (0xbfc2db23) in memory 4 bytes after x3
addi x6, x6, - 4 # move back to scratch
fld f13, -1435(x6) # perform operation

# Testcase cp_fd (Test destination fd = x14)
li x14, 0x77b417f3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x28, scratch # base address 
addi x28, x28, -804 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x000000009b218595
li x2, 0x9b218595 # load x3 with 32 MSBs 0x000000009b218595
sw x1, 804(x28) # store x3 (0x00000000) in memory
addi x28, x28, 4 # move address up by 4
sw x2, 804(x28) # store x4 (0x9b218595) in memory 4 bytes after x3
addi x28, x28, - 4 # move back to scratch
fld f14, 804(x28) # perform operation

# Testcase cp_fd (Test destination fd = x15)
li x15, 0xb18934d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x10, scratch # base address 
addi x10, x10, 1122 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x000000001d66169a
li x2, 0x1d66169a # load x3 with 32 MSBs 0x000000001d66169a
sw x1, -1122(x10) # store x3 (0x00000000) in memory
addi x10, x10, 4 # move address up by 4
sw x2, -1122(x10) # store x4 (0x1d66169a) in memory 4 bytes after x3
addi x10, x10, - 4 # move back to scratch
fld f15, -1122(x10) # perform operation

# Testcase cp_fd (Test destination fd = x16)
li x16, 0x6f9bd7c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x4, scratch # base address 
addi x4, x4, 1620 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x0000000084f027ff
li x2, 0x84f027ff # load x3 with 32 MSBs 0x0000000084f027ff
sw x1, -1620(x4) # store x3 (0x00000000) in memory
addi x4, x4, 4 # move address up by 4
sw x2, -1620(x4) # store x4 (0x84f027ff) in memory 4 bytes after x3
addi x4, x4, - 4 # move back to scratch
fld f16, -1620(x4) # perform operation

# Testcase cp_fd (Test destination fd = x17)
li x17, 0x59007cf9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address 
addi x9, x9, 593 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000fae0b6e9
li x2, 0xfae0b6e9 # load x3 with 32 MSBs 0x00000000fae0b6e9
sw x1, -593(x9) # store x3 (0x00000000) in memory
addi x9, x9, 4 # move address up by 4
sw x2, -593(x9) # store x4 (0xfae0b6e9) in memory 4 bytes after x3
addi x9, x9, - 4 # move back to scratch
fld f17, -593(x9) # perform operation

# Testcase cp_fd (Test destination fd = x18)
li x18, 0x54f2244b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x20, scratch # base address 
addi x20, x20, -800 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000de95c8a8
li x2, 0xde95c8a8 # load x3 with 32 MSBs 0x00000000de95c8a8
sw x1, 800(x20) # store x3 (0x00000000) in memory
addi x20, x20, 4 # move address up by 4
sw x2, 800(x20) # store x4 (0xde95c8a8) in memory 4 bytes after x3
addi x20, x20, - 4 # move back to scratch
fld f18, 800(x20) # perform operation

# Testcase cp_fd (Test destination fd = x19)
li x19, 0xe79851a1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x11, scratch # base address 
addi x11, x11, 955 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x0000000064bd2c9c
li x2, 0x64bd2c9c # load x3 with 32 MSBs 0x0000000064bd2c9c
sw x1, -955(x11) # store x3 (0x00000000) in memory
addi x11, x11, 4 # move address up by 4
sw x2, -955(x11) # store x4 (0x64bd2c9c) in memory 4 bytes after x3
addi x11, x11, - 4 # move back to scratch
fld f19, -955(x11) # perform operation

# Testcase cp_fd (Test destination fd = x20)
li x20, 0xf426ee0f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, scratch # base address 
addi x30, x30, 67 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000b04608f9
li x2, 0xb04608f9 # load x3 with 32 MSBs 0x00000000b04608f9
sw x1, -67(x30) # store x3 (0x00000000) in memory
addi x30, x30, 4 # move address up by 4
sw x2, -67(x30) # store x4 (0xb04608f9) in memory 4 bytes after x3
addi x30, x30, - 4 # move back to scratch
fld f20, -67(x30) # perform operation

# Testcase cp_fd (Test destination fd = x21)
li x21, 0xa4888dc8 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x19, scratch # base address 
addi x19, x19, -1226 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000f182456c
li x2, 0xf182456c # load x3 with 32 MSBs 0x00000000f182456c
sw x1, 1226(x19) # store x3 (0x00000000) in memory
addi x19, x19, 4 # move address up by 4
sw x2, 1226(x19) # store x4 (0xf182456c) in memory 4 bytes after x3
addi x19, x19, - 4 # move back to scratch
fld f21, 1226(x19) # perform operation

# Testcase cp_fd (Test destination fd = x22)
li x22, 0xb1da52fb # initialize rd to a random value that should get changed; helps covering rd_toggle
la x12, scratch # base address 
addi x12, x12, -1079 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x0000000002d6e861
li x2, 0x02d6e861 # load x3 with 32 MSBs 0x0000000002d6e861
sw x1, 1079(x12) # store x3 (0x00000000) in memory
addi x12, x12, 4 # move address up by 4
sw x2, 1079(x12) # store x4 (0x02d6e861) in memory 4 bytes after x3
addi x12, x12, - 4 # move back to scratch
fld f22, 1079(x12) # perform operation

# Testcase cp_fd (Test destination fd = x23)
li x23, 0x43edc696 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x30, scratch # base address 
addi x30, x30, -1779 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000b0980c1a
li x2, 0xb0980c1a # load x3 with 32 MSBs 0x00000000b0980c1a
sw x1, 1779(x30) # store x3 (0x00000000) in memory
addi x30, x30, 4 # move address up by 4
sw x2, 1779(x30) # store x4 (0xb0980c1a) in memory 4 bytes after x3
addi x30, x30, - 4 # move back to scratch
fld f23, 1779(x30) # perform operation

# Testcase cp_fd (Test destination fd = x24)
li x24, 0xc1fbe337 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x7, scratch # base address 
addi x7, x7, 1706 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000c25360c7
li x2, 0xc25360c7 # load x3 with 32 MSBs 0x00000000c25360c7
sw x1, -1706(x7) # store x3 (0x00000000) in memory
addi x7, x7, 4 # move address up by 4
sw x2, -1706(x7) # store x4 (0xc25360c7) in memory 4 bytes after x3
addi x7, x7, - 4 # move back to scratch
fld f24, -1706(x7) # perform operation

# Testcase cp_fd (Test destination fd = x25)
li x25, 0xc6b96234 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x7, scratch # base address 
addi x7, x7, 1662 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x0000000069a36693
li x2, 0x69a36693 # load x3 with 32 MSBs 0x0000000069a36693
sw x1, -1662(x7) # store x3 (0x00000000) in memory
addi x7, x7, 4 # move address up by 4
sw x2, -1662(x7) # store x4 (0x69a36693) in memory 4 bytes after x3
addi x7, x7, - 4 # move back to scratch
fld f25, -1662(x7) # perform operation

# Testcase cp_fd (Test destination fd = x26)
li x26, 0x5e09d7b6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x1, scratch # base address 
addi x1, x1, 1044 # sub immediate from rs1 to counter offset
li x29, 0x00000000 # load x3 with 32 LSBs of 0x00000000493159a0
li x2, 0x493159a0 # load x3 with 32 MSBs 0x00000000493159a0
sw x29, -1044(x1) # store x3 (0x00000000) in memory
addi x1, x1, 4 # move address up by 4
sw x2, -1044(x1) # store x4 (0x493159a0) in memory 4 bytes after x3
addi x1, x1, - 4 # move back to scratch
fld f26, -1044(x1) # perform operation

# Testcase cp_fd (Test destination fd = x27)
li x27, 0xd2cf7c10 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x3, scratch # base address 
addi x3, x3, -507 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000a45fce08
li x2, 0xa45fce08 # load x3 with 32 MSBs 0x00000000a45fce08
sw x1, 507(x3) # store x3 (0x00000000) in memory
addi x3, x3, 4 # move address up by 4
sw x2, 507(x3) # store x4 (0xa45fce08) in memory 4 bytes after x3
addi x3, x3, - 4 # move back to scratch
fld f27, 507(x3) # perform operation

# Testcase cp_fd (Test destination fd = x28)
li x28, 0x2a79e0e9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x4, scratch # base address 
addi x4, x4, 84 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x000000007ba2bfba
li x2, 0x7ba2bfba # load x3 with 32 MSBs 0x000000007ba2bfba
sw x1, -84(x4) # store x3 (0x00000000) in memory
addi x4, x4, 4 # move address up by 4
sw x2, -84(x4) # store x4 (0x7ba2bfba) in memory 4 bytes after x3
addi x4, x4, - 4 # move back to scratch
fld f28, -84(x4) # perform operation

# Testcase cp_fd (Test destination fd = x29)
li x29, 0xb0a744b9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x18, scratch # base address 
addi x18, x18, -944 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x0000000008891935
li x2, 0x08891935 # load x3 with 32 MSBs 0x0000000008891935
sw x1, 944(x18) # store x3 (0x00000000) in memory
addi x18, x18, 4 # move address up by 4
sw x2, 944(x18) # store x4 (0x08891935) in memory 4 bytes after x3
addi x18, x18, - 4 # move back to scratch
fld f29, 944(x18) # perform operation

# Testcase cp_fd (Test destination fd = x30)
li x30, 0xe84a9c4f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x9, scratch # base address 
addi x9, x9, 767 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x000000006a235c25
li x2, 0x6a235c25 # load x3 with 32 MSBs 0x000000006a235c25
sw x1, -767(x9) # store x3 (0x00000000) in memory
addi x9, x9, 4 # move address up by 4
sw x2, -767(x9) # store x4 (0x6a235c25) in memory 4 bytes after x3
addi x9, x9, - 4 # move back to scratch
fld f30, -767(x9) # perform operation

# Testcase cp_fd (Test destination fd = x31)
li x31, 0x8206a274 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x4, scratch # base address 
addi x4, x4, 1325 # sub immediate from rs1 to counter offset
li x1, 0x00000000 # load x3 with 32 LSBs of 0x00000000a3b18b24
li x2, 0xa3b18b24 # load x3 with 32 MSBs 0x00000000a3b18b24
sw x1, -1325(x4) # store x3 (0x00000000) in memory
addi x4, x4, 4 # move address up by 4
sw x2, -1325(x4) # store x4 (0xa3b18b24) in memory 4 bytes after x3
addi x4, x4, - 4 # move back to scratch
fld f31, -1325(x4) # perform operation

# Testcase f_mem_hazard (no dependency)
la x1, scratch
fld f2, 0(x1)

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
