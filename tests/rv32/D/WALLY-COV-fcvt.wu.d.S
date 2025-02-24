///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/rv32/D//WALLY-COV-fcvt.wu.d.S
// David_Harris@hmc.edu
// Created 2025-01-24 19:54:21.853834
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
li x0, 0x4c4ca850 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x86c05308 # load x3 with 32 MSBs 0x0000000086c05308
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000086c05308
sw x3, 0(x2) # store x3 (0x86c05308) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000086c05308 from memory into f25
fcvt.wu.d x0, f25 # perform operation

# Testcase cp_rd (Test destination rd = x1)
li x1, 0x161ac500 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x948e4e71 # load x3 with 32 MSBs 0x00000000948e4e71
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000948e4e71
sw x3, 0(x2) # store x3 (0x948e4e71) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000948e4e71 from memory into f3
fcvt.wu.d x1, f3 # perform operation

# Testcase cp_rd (Test destination rd = x2)
li x2, 0x39479132 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8a35ece7 # load x3 with 32 MSBs 0x000000008a35ece7
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008a35ece7
sw x3, 0(x2) # store x3 (0x8a35ece7) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000008a35ece7 from memory into f28
fcvt.wu.d x2, f28 # perform operation

# Testcase cp_rd (Test destination rd = x3)
li x3, 0x7c9e06ff # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4918da70 # load x3 with 32 MSBs 0x000000004918da70
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004918da70
sw x3, 0(x2) # store x3 (0x4918da70) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000004918da70 from memory into f7
fcvt.wu.d x3, f7 # perform operation

# Testcase cp_rd (Test destination rd = x4)
li x4, 0x31faccca # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x81e2c451 # load x3 with 32 MSBs 0x0000000081e2c451
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000081e2c451
sw x3, 0(x2) # store x3 (0x81e2c451) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000081e2c451 from memory into f15
fcvt.wu.d x4, f15 # perform operation

# Testcase cp_rd (Test destination rd = x5)
li x5, 0xd2fce156 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x2cdf4666 # load x3 with 32 MSBs 0x000000002cdf4666
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000002cdf4666
sw x3, 0(x2) # store x3 (0x2cdf4666) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000002cdf4666 from memory into f8
fcvt.wu.d x5, f8 # perform operation

# Testcase cp_rd (Test destination rd = x6)
li x6, 0x01268b3e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xc4da5c54 # load x3 with 32 MSBs 0x00000000c4da5c54
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000c4da5c54
sw x3, 0(x2) # store x3 (0xc4da5c54) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000c4da5c54 from memory into f27
fcvt.wu.d x6, f27 # perform operation

# Testcase cp_rd (Test destination rd = x7)
li x7, 0xdefc177c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x814ecefb # load x3 with 32 MSBs 0x00000000814ecefb
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000814ecefb
sw x3, 0(x2) # store x3 (0x814ecefb) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000814ecefb from memory into f25
fcvt.wu.d x7, f25 # perform operation

# Testcase cp_rd (Test destination rd = x8)
li x8, 0x5cc207d5 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xe8472d61 # load x3 with 32 MSBs 0x00000000e8472d61
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000e8472d61
sw x3, 0(x2) # store x3 (0xe8472d61) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000e8472d61 from memory into f5
fcvt.wu.d x8, f5 # perform operation

# Testcase cp_rd (Test destination rd = x9)
li x9, 0x364de8e4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x17ffd3a1 # load x3 with 32 MSBs 0x0000000017ffd3a1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000017ffd3a1
sw x3, 0(x2) # store x3 (0x17ffd3a1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000017ffd3a1 from memory into f10
fcvt.wu.d x9, f10 # perform operation

# Testcase cp_rd (Test destination rd = x10)
li x10, 0x953e8594 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x97003908 # load x3 with 32 MSBs 0x0000000097003908
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000097003908
sw x3, 0(x2) # store x3 (0x97003908) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000097003908 from memory into f14
fcvt.wu.d x10, f14 # perform operation

