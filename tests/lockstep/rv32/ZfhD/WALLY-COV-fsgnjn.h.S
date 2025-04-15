///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfhD/WALLY-COV-fsgnjn.h.S
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
li x3, 0x000000000beffd53 # load x3 with value 0x000000000beffd53
sw x3, 0(x2) # store 0x000000000beffd53 in memory
flh f2, 0(x2) # load 0x000000000beffd53 from memory into f2
la x2, scratch
li x3, 0x00000000d299fb1f # load x3 with value 0x00000000d299fb1f
sw x3, 0(x2) # store 0x00000000d299fb1f in memory
flh f17, 0(x2) # load 0x00000000d299fb1f from memory into f17
fsgnjn.h f1, f2, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffffffff00000000 from memory into f27
la x2, scratch
li x3, 0x99d70461 # load x3 with 32 MSBs 0x0000000099d70461
sw x3, 0(x2) # store x3 (0x99d70461) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000099d70461
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000099d70461 from memory into f8
fsgnjn.h f11, f27, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfffffffffffe8000 from memory into f5
la x2, scratch
li x3, 0x95cc826f # load x3 with 32 MSBs 0x0000000095cc826f
sw x3, 0(x2) # store x3 (0x95cc826f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000095cc826f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000095cc826f from memory into f26
fsgnjn.h f24, f5, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7fffffffffff3c00 from memory into f30
la x2, scratch
li x3, 0x49bdba25 # load x3 with 32 MSBs 0x0000000049bdba25
sw x3, 0(x2) # store x3 (0x49bdba25) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000049bdba25
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000049bdba25 from memory into f5
fsgnjn.h f24, f30, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfeedbee5beefbc00 from memory into f23
la x2, scratch
li x3, 0x9d56b1c6 # load x3 with 32 MSBs 0x000000009d56b1c6
sw x3, 0(x2) # store x3 (0x9d56b1c6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009d56b1c6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x000000009d56b1c6 from memory into f31
fsgnjn.h f13, f23, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xffffffefffff0400 from memory into f2
la x2, scratch
li x3, 0x7d3e279d # load x3 with 32 MSBs 0x000000007d3e279d
sw x3, 0(x2) # store x3 (0x7d3e279d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007d3e279d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000007d3e279d from memory into f15
fsgnjn.h f24, f2, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000ffff8400 from memory into f16
la x2, scratch
li x3, 0xa507e87c # load x3 with 32 MSBs 0x00000000a507e87c
sw x3, 0(x2) # store x3 (0xa507e87c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a507e87c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000a507e87c from memory into f14
fsgnjn.h f26, f16, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xefffffffffff7bff from memory into f16
la x2, scratch
li x3, 0xb89ab93f # load x3 with 32 MSBs 0x00000000b89ab93f
sw x3, 0(x2) # store x3 (0xb89ab93f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b89ab93f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000b89ab93f from memory into f28
fsgnjn.h f1, f16, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xc0dec0dec0defbff from memory into f28
la x2, scratch
li x3, 0xdfe2cdce # load x3 with 32 MSBs 0x00000000dfe2cdce
sw x3, 0(x2) # store x3 (0xdfe2cdce) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dfe2cdce
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000dfe2cdce from memory into f8
fsgnjn.h f18, f28, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f10
la x2, scratch
li x3, 0x55ea40c0 # load x3 with 32 MSBs 0x0000000055ea40c0
sw x3, 0(x2) # store x3 (0x55ea40c0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000055ea40c0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000055ea40c0 from memory into f3
fsgnjn.h f17, f10, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xffffffff0ffffc00 from memory into f20
la x2, scratch
li x3, 0x2b972569 # load x3 with 32 MSBs 0x000000002b972569
sw x3, 0(x2) # store x3 (0x2b972569) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002b972569
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000002b972569 from memory into f15
fsgnjn.h f7, f20, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfffeffffffff7e00 from memory into f30
la x2, scratch
li x3, 0x495b9555 # load x3 with 32 MSBs 0x00000000495b9555
sw x3, 0(x2) # store x3 (0x495b9555) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000495b9555
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000495b9555 from memory into f20
fsgnjn.h f27, f30, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffffffefffff7fff from memory into f14
la x2, scratch
li x3, 0xeca9959a # load x3 with 32 MSBs 0x00000000eca9959a
sw x3, 0(x2) # store x3 (0xeca9959a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eca9959a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000eca9959a from memory into f6
fsgnjn.h f1, f14, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f26
la x2, scratch
li x3, 0x51f85fe6 # load x3 with 32 MSBs 0x0000000051f85fe6
sw x3, 0(x2) # store x3 (0x51f85fe6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000051f85fe6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000051f85fe6 from memory into f6
fsgnjn.h f23, f26, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfffffffcffff7dff from memory into f8
la x2, scratch
li x3, 0x07761444 # load x3 with 32 MSBs 0x0000000007761444
sw x3, 0(x2) # store x3 (0x07761444) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000007761444
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000007761444 from memory into f3
fsgnjn.h f20, f8, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xaa22a562 # load x3 with 32 MSBs 0x00000000aa22a562
sw x3, 0(x2) # store x3 (0xaa22a562) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aa22a562
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000aa22a562 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xffffffff00000000 from memory into f7
fsgnjn.h f17, f30, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x3027c8af # load x3 with 32 MSBs 0x000000003027c8af
sw x3, 0(x2) # store x3 (0x3027c8af) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003027c8af
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000003027c8af from memory into f30
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfffffffffffe8000 from memory into f3
fsgnjn.h f11, f30, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xadb662e6 # load x3 with 32 MSBs 0x00000000adb662e6
sw x3, 0(x2) # store x3 (0xadb662e6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000adb662e6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000adb662e6 from memory into f16
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x7fffffffffff3c00 from memory into f25
fsgnjn.h f28, f16, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x5248e180 # load x3 with 32 MSBs 0x000000005248e180
sw x3, 0(x2) # store x3 (0x5248e180) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005248e180
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000005248e180 from memory into f27
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfeedbee5beefbc00 from memory into f12
fsgnjn.h f13, f27, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xc580262d # load x3 with 32 MSBs 0x00000000c580262d
sw x3, 0(x2) # store x3 (0xc580262d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c580262d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000c580262d from memory into f10
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xffffffefffff0400 from memory into f16
fsgnjn.h f17, f10, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xaca0b9ca # load x3 with 32 MSBs 0x00000000aca0b9ca
sw x3, 0(x2) # store x3 (0xaca0b9ca) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aca0b9ca
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000aca0b9ca from memory into f13
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000ffff8400 from memory into f26
fsgnjn.h f15, f13, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x967cffb9 # load x3 with 32 MSBs 0x00000000967cffb9
sw x3, 0(x2) # store x3 (0x967cffb9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000967cffb9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000967cffb9 from memory into f18
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xefffffffffff7bff from memory into f5
fsgnjn.h f13, f18, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x84482297 # load x3 with 32 MSBs 0x0000000084482297
sw x3, 0(x2) # store x3 (0x84482297) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000084482297
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000084482297 from memory into f11
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xc0dec0dec0defbff from memory into f29
fsgnjn.h f8, f11, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x26a8c772 # load x3 with 32 MSBs 0x0000000026a8c772
sw x3, 0(x2) # store x3 (0x26a8c772) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000026a8c772
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000026a8c772 from memory into f15
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f27
fsgnjn.h f6, f15, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x06b20a0b # load x3 with 32 MSBs 0x0000000006b20a0b
sw x3, 0(x2) # store x3 (0x06b20a0b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000006b20a0b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000006b20a0b from memory into f12
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffffffff0ffffc00 from memory into f27
fsgnjn.h f29, f12, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x7ebf1252 # load x3 with 32 MSBs 0x000000007ebf1252
sw x3, 0(x2) # store x3 (0x7ebf1252) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007ebf1252
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000007ebf1252 from memory into f29
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfffeffffffff7e00 from memory into f20
fsgnjn.h f26, f29, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xd4313d17 # load x3 with 32 MSBs 0x00000000d4313d17
sw x3, 0(x2) # store x3 (0xd4313d17) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d4313d17
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000d4313d17 from memory into f23
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffffffefffff7fff from memory into f21
fsgnjn.h f5, f23, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x7a783c7f # load x3 with 32 MSBs 0x000000007a783c7f
sw x3, 0(x2) # store x3 (0x7a783c7f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007a783c7f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000007a783c7f from memory into f17
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f30
fsgnjn.h f22, f17, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x82b159dc # load x3 with 32 MSBs 0x0000000082b159dc
sw x3, 0(x2) # store x3 (0x82b159dc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000082b159dc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000082b159dc from memory into f21
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfffffffcffff7dff from memory into f17
fsgnjn.h f7, f21, f17 # perform operation

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
