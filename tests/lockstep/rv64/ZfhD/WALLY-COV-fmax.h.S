///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfhD/WALLY-COV-fmax.h.S
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
li x3, 0x6651b3aef03b3468 # load x3 with value 0x6651b3aef03b3468
sd x3, 0(x2) # store 0x6651b3aef03b3468 in memory
flh f19, 0(x2) # load 0x6651b3aef03b3468 from memory into f19
la x2, scratch
li x3, 0xebef9a7954970c2d # load x3 with value 0xebef9a7954970c2d
sd x3, 0(x2) # store 0xebef9a7954970c2d in memory
flh f21, 0(x2) # load 0xebef9a7954970c2d from memory into f21
fmax.h f5, f19, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f27, 0(x2) # load 0xffffffff00000000 from memory into f27
la x2, scratch
li x3, 0x3115d7acc696a0f4 # load x3 with value 0x3115d7acc696a0f4
sd x3, 0(x2) # store 0x3115d7acc696a0f4 in memory
fld f23, 0(x2) # load 0x3115d7acc696a0f4 from memory into f23
fmax.h f5, f27, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f16, 0(x2) # load 0xfffffffffffe8000 from memory into f16
la x2, scratch
li x3, 0x4370b59ac7450320 # load x3 with value 0x4370b59ac7450320
sd x3, 0(x2) # store 0x4370b59ac7450320 in memory
fld f10, 0(x2) # load 0x4370b59ac7450320 from memory into f10
fmax.h f21, f16, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f20, 0(x2) # load 0x7fffffffffff3c00 from memory into f20
la x2, scratch
li x3, 0x5f073ce21e845d20 # load x3 with value 0x5f073ce21e845d20
sd x3, 0(x2) # store 0x5f073ce21e845d20 in memory
fld f14, 0(x2) # load 0x5f073ce21e845d20 from memory into f14
fmax.h f3, f20, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f3, 0(x2) # load 0xfeedbee5beefbc00 from memory into f3
la x2, scratch
li x3, 0x637ca25166393ba3 # load x3 with value 0x637ca25166393ba3
sd x3, 0(x2) # store 0x637ca25166393ba3 in memory
fld f29, 0(x2) # load 0x637ca25166393ba3 from memory into f29
fmax.h f14, f3, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f23, 0(x2) # load 0xffffffefffff0400 from memory into f23
la x2, scratch
li x3, 0x275309957ef75c81 # load x3 with value 0x275309957ef75c81
sd x3, 0(x2) # store 0x275309957ef75c81 in memory
fld f25, 0(x2) # load 0x275309957ef75c81 from memory into f25
fmax.h f5, f23, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f2, 0(x2) # load 0x00000000ffff8400 from memory into f2
la x2, scratch
li x3, 0x8d5a82db71c68d15 # load x3 with value 0x8d5a82db71c68d15
sd x3, 0(x2) # store 0x8d5a82db71c68d15 in memory
fld f9, 0(x2) # load 0x8d5a82db71c68d15 from memory into f9
fmax.h f8, f2, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f7, 0(x2) # load 0xefffffffffff7bff from memory into f7
la x2, scratch
li x3, 0xdf3adc1bb0a0427c # load x3 with value 0xdf3adc1bb0a0427c
sd x3, 0(x2) # store 0xdf3adc1bb0a0427c in memory
fld f22, 0(x2) # load 0xdf3adc1bb0a0427c from memory into f22
fmax.h f29, f7, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f16, 0(x2) # load 0xc0dec0dec0defbff from memory into f16
la x2, scratch
li x3, 0xe7c4716ffb79a241 # load x3 with value 0xe7c4716ffb79a241
sd x3, 0(x2) # store 0xe7c4716ffb79a241 in memory
fld f20, 0(x2) # load 0xe7c4716ffb79a241 from memory into f20
fmax.h f2, f16, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f17, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f17
la x2, scratch
li x3, 0x47ff4ddb8dd7a7fb # load x3 with value 0x47ff4ddb8dd7a7fb
sd x3, 0(x2) # store 0x47ff4ddb8dd7a7fb in memory
fld f9, 0(x2) # load 0x47ff4ddb8dd7a7fb from memory into f9
fmax.h f31, f17, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f28, 0(x2) # load 0xffffffff0ffffc00 from memory into f28
la x2, scratch
li x3, 0x404c04d4c4630f64 # load x3 with value 0x404c04d4c4630f64
sd x3, 0(x2) # store 0x404c04d4c4630f64 in memory
fld f10, 0(x2) # load 0x404c04d4c4630f64 from memory into f10
fmax.h f29, f28, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f30, 0(x2) # load 0xfffeffffffff7e00 from memory into f30
la x2, scratch
li x3, 0x3186e315e8f4a0a3 # load x3 with value 0x3186e315e8f4a0a3
sd x3, 0(x2) # store 0x3186e315e8f4a0a3 in memory
fld f11, 0(x2) # load 0x3186e315e8f4a0a3 from memory into f11
fmax.h f17, f30, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f2, 0(x2) # load 0xffffffefffff7fff from memory into f2
la x2, scratch
li x3, 0x73c3bb37a5a9b588 # load x3 with value 0x73c3bb37a5a9b588
sd x3, 0(x2) # store 0x73c3bb37a5a9b588 in memory
fld f5, 0(x2) # load 0x73c3bb37a5a9b588 from memory into f5
fmax.h f3, f2, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f14, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f14
la x2, scratch
li x3, 0x434c0c060c467db6 # load x3 with value 0x434c0c060c467db6
sd x3, 0(x2) # store 0x434c0c060c467db6 in memory
fld f24, 0(x2) # load 0x434c0c060c467db6 from memory into f24
fmax.h f15, f14, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f23, 0(x2) # load 0xfffffffcffff7dff from memory into f23
la x2, scratch
li x3, 0x92335513f2a767b3 # load x3 with value 0x92335513f2a767b3
sd x3, 0(x2) # store 0x92335513f2a767b3 in memory
fld f25, 0(x2) # load 0x92335513f2a767b3 from memory into f25
fmax.h f22, f23, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x096949ad2b129559 # load x3 with value 0x096949ad2b129559
sd x3, 0(x2) # store 0x096949ad2b129559 in memory
fld f20, 0(x2) # load 0x096949ad2b129559 from memory into f20
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f9, 0(x2) # load 0xffffffff00000000 from memory into f9
fmax.h f22, f20, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x246cf2a1bc5ace7b # load x3 with value 0x246cf2a1bc5ace7b
sd x3, 0(x2) # store 0x246cf2a1bc5ace7b in memory
fld f19, 0(x2) # load 0x246cf2a1bc5ace7b from memory into f19
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f31, 0(x2) # load 0xfffffffffffe8000 from memory into f31
fmax.h f7, f19, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xb4ade72476edab79 # load x3 with value 0xb4ade72476edab79
sd x3, 0(x2) # store 0xb4ade72476edab79 in memory
fld f6, 0(x2) # load 0xb4ade72476edab79 from memory into f6
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f2, 0(x2) # load 0x7fffffffffff3c00 from memory into f2
fmax.h f15, f6, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x5514db5f86424139 # load x3 with value 0x5514db5f86424139
sd x3, 0(x2) # store 0x5514db5f86424139 in memory
fld f27, 0(x2) # load 0x5514db5f86424139 from memory into f27
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f16, 0(x2) # load 0xfeedbee5beefbc00 from memory into f16
fmax.h f11, f27, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x33e4f936977f05d2 # load x3 with value 0x33e4f936977f05d2
sd x3, 0(x2) # store 0x33e4f936977f05d2 in memory
fld f16, 0(x2) # load 0x33e4f936977f05d2 from memory into f16
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f28, 0(x2) # load 0xffffffefffff0400 from memory into f28
fmax.h f6, f16, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xa4b396efb8d5392e # load x3 with value 0xa4b396efb8d5392e
sd x3, 0(x2) # store 0xa4b396efb8d5392e in memory
fld f31, 0(x2) # load 0xa4b396efb8d5392e from memory into f31
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f16, 0(x2) # load 0x00000000ffff8400 from memory into f16
fmax.h f26, f31, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x2ec92f6f6dfc31e5 # load x3 with value 0x2ec92f6f6dfc31e5
sd x3, 0(x2) # store 0x2ec92f6f6dfc31e5 in memory
fld f26, 0(x2) # load 0x2ec92f6f6dfc31e5 from memory into f26
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f28, 0(x2) # load 0xefffffffffff7bff from memory into f28
fmax.h f3, f26, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xc79c300bf17a6e37 # load x3 with value 0xc79c300bf17a6e37
sd x3, 0(x2) # store 0xc79c300bf17a6e37 in memory
fld f10, 0(x2) # load 0xc79c300bf17a6e37 from memory into f10
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f15, 0(x2) # load 0xc0dec0dec0defbff from memory into f15
fmax.h f14, f10, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x588d34d78c3928a3 # load x3 with value 0x588d34d78c3928a3
sd x3, 0(x2) # store 0x588d34d78c3928a3 in memory
fld f12, 0(x2) # load 0x588d34d78c3928a3 from memory into f12
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f20, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f20
fmax.h f2, f12, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x2ae3d7d3f6fd67d7 # load x3 with value 0x2ae3d7d3f6fd67d7
sd x3, 0(x2) # store 0x2ae3d7d3f6fd67d7 in memory
fld f29, 0(x2) # load 0x2ae3d7d3f6fd67d7 from memory into f29
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f3, 0(x2) # load 0xffffffff0ffffc00 from memory into f3
fmax.h f9, f29, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xe501c982f4225f04 # load x3 with value 0xe501c982f4225f04
sd x3, 0(x2) # store 0xe501c982f4225f04 in memory
fld f10, 0(x2) # load 0xe501c982f4225f04 from memory into f10
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f28, 0(x2) # load 0xfffeffffffff7e00 from memory into f28
fmax.h f2, f10, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x4e4599b8480fd899 # load x3 with value 0x4e4599b8480fd899
sd x3, 0(x2) # store 0x4e4599b8480fd899 in memory
fld f12, 0(x2) # load 0x4e4599b8480fd899 from memory into f12
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f13, 0(x2) # load 0xffffffefffff7fff from memory into f13
fmax.h f11, f12, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x2a1d52c124f35ab8 # load x3 with value 0x2a1d52c124f35ab8
sd x3, 0(x2) # store 0x2a1d52c124f35ab8 in memory
fld f5, 0(x2) # load 0x2a1d52c124f35ab8 from memory into f5
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f17, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f17
fmax.h f18, f5, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xc2a06559b88cdc18 # load x3 with value 0xc2a06559b88cdc18
sd x3, 0(x2) # store 0xc2a06559b88cdc18 in memory
fld f8, 0(x2) # load 0xc2a06559b88cdc18 from memory into f8
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f5, 0(x2) # load 0xfffffffcffff7dff from memory into f5
fmax.h f7, f8, f5 # perform operation

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