# Testcase cp_rd (Test destination rd = x11)
li x11, 0xeb05766b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x10a114b4 # load x3 with 32 MSBs 0x0000000010a114b4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000010a114b4
sw x3, 0(x2) # store x3 (0x10a114b4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000010a114b4 from memory into f31
fcvt.wu.d x11, f31 # perform operation

# Testcase cp_rd (Test destination rd = x12)
li x12, 0xaed47626 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6f051883 # load x3 with 32 MSBs 0x000000006f051883
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006f051883
sw x3, 0(x2) # store x3 (0x6f051883) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000006f051883 from memory into f24
fcvt.wu.d x12, f24 # perform operation

# Testcase cp_rd (Test destination rd = x13)
li x13, 0x17fdc12d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7af71366 # load x3 with 32 MSBs 0x000000007af71366
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007af71366
sw x3, 0(x2) # store x3 (0x7af71366) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000007af71366 from memory into f15
fcvt.wu.d x13, f15 # perform operation

# Testcase cp_rd (Test destination rd = x14)
li x14, 0x36f1f3fa # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x5904e0bd # load x3 with 32 MSBs 0x000000005904e0bd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000005904e0bd
sw x3, 0(x2) # store x3 (0x5904e0bd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000005904e0bd from memory into f30
fcvt.wu.d x14, f30 # perform operation

# Testcase cp_rd (Test destination rd = x15)
li x15, 0x51cdca57 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x96e6ec3d # load x3 with 32 MSBs 0x0000000096e6ec3d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000096e6ec3d
sw x3, 0(x2) # store x3 (0x96e6ec3d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000096e6ec3d from memory into f23
fcvt.wu.d x15, f23 # perform operation

# Testcase cp_rd (Test destination rd = x16)
li x16, 0xdd8f1cb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xcae612c9 # load x3 with 32 MSBs 0x00000000cae612c9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cae612c9
sw x3, 0(x2) # store x3 (0xcae612c9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000cae612c9 from memory into f1
fcvt.wu.d x16, f1 # perform operation

# Testcase cp_rd (Test destination rd = x17)
li x17, 0xccb93ddf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xba747e78 # load x3 with 32 MSBs 0x00000000ba747e78
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ba747e78
sw x3, 0(x2) # store x3 (0xba747e78) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000ba747e78 from memory into f31
fcvt.wu.d x17, f31 # perform operation

# Testcase cp_rd (Test destination rd = x18)
li x18, 0x9f77d4c3 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb8a97fdd # load x3 with 32 MSBs 0x00000000b8a97fdd
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b8a97fdd
sw x3, 0(x2) # store x3 (0xb8a97fdd) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000b8a97fdd from memory into f28
fcvt.wu.d x18, f28 # perform operation

# Testcase cp_rd (Test destination rd = x19)
li x19, 0x65b5681e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x16b992d4 # load x3 with 32 MSBs 0x0000000016b992d4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000016b992d4
sw x3, 0(x2) # store x3 (0x16b992d4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000016b992d4 from memory into f21
fcvt.wu.d x19, f21 # perform operation

# Testcase cp_rd (Test destination rd = x20)
li x20, 0x4263c1fd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x4a08209e # load x3 with 32 MSBs 0x000000004a08209e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000004a08209e
sw x3, 0(x2) # store x3 (0x4a08209e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000004a08209e from memory into f29
fcvt.wu.d x20, f29 # perform operation

# Testcase cp_rd (Test destination rd = x21)
li x21, 0xabef1726 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd88dba82 # load x3 with 32 MSBs 0x00000000d88dba82
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d88dba82
sw x3, 0(x2) # store x3 (0xd88dba82) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000d88dba82 from memory into f7
fcvt.wu.d x21, f7 # perform operation

# Testcase cp_rd (Test destination rd = x22)
li x22, 0x6f967cfe # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdf6738af # load x3 with 32 MSBs 0x00000000df6738af
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000df6738af
sw x3, 0(x2) # store x3 (0xdf6738af) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000df6738af from memory into f23
fcvt.wu.d x22, f23 # perform operation

