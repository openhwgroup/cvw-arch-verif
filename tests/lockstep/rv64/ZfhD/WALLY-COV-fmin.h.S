///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfhD/WALLY-COV-fmin.h.S
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
li x3, 0xcb6eb98bcbe62f0e # load x3 with value 0xcb6eb98bcbe62f0e
sd x3, 0(x2) # store 0xcb6eb98bcbe62f0e in memory
flh f28, 0(x2) # load 0xcb6eb98bcbe62f0e from memory into f28
la x2, scratch
li x3, 0xed70a4402725dd45 # load x3 with value 0xed70a4402725dd45
sd x3, 0(x2) # store 0xed70a4402725dd45 in memory
flh f2, 0(x2) # load 0xed70a4402725dd45 from memory into f2
fmin.h f6, f28, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f15, 0(x2) # load 0xffffffff00000000 from memory into f15
la x2, scratch
li x3, 0x0a028893860f1706 # load x3 with value 0x0a028893860f1706
sd x3, 0(x2) # store 0x0a028893860f1706 in memory
fld f21, 0(x2) # load 0x0a028893860f1706 from memory into f21
fmin.h f25, f15, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f26, 0(x2) # load 0xfffffffffffe8000 from memory into f26
la x2, scratch
li x3, 0xa0f0df255b4bd49c # load x3 with value 0xa0f0df255b4bd49c
sd x3, 0(x2) # store 0xa0f0df255b4bd49c in memory
fld f28, 0(x2) # load 0xa0f0df255b4bd49c from memory into f28
fmin.h f25, f26, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f1, 0(x2) # load 0x7fffffffffff3c00 from memory into f1
la x2, scratch
li x3, 0x5d28f832710cfb89 # load x3 with value 0x5d28f832710cfb89
sd x3, 0(x2) # store 0x5d28f832710cfb89 in memory
fld f8, 0(x2) # load 0x5d28f832710cfb89 from memory into f8
fmin.h f24, f1, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f28, 0(x2) # load 0xfeedbee5beefbc00 from memory into f28
la x2, scratch
li x3, 0x53d924df0e15d632 # load x3 with value 0x53d924df0e15d632
sd x3, 0(x2) # store 0x53d924df0e15d632 in memory
fld f11, 0(x2) # load 0x53d924df0e15d632 from memory into f11
fmin.h f15, f28, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f1, 0(x2) # load 0xffffffefffff0400 from memory into f1
la x2, scratch
li x3, 0xf822d2768cf0f886 # load x3 with value 0xf822d2768cf0f886
sd x3, 0(x2) # store 0xf822d2768cf0f886 in memory
fld f20, 0(x2) # load 0xf822d2768cf0f886 from memory into f20
fmin.h f27, f1, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f14, 0(x2) # load 0x00000000ffff8400 from memory into f14
la x2, scratch
li x3, 0x8a86c57bb62e30e5 # load x3 with value 0x8a86c57bb62e30e5
sd x3, 0(x2) # store 0x8a86c57bb62e30e5 in memory
fld f24, 0(x2) # load 0x8a86c57bb62e30e5 from memory into f24
fmin.h f6, f14, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f19, 0(x2) # load 0xefffffffffff7bff from memory into f19
la x2, scratch
li x3, 0x89a1a223362a3657 # load x3 with value 0x89a1a223362a3657
sd x3, 0(x2) # store 0x89a1a223362a3657 in memory
fld f31, 0(x2) # load 0x89a1a223362a3657 from memory into f31
fmin.h f12, f19, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f31, 0(x2) # load 0xc0dec0dec0defbff from memory into f31
la x2, scratch
li x3, 0x782d63d483077125 # load x3 with value 0x782d63d483077125
sd x3, 0(x2) # store 0x782d63d483077125 in memory
fld f27, 0(x2) # load 0x782d63d483077125 from memory into f27
fmin.h f30, f31, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f6, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f6
la x2, scratch
li x3, 0xbc7533d48ed813d8 # load x3 with value 0xbc7533d48ed813d8
sd x3, 0(x2) # store 0xbc7533d48ed813d8 in memory
fld f5, 0(x2) # load 0xbc7533d48ed813d8 from memory into f5
fmin.h f21, f6, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f5, 0(x2) # load 0xffffffff0ffffc00 from memory into f5
la x2, scratch
li x3, 0x5052e0c201171c60 # load x3 with value 0x5052e0c201171c60
sd x3, 0(x2) # store 0x5052e0c201171c60 in memory
fld f26, 0(x2) # load 0x5052e0c201171c60 from memory into f26
fmin.h f2, f5, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f1, 0(x2) # load 0xfffeffffffff7e00 from memory into f1
la x2, scratch
li x3, 0x072873fa0153f3f1 # load x3 with value 0x072873fa0153f3f1
sd x3, 0(x2) # store 0x072873fa0153f3f1 in memory
fld f27, 0(x2) # load 0x072873fa0153f3f1 from memory into f27
fmin.h f31, f1, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f24, 0(x2) # load 0xffffffefffff7fff from memory into f24
la x2, scratch
li x3, 0x0de6465dfc29c555 # load x3 with value 0x0de6465dfc29c555
sd x3, 0(x2) # store 0x0de6465dfc29c555 in memory
fld f17, 0(x2) # load 0x0de6465dfc29c555 from memory into f17
fmin.h f14, f24, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f26, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f26
la x2, scratch
li x3, 0x6713fc8ae661e121 # load x3 with value 0x6713fc8ae661e121
sd x3, 0(x2) # store 0x6713fc8ae661e121 in memory
fld f29, 0(x2) # load 0x6713fc8ae661e121 from memory into f29
fmin.h f2, f26, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f26, 0(x2) # load 0xfffffffcffff7dff from memory into f26
la x2, scratch
li x3, 0x0c0d7021a4f58b0f # load x3 with value 0x0c0d7021a4f58b0f
sd x3, 0(x2) # store 0x0c0d7021a4f58b0f in memory
fld f1, 0(x2) # load 0x0c0d7021a4f58b0f from memory into f1
fmin.h f28, f26, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xe681ac4e8d238094 # load x3 with value 0xe681ac4e8d238094
sd x3, 0(x2) # store 0xe681ac4e8d238094 in memory
fld f10, 0(x2) # load 0xe681ac4e8d238094 from memory into f10
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f21, 0(x2) # load 0xffffffff00000000 from memory into f21
fmin.h f7, f10, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xc56adb2c5a75ccc9 # load x3 with value 0xc56adb2c5a75ccc9
sd x3, 0(x2) # store 0xc56adb2c5a75ccc9 in memory
fld f30, 0(x2) # load 0xc56adb2c5a75ccc9 from memory into f30
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f5, 0(x2) # load 0xfffffffffffe8000 from memory into f5
fmin.h f9, f30, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x827eb14475b87bc8 # load x3 with value 0x827eb14475b87bc8
sd x3, 0(x2) # store 0x827eb14475b87bc8 in memory
fld f18, 0(x2) # load 0x827eb14475b87bc8 from memory into f18
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f30, 0(x2) # load 0x7fffffffffff3c00 from memory into f30
fmin.h f1, f18, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xda7cbd79865a006b # load x3 with value 0xda7cbd79865a006b
sd x3, 0(x2) # store 0xda7cbd79865a006b in memory
fld f13, 0(x2) # load 0xda7cbd79865a006b from memory into f13
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f6, 0(x2) # load 0xfeedbee5beefbc00 from memory into f6
fmin.h f28, f13, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x2984ce8ca1d63256 # load x3 with value 0x2984ce8ca1d63256
sd x3, 0(x2) # store 0x2984ce8ca1d63256 in memory
fld f31, 0(x2) # load 0x2984ce8ca1d63256 from memory into f31
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f10, 0(x2) # load 0xffffffefffff0400 from memory into f10
fmin.h f24, f31, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x7f4815b102cd570a # load x3 with value 0x7f4815b102cd570a
sd x3, 0(x2) # store 0x7f4815b102cd570a in memory
fld f25, 0(x2) # load 0x7f4815b102cd570a from memory into f25
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f2, 0(x2) # load 0x00000000ffff8400 from memory into f2
fmin.h f8, f25, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x685b56f549a676c8 # load x3 with value 0x685b56f549a676c8
sd x3, 0(x2) # store 0x685b56f549a676c8 in memory
fld f23, 0(x2) # load 0x685b56f549a676c8 from memory into f23
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f11, 0(x2) # load 0xefffffffffff7bff from memory into f11
fmin.h f14, f23, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x067147f611566a4f # load x3 with value 0x067147f611566a4f
sd x3, 0(x2) # store 0x067147f611566a4f in memory
fld f22, 0(x2) # load 0x067147f611566a4f from memory into f22
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f11, 0(x2) # load 0xc0dec0dec0defbff from memory into f11
fmin.h f21, f22, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x5c867cb6114b374d # load x3 with value 0x5c867cb6114b374d
sd x3, 0(x2) # store 0x5c867cb6114b374d in memory
fld f29, 0(x2) # load 0x5c867cb6114b374d from memory into f29
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f11, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f11
fmin.h f16, f29, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xb8232c7e081d3e7f # load x3 with value 0xb8232c7e081d3e7f
sd x3, 0(x2) # store 0xb8232c7e081d3e7f in memory
fld f7, 0(x2) # load 0xb8232c7e081d3e7f from memory into f7
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f13, 0(x2) # load 0xffffffff0ffffc00 from memory into f13
fmin.h f23, f7, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x92b1d0c9a406b24c # load x3 with value 0x92b1d0c9a406b24c
sd x3, 0(x2) # store 0x92b1d0c9a406b24c in memory
fld f2, 0(x2) # load 0x92b1d0c9a406b24c from memory into f2
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f20, 0(x2) # load 0xfffeffffffff7e00 from memory into f20
fmin.h f8, f2, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x9ea63b921359c819 # load x3 with value 0x9ea63b921359c819
sd x3, 0(x2) # store 0x9ea63b921359c819 in memory
fld f9, 0(x2) # load 0x9ea63b921359c819 from memory into f9
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f8, 0(x2) # load 0xffffffefffff7fff from memory into f8
fmin.h f3, f9, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xe62067c8ac1dd463 # load x3 with value 0xe62067c8ac1dd463
sd x3, 0(x2) # store 0xe62067c8ac1dd463 in memory
fld f9, 0(x2) # load 0xe62067c8ac1dd463 from memory into f9
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f10, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f10
fmin.h f30, f9, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x74134b2d4317fdd1 # load x3 with value 0x74134b2d4317fdd1
sd x3, 0(x2) # store 0x74134b2d4317fdd1 in memory
fld f15, 0(x2) # load 0x74134b2d4317fdd1 from memory into f15
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f19, 0(x2) # load 0xfffffffcffff7dff from memory into f19
fmin.h f20, f15, f19 # perform operation

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
