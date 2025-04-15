///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfhD/WALLY-COV-fsub.h.S
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
li x3, 0xe0a94fcaf7197785 # load x3 with value 0xe0a94fcaf7197785
sd x3, 0(x2) # store 0xe0a94fcaf7197785 in memory
flh f21, 0(x2) # load 0xe0a94fcaf7197785 from memory into f21
la x2, scratch
li x3, 0x62223fbd141d7a42 # load x3 with value 0x62223fbd141d7a42
sd x3, 0(x2) # store 0x62223fbd141d7a42 in memory
flh f10, 0(x2) # load 0x62223fbd141d7a42 from memory into f10
fsub.h f17, f21, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f10, 0(x2) # load 0xffffffff00000000 from memory into f10
la x2, scratch
li x3, 0xcdb425c816396d0f # load x3 with value 0xcdb425c816396d0f
sd x3, 0(x2) # store 0xcdb425c816396d0f in memory
fld f1, 0(x2) # load 0xcdb425c816396d0f from memory into f1
fsub.h f9, f10, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f12, 0(x2) # load 0xfffffffffffe8000 from memory into f12
la x2, scratch
li x3, 0x4562b50a05399deb # load x3 with value 0x4562b50a05399deb
sd x3, 0(x2) # store 0x4562b50a05399deb in memory
fld f9, 0(x2) # load 0x4562b50a05399deb from memory into f9
fsub.h f7, f12, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f16, 0(x2) # load 0x7fffffffffff3c00 from memory into f16
la x2, scratch
li x3, 0x2434bd54e27dce7a # load x3 with value 0x2434bd54e27dce7a
sd x3, 0(x2) # store 0x2434bd54e27dce7a in memory
fld f11, 0(x2) # load 0x2434bd54e27dce7a from memory into f11
fsub.h f22, f16, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f22, 0(x2) # load 0xfeedbee5beefbc00 from memory into f22
la x2, scratch
li x3, 0x0727fc28596746c5 # load x3 with value 0x0727fc28596746c5
sd x3, 0(x2) # store 0x0727fc28596746c5 in memory
fld f27, 0(x2) # load 0x0727fc28596746c5 from memory into f27
fsub.h f23, f22, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f29, 0(x2) # load 0xffffffefffff0400 from memory into f29
la x2, scratch
li x3, 0x79be0733afe38942 # load x3 with value 0x79be0733afe38942
sd x3, 0(x2) # store 0x79be0733afe38942 in memory
fld f27, 0(x2) # load 0x79be0733afe38942 from memory into f27
fsub.h f23, f29, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f1, 0(x2) # load 0x00000000ffff8400 from memory into f1
la x2, scratch
li x3, 0xcb9470e437ba8588 # load x3 with value 0xcb9470e437ba8588
sd x3, 0(x2) # store 0xcb9470e437ba8588 in memory
fld f22, 0(x2) # load 0xcb9470e437ba8588 from memory into f22
fsub.h f31, f1, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f6, 0(x2) # load 0xefffffffffff7bff from memory into f6
la x2, scratch
li x3, 0x6a9c791076cef632 # load x3 with value 0x6a9c791076cef632
sd x3, 0(x2) # store 0x6a9c791076cef632 in memory
fld f31, 0(x2) # load 0x6a9c791076cef632 from memory into f31
fsub.h f10, f6, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f23, 0(x2) # load 0xc0dec0dec0defbff from memory into f23
la x2, scratch
li x3, 0x01b144c45551386e # load x3 with value 0x01b144c45551386e
sd x3, 0(x2) # store 0x01b144c45551386e in memory
fld f15, 0(x2) # load 0x01b144c45551386e from memory into f15
fsub.h f20, f23, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f19, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f19
la x2, scratch
li x3, 0x60161e1fbe7e3e89 # load x3 with value 0x60161e1fbe7e3e89
sd x3, 0(x2) # store 0x60161e1fbe7e3e89 in memory
fld f7, 0(x2) # load 0x60161e1fbe7e3e89 from memory into f7
fsub.h f31, f19, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f24, 0(x2) # load 0xffffffff0ffffc00 from memory into f24
la x2, scratch
li x3, 0x193853aeeaf2c410 # load x3 with value 0x193853aeeaf2c410
sd x3, 0(x2) # store 0x193853aeeaf2c410 in memory
fld f22, 0(x2) # load 0x193853aeeaf2c410 from memory into f22
fsub.h f29, f24, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f27, 0(x2) # load 0xfffeffffffff7e00 from memory into f27
la x2, scratch
li x3, 0xd298789ec35c2fe8 # load x3 with value 0xd298789ec35c2fe8
sd x3, 0(x2) # store 0xd298789ec35c2fe8 in memory
fld f10, 0(x2) # load 0xd298789ec35c2fe8 from memory into f10
fsub.h f20, f27, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f31, 0(x2) # load 0xffffffefffff7fff from memory into f31
la x2, scratch
li x3, 0x2b337a03375c49f1 # load x3 with value 0x2b337a03375c49f1
sd x3, 0(x2) # store 0x2b337a03375c49f1 in memory
fld f1, 0(x2) # load 0x2b337a03375c49f1 from memory into f1
fsub.h f18, f31, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f28, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f28
la x2, scratch
li x3, 0x5fae67f25bd432fb # load x3 with value 0x5fae67f25bd432fb
sd x3, 0(x2) # store 0x5fae67f25bd432fb in memory
fld f16, 0(x2) # load 0x5fae67f25bd432fb from memory into f16
fsub.h f22, f28, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f20, 0(x2) # load 0xfffffffcffff7dff from memory into f20
la x2, scratch
li x3, 0xfb37ef248cb1fc9a # load x3 with value 0xfb37ef248cb1fc9a
sd x3, 0(x2) # store 0xfb37ef248cb1fc9a in memory
fld f5, 0(x2) # load 0xfb37ef248cb1fc9a from memory into f5
fsub.h f10, f20, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x705769e7bfaf7046 # load x3 with value 0x705769e7bfaf7046
sd x3, 0(x2) # store 0x705769e7bfaf7046 in memory
fld f23, 0(x2) # load 0x705769e7bfaf7046 from memory into f23
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f3, 0(x2) # load 0xffffffff00000000 from memory into f3
fsub.h f14, f23, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x4a33cdcf90a98dee # load x3 with value 0x4a33cdcf90a98dee
sd x3, 0(x2) # store 0x4a33cdcf90a98dee in memory
fld f26, 0(x2) # load 0x4a33cdcf90a98dee from memory into f26
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f11, 0(x2) # load 0xfffffffffffe8000 from memory into f11
fsub.h f27, f26, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xcd80ba9fd299e8c8 # load x3 with value 0xcd80ba9fd299e8c8
sd x3, 0(x2) # store 0xcd80ba9fd299e8c8 in memory
fld f11, 0(x2) # load 0xcd80ba9fd299e8c8 from memory into f11
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f26, 0(x2) # load 0x7fffffffffff3c00 from memory into f26
fsub.h f24, f11, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x669834ab91442d35 # load x3 with value 0x669834ab91442d35
sd x3, 0(x2) # store 0x669834ab91442d35 in memory
fld f2, 0(x2) # load 0x669834ab91442d35 from memory into f2
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f23, 0(x2) # load 0xfeedbee5beefbc00 from memory into f23
fsub.h f15, f2, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xe96d8a15f8c3559e # load x3 with value 0xe96d8a15f8c3559e
sd x3, 0(x2) # store 0xe96d8a15f8c3559e in memory
fld f13, 0(x2) # load 0xe96d8a15f8c3559e from memory into f13
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f3, 0(x2) # load 0xffffffefffff0400 from memory into f3
fsub.h f22, f13, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xcf8ff31b79228274 # load x3 with value 0xcf8ff31b79228274
sd x3, 0(x2) # store 0xcf8ff31b79228274 in memory
fld f10, 0(x2) # load 0xcf8ff31b79228274 from memory into f10
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f19, 0(x2) # load 0x00000000ffff8400 from memory into f19
fsub.h f29, f10, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x32765fa0558b82c7 # load x3 with value 0x32765fa0558b82c7
sd x3, 0(x2) # store 0x32765fa0558b82c7 in memory
fld f29, 0(x2) # load 0x32765fa0558b82c7 from memory into f29
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f8, 0(x2) # load 0xefffffffffff7bff from memory into f8
fsub.h f16, f29, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x490b8b600b9e5edc # load x3 with value 0x490b8b600b9e5edc
sd x3, 0(x2) # store 0x490b8b600b9e5edc in memory
fld f24, 0(x2) # load 0x490b8b600b9e5edc from memory into f24
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f23, 0(x2) # load 0xc0dec0dec0defbff from memory into f23
fsub.h f3, f24, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x12ee528663fdad3e # load x3 with value 0x12ee528663fdad3e
sd x3, 0(x2) # store 0x12ee528663fdad3e in memory
fld f20, 0(x2) # load 0x12ee528663fdad3e from memory into f20
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f28, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f28
fsub.h f2, f20, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xd54817f66ceddd3c # load x3 with value 0xd54817f66ceddd3c
sd x3, 0(x2) # store 0xd54817f66ceddd3c in memory
fld f18, 0(x2) # load 0xd54817f66ceddd3c from memory into f18
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f23, 0(x2) # load 0xffffffff0ffffc00 from memory into f23
fsub.h f16, f18, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xfaed51a0d88b0275 # load x3 with value 0xfaed51a0d88b0275
sd x3, 0(x2) # store 0xfaed51a0d88b0275 in memory
fld f29, 0(x2) # load 0xfaed51a0d88b0275 from memory into f29
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f20, 0(x2) # load 0xfffeffffffff7e00 from memory into f20
fsub.h f27, f29, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xd332251b16c93976 # load x3 with value 0xd332251b16c93976
sd x3, 0(x2) # store 0xd332251b16c93976 in memory
fld f15, 0(x2) # load 0xd332251b16c93976 from memory into f15
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f10, 0(x2) # load 0xffffffefffff7fff from memory into f10
fsub.h f18, f15, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xe3282847bc6b5cf6 # load x3 with value 0xe3282847bc6b5cf6
sd x3, 0(x2) # store 0xe3282847bc6b5cf6 in memory
fld f14, 0(x2) # load 0xe3282847bc6b5cf6 from memory into f14
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f1, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f1
fsub.h f21, f14, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x927db37ab29c0cea # load x3 with value 0x927db37ab29c0cea
sd x3, 0(x2) # store 0x927db37ab29c0cea in memory
fld f27, 0(x2) # load 0x927db37ab29c0cea from memory into f27
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f23, 0(x2) # load 0xfffffffcffff7dff from memory into f23
fsub.h f31, f27, f23 # perform operation

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