# Testcase cp_rd (Test destination rd = x23)
li x23, 0xb5d6927e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3c0bf30a # load x3 with 32 MSBs 0x000000003c0bf30a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000003c0bf30a
sw x3, 0(x2) # store x3 (0x3c0bf30a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000003c0bf30a from memory into f23
fcvt.wu.d x23, f23 # perform operation

# Testcase cp_rd (Test destination rd = x24)
li x24, 0xf05ae162 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x378bc520 # load x3 with 32 MSBs 0x00000000378bc520
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000378bc520
sw x3, 0(x2) # store x3 (0x378bc520) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000378bc520 from memory into f25
fcvt.wu.d x24, f25 # perform operation

# Testcase cp_rd (Test destination rd = x25)
li x25, 0x1539b1c4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x03c6b38c # load x3 with 32 MSBs 0x0000000003c6b38c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000003c6b38c
sw x3, 0(x2) # store x3 (0x03c6b38c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000003c6b38c from memory into f25
fcvt.wu.d x25, f25 # perform operation

# Testcase cp_rd (Test destination rd = x26)
li x26, 0x71e1f6c9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd8f1c2b0 # load x3 with 32 MSBs 0x00000000d8f1c2b0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d8f1c2b0
sw x3, 0(x2) # store x3 (0xd8f1c2b0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000d8f1c2b0 from memory into f29
fcvt.wu.d x26, f29 # perform operation

# Testcase cp_rd (Test destination rd = x27)
li x27, 0xa8ebde47 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x18d9dbad # load x3 with 32 MSBs 0x0000000018d9dbad
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000018d9dbad
sw x3, 0(x2) # store x3 (0x18d9dbad) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000018d9dbad from memory into f5
fcvt.wu.d x27, f5 # perform operation

# Testcase cp_rd (Test destination rd = x28)
li x28, 0xf895ee41 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa9243f72 # load x3 with 32 MSBs 0x00000000a9243f72
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a9243f72
sw x3, 0(x2) # store x3 (0xa9243f72) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000a9243f72 from memory into f28
fcvt.wu.d x28, f28 # perform operation

# Testcase cp_rd (Test destination rd = x29)
li x29, 0xc6a637d7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6ecfb6ba # load x3 with 32 MSBs 0x000000006ecfb6ba
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006ecfb6ba
sw x3, 0(x2) # store x3 (0x6ecfb6ba) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000006ecfb6ba from memory into f12
fcvt.wu.d x29, f12 # perform operation

# Testcase cp_rd (Test destination rd = x30)
li x30, 0x4110cee4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x643c7f7c # load x3 with 32 MSBs 0x00000000643c7f7c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000643c7f7c
sw x3, 0(x2) # store x3 (0x643c7f7c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000643c7f7c from memory into f23
fcvt.wu.d x30, f23 # perform operation

