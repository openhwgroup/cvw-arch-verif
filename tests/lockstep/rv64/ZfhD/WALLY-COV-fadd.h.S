///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfhD/WALLY-COV-fadd.h.S
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
li x3, 0xd75dd1b305e07ed7 # load x3 with value 0xd75dd1b305e07ed7
sd x3, 0(x2) # store 0xd75dd1b305e07ed7 in memory
flh f26, 0(x2) # load 0xd75dd1b305e07ed7 from memory into f26
la x2, scratch
li x3, 0xd65d7953b85c3fda # load x3 with value 0xd65d7953b85c3fda
sd x3, 0(x2) # store 0xd65d7953b85c3fda in memory
flh f17, 0(x2) # load 0xd65d7953b85c3fda from memory into f17
fadd.h f12, f26, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f7, 0(x2) # load 0xffffffff00000000 from memory into f7
la x2, scratch
li x3, 0x89a0dbe41f92e6cd # load x3 with value 0x89a0dbe41f92e6cd
sd x3, 0(x2) # store 0x89a0dbe41f92e6cd in memory
fld f27, 0(x2) # load 0x89a0dbe41f92e6cd from memory into f27
fadd.h f12, f7, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f23, 0(x2) # load 0xfffffffffffe8000 from memory into f23
la x2, scratch
li x3, 0x64322bb45a0754e4 # load x3 with value 0x64322bb45a0754e4
sd x3, 0(x2) # store 0x64322bb45a0754e4 in memory
fld f22, 0(x2) # load 0x64322bb45a0754e4 from memory into f22
fadd.h f9, f23, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f30, 0(x2) # load 0x7fffffffffff3c00 from memory into f30
la x2, scratch
li x3, 0xb74139eaf7655fa4 # load x3 with value 0xb74139eaf7655fa4
sd x3, 0(x2) # store 0xb74139eaf7655fa4 in memory
fld f26, 0(x2) # load 0xb74139eaf7655fa4 from memory into f26
fadd.h f8, f30, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f29, 0(x2) # load 0xfeedbee5beefbc00 from memory into f29
la x2, scratch
li x3, 0x4d908e923823a8d0 # load x3 with value 0x4d908e923823a8d0
sd x3, 0(x2) # store 0x4d908e923823a8d0 in memory
fld f31, 0(x2) # load 0x4d908e923823a8d0 from memory into f31
fadd.h f27, f29, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f26, 0(x2) # load 0xffffffefffff0400 from memory into f26
la x2, scratch
li x3, 0x1cf32e7826c9cc86 # load x3 with value 0x1cf32e7826c9cc86
sd x3, 0(x2) # store 0x1cf32e7826c9cc86 in memory
fld f12, 0(x2) # load 0x1cf32e7826c9cc86 from memory into f12
fadd.h f9, f26, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f22, 0(x2) # load 0x00000000ffff8400 from memory into f22
la x2, scratch
li x3, 0x5303a7534d6b35ce # load x3 with value 0x5303a7534d6b35ce
sd x3, 0(x2) # store 0x5303a7534d6b35ce in memory
fld f17, 0(x2) # load 0x5303a7534d6b35ce from memory into f17
fadd.h f1, f22, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f8, 0(x2) # load 0xefffffffffff7bff from memory into f8
la x2, scratch
li x3, 0x0fdd9133d1de7f5c # load x3 with value 0x0fdd9133d1de7f5c
sd x3, 0(x2) # store 0x0fdd9133d1de7f5c in memory
fld f11, 0(x2) # load 0x0fdd9133d1de7f5c from memory into f11
fadd.h f22, f8, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f11, 0(x2) # load 0xc0dec0dec0defbff from memory into f11
la x2, scratch
li x3, 0x1237b265993c5a06 # load x3 with value 0x1237b265993c5a06
sd x3, 0(x2) # store 0x1237b265993c5a06 in memory
fld f26, 0(x2) # load 0x1237b265993c5a06 from memory into f26
fadd.h f3, f11, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f27, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f27
la x2, scratch
li x3, 0x21556f76f741c056 # load x3 with value 0x21556f76f741c056
sd x3, 0(x2) # store 0x21556f76f741c056 in memory
fld f21, 0(x2) # load 0x21556f76f741c056 from memory into f21
fadd.h f7, f27, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f17, 0(x2) # load 0xffffffff0ffffc00 from memory into f17
la x2, scratch
li x3, 0xc129f9977455e201 # load x3 with value 0xc129f9977455e201
sd x3, 0(x2) # store 0xc129f9977455e201 in memory
fld f10, 0(x2) # load 0xc129f9977455e201 from memory into f10
fadd.h f12, f17, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f9, 0(x2) # load 0xfffeffffffff7e00 from memory into f9
la x2, scratch
li x3, 0x90d0413cff17cb84 # load x3 with value 0x90d0413cff17cb84
sd x3, 0(x2) # store 0x90d0413cff17cb84 in memory
fld f2, 0(x2) # load 0x90d0413cff17cb84 from memory into f2
fadd.h f19, f9, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f12, 0(x2) # load 0xffffffefffff7fff from memory into f12
la x2, scratch
li x3, 0xb7dd6826176e0546 # load x3 with value 0xb7dd6826176e0546
sd x3, 0(x2) # store 0xb7dd6826176e0546 in memory
fld f5, 0(x2) # load 0xb7dd6826176e0546 from memory into f5
fadd.h f18, f12, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f24, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f24
la x2, scratch
li x3, 0xa8c16144059f1c55 # load x3 with value 0xa8c16144059f1c55
sd x3, 0(x2) # store 0xa8c16144059f1c55 in memory
fld f7, 0(x2) # load 0xa8c16144059f1c55 from memory into f7
fadd.h f14, f24, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f7, 0(x2) # load 0xfffffffcffff7dff from memory into f7
la x2, scratch
li x3, 0xf88ff8900a9ff380 # load x3 with value 0xf88ff8900a9ff380
sd x3, 0(x2) # store 0xf88ff8900a9ff380 in memory
fld f30, 0(x2) # load 0xf88ff8900a9ff380 from memory into f30
fadd.h f1, f7, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x5937373d38c1a340 # load x3 with value 0x5937373d38c1a340
sd x3, 0(x2) # store 0x5937373d38c1a340 in memory
fld f1, 0(x2) # load 0x5937373d38c1a340 from memory into f1
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f31, 0(x2) # load 0xffffffff00000000 from memory into f31
fadd.h f19, f1, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x8332715a0938e800 # load x3 with value 0x8332715a0938e800
sd x3, 0(x2) # store 0x8332715a0938e800 in memory
fld f18, 0(x2) # load 0x8332715a0938e800 from memory into f18
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f14, 0(x2) # load 0xfffffffffffe8000 from memory into f14
fadd.h f3, f18, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x8bb684c38cfd9460 # load x3 with value 0x8bb684c38cfd9460
sd x3, 0(x2) # store 0x8bb684c38cfd9460 in memory
fld f27, 0(x2) # load 0x8bb684c38cfd9460 from memory into f27
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f15, 0(x2) # load 0x7fffffffffff3c00 from memory into f15
fadd.h f12, f27, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x7339757b053165cc # load x3 with value 0x7339757b053165cc
sd x3, 0(x2) # store 0x7339757b053165cc in memory
fld f18, 0(x2) # load 0x7339757b053165cc from memory into f18
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f10, 0(x2) # load 0xfeedbee5beefbc00 from memory into f10
fadd.h f26, f18, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xed14abb08db27666 # load x3 with value 0xed14abb08db27666
sd x3, 0(x2) # store 0xed14abb08db27666 in memory
fld f21, 0(x2) # load 0xed14abb08db27666 from memory into f21
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f31, 0(x2) # load 0xffffffefffff0400 from memory into f31
fadd.h f1, f21, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x7999b02b5ae89481 # load x3 with value 0x7999b02b5ae89481
sd x3, 0(x2) # store 0x7999b02b5ae89481 in memory
fld f16, 0(x2) # load 0x7999b02b5ae89481 from memory into f16
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f31, 0(x2) # load 0x00000000ffff8400 from memory into f31
fadd.h f11, f16, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0xa4563f508387b906 # load x3 with value 0xa4563f508387b906
sd x3, 0(x2) # store 0xa4563f508387b906 in memory
fld f28, 0(x2) # load 0xa4563f508387b906 from memory into f28
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f2, 0(x2) # load 0xefffffffffff7bff from memory into f2
fadd.h f29, f28, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xbc7427f49d4d2f04 # load x3 with value 0xbc7427f49d4d2f04
sd x3, 0(x2) # store 0xbc7427f49d4d2f04 in memory
fld f7, 0(x2) # load 0xbc7427f49d4d2f04 from memory into f7
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f27, 0(x2) # load 0xc0dec0dec0defbff from memory into f27
fadd.h f14, f7, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x2123af212ba489ea # load x3 with value 0x2123af212ba489ea
sd x3, 0(x2) # store 0x2123af212ba489ea in memory
fld f7, 0(x2) # load 0x2123af212ba489ea from memory into f7
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f13, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f13
fadd.h f19, f7, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xe62ce68cae6ebca8 # load x3 with value 0xe62ce68cae6ebca8
sd x3, 0(x2) # store 0xe62ce68cae6ebca8 in memory
fld f16, 0(x2) # load 0xe62ce68cae6ebca8 from memory into f16
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f10, 0(x2) # load 0xffffffff0ffffc00 from memory into f10
fadd.h f30, f16, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x8f869257fadefbb1 # load x3 with value 0x8f869257fadefbb1
sd x3, 0(x2) # store 0x8f869257fadefbb1 in memory
fld f11, 0(x2) # load 0x8f869257fadefbb1 from memory into f11
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f20, 0(x2) # load 0xfffeffffffff7e00 from memory into f20
fadd.h f8, f11, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xa920e4a79eae34d7 # load x3 with value 0xa920e4a79eae34d7
sd x3, 0(x2) # store 0xa920e4a79eae34d7 in memory
fld f26, 0(x2) # load 0xa920e4a79eae34d7 from memory into f26
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f31, 0(x2) # load 0xffffffefffff7fff from memory into f31
fadd.h f27, f26, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x49c3e33e7127dcd4 # load x3 with value 0x49c3e33e7127dcd4
sd x3, 0(x2) # store 0x49c3e33e7127dcd4 in memory
fld f17, 0(x2) # load 0x49c3e33e7127dcd4 from memory into f17
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f3, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f3
fadd.h f11, f17, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x0f5788c3e9e76f52 # load x3 with value 0x0f5788c3e9e76f52
sd x3, 0(x2) # store 0x0f5788c3e9e76f52 in memory
fld f14, 0(x2) # load 0x0f5788c3e9e76f52 from memory into f14
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f23, 0(x2) # load 0xfffffffcffff7dff from memory into f23
fadd.h f15, f14, f23 # perform operation

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
