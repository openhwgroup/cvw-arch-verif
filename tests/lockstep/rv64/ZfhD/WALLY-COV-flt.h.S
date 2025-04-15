///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfhD/WALLY-COV-flt.h.S
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


# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f30, 0(x2) # load 0xffffffff00000000 from memory into f30
la x2, scratch
li x3, 0xb52a0ee3976ad2a4 # load x3 with value 0xb52a0ee3976ad2a4
sd x3, 0(x2) # store 0xb52a0ee3976ad2a4 in memory
fld f11, 0(x2) # load 0xb52a0ee3976ad2a4 from memory into f11
flt.h x20, f30, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f7, 0(x2) # load 0xfffffffffffe8000 from memory into f7
la x2, scratch
li x3, 0x4bc742ad2e44440e # load x3 with value 0x4bc742ad2e44440e
sd x3, 0(x2) # store 0x4bc742ad2e44440e in memory
fld f17, 0(x2) # load 0x4bc742ad2e44440e from memory into f17
flt.h x18, f7, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 8)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f23, 0(x2) # load 0x7fffffffffff3c00 from memory into f23
la x2, scratch
li x3, 0xd4c5d1b4e5ce5032 # load x3 with value 0xd4c5d1b4e5ce5032
sd x3, 0(x2) # store 0xd4c5d1b4e5ce5032 in memory
fld f31, 0(x2) # load 0xd4c5d1b4e5ce5032 from memory into f31
flt.h x10, f23, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 16)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f14, 0(x2) # load 0xfeedbee5beefbc00 from memory into f14
la x2, scratch
li x3, 0xb6e4afbb959618fa # load x3 with value 0xb6e4afbb959618fa
sd x3, 0(x2) # store 0xb6e4afbb959618fa in memory
fld f30, 0(x2) # load 0xb6e4afbb959618fa from memory into f30
flt.h x15, f14, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 24)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f23, 0(x2) # load 0xffffffefffff0400 from memory into f23
la x2, scratch
li x3, 0xa84959d8b10bf2ea # load x3 with value 0xa84959d8b10bf2ea
sd x3, 0(x2) # store 0xa84959d8b10bf2ea in memory
fld f10, 0(x2) # load 0xa84959d8b10bf2ea from memory into f10
flt.h x27, f23, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f2, 0(x2) # load 0x00000000ffff8400 from memory into f2
la x2, scratch
li x3, 0x3a76790b0df91bac # load x3 with value 0x3a76790b0df91bac
sd x3, 0(x2) # store 0x3a76790b0df91bac in memory
fld f6, 0(x2) # load 0x3a76790b0df91bac from memory into f6
flt.h x13, f2, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 40)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f19, 0(x2) # load 0xefffffffffff7bff from memory into f19
la x2, scratch
li x3, 0xa29490f97a4576fd # load x3 with value 0xa29490f97a4576fd
sd x3, 0(x2) # store 0xa29490f97a4576fd in memory
fld f31, 0(x2) # load 0xa29490f97a4576fd from memory into f31
flt.h x22, f19, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 48)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f23, 0(x2) # load 0xc0dec0dec0defbff from memory into f23
la x2, scratch
li x3, 0x04d664ea888264fa # load x3 with value 0x04d664ea888264fa
sd x3, 0(x2) # store 0x04d664ea888264fa in memory
fld f12, 0(x2) # load 0x04d664ea888264fa from memory into f12
flt.h x18, f23, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 56)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f16, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f16
la x2, scratch
li x3, 0xd61f5e1c88139768 # load x3 with value 0xd61f5e1c88139768
sd x3, 0(x2) # store 0xd61f5e1c88139768 in memory
fld f31, 0(x2) # load 0xd61f5e1c88139768 from memory into f31
flt.h x11, f16, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 64)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f21, 0(x2) # load 0xffffffff0ffffc00 from memory into f21
la x2, scratch
li x3, 0x2db407efcbe3f515 # load x3 with value 0x2db407efcbe3f515
sd x3, 0(x2) # store 0x2db407efcbe3f515 in memory
fld f19, 0(x2) # load 0x2db407efcbe3f515 from memory into f19
flt.h x7, f21, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f24, 0(x2) # load 0xfffeffffffff7e00 from memory into f24
la x2, scratch
li x3, 0x5dcdbe9999cee63e # load x3 with value 0x5dcdbe9999cee63e
sd x3, 0(x2) # store 0x5dcdbe9999cee63e in memory
fld f8, 0(x2) # load 0x5dcdbe9999cee63e from memory into f8
flt.h x22, f24, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 80)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f18, 0(x2) # load 0xffffffefffff7fff from memory into f18
la x2, scratch
li x3, 0x903d4927041df668 # load x3 with value 0x903d4927041df668
sd x3, 0(x2) # store 0x903d4927041df668 in memory
fld f27, 0(x2) # load 0x903d4927041df668 from memory into f27
flt.h x19, f18, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 88)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f30, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f30
la x2, scratch
li x3, 0xc7b47c2e26d64f3d # load x3 with value 0xc7b47c2e26d64f3d
sd x3, 0(x2) # store 0xc7b47c2e26d64f3d in memory
fld f26, 0(x2) # load 0xc7b47c2e26d64f3d from memory into f26
flt.h x19, f30, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f18, 0(x2) # load 0xfffffffcffff7dff from memory into f18
la x2, scratch
li x3, 0xa13cd3b09442b1d0 # load x3 with value 0xa13cd3b09442b1d0
sd x3, 0(x2) # store 0xa13cd3b09442b1d0 in memory
fld f17, 0(x2) # load 0xa13cd3b09442b1d0 from memory into f17
flt.h x5, f18, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xa8f6f9ef445463d4 # load x3 with value 0xa8f6f9ef445463d4
sd x3, 0(x2) # store 0xa8f6f9ef445463d4 in memory
fld f30, 0(x2) # load 0xa8f6f9ef445463d4 from memory into f30
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f8, 0(x2) # load 0xffffffff00000000 from memory into f8
flt.h x2, f30, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 112)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x89fcd4a7805023b0 # load x3 with value 0x89fcd4a7805023b0
sd x3, 0(x2) # store 0x89fcd4a7805023b0 in memory
fld f16, 0(x2) # load 0x89fcd4a7805023b0 from memory into f16
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f13, 0(x2) # load 0xfffffffffffe8000 from memory into f13
flt.h x12, f16, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 120)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x7bf53ddcf21a124b # load x3 with value 0x7bf53ddcf21a124b
sd x3, 0(x2) # store 0x7bf53ddcf21a124b in memory
fld f7, 0(x2) # load 0x7bf53ddcf21a124b from memory into f7
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f9, 0(x2) # load 0x7fffffffffff3c00 from memory into f9
flt.h x12, f7, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 128)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x811d467d17fdad91 # load x3 with value 0x811d467d17fdad91
sd x3, 0(x2) # store 0x811d467d17fdad91 in memory
fld f9, 0(x2) # load 0x811d467d17fdad91 from memory into f9
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f11, 0(x2) # load 0xfeedbee5beefbc00 from memory into f11
flt.h x14, f9, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 136)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x609aa814c5465661 # load x3 with value 0x609aa814c5465661
sd x3, 0(x2) # store 0x609aa814c5465661 in memory
fld f31, 0(x2) # load 0x609aa814c5465661 from memory into f31
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f26, 0(x2) # load 0xffffffefffff0400 from memory into f26
flt.h x15, f31, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 144)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x231d175839307f8b # load x3 with value 0x231d175839307f8b
sd x3, 0(x2) # store 0x231d175839307f8b in memory
fld f10, 0(x2) # load 0x231d175839307f8b from memory into f10
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f8, 0(x2) # load 0x00000000ffff8400 from memory into f8
flt.h x12, f10, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 152)

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x783defd45d130e8d # load x3 with value 0x783defd45d130e8d
sd x3, 0(x2) # store 0x783defd45d130e8d in memory
fld f19, 0(x2) # load 0x783defd45d130e8d from memory into f19
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f2, 0(x2) # load 0xefffffffffff7bff from memory into f2
flt.h x10, f19, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 160)

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x8a33ff238995fb46 # load x3 with value 0x8a33ff238995fb46
sd x3, 0(x2) # store 0x8a33ff238995fb46 in memory
fld f18, 0(x2) # load 0x8a33ff238995fb46 from memory into f18
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f3, 0(x2) # load 0xc0dec0dec0defbff from memory into f3
flt.h x22, f18, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 168)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x3bbca2bb5d40a862 # load x3 with value 0x3bbca2bb5d40a862
sd x3, 0(x2) # store 0x3bbca2bb5d40a862 in memory
fld f27, 0(x2) # load 0x3bbca2bb5d40a862 from memory into f27
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f14, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f14
flt.h x21, f27, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 176)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x422e61e485d42ccb # load x3 with value 0x422e61e485d42ccb
sd x3, 0(x2) # store 0x422e61e485d42ccb in memory
fld f19, 0(x2) # load 0x422e61e485d42ccb from memory into f19
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f8, 0(x2) # load 0xffffffff0ffffc00 from memory into f8
flt.h x15, f19, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 184)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x4d8b6d4cd42146ab # load x3 with value 0x4d8b6d4cd42146ab
sd x3, 0(x2) # store 0x4d8b6d4cd42146ab in memory
fld f23, 0(x2) # load 0x4d8b6d4cd42146ab from memory into f23
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f3, 0(x2) # load 0xfffeffffffff7e00 from memory into f3
flt.h x20, f23, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 192)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x4653b8b7a14082d1 # load x3 with value 0x4653b8b7a14082d1
sd x3, 0(x2) # store 0x4653b8b7a14082d1 in memory
fld f28, 0(x2) # load 0x4653b8b7a14082d1 from memory into f28
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f10, 0(x2) # load 0xffffffefffff7fff from memory into f10
flt.h x6, f28, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 200)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x1cb059cef3888fc5 # load x3 with value 0x1cb059cef3888fc5
sd x3, 0(x2) # store 0x1cb059cef3888fc5 in memory
fld f9, 0(x2) # load 0x1cb059cef3888fc5 from memory into f9
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f2, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f2
flt.h x10, f9, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 208)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x92d4d3ebfc61e6f9 # load x3 with value 0x92d4d3ebfc61e6f9
sd x3, 0(x2) # store 0x92d4d3ebfc61e6f9 in memory
fld f7, 0(x2) # load 0x92d4d3ebfc61e6f9 from memory into f7
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f5, 0(x2) # load 0xfffffffcffff7dff from memory into f5
flt.h x3, f7, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 216)

.EQU SIGSIZE,224


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