# Testcase cp_rd (Test destination rd = x31)
li x31, 0xe7f8d746 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x892e1f78 # load x3 with 32 MSBs 0x00000000892e1f78
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000892e1f78
sw x3, 0(x2) # store x3 (0x892e1f78) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000892e1f78 from memory into f10
fcvt.wu.d x31, f10 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x0)
li x1, 0x5e3f22bf # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x0000000000000000
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000000000000 from memory into f26
fcvt.wu.d x1, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000000)
li x5, 0x9bd2415d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x8000000000000000
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x8000000000000000 from memory into f30
fcvt.wu.d x5, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff0000000000000)
li x13, 0xe603335e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff0000000000000
li x4, 0x3ff00000 # load x4 with 32 LSBs of 0x3ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff00000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x3ff0000000000000 from memory into f21
fcvt.wu.d x13, f21 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff0000000000000)
li x23, 0x82f02937 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff0000000000000
li x4, 0xbff00000 # load x4 with 32 LSBs of 0xbff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff00000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xbff0000000000000 from memory into f20
fcvt.wu.d x23, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x3ff8000000000000)
li x16, 0xe7935ac4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x3ff8000000000000
li x4, 0x3ff80000 # load x4 with 32 LSBs of 0x3ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x3ff80000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x3ff8000000000000 from memory into f14
fcvt.wu.d x16, f14 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xbff8000000000000)
li x8, 0xebb50ac6 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0xbff8000000000000
li x4, 0xbff80000 # load x4 with 32 LSBs of 0xbff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xbff80000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xbff8000000000000 from memory into f30
fcvt.wu.d x8, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x4000000000000000)
li x28, 0xffcc9c8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x4000000000000000
li x4, 0x40000000 # load x4 with 32 LSBs of 0x4000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x40000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x4000000000000000 from memory into f15
fcvt.wu.d x28, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xc000000000000000)
li x6, 0x1fcb0864 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0xc000000000000000
li x4, 0xc0000000 # load x4 with 32 LSBs of 0xc000000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xc0000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xc000000000000000 from memory into f19
fcvt.wu.d x6, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x10000000000000)
li x8, 0x7a1ec272 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x0010000000000000
li x4, 0x00100000 # load x4 with 32 LSBs of 0x0010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00100000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0010000000000000 from memory into f28
fcvt.wu.d x8, f28 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8010000000000000)
li x9, 0xfc06e148 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x8010000000000000
li x4, 0x80100000 # load x4 with 32 LSBs of 0x8010000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80100000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x8010000000000000 from memory into f2
fcvt.wu.d x9, f2 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fefffffffffffff)
li x26, 0xa6d7ad8f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fefffffffffffff
li x4, 0x7fefffff # load x4 with 32 LSBs of 0x7fefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fefffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7fefffffffffffff from memory into f31
fcvt.wu.d x26, f31 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xffefffffffffffff)
li x24, 0x39ea2a03 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffffffff # load x3 with 32 MSBs 0xffefffffffffffff
li x4, 0xffefffff # load x4 with 32 LSBs of 0xffefffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0xffefffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xffefffffffffffff from memory into f19
fcvt.wu.d x24, f19 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfffffffffffff)
li x23, 0xa50b2f9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffffffff # load x3 with 32 MSBs 0x000fffffffffffff
li x4, 0x000fffff # load x4 with 32 LSBs of 0x000fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x000fffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000fffffffffffff from memory into f20
fcvt.wu.d x23, f20 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x800fffffffffffff)
li x3, 0x51f5f7f7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffffffff # load x3 with 32 MSBs 0x800fffffffffffff
li x4, 0x800fffff # load x4 with 32 LSBs of 0x800fffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x800fffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x800fffffffffffff from memory into f16
fcvt.wu.d x3, f16 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000)
li x3, 0xbe06ec53 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x0008000000000000
li x4, 0x00080000 # load x4 with 32 LSBs of 0x0008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x00080000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0008000000000000 from memory into f9
fcvt.wu.d x3, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8008000000000000)
li x17, 0xdcffa0f0 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x8008000000000000
li x4, 0x80080000 # load x4 with 32 LSBs of 0x8008000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x80080000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x8008000000000000 from memory into f4
fcvt.wu.d x17, f4 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x1)
li x1, 0xbe86c471 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with 32 MSBs 0x0000000000000001
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000000000001 from memory into f18
fcvt.wu.d x1, f18 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x8000000000000001)
li x20, 0xa39ddca9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with 32 MSBs 0x8000000000000001
li x4, 0x80000000 # load x4 with 32 LSBs of 0x8000000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x80000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x8000000000000001 from memory into f22
fcvt.wu.d x20, f22 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000000)
li x1, 0x515fae9a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff0000000000000
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff0000000000000 from memory into f9
fcvt.wu.d x1, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xfff0000000000000)
li x10, 0x6d6c03e1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0xfff0000000000000
li x4, 0xfff00000 # load x4 with 32 LSBs of 0xfff0000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0xfff00000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfff0000000000000 from memory into f26
fcvt.wu.d x10, f26 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff8000000000000)
li x24, 0x8e670e0d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000000 # load x3 with 32 MSBs 0x7ff8000000000000
li x4, 0x7ff80000 # load x4 with 32 LSBs of 0x7ff8000000000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
sw x4, 4(x2) # store x4 (0x7ff80000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7ff8000000000000 from memory into f9
fcvt.wu.d x24, f9 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7fffffffffffffff)
li x14, 0xcc32ae67 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffffffff # load x3 with 32 MSBs 0x7fffffffffffffff
li x4, 0x7fffffff # load x4 with 32 LSBs of 0x7fffffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7fffffffffffffff from memory into f7
fcvt.wu.d x14, f7 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff0000000000001)
li x21, 0x776461be # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00000001 # load x3 with 32 MSBs 0x7ff0000000000001
li x4, 0x7ff00000 # load x4 with 32 LSBs of 0x7ff0000000000001
sw x3, 0(x2) # store x3 (0x00000001) in memory
sw x4, 4(x2) # store x4 (0x7ff00000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x7ff0000000000001 from memory into f15
fcvt.wu.d x21, f15 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x7ff7ffffffffffff)
li x7, 0xc8b74b19 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xffffffff # load x3 with 32 MSBs 0x7ff7ffffffffffff
li x4, 0x7ff7ffff # load x4 with 32 LSBs of 0x7ff7ffffffffffff
sw x3, 0(x2) # store x3 (0xffffffff) in memory
sw x4, 4(x2) # store x4 (0x7ff7ffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7ff7ffffffffffff from memory into f30
fcvt.wu.d x7, f30 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0x5a392534a57711ad)
li x26, 0x7277f768 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa57711ad # load x3 with 32 MSBs 0x5a392534a57711ad
li x4, 0x5a392534 # load x4 with 32 LSBs of 0x5a392534a57711ad
sw x3, 0(x2) # store x3 (0xa57711ad) in memory
sw x4, 4(x2) # store x4 (0x5a392534) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x5a392534a57711ad from memory into f17
fcvt.wu.d x26, f17 # perform operation

