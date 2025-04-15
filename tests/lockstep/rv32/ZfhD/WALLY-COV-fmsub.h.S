///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfhD/WALLY-COV-fmsub.h.S
// David_Harris@hmc.edu

 # testgen_header.S
//
// Copyright (C) 2024 Harvey Mudd College & Oklahoma State University, Habib University, UET Lahore
//
// SPDX-License-Identifier: Apache-2.0 WITH SHL-2.1
///////////////////////////////////////////

#include "macros.h"

.section .text.init
.globl rvtest_entry_point

rvtest_entry_point:

# initialize signature pointer
la x4, begin_signature

    
# set mstatus.FS to 01 to enable fp
li t0,0x4000
csrs mstatus, t0


# Testcase Random test for cp_NaNBox 
la x2, scratch
li x3, 0x00000000e89ffdc4 # load x3 with value 0x00000000e89ffdc4
sw x3, 0(x2) # store 0x00000000e89ffdc4 in memory
flh f3, 0(x2) # load 0x00000000e89ffdc4 from memory into f3
la x2, scratch
li x3, 0x00000000c2d60e4f # load x3 with value 0x00000000c2d60e4f
sw x3, 0(x2) # store 0x00000000c2d60e4f in memory
flh f23, 0(x2) # load 0x00000000c2d60e4f from memory into f23
la x2, scratch
li x3, 0x00000000b25f0756 # load x3 with value 0x00000000b25f0756
sw x3, 0(x2) # store 0x00000000b25f0756 in memory
flh f30, 0(x2) # load 0x00000000b25f0756 from memory into f30
fmsub.h f19, f3, f23, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xffffffff00000000 from memory into f5
la x2, scratch
li x3, 0xf833a8d4 # load x3 with 32 MSBs 0x00000000f833a8d4
sw x3, 0(x2) # store x3 (0xf833a8d4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f833a8d4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000f833a8d4 from memory into f2
la x2, scratch
li x3, 0xa0b9c097 # load x3 with 32 MSBs 0x00000000a0b9c097
sw x3, 0(x2) # store x3 (0xa0b9c097) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a0b9c097
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000a0b9c097 from memory into f26
fmsub.h f7, f5, f2, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfffffffffffe8000 from memory into f5
la x2, scratch
li x3, 0xadc8d72f # load x3 with 32 MSBs 0x00000000adc8d72f
sw x3, 0(x2) # store x3 (0xadc8d72f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000adc8d72f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000adc8d72f from memory into f20
la x2, scratch
li x3, 0x74cc90fa # load x3 with 32 MSBs 0x0000000074cc90fa
sw x3, 0(x2) # store x3 (0x74cc90fa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000074cc90fa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000074cc90fa from memory into f3
fmsub.h f26, f5, f20, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7fffffffffff3c00 from memory into f14
la x2, scratch
li x3, 0x0d7ee77e # load x3 with 32 MSBs 0x000000000d7ee77e
sw x3, 0(x2) # store x3 (0x0d7ee77e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000d7ee77e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000000d7ee77e from memory into f21
la x2, scratch
li x3, 0xd7c1b187 # load x3 with 32 MSBs 0x00000000d7c1b187
sw x3, 0(x2) # store x3 (0xd7c1b187) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d7c1b187
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000d7c1b187 from memory into f25
fmsub.h f15, f14, f21, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xfeedbee5beefbc00 from memory into f31
la x2, scratch
li x3, 0xfcbea18d # load x3 with 32 MSBs 0x00000000fcbea18d
sw x3, 0(x2) # store x3 (0xfcbea18d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fcbea18d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000fcbea18d from memory into f25
la x2, scratch
li x3, 0x1f8b5cbf # load x3 with 32 MSBs 0x000000001f8b5cbf
sw x3, 0(x2) # store x3 (0x1f8b5cbf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001f8b5cbf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000001f8b5cbf from memory into f11
fmsub.h f13, f31, f25, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xffffffefffff0400 from memory into f19
la x2, scratch
li x3, 0xbaf40b15 # load x3 with 32 MSBs 0x00000000baf40b15
sw x3, 0(x2) # store x3 (0xbaf40b15) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000baf40b15
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000baf40b15 from memory into f30
la x2, scratch
li x3, 0xbf454501 # load x3 with 32 MSBs 0x00000000bf454501
sw x3, 0(x2) # store x3 (0xbf454501) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bf454501
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000bf454501 from memory into f13
fmsub.h f2, f19, f30, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000ffff8400 from memory into f14
la x2, scratch
li x3, 0x525e75cc # load x3 with 32 MSBs 0x00000000525e75cc
sw x3, 0(x2) # store x3 (0x525e75cc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000525e75cc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000525e75cc from memory into f12
la x2, scratch
li x3, 0xeb4329fe # load x3 with 32 MSBs 0x00000000eb4329fe
sw x3, 0(x2) # store x3 (0xeb4329fe) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eb4329fe
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000eb4329fe from memory into f24
fmsub.h f6, f14, f12, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xefffffffffff7bff from memory into f24
la x2, scratch
li x3, 0x1f6c3189 # load x3 with 32 MSBs 0x000000001f6c3189
sw x3, 0(x2) # store x3 (0x1f6c3189) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001f6c3189
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000001f6c3189 from memory into f3
la x2, scratch
li x3, 0x62779caf # load x3 with 32 MSBs 0x0000000062779caf
sw x3, 0(x2) # store x3 (0x62779caf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000062779caf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000062779caf from memory into f19
fmsub.h f1, f24, f3, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xc0dec0dec0defbff from memory into f8
la x2, scratch
li x3, 0x98000d89 # load x3 with 32 MSBs 0x0000000098000d89
sw x3, 0(x2) # store x3 (0x98000d89) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000098000d89
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000098000d89 from memory into f30
la x2, scratch
li x3, 0x9387d36f # load x3 with 32 MSBs 0x000000009387d36f
sw x3, 0(x2) # store x3 (0x9387d36f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009387d36f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000009387d36f from memory into f21
fmsub.h f28, f8, f30, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f28
la x2, scratch
li x3, 0x2080304f # load x3 with 32 MSBs 0x000000002080304f
sw x3, 0(x2) # store x3 (0x2080304f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002080304f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000002080304f from memory into f16
la x2, scratch
li x3, 0x6da36d95 # load x3 with 32 MSBs 0x000000006da36d95
sw x3, 0(x2) # store x3 (0x6da36d95) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006da36d95
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000006da36d95 from memory into f18
fmsub.h f8, f28, f16, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xffffffff0ffffc00 from memory into f30
la x2, scratch
li x3, 0x10c4db8c # load x3 with 32 MSBs 0x0000000010c4db8c
sw x3, 0(x2) # store x3 (0x10c4db8c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000010c4db8c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000010c4db8c from memory into f6
la x2, scratch
li x3, 0xac4f1811 # load x3 with 32 MSBs 0x00000000ac4f1811
sw x3, 0(x2) # store x3 (0xac4f1811) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ac4f1811
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000ac4f1811 from memory into f12
fmsub.h f19, f30, f6, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfffeffffffff7e00 from memory into f26
la x2, scratch
li x3, 0xc6b30c32 # load x3 with 32 MSBs 0x00000000c6b30c32
sw x3, 0(x2) # store x3 (0xc6b30c32) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c6b30c32
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000c6b30c32 from memory into f23
la x2, scratch
li x3, 0x7aba87bb # load x3 with 32 MSBs 0x000000007aba87bb
sw x3, 0(x2) # store x3 (0x7aba87bb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007aba87bb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000007aba87bb from memory into f30
fmsub.h f24, f26, f23, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffffffefffff7fff from memory into f14
la x2, scratch
li x3, 0x9ae2d02a # load x3 with 32 MSBs 0x000000009ae2d02a
sw x3, 0(x2) # store x3 (0x9ae2d02a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009ae2d02a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000009ae2d02a from memory into f27
la x2, scratch
li x3, 0x4eeb1576 # load x3 with 32 MSBs 0x000000004eeb1576
sw x3, 0(x2) # store x3 (0x4eeb1576) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004eeb1576
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000004eeb1576 from memory into f29
fmsub.h f1, f14, f27, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f7
la x2, scratch
li x3, 0x662050b0 # load x3 with 32 MSBs 0x00000000662050b0
sw x3, 0(x2) # store x3 (0x662050b0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000662050b0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000662050b0 from memory into f27
la x2, scratch
li x3, 0x41eacdbf # load x3 with 32 MSBs 0x0000000041eacdbf
sw x3, 0(x2) # store x3 (0x41eacdbf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000041eacdbf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000041eacdbf from memory into f31
fmsub.h f9, f7, f27, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xfffffffcffff7dff from memory into f9
la x2, scratch
li x3, 0xf3015351 # load x3 with 32 MSBs 0x00000000f3015351
sw x3, 0(x2) # store x3 (0xf3015351) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f3015351
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000f3015351 from memory into f16
la x2, scratch
li x3, 0x00c5922a # load x3 with 32 MSBs 0x0000000000c5922a
sw x3, 0(x2) # store x3 (0x00c5922a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000c5922a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000000c5922a from memory into f29
fmsub.h f11, f9, f16, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x39c10877 # load x3 with 32 MSBs 0x0000000039c10877
sw x3, 0(x2) # store x3 (0x39c10877) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000039c10877
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000039c10877 from memory into f13
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xffffffff00000000 from memory into f1
la x2, scratch
li x3, 0x06771cb2 # load x3 with 32 MSBs 0x0000000006771cb2
sw x3, 0(x2) # store x3 (0x06771cb2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000006771cb2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000006771cb2 from memory into f12
fmsub.h f23, f13, f1, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x9a173a4b # load x3 with 32 MSBs 0x000000009a173a4b
sw x3, 0(x2) # store x3 (0x9a173a4b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009a173a4b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000009a173a4b from memory into f8
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfffffffffffe8000 from memory into f23
la x2, scratch
li x3, 0x63efee9e # load x3 with 32 MSBs 0x0000000063efee9e
sw x3, 0(x2) # store x3 (0x63efee9e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000063efee9e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000063efee9e from memory into f28
fmsub.h f12, f8, f23, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x5be5d7aa # load x3 with 32 MSBs 0x000000005be5d7aa
sw x3, 0(x2) # store x3 (0x5be5d7aa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005be5d7aa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000005be5d7aa from memory into f9
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7fffffffffff3c00 from memory into f2
la x2, scratch
li x3, 0x4be40625 # load x3 with 32 MSBs 0x000000004be40625
sw x3, 0(x2) # store x3 (0x4be40625) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004be40625
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000004be40625 from memory into f16
fmsub.h f14, f9, f2, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xfa748808 # load x3 with 32 MSBs 0x00000000fa748808
sw x3, 0(x2) # store x3 (0xfa748808) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fa748808
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000fa748808 from memory into f1
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xfeedbee5beefbc00 from memory into f27
la x2, scratch
li x3, 0x55db302f # load x3 with 32 MSBs 0x0000000055db302f
sw x3, 0(x2) # store x3 (0x55db302f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000055db302f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000055db302f from memory into f20
fmsub.h f21, f1, f27, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xe6adf1db # load x3 with 32 MSBs 0x00000000e6adf1db
sw x3, 0(x2) # store x3 (0xe6adf1db) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e6adf1db
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000e6adf1db from memory into f22
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffffffefffff0400 from memory into f11
la x2, scratch
li x3, 0x7a3dff14 # load x3 with 32 MSBs 0x000000007a3dff14
sw x3, 0(x2) # store x3 (0x7a3dff14) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007a3dff14
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000007a3dff14 from memory into f16
fmsub.h f6, f22, f11, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xab5cb5bd # load x3 with 32 MSBs 0x00000000ab5cb5bd
sw x3, 0(x2) # store x3 (0xab5cb5bd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ab5cb5bd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000ab5cb5bd from memory into f21
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000ffff8400 from memory into f25
la x2, scratch
li x3, 0x18264b81 # load x3 with 32 MSBs 0x0000000018264b81
sw x3, 0(x2) # store x3 (0x18264b81) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000018264b81
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000018264b81 from memory into f8
fmsub.h f26, f21, f25, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x2b77f90d # load x3 with 32 MSBs 0x000000002b77f90d
sw x3, 0(x2) # store x3 (0x2b77f90d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002b77f90d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000002b77f90d from memory into f14
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xefffffffffff7bff from memory into f13
la x2, scratch
li x3, 0x627dbd7e # load x3 with 32 MSBs 0x00000000627dbd7e
sw x3, 0(x2) # store x3 (0x627dbd7e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000627dbd7e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000627dbd7e from memory into f5
fmsub.h f23, f14, f13, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xa8403b7f # load x3 with 32 MSBs 0x00000000a8403b7f
sw x3, 0(x2) # store x3 (0xa8403b7f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a8403b7f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000a8403b7f from memory into f15
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xc0dec0dec0defbff from memory into f3
la x2, scratch
li x3, 0x50658dce # load x3 with 32 MSBs 0x0000000050658dce
sw x3, 0(x2) # store x3 (0x50658dce) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000050658dce
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000050658dce from memory into f23
fmsub.h f21, f15, f3, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xf224438a # load x3 with 32 MSBs 0x00000000f224438a
sw x3, 0(x2) # store x3 (0xf224438a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f224438a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000f224438a from memory into f24
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f2
la x2, scratch
li x3, 0xed09eb29 # load x3 with 32 MSBs 0x00000000ed09eb29
sw x3, 0(x2) # store x3 (0xed09eb29) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ed09eb29
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000ed09eb29 from memory into f23
fmsub.h f31, f24, f2, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xf3a3068e # load x3 with 32 MSBs 0x00000000f3a3068e
sw x3, 0(x2) # store x3 (0xf3a3068e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f3a3068e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000f3a3068e from memory into f25
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xffffffff0ffffc00 from memory into f30
la x2, scratch
li x3, 0xc38babd4 # load x3 with 32 MSBs 0x00000000c38babd4
sw x3, 0(x2) # store x3 (0xc38babd4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c38babd4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000c38babd4 from memory into f2
fmsub.h f26, f25, f30, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x035a1392 # load x3 with 32 MSBs 0x00000000035a1392
sw x3, 0(x2) # store x3 (0x035a1392) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000035a1392
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000035a1392 from memory into f26
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfffeffffffff7e00 from memory into f7
la x2, scratch
li x3, 0x641ed85c # load x3 with 32 MSBs 0x00000000641ed85c
sw x3, 0(x2) # store x3 (0x641ed85c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000641ed85c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000641ed85c from memory into f2
fmsub.h f13, f26, f7, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x457d5eae # load x3 with 32 MSBs 0x00000000457d5eae
sw x3, 0(x2) # store x3 (0x457d5eae) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000457d5eae
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000457d5eae from memory into f3
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xffffffefffff7fff from memory into f18
la x2, scratch
li x3, 0x8f71c434 # load x3 with 32 MSBs 0x000000008f71c434
sw x3, 0(x2) # store x3 (0x8f71c434) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008f71c434
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000008f71c434 from memory into f6
fmsub.h f31, f3, f18, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xcc2bc54a # load x3 with 32 MSBs 0x00000000cc2bc54a
sw x3, 0(x2) # store x3 (0xcc2bc54a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cc2bc54a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000cc2bc54a from memory into f12
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f3
la x2, scratch
li x3, 0x43dac0c2 # load x3 with 32 MSBs 0x0000000043dac0c2
sw x3, 0(x2) # store x3 (0x43dac0c2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000043dac0c2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000043dac0c2 from memory into f11
fmsub.h f18, f12, f3, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x318cd05a # load x3 with 32 MSBs 0x00000000318cd05a
sw x3, 0(x2) # store x3 (0x318cd05a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000318cd05a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000318cd05a from memory into f15
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfffffffcffff7dff from memory into f29
la x2, scratch
li x3, 0xd990d993 # load x3 with 32 MSBs 0x00000000d990d993
sw x3, 0(x2) # store x3 (0xd990d993) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d990d993
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000d990d993 from memory into f7
fmsub.h f28, f15, f29, f7 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x662a1e75 # load x3 with 32 MSBs 0x00000000662a1e75
sw x3, 0(x2) # store x3 (0x662a1e75) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000662a1e75
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000662a1e75 from memory into f14
la x2, scratch
li x3, 0x4c3496e5 # load x3 with 32 MSBs 0x000000004c3496e5
sw x3, 0(x2) # store x3 (0x4c3496e5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004c3496e5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000004c3496e5 from memory into f11
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xffffffff00000000 from memory into f25
fmsub.h f22, f14, f11, f25 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x225bddd5 # load x3 with 32 MSBs 0x00000000225bddd5
sw x3, 0(x2) # store x3 (0x225bddd5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000225bddd5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000225bddd5 from memory into f17
la x2, scratch
li x3, 0x277615fd # load x3 with 32 MSBs 0x00000000277615fd
sw x3, 0(x2) # store x3 (0x277615fd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000277615fd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000277615fd from memory into f1
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfffffffffffe8000 from memory into f3
fmsub.h f25, f17, f1, f3 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xad09a1ff # load x3 with 32 MSBs 0x00000000ad09a1ff
sw x3, 0(x2) # store x3 (0xad09a1ff) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ad09a1ff
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000ad09a1ff from memory into f6
la x2, scratch
li x3, 0x1250a8ee # load x3 with 32 MSBs 0x000000001250a8ee
sw x3, 0(x2) # store x3 (0x1250a8ee) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001250a8ee
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000001250a8ee from memory into f31
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x7fffffffffff3c00 from memory into f12
fmsub.h f17, f6, f31, f12 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xd673718c # load x3 with 32 MSBs 0x00000000d673718c
sw x3, 0(x2) # store x3 (0xd673718c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d673718c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000d673718c from memory into f11
la x2, scratch
li x3, 0xef209fdf # load x3 with 32 MSBs 0x00000000ef209fdf
sw x3, 0(x2) # store x3 (0xef209fdf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ef209fdf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000ef209fdf from memory into f6
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfeedbee5beefbc00 from memory into f28
fmsub.h f29, f11, f6, f28 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x54ef99d0 # load x3 with 32 MSBs 0x0000000054ef99d0
sw x3, 0(x2) # store x3 (0x54ef99d0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000054ef99d0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000054ef99d0 from memory into f7
la x2, scratch
li x3, 0xdd70eeb4 # load x3 with 32 MSBs 0x00000000dd70eeb4
sw x3, 0(x2) # store x3 (0xdd70eeb4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dd70eeb4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000dd70eeb4 from memory into f14
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xffffffefffff0400 from memory into f2
fmsub.h f28, f7, f14, f2 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffff8400)
la x2, scratch
li x3, 0x338b58b4 # load x3 with 32 MSBs 0x00000000338b58b4
sw x3, 0(x2) # store x3 (0x338b58b4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000338b58b4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000338b58b4 from memory into f24
la x2, scratch
li x3, 0x5366b699 # load x3 with 32 MSBs 0x000000005366b699
sw x3, 0(x2) # store x3 (0x5366b699) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005366b699
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000005366b699 from memory into f31
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000ffff8400 from memory into f20
fmsub.h f1, f24, f31, f20 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0xa5988b77 # load x3 with 32 MSBs 0x00000000a5988b77
sw x3, 0(x2) # store x3 (0xa5988b77) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a5988b77
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000a5988b77 from memory into f19
la x2, scratch
li x3, 0xa4ab9f15 # load x3 with 32 MSBs 0x00000000a4ab9f15
sw x3, 0(x2) # store x3 (0xa4ab9f15) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a4ab9f15
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000a4ab9f15 from memory into f3
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xefffffffffff7bff from memory into f25
fmsub.h f11, f19, f3, f25 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xbefbd9d5 # load x3 with 32 MSBs 0x00000000befbd9d5
sw x3, 0(x2) # store x3 (0xbefbd9d5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000befbd9d5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000befbd9d5 from memory into f6
la x2, scratch
li x3, 0x4fba39d1 # load x3 with 32 MSBs 0x000000004fba39d1
sw x3, 0(x2) # store x3 (0x4fba39d1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004fba39d1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000004fba39d1 from memory into f5
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xc0dec0dec0defbff from memory into f25
fmsub.h f17, f6, f5, f25 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xdb0575cf # load x3 with 32 MSBs 0x00000000db0575cf
sw x3, 0(x2) # store x3 (0xdb0575cf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000db0575cf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000db0575cf from memory into f21
la x2, scratch
li x3, 0xd3094199 # load x3 with 32 MSBs 0x00000000d3094199
sw x3, 0(x2) # store x3 (0xd3094199) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d3094199
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000d3094199 from memory into f3
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f9
fmsub.h f13, f21, f3, f9 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x25962db3 # load x3 with 32 MSBs 0x0000000025962db3
sw x3, 0(x2) # store x3 (0x25962db3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000025962db3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000025962db3 from memory into f17
la x2, scratch
li x3, 0x817203f7 # load x3 with 32 MSBs 0x00000000817203f7
sw x3, 0(x2) # store x3 (0x817203f7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000817203f7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000817203f7 from memory into f6
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffffffff0ffffc00 from memory into f29
fmsub.h f31, f17, f6, f29 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x68dcfc4f # load x3 with 32 MSBs 0x0000000068dcfc4f
sw x3, 0(x2) # store x3 (0x68dcfc4f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000068dcfc4f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000068dcfc4f from memory into f5
la x2, scratch
li x3, 0xcd21c258 # load x3 with 32 MSBs 0x00000000cd21c258
sw x3, 0(x2) # store x3 (0xcd21c258) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cd21c258
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000cd21c258 from memory into f3
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfffeffffffff7e00 from memory into f22
fmsub.h f18, f5, f3, f22 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x753d0cf9 # load x3 with 32 MSBs 0x00000000753d0cf9
sw x3, 0(x2) # store x3 (0x753d0cf9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000753d0cf9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000753d0cf9 from memory into f2
la x2, scratch
li x3, 0x38aa9e9d # load x3 with 32 MSBs 0x0000000038aa9e9d
sw x3, 0(x2) # store x3 (0x38aa9e9d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000038aa9e9d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000038aa9e9d from memory into f15
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffffffefffff7fff from memory into f27
fmsub.h f26, f2, f15, f27 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x6e2a3637 # load x3 with 32 MSBs 0x000000006e2a3637
sw x3, 0(x2) # store x3 (0x6e2a3637) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006e2a3637
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000006e2a3637 from memory into f14
la x2, scratch
li x3, 0xe93b1db8 # load x3 with 32 MSBs 0x00000000e93b1db8
sw x3, 0(x2) # store x3 (0xe93b1db8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e93b1db8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000e93b1db8 from memory into f11
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f20
fmsub.h f29, f14, f11, f20 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x87756de1 # load x3 with 32 MSBs 0x0000000087756de1
sw x3, 0(x2) # store x3 (0x87756de1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000087756de1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000087756de1 from memory into f3
la x2, scratch
li x3, 0x883214da # load x3 with 32 MSBs 0x00000000883214da
sw x3, 0(x2) # store x3 (0x883214da) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000883214da
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000883214da from memory into f6
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xfffffffcffff7dff from memory into f27
fmsub.h f15, f3, f6, f27 # perform operation

.EQU SIGSIZE,0


 # testgen_footer.S


write_tohost:
    la t1, tohost
    li t0, 1
    sw t0, 0(t1)
    sw zero, 4(t1)

self_loop:
    j self_loop

.data

.align 4
scratch:
    .bss 136

.data 

.section .tohost 
tohost: # write to HTIF
    .dword 0
fromhost:
    .dword 0

.align 4
begin_signature:
    .fill SIGSIZE*8/__riscv_xlen,__riscv_xlen/8,0xdeadbeef
end_signature:

.end
