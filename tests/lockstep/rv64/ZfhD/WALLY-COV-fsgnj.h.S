///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfhD/WALLY-COV-fsgnj.h.S
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
li x3, 0xe5048d20f6e03cc7 # load x3 with value 0xe5048d20f6e03cc7
sd x3, 0(x2) # store 0xe5048d20f6e03cc7 in memory
flh f26, 0(x2) # load 0xe5048d20f6e03cc7 from memory into f26
la x2, scratch
li x3, 0x4fd8a4a40bc15dc7 # load x3 with value 0x4fd8a4a40bc15dc7
sd x3, 0(x2) # store 0x4fd8a4a40bc15dc7 in memory
flh f12, 0(x2) # load 0x4fd8a4a40bc15dc7 from memory into f12
fsgnj.h f20, f26, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f21, 0(x2) # load 0xffffffff00000000 from memory into f21
la x2, scratch
li x3, 0x37b1cd62e6bc65e1 # load x3 with value 0x37b1cd62e6bc65e1
sd x3, 0(x2) # store 0x37b1cd62e6bc65e1 in memory
fld f10, 0(x2) # load 0x37b1cd62e6bc65e1 from memory into f10
fsgnj.h f13, f21, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f27, 0(x2) # load 0xfffffffffffe8000 from memory into f27
la x2, scratch
li x3, 0x0e5a2d4b9ad5275c # load x3 with value 0x0e5a2d4b9ad5275c
sd x3, 0(x2) # store 0x0e5a2d4b9ad5275c in memory
fld f23, 0(x2) # load 0x0e5a2d4b9ad5275c from memory into f23
fsgnj.h f24, f27, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f8, 0(x2) # load 0x7fffffffffff3c00 from memory into f8
la x2, scratch
li x3, 0xe97f48c6d7d9bd22 # load x3 with value 0xe97f48c6d7d9bd22
sd x3, 0(x2) # store 0xe97f48c6d7d9bd22 in memory
fld f28, 0(x2) # load 0xe97f48c6d7d9bd22 from memory into f28
fsgnj.h f9, f8, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f7, 0(x2) # load 0xfeedbee5beefbc00 from memory into f7
la x2, scratch
li x3, 0xd907ae9860388b88 # load x3 with value 0xd907ae9860388b88
sd x3, 0(x2) # store 0xd907ae9860388b88 in memory
fld f20, 0(x2) # load 0xd907ae9860388b88 from memory into f20
fsgnj.h f15, f7, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f18, 0(x2) # load 0xffffffefffff0400 from memory into f18
la x2, scratch
li x3, 0xc15976fd5fa88698 # load x3 with value 0xc15976fd5fa88698
sd x3, 0(x2) # store 0xc15976fd5fa88698 in memory
fld f1, 0(x2) # load 0xc15976fd5fa88698 from memory into f1
fsgnj.h f30, f18, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f7, 0(x2) # load 0x00000000ffff8400 from memory into f7
la x2, scratch
li x3, 0x80a93d66f8915ec1 # load x3 with value 0x80a93d66f8915ec1
sd x3, 0(x2) # store 0x80a93d66f8915ec1 in memory
fld f30, 0(x2) # load 0x80a93d66f8915ec1 from memory into f30
fsgnj.h f22, f7, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f12, 0(x2) # load 0xefffffffffff7bff from memory into f12
la x2, scratch
li x3, 0xb9cc07d9fe04b086 # load x3 with value 0xb9cc07d9fe04b086
sd x3, 0(x2) # store 0xb9cc07d9fe04b086 in memory
fld f1, 0(x2) # load 0xb9cc07d9fe04b086 from memory into f1
fsgnj.h f31, f12, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f15, 0(x2) # load 0xc0dec0dec0defbff from memory into f15
la x2, scratch
li x3, 0x45a005ea4b0d6ce2 # load x3 with value 0x45a005ea4b0d6ce2
sd x3, 0(x2) # store 0x45a005ea4b0d6ce2 in memory
fld f6, 0(x2) # load 0x45a005ea4b0d6ce2 from memory into f6
fsgnj.h f9, f15, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f5, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f5
la x2, scratch
li x3, 0xf362d61fbdcacd34 # load x3 with value 0xf362d61fbdcacd34
sd x3, 0(x2) # store 0xf362d61fbdcacd34 in memory
fld f13, 0(x2) # load 0xf362d61fbdcacd34 from memory into f13
fsgnj.h f20, f5, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f13, 0(x2) # load 0xffffffff0ffffc00 from memory into f13
la x2, scratch
li x3, 0x4438250f71eec13a # load x3 with value 0x4438250f71eec13a
sd x3, 0(x2) # store 0x4438250f71eec13a in memory
fld f21, 0(x2) # load 0x4438250f71eec13a from memory into f21
fsgnj.h f24, f13, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f19, 0(x2) # load 0xfffeffffffff7e00 from memory into f19
la x2, scratch
li x3, 0x59cd6f743a465e46 # load x3 with value 0x59cd6f743a465e46
sd x3, 0(x2) # store 0x59cd6f743a465e46 in memory
fld f13, 0(x2) # load 0x59cd6f743a465e46 from memory into f13
fsgnj.h f1, f19, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f31, 0(x2) # load 0xffffffefffff7fff from memory into f31
la x2, scratch
li x3, 0x6b7798689e553d52 # load x3 with value 0x6b7798689e553d52
sd x3, 0(x2) # store 0x6b7798689e553d52 in memory
fld f2, 0(x2) # load 0x6b7798689e553d52 from memory into f2
fsgnj.h f27, f31, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f18, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f18
la x2, scratch
li x3, 0x0db7a2e2cde648ab # load x3 with value 0x0db7a2e2cde648ab
sd x3, 0(x2) # store 0x0db7a2e2cde648ab in memory
fld f22, 0(x2) # load 0x0db7a2e2cde648ab from memory into f22
fsgnj.h f30, f18, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f7, 0(x2) # load 0xfffffffcffff7dff from memory into f7
la x2, scratch
li x3, 0x536a881e0f462fe3 # load x3 with value 0x536a881e0f462fe3
sd x3, 0(x2) # store 0x536a881e0f462fe3 in memory
fld f25, 0(x2) # load 0x536a881e0f462fe3 from memory into f25
fsgnj.h f16, f7, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xd99e98d86306614a # load x3 with value 0xd99e98d86306614a
sd x3, 0(x2) # store 0xd99e98d86306614a in memory
fld f8, 0(x2) # load 0xd99e98d86306614a from memory into f8
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f30, 0(x2) # load 0xffffffff00000000 from memory into f30
fsgnj.h f22, f8, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x1792af4331eb285b # load x3 with value 0x1792af4331eb285b
sd x3, 0(x2) # store 0x1792af4331eb285b in memory
fld f8, 0(x2) # load 0x1792af4331eb285b from memory into f8
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f6, 0(x2) # load 0xfffffffffffe8000 from memory into f6
fsgnj.h f28, f8, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x2279667912652fc9 # load x3 with value 0x2279667912652fc9
sd x3, 0(x2) # store 0x2279667912652fc9 in memory
fld f15, 0(x2) # load 0x2279667912652fc9 from memory into f15
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f26, 0(x2) # load 0x7fffffffffff3c00 from memory into f26
fsgnj.h f11, f15, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x91086349c41eb2a2 # load x3 with value 0x91086349c41eb2a2
sd x3, 0(x2) # store 0x91086349c41eb2a2 in memory
fld f11, 0(x2) # load 0x91086349c41eb2a2 from memory into f11
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f29, 0(x2) # load 0xfeedbee5beefbc00 from memory into f29
fsgnj.h f6, f11, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xb5dd930edbe1ac6c # load x3 with value 0xb5dd930edbe1ac6c
sd x3, 0(x2) # store 0xb5dd930edbe1ac6c in memory
fld f7, 0(x2) # load 0xb5dd930edbe1ac6c from memory into f7
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f23, 0(x2) # load 0xffffffefffff0400 from memory into f23
fsgnj.h f14, f7, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x8424f1a88ce1cc22 # load x3 with value 0x8424f1a88ce1cc22
sd x3, 0(x2) # store 0x8424f1a88ce1cc22 in memory
fld f15, 0(x2) # load 0x8424f1a88ce1cc22 from memory into f15
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f23, 0(x2) # load 0x00000000ffff8400 from memory into f23
fsgnj.h f28, f15, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0xedacebf8cd7244cd # load x3 with value 0xedacebf8cd7244cd
sd x3, 0(x2) # store 0xedacebf8cd7244cd in memory
fld f22, 0(x2) # load 0xedacebf8cd7244cd from memory into f22
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f8, 0(x2) # load 0xefffffffffff7bff from memory into f8
fsgnj.h f1, f22, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x0a6a3bba24250281 # load x3 with value 0x0a6a3bba24250281
sd x3, 0(x2) # store 0x0a6a3bba24250281 in memory
fld f21, 0(x2) # load 0x0a6a3bba24250281 from memory into f21
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f31, 0(x2) # load 0xc0dec0dec0defbff from memory into f31
fsgnj.h f27, f21, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x465091af7de0d0d5 # load x3 with value 0x465091af7de0d0d5
sd x3, 0(x2) # store 0x465091af7de0d0d5 in memory
fld f21, 0(x2) # load 0x465091af7de0d0d5 from memory into f21
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f26, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f26
fsgnj.h f7, f21, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xad7162718c702283 # load x3 with value 0xad7162718c702283
sd x3, 0(x2) # store 0xad7162718c702283 in memory
fld f14, 0(x2) # load 0xad7162718c702283 from memory into f14
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f20, 0(x2) # load 0xffffffff0ffffc00 from memory into f20
fsgnj.h f19, f14, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x104466d0a42dd7cc # load x3 with value 0x104466d0a42dd7cc
sd x3, 0(x2) # store 0x104466d0a42dd7cc in memory
fld f12, 0(x2) # load 0x104466d0a42dd7cc from memory into f12
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f26, 0(x2) # load 0xfffeffffffff7e00 from memory into f26
fsgnj.h f18, f12, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x99b77adf87ae9664 # load x3 with value 0x99b77adf87ae9664
sd x3, 0(x2) # store 0x99b77adf87ae9664 in memory
fld f2, 0(x2) # load 0x99b77adf87ae9664 from memory into f2
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f3, 0(x2) # load 0xffffffefffff7fff from memory into f3
fsgnj.h f8, f2, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x9fd29e8c76221fac # load x3 with value 0x9fd29e8c76221fac
sd x3, 0(x2) # store 0x9fd29e8c76221fac in memory
fld f21, 0(x2) # load 0x9fd29e8c76221fac from memory into f21
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f15, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f15
fsgnj.h f23, f21, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xbc7319491e4e51a5 # load x3 with value 0xbc7319491e4e51a5
sd x3, 0(x2) # store 0xbc7319491e4e51a5 in memory
fld f2, 0(x2) # load 0xbc7319491e4e51a5 from memory into f2
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f18, 0(x2) # load 0xfffffffcffff7dff from memory into f18
fsgnj.h f15, f2, f18 # perform operation

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