# Testcase cp_fs1_corners (Test source fs1 value = 0xa6e895993737426c)
li x1, 0xc2e25644 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x3737426c # load x3 with 32 MSBs 0xa6e895993737426c
li x4, 0xa6e89599 # load x4 with 32 LSBs of 0xa6e895993737426c
sw x3, 0(x2) # store x3 (0x3737426c) in memory
sw x4, 4(x2) # store x4 (0xa6e89599) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xa6e895993737426c from memory into f26
fcvt.wu.d x1, f26 # perform operation

# Testcase cp_frm
li x4, 0xcb06c23d # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x00c244cf # load x3 with 32 MSBs 0x0000000000c244cf
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000000c244cf
sw x3, 0(x2) # store x3 (0x00c244cf) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000000c244cf from memory into f14
fcvt.wu.d x4, f14, dyn # perform operation
fcvt.wu.d x4, f14, rdn # perform operation
fcvt.wu.d x4, f14, rmm # perform operation
fcvt.wu.d x4, f14, rne # perform operation
fcvt.wu.d x4, f14, rtz # perform operation
fcvt.wu.d x4, f14, rup # perform operation

 # set fcsr.frm to 0x4 
fsrmi 0x4
fcvt.wu.d x4, f14 # perform operation

 # set fcsr.frm to 0x3 
fsrmi 0x3
fcvt.wu.d x4, f14 # perform operation

 # set fcsr.frm to 0x2 
fsrmi 0x2
fcvt.wu.d x4, f14 # perform operation

 # set fcsr.frm to 0x1 
fsrmi 0x1
fcvt.wu.d x4, f14 # perform operation

 # set fcsr.frm to 0x0 
