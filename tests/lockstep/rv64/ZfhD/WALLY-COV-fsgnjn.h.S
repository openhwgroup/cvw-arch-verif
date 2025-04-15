///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfhD/WALLY-COV-fsgnjn.h.S
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
li x3, 0x97eb160177afdcff # load x3 with value 0x97eb160177afdcff
sd x3, 0(x2) # store 0x97eb160177afdcff in memory
flh f2, 0(x2) # load 0x97eb160177afdcff from memory into f2
la x2, scratch
li x3, 0x07f453823e8353da # load x3 with value 0x07f453823e8353da
sd x3, 0(x2) # store 0x07f453823e8353da in memory
flh f17, 0(x2) # load 0x07f453823e8353da from memory into f17
fsgnjn.h f27, f2, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f27, 0(x2) # load 0xffffffff00000000 from memory into f27
la x2, scratch
li x3, 0xced3ebb550fe14b5 # load x3 with value 0xced3ebb550fe14b5
sd x3, 0(x2) # store 0xced3ebb550fe14b5 in memory
fld f8, 0(x2) # load 0xced3ebb550fe14b5 from memory into f8
fsgnjn.h f31, f27, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f19, 0(x2) # load 0xfffffffffffe8000 from memory into f19
la x2, scratch
li x3, 0xbce94d5c4fc9f125 # load x3 with value 0xbce94d5c4fc9f125
sd x3, 0(x2) # store 0xbce94d5c4fc9f125 in memory
fld f31, 0(x2) # load 0xbce94d5c4fc9f125 from memory into f31
fsgnjn.h f9, f19, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f9, 0(x2) # load 0x7fffffffffff3c00 from memory into f9
la x2, scratch
li x3, 0x58d7ce2103433b98 # load x3 with value 0x58d7ce2103433b98
sd x3, 0(x2) # store 0x58d7ce2103433b98 in memory
fld f10, 0(x2) # load 0x58d7ce2103433b98 from memory into f10
fsgnjn.h f23, f9, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f14, 0(x2) # load 0xfeedbee5beefbc00 from memory into f14
la x2, scratch
li x3, 0x96e07a8ed45803c3 # load x3 with value 0x96e07a8ed45803c3
sd x3, 0(x2) # store 0x96e07a8ed45803c3 in memory
fld f19, 0(x2) # load 0x96e07a8ed45803c3 from memory into f19
fsgnjn.h f8, f14, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f19, 0(x2) # load 0xffffffefffff0400 from memory into f19
la x2, scratch
li x3, 0xdb12f7867d882a6c # load x3 with value 0xdb12f7867d882a6c
sd x3, 0(x2) # store 0xdb12f7867d882a6c in memory
fld f5, 0(x2) # load 0xdb12f7867d882a6c from memory into f5
fsgnjn.h f7, f19, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f31, 0(x2) # load 0x00000000ffff8400 from memory into f31
la x2, scratch
li x3, 0x24feca50cd086799 # load x3 with value 0x24feca50cd086799
sd x3, 0(x2) # store 0x24feca50cd086799 in memory
fld f2, 0(x2) # load 0x24feca50cd086799 from memory into f2
fsgnjn.h f25, f31, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f12, 0(x2) # load 0xefffffffffff7bff from memory into f12
la x2, scratch
li x3, 0x770bc7a555ea40c0 # load x3 with value 0x770bc7a555ea40c0
sd x3, 0(x2) # store 0x770bc7a555ea40c0 in memory
fld f17, 0(x2) # load 0x770bc7a555ea40c0 from memory into f17
fsgnjn.h f21, f12, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f7, 0(x2) # load 0xc0dec0dec0defbff from memory into f7
la x2, scratch
li x3, 0xfe705c996483c637 # load x3 with value 0xfe705c996483c637
sd x3, 0(x2) # store 0xfe705c996483c637 in memory
fld f6, 0(x2) # load 0xfe705c996483c637 from memory into f6
fsgnjn.h f17, f7, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f20, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f20
la x2, scratch
li x3, 0x6f47834d031294b9 # load x3 with value 0x6f47834d031294b9
sd x3, 0(x2) # store 0x6f47834d031294b9 in memory
fld f3, 0(x2) # load 0x6f47834d031294b9 from memory into f3
fsgnjn.h f16, f20, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f20, 0(x2) # load 0xffffffff0ffffc00 from memory into f20
la x2, scratch
li x3, 0xe05acfbe35c05bc1 # load x3 with value 0xe05acfbe35c05bc1
sd x3, 0(x2) # store 0xe05acfbe35c05bc1 in memory
fld f7, 0(x2) # load 0xe05acfbe35c05bc1 from memory into f7
fsgnjn.h f9, f20, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f20, 0(x2) # load 0xfffeffffffff7e00 from memory into f20
la x2, scratch
li x3, 0xfaf797580143557d # load x3 with value 0xfaf797580143557d
sd x3, 0(x2) # store 0xfaf797580143557d in memory
fld f8, 0(x2) # load 0xfaf797580143557d from memory into f8
fsgnjn.h f1, f20, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f10, 0(x2) # load 0xffffffefffff7fff from memory into f10
la x2, scratch
li x3, 0xb13f263afb57898b # load x3 with value 0xb13f263afb57898b
sd x3, 0(x2) # store 0xb13f263afb57898b in memory
fld f3, 0(x2) # load 0xb13f263afb57898b from memory into f3
fsgnjn.h f6, f10, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f21, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f21
la x2, scratch
li x3, 0x911ba3327d395c20 # load x3 with value 0x911ba3327d395c20
sd x3, 0(x2) # store 0x911ba3327d395c20 in memory
fld f27, 0(x2) # load 0x911ba3327d395c20 from memory into f27
fsgnjn.h f29, f21, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f27, 0(x2) # load 0xfffffffcffff7dff from memory into f27
la x2, scratch
li x3, 0x70d27947905c3cc4 # load x3 with value 0x70d27947905c3cc4
sd x3, 0(x2) # store 0x70d27947905c3cc4 in memory
fld f16, 0(x2) # load 0x70d27947905c3cc4 from memory into f16
fsgnjn.h f5, f27, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xc0ea8cd7bc45d374 # load x3 with value 0xc0ea8cd7bc45d374
sd x3, 0(x2) # store 0xc0ea8cd7bc45d374 in memory
fld f30, 0(x2) # load 0xc0ea8cd7bc45d374 from memory into f30
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f7, 0(x2) # load 0xffffffff00000000 from memory into f7
fsgnjn.h f23, f30, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x631f98617b82381f # load x3 with value 0x631f98617b82381f
sd x3, 0(x2) # store 0x631f98617b82381f in memory
fld f9, 0(x2) # load 0x631f98617b82381f from memory into f9
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f11, 0(x2) # load 0xfffffffffffe8000 from memory into f11
fsgnjn.h f8, f9, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x4ca19b61e5717722 # load x3 with value 0x4ca19b61e5717722
sd x3, 0(x2) # store 0x4ca19b61e5717722 in memory
fld f18, 0(x2) # load 0x4ca19b61e5717722 from memory into f18
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f9, 0(x2) # load 0x7fffffffffff3c00 from memory into f9
fsgnjn.h f23, f18, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xe4316d7ecc6714f6 # load x3 with value 0xe4316d7ecc6714f6
sd x3, 0(x2) # store 0xe4316d7ecc6714f6 in memory
fld f15, 0(x2) # load 0xe4316d7ecc6714f6 from memory into f15
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f30, 0(x2) # load 0xfeedbee5beefbc00 from memory into f30
fsgnjn.h f1, f15, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x4d1340b490dbf20b # load x3 with value 0x4d1340b490dbf20b
sd x3, 0(x2) # store 0x4d1340b490dbf20b in memory
fld f18, 0(x2) # load 0x4d1340b490dbf20b from memory into f18
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f13, 0(x2) # load 0xffffffefffff0400 from memory into f13
fsgnjn.h f20, f18, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x3bbc39bb6dfad4e5 # load x3 with value 0x3bbc39bb6dfad4e5
sd x3, 0(x2) # store 0x3bbc39bb6dfad4e5 in memory
fld f6, 0(x2) # load 0x3bbc39bb6dfad4e5 from memory into f6
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f19, 0(x2) # load 0x00000000ffff8400 from memory into f19
fsgnjn.h f5, f6, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x8721234040fe11d7 # load x3 with value 0x8721234040fe11d7
sd x3, 0(x2) # store 0x8721234040fe11d7 in memory
fld f12, 0(x2) # load 0x8721234040fe11d7 from memory into f12
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f27, 0(x2) # load 0xefffffffffff7bff from memory into f27
fsgnjn.h f5, f12, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x17d273c6bf53706d # load x3 with value 0x17d273c6bf53706d
sd x3, 0(x2) # store 0x17d273c6bf53706d in memory
fld f19, 0(x2) # load 0x17d273c6bf53706d from memory into f19
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f6, 0(x2) # load 0xc0dec0dec0defbff from memory into f6
fsgnjn.h f21, f19, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xf098cac4836511f6 # load x3 with value 0xf098cac4836511f6
sd x3, 0(x2) # store 0xf098cac4836511f6 in memory
fld f13, 0(x2) # load 0xf098cac4836511f6 from memory into f13
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f22, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f22
fsgnjn.h f20, f13, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x7a41b6393b27f67b # load x3 with value 0x7a41b6393b27f67b
sd x3, 0(x2) # store 0x7a41b6393b27f67b in memory
fld f8, 0(x2) # load 0x7a41b6393b27f67b from memory into f8
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f30, 0(x2) # load 0xffffffff0ffffc00 from memory into f30
fsgnjn.h f16, f8, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x25a0212ed38136fc # load x3 with value 0x25a0212ed38136fc
sd x3, 0(x2) # store 0x25a0212ed38136fc in memory
fld f21, 0(x2) # load 0x25a0212ed38136fc from memory into f21
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f7, 0(x2) # load 0xfffeffffffff7e00 from memory into f7
fsgnjn.h f12, f21, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x7d4ad16505a7408c # load x3 with value 0x7d4ad16505a7408c
sd x3, 0(x2) # store 0x7d4ad16505a7408c in memory
fld f2, 0(x2) # load 0x7d4ad16505a7408c from memory into f2
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f1, 0(x2) # load 0xffffffefffff7fff from memory into f1
fsgnjn.h f20, f2, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xc018e7d20015c58c # load x3 with value 0xc018e7d20015c58c
sd x3, 0(x2) # store 0xc018e7d20015c58c in memory
fld f27, 0(x2) # load 0xc018e7d20015c58c from memory into f27
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f6, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f6
fsgnjn.h f29, f27, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xcf078285cac5327a # load x3 with value 0xcf078285cac5327a
sd x3, 0(x2) # store 0xcf078285cac5327a in memory
fld f12, 0(x2) # load 0xcf078285cac5327a from memory into f12
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f20, 0(x2) # load 0xfffffffcffff7dff from memory into f20
fsgnjn.h f28, f12, f20 # perform operation

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
