///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfhD/WALLY-COV-fmul.h.S
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
li x3, 0x36278475c21d0524 # load x3 with value 0x36278475c21d0524
sd x3, 0(x2) # store 0x36278475c21d0524 in memory
flh f18, 0(x2) # load 0x36278475c21d0524 from memory into f18
la x2, scratch
li x3, 0x984c416fb1e4c21e # load x3 with value 0x984c416fb1e4c21e
sd x3, 0(x2) # store 0x984c416fb1e4c21e in memory
flh f10, 0(x2) # load 0x984c416fb1e4c21e from memory into f10
fmul.h f28, f18, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f9, 0(x2) # load 0xffffffff00000000 from memory into f9
la x2, scratch
li x3, 0x91ea70713d5e4ec1 # load x3 with value 0x91ea70713d5e4ec1
sd x3, 0(x2) # store 0x91ea70713d5e4ec1 in memory
fld f7, 0(x2) # load 0x91ea70713d5e4ec1 from memory into f7
fmul.h f12, f9, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f19, 0(x2) # load 0xfffffffffffe8000 from memory into f19
la x2, scratch
li x3, 0x022e11f05c571580 # load x3 with value 0x022e11f05c571580
sd x3, 0(x2) # store 0x022e11f05c571580 in memory
fld f16, 0(x2) # load 0x022e11f05c571580 from memory into f16
fmul.h f14, f19, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f27, 0(x2) # load 0x7fffffffffff3c00 from memory into f27
la x2, scratch
li x3, 0x5b6dff0ed3e21b33 # load x3 with value 0x5b6dff0ed3e21b33
sd x3, 0(x2) # store 0x5b6dff0ed3e21b33 in memory
fld f20, 0(x2) # load 0x5b6dff0ed3e21b33 from memory into f20
fmul.h f10, f27, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f21, 0(x2) # load 0xfeedbee5beefbc00 from memory into f21
la x2, scratch
li x3, 0x0dbcd1cd8bf3296a # load x3 with value 0x0dbcd1cd8bf3296a
sd x3, 0(x2) # store 0x0dbcd1cd8bf3296a in memory
fld f17, 0(x2) # load 0x0dbcd1cd8bf3296a from memory into f17
fmul.h f28, f21, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f30, 0(x2) # load 0xffffffefffff0400 from memory into f30
la x2, scratch
li x3, 0x6051d652505f922d # load x3 with value 0x6051d652505f922d
sd x3, 0(x2) # store 0x6051d652505f922d in memory
fld f27, 0(x2) # load 0x6051d652505f922d from memory into f27
fmul.h f22, f30, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f24, 0(x2) # load 0x00000000ffff8400 from memory into f24
la x2, scratch
li x3, 0xd4b37e1d8e3627d1 # load x3 with value 0xd4b37e1d8e3627d1
sd x3, 0(x2) # store 0xd4b37e1d8e3627d1 in memory
fld f3, 0(x2) # load 0xd4b37e1d8e3627d1 from memory into f3
fmul.h f14, f24, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f12, 0(x2) # load 0xefffffffffff7bff from memory into f12
la x2, scratch
li x3, 0x058fc178a35c38e5 # load x3 with value 0x058fc178a35c38e5
sd x3, 0(x2) # store 0x058fc178a35c38e5 in memory
fld f31, 0(x2) # load 0x058fc178a35c38e5 from memory into f31
fmul.h f27, f12, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f16, 0(x2) # load 0xc0dec0dec0defbff from memory into f16
la x2, scratch
li x3, 0x90243a2e6fdbded3 # load x3 with value 0x90243a2e6fdbded3
sd x3, 0(x2) # store 0x90243a2e6fdbded3 in memory
fld f5, 0(x2) # load 0x90243a2e6fdbded3 from memory into f5
fmul.h f28, f16, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f7, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f7
la x2, scratch
li x3, 0x5aa07b5512e7f389 # load x3 with value 0x5aa07b5512e7f389
sd x3, 0(x2) # store 0x5aa07b5512e7f389 in memory
fld f10, 0(x2) # load 0x5aa07b5512e7f389 from memory into f10
fmul.h f1, f7, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f24, 0(x2) # load 0xffffffff0ffffc00 from memory into f24
la x2, scratch
li x3, 0x1b74bae54c640ec9 # load x3 with value 0x1b74bae54c640ec9
sd x3, 0(x2) # store 0x1b74bae54c640ec9 in memory
fld f25, 0(x2) # load 0x1b74bae54c640ec9 from memory into f25
fmul.h f14, f24, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f18, 0(x2) # load 0xfffeffffffff7e00 from memory into f18
la x2, scratch
li x3, 0xdafd943af1fdd044 # load x3 with value 0xdafd943af1fdd044
sd x3, 0(x2) # store 0xdafd943af1fdd044 in memory
fld f13, 0(x2) # load 0xdafd943af1fdd044 from memory into f13
fmul.h f23, f18, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f12, 0(x2) # load 0xffffffefffff7fff from memory into f12
la x2, scratch
li x3, 0xabca7adc608703c0 # load x3 with value 0xabca7adc608703c0
sd x3, 0(x2) # store 0xabca7adc608703c0 in memory
fld f9, 0(x2) # load 0xabca7adc608703c0 from memory into f9
fmul.h f17, f12, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f24, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f24
la x2, scratch
li x3, 0x82487bb638915a73 # load x3 with value 0x82487bb638915a73
sd x3, 0(x2) # store 0x82487bb638915a73 in memory
fld f5, 0(x2) # load 0x82487bb638915a73 from memory into f5
fmul.h f8, f24, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f14, 0(x2) # load 0xfffffffcffff7dff from memory into f14
la x2, scratch
li x3, 0x4f5c699df713365b # load x3 with value 0x4f5c699df713365b
sd x3, 0(x2) # store 0x4f5c699df713365b in memory
fld f23, 0(x2) # load 0x4f5c699df713365b from memory into f23
fmul.h f19, f14, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x10340c63633884c8 # load x3 with value 0x10340c63633884c8
sd x3, 0(x2) # store 0x10340c63633884c8 in memory
fld f14, 0(x2) # load 0x10340c63633884c8 from memory into f14
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f3, 0(x2) # load 0xffffffff00000000 from memory into f3
fmul.h f25, f14, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xad3f3134b26dd5e0 # load x3 with value 0xad3f3134b26dd5e0
sd x3, 0(x2) # store 0xad3f3134b26dd5e0 in memory
fld f11, 0(x2) # load 0xad3f3134b26dd5e0 from memory into f11
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f24, 0(x2) # load 0xfffffffffffe8000 from memory into f24
fmul.h f12, f11, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xb0c45252084ee11f # load x3 with value 0xb0c45252084ee11f
sd x3, 0(x2) # store 0xb0c45252084ee11f in memory
fld f20, 0(x2) # load 0xb0c45252084ee11f from memory into f20
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f3, 0(x2) # load 0x7fffffffffff3c00 from memory into f3
fmul.h f7, f20, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x18ead9cebc6877de # load x3 with value 0x18ead9cebc6877de
sd x3, 0(x2) # store 0x18ead9cebc6877de in memory
fld f2, 0(x2) # load 0x18ead9cebc6877de from memory into f2
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f13, 0(x2) # load 0xfeedbee5beefbc00 from memory into f13
fmul.h f31, f2, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x41c4dc45be3b1882 # load x3 with value 0x41c4dc45be3b1882
sd x3, 0(x2) # store 0x41c4dc45be3b1882 in memory
fld f13, 0(x2) # load 0x41c4dc45be3b1882 from memory into f13
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f7, 0(x2) # load 0xffffffefffff0400 from memory into f7
fmul.h f12, f13, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x06182932d7527fa9 # load x3 with value 0x06182932d7527fa9
sd x3, 0(x2) # store 0x06182932d7527fa9 in memory
fld f1, 0(x2) # load 0x06182932d7527fa9 from memory into f1
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f2, 0(x2) # load 0x00000000ffff8400 from memory into f2
fmul.h f23, f1, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x64e6486c3f7f1884 # load x3 with value 0x64e6486c3f7f1884
sd x3, 0(x2) # store 0x64e6486c3f7f1884 in memory
fld f9, 0(x2) # load 0x64e6486c3f7f1884 from memory into f9
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f14, 0(x2) # load 0xefffffffffff7bff from memory into f14
fmul.h f23, f9, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xe3b0a8a1fe77d8b0 # load x3 with value 0xe3b0a8a1fe77d8b0
sd x3, 0(x2) # store 0xe3b0a8a1fe77d8b0 in memory
fld f6, 0(x2) # load 0xe3b0a8a1fe77d8b0 from memory into f6
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f24, 0(x2) # load 0xc0dec0dec0defbff from memory into f24
fmul.h f9, f6, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xcc11c2f01c3c7cd5 # load x3 with value 0xcc11c2f01c3c7cd5
sd x3, 0(x2) # store 0xcc11c2f01c3c7cd5 in memory
fld f11, 0(x2) # load 0xcc11c2f01c3c7cd5 from memory into f11
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f6, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f6
fmul.h f8, f11, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xf48147892384f0fb # load x3 with value 0xf48147892384f0fb
sd x3, 0(x2) # store 0xf48147892384f0fb in memory
fld f26, 0(x2) # load 0xf48147892384f0fb from memory into f26
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f13, 0(x2) # load 0xffffffff0ffffc00 from memory into f13
fmul.h f14, f26, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x2495e54ec5ae3b23 # load x3 with value 0x2495e54ec5ae3b23
sd x3, 0(x2) # store 0x2495e54ec5ae3b23 in memory
fld f3, 0(x2) # load 0x2495e54ec5ae3b23 from memory into f3
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f7, 0(x2) # load 0xfffeffffffff7e00 from memory into f7
fmul.h f18, f3, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xb36f614431fc32f7 # load x3 with value 0xb36f614431fc32f7
sd x3, 0(x2) # store 0xb36f614431fc32f7 in memory
fld f11, 0(x2) # load 0xb36f614431fc32f7 from memory into f11
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f9, 0(x2) # load 0xffffffefffff7fff from memory into f9
fmul.h f5, f11, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x483778bd64155884 # load x3 with value 0x483778bd64155884
sd x3, 0(x2) # store 0x483778bd64155884 in memory
fld f15, 0(x2) # load 0x483778bd64155884 from memory into f15
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f10, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f10
fmul.h f21, f15, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xb2d1ef000492351b # load x3 with value 0xb2d1ef000492351b
sd x3, 0(x2) # store 0xb2d1ef000492351b in memory
fld f30, 0(x2) # load 0xb2d1ef000492351b from memory into f30
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f11, 0(x2) # load 0xfffffffcffff7dff from memory into f11
fmul.h f7, f30, f11 # perform operation

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