fsrmi 0x0
fcvt.wu.d x4, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f0)
li x23, 0x49e939d2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbc8d3983 # load x3 with 32 MSBs 0x00000000bc8d3983
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bc8d3983
sw x3, 0(x2) # store x3 (0xbc8d3983) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f0, 0(x2) # load 0x00000000bc8d3983 from memory into f0
fcvt.wu.d x23, f0 # perform operation

# Testcase cp_fs1 (Test source fs1 = f1)
li x12, 0x392db312 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x7fc79eef # load x3 with 32 MSBs 0x000000007fc79eef
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000007fc79eef
sw x3, 0(x2) # store x3 (0x7fc79eef) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000007fc79eef from memory into f1
fcvt.wu.d x12, f1 # perform operation

# Testcase cp_fs1 (Test source fs1 = f2)
li x21, 0x70225cb7 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x64b63d71 # load x3 with 32 MSBs 0x0000000064b63d71
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000064b63d71
sw x3, 0(x2) # store x3 (0x64b63d71) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000064b63d71 from memory into f2
fcvt.wu.d x21, f2 # perform operation

# Testcase cp_fs1 (Test source fs1 = f3)
li x17, 0xf178a2ab # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xd6d5e653 # load x3 with 32 MSBs 0x00000000d6d5e653
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000d6d5e653
sw x3, 0(x2) # store x3 (0xd6d5e653) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000d6d5e653 from memory into f3
fcvt.wu.d x17, f3 # perform operation

# Testcase cp_fs1 (Test source fs1 = f4)
li x9, 0x58c68c87 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x585fc9ea # load x3 with 32 MSBs 0x00000000585fc9ea
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000585fc9ea
sw x3, 0(x2) # store x3 (0x585fc9ea) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f4, 0(x2) # load 0x00000000585fc9ea from memory into f4
fcvt.wu.d x9, f4 # perform operation

# Testcase cp_fs1 (Test source fs1 = f5)
li x3, 0x5aa8690e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x210ed9c9 # load x3 with 32 MSBs 0x00000000210ed9c9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000210ed9c9
sw x3, 0(x2) # store x3 (0x210ed9c9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000210ed9c9 from memory into f5
fcvt.wu.d x3, f5 # perform operation

# Testcase cp_fs1 (Test source fs1 = f6)
li x5, 0xee715f40 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x31ef707e # load x3 with 32 MSBs 0x0000000031ef707e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000031ef707e
sw x3, 0(x2) # store x3 (0x31ef707e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000031ef707e from memory into f6
fcvt.wu.d x5, f6 # perform operation

# Testcase cp_fs1 (Test source fs1 = f7)
li x29, 0x6f043ba1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x064f1aa1 # load x3 with 32 MSBs 0x00000000064f1aa1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000064f1aa1
sw x3, 0(x2) # store x3 (0x064f1aa1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000064f1aa1 from memory into f7
fcvt.wu.d x29, f7 # perform operation

# Testcase cp_fs1 (Test source fs1 = f8)
li x4, 0xb3e60ba9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x66489007 # load x3 with 32 MSBs 0x0000000066489007
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000066489007
sw x3, 0(x2) # store x3 (0x66489007) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000066489007 from memory into f8
fcvt.wu.d x4, f8 # perform operation

# Testcase cp_fs1 (Test source fs1 = f9)
li x21, 0xad761aa2 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x979efb6c # load x3 with 32 MSBs 0x00000000979efb6c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000979efb6c
sw x3, 0(x2) # store x3 (0x979efb6c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000979efb6c from memory into f9
fcvt.wu.d x21, f9 # perform operation

# Testcase cp_fs1 (Test source fs1 = f10)
li x31, 0x2ebf7f44 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x25a0de71 # load x3 with 32 MSBs 0x0000000025a0de71
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000025a0de71
sw x3, 0(x2) # store x3 (0x25a0de71) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000025a0de71 from memory into f10
fcvt.wu.d x31, f10 # perform operation

# Testcase cp_fs1 (Test source fs1 = f11)
li x15, 0x9773b40a # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xcec9f1e4 # load x3 with 32 MSBs 0x00000000cec9f1e4
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000cec9f1e4
sw x3, 0(x2) # store x3 (0xcec9f1e4) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000cec9f1e4 from memory into f11
fcvt.wu.d x15, f11 # perform operation

# Testcase cp_fs1 (Test source fs1 = f12)
li x9, 0xad6ab74e # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa5432ad9 # load x3 with 32 MSBs 0x00000000a5432ad9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a5432ad9
sw x3, 0(x2) # store x3 (0xa5432ad9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000a5432ad9 from memory into f12
fcvt.wu.d x9, f12 # perform operation

# Testcase cp_fs1 (Test source fs1 = f13)
li x22, 0x4f948f82 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xaad3e434 # load x3 with 32 MSBs 0x00000000aad3e434
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000aad3e434
sw x3, 0(x2) # store x3 (0xaad3e434) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000aad3e434 from memory into f13
fcvt.wu.d x22, f13 # perform operation

# Testcase cp_fs1 (Test source fs1 = f14)
li x27, 0x2cbb6922 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x0d66ba87 # load x3 with 32 MSBs 0x000000000d66ba87
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000000d66ba87
sw x3, 0(x2) # store x3 (0x0d66ba87) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000000d66ba87 from memory into f14
fcvt.wu.d x27, f14 # perform operation

# Testcase cp_fs1 (Test source fs1 = f15)
li x18, 0x00d41bd9 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbd34fcd9 # load x3 with 32 MSBs 0x00000000bd34fcd9
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bd34fcd9
sw x3, 0(x2) # store x3 (0xbd34fcd9) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000bd34fcd9 from memory into f15
fcvt.wu.d x18, f15 # perform operation

# Testcase cp_fs1 (Test source fs1 = f16)
li x19, 0xe354660f # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x66c0fe4a # load x3 with 32 MSBs 0x0000000066c0fe4a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000066c0fe4a
sw x3, 0(x2) # store x3 (0x66c0fe4a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000066c0fe4a from memory into f16
fcvt.wu.d x19, f16 # perform operation

# Testcase cp_fs1 (Test source fs1 = f17)
li x29, 0x1a7d600c # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x97eef16b # load x3 with 32 MSBs 0x0000000097eef16b
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000097eef16b
sw x3, 0(x2) # store x3 (0x97eef16b) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000097eef16b from memory into f17
fcvt.wu.d x29, f17 # perform operation

# Testcase cp_fs1 (Test source fs1 = f18)
li x19, 0x373e92ce # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xeeb15fe8 # load x3 with 32 MSBs 0x00000000eeb15fe8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000eeb15fe8
sw x3, 0(x2) # store x3 (0xeeb15fe8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000eeb15fe8 from memory into f18
fcvt.wu.d x19, f18 # perform operation

# Testcase cp_fs1 (Test source fs1 = f19)
li x17, 0xb4463651 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x473a3e41 # load x3 with 32 MSBs 0x00000000473a3e41
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000473a3e41
sw x3, 0(x2) # store x3 (0x473a3e41) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000473a3e41 from memory into f19
fcvt.wu.d x17, f19 # perform operation

# Testcase cp_fs1 (Test source fs1 = f20)
li x16, 0x86253705 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x74dbf6f8 # load x3 with 32 MSBs 0x0000000074dbf6f8
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000074dbf6f8
sw x3, 0(x2) # store x3 (0x74dbf6f8) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000074dbf6f8 from memory into f20
fcvt.wu.d x16, f20 # perform operation

# Testcase cp_fs1 (Test source fs1 = f21)
li x1, 0x03615c64 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xdf9e1834 # load x3 with 32 MSBs 0x00000000df9e1834
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000df9e1834
sw x3, 0(x2) # store x3 (0xdf9e1834) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000df9e1834 from memory into f21
fcvt.wu.d x1, f21 # perform operation

# Testcase cp_fs1 (Test source fs1 = f22)
li x29, 0x845f3bdd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x8841988e # load x3 with 32 MSBs 0x000000008841988e
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000008841988e
sw x3, 0(x2) # store x3 (0x8841988e) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000008841988e from memory into f22
fcvt.wu.d x29, f22 # perform operation

# Testcase cp_fs1 (Test source fs1 = f23)
li x7, 0x5cc47fb1 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xb3130cd1 # load x3 with 32 MSBs 0x00000000b3130cd1
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000b3130cd1
sw x3, 0(x2) # store x3 (0xb3130cd1) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000b3130cd1 from memory into f23
fcvt.wu.d x7, f23 # perform operation

# Testcase cp_fs1 (Test source fs1 = f24)
li x21, 0xfd3c1537 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x303acbe5 # load x3 with 32 MSBs 0x00000000303acbe5
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000303acbe5
sw x3, 0(x2) # store x3 (0x303acbe5) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000303acbe5 from memory into f24
fcvt.wu.d x21, f24 # perform operation

# Testcase cp_fs1 (Test source fs1 = f25)
li x22, 0x4447a156 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xca189b85 # load x3 with 32 MSBs 0x00000000ca189b85
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000ca189b85
sw x3, 0(x2) # store x3 (0xca189b85) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000ca189b85 from memory into f25
fcvt.wu.d x22, f25 # perform operation

# Testcase cp_fs1 (Test source fs1 = f26)
li x14, 0xfc513fc4 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa044710d # load x3 with 32 MSBs 0x00000000a044710d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a044710d
sw x3, 0(x2) # store x3 (0xa044710d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000a044710d from memory into f26
fcvt.wu.d x14, f26 # perform operation

# Testcase cp_fs1 (Test source fs1 = f27)
li x12, 0xf685d305 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbe9b044c # load x3 with 32 MSBs 0x00000000be9b044c
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000be9b044c
sw x3, 0(x2) # store x3 (0xbe9b044c) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000be9b044c from memory into f27
fcvt.wu.d x12, f27 # perform operation

# Testcase cp_fs1 (Test source fs1 = f28)
li x4, 0xdac71fbd # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x29cb2e3d # load x3 with 32 MSBs 0x0000000029cb2e3d
li x4, 0x00000000 # load x4 with 32 LSBs of 0x0000000029cb2e3d
sw x3, 0(x2) # store x3 (0x29cb2e3d) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000029cb2e3d from memory into f28
fcvt.wu.d x4, f28 # perform operation

# Testcase cp_fs1 (Test source fs1 = f29)
li x30, 0x55077e63 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xa2d086b0 # load x3 with 32 MSBs 0x00000000a2d086b0
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000a2d086b0
sw x3, 0(x2) # store x3 (0xa2d086b0) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000a2d086b0 from memory into f29
fcvt.wu.d x30, f29 # perform operation

# Testcase cp_fs1 (Test source fs1 = f30)
li x7, 0x94d1953b # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0x6da5bbfe # load x3 with 32 MSBs 0x000000006da5bbfe
li x4, 0x00000000 # load x4 with 32 LSBs of 0x000000006da5bbfe
sw x3, 0(x2) # store x3 (0x6da5bbfe) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000006da5bbfe from memory into f30
fcvt.wu.d x7, f30 # perform operation

# Testcase cp_fs1 (Test source fs1 = f31)
li x3, 0xeb9ef925 # initialize rd to a random value that should get changed; helps covering rd_toggle
la x2, scratch # base address 
li x3, 0xbb8b887a # load x3 with 32 MSBs 0x00000000bb8b887a
li x4, 0x00000000 # load x4 with 32 LSBs of 0x00000000bb8b887a
sw x3, 0(x2) # store x3 (0xbb8b887a) in memory
sw x4, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000bb8b887a from memory into f31
fcvt.wu.d x3, f31 # perform operation

.EQU NUMTESTS,1


self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 8

.end
