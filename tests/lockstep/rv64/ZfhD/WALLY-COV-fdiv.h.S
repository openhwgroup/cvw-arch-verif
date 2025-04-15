///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfhD/WALLY-COV-fdiv.h.S
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
li x3, 0x7b6a3624c094c229 # load x3 with value 0x7b6a3624c094c229
sd x3, 0(x2) # store 0x7b6a3624c094c229 in memory
flh f8, 0(x2) # load 0x7b6a3624c094c229 from memory into f8
la x2, scratch
li x3, 0xbc2540d939760695 # load x3 with value 0xbc2540d939760695
sd x3, 0(x2) # store 0xbc2540d939760695 in memory
flh f12, 0(x2) # load 0xbc2540d939760695 from memory into f12
fdiv.h f27, f8, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f29, 0(x2) # load 0xffffffff00000000 from memory into f29
la x2, scratch
li x3, 0x2bfd961bbd46c28d # load x3 with value 0x2bfd961bbd46c28d
sd x3, 0(x2) # store 0x2bfd961bbd46c28d in memory
fld f22, 0(x2) # load 0x2bfd961bbd46c28d from memory into f22
fdiv.h f9, f29, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f10, 0(x2) # load 0xfffffffffffe8000 from memory into f10
la x2, scratch
li x3, 0x35da5779ca0c66fd # load x3 with value 0x35da5779ca0c66fd
sd x3, 0(x2) # store 0x35da5779ca0c66fd in memory
fld f30, 0(x2) # load 0x35da5779ca0c66fd from memory into f30
fdiv.h f15, f10, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f11, 0(x2) # load 0x7fffffffffff3c00 from memory into f11
la x2, scratch
li x3, 0xabf0a92a297dd08f # load x3 with value 0xabf0a92a297dd08f
sd x3, 0(x2) # store 0xabf0a92a297dd08f in memory
fld f13, 0(x2) # load 0xabf0a92a297dd08f from memory into f13
fdiv.h f29, f11, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f9, 0(x2) # load 0xfeedbee5beefbc00 from memory into f9
la x2, scratch
li x3, 0xbd39652ed24b7871 # load x3 with value 0xbd39652ed24b7871
sd x3, 0(x2) # store 0xbd39652ed24b7871 in memory
fld f14, 0(x2) # load 0xbd39652ed24b7871 from memory into f14
fdiv.h f15, f9, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f7, 0(x2) # load 0xffffffefffff0400 from memory into f7
la x2, scratch
li x3, 0x637182f9bc3b152a # load x3 with value 0x637182f9bc3b152a
sd x3, 0(x2) # store 0x637182f9bc3b152a in memory
fld f21, 0(x2) # load 0x637182f9bc3b152a from memory into f21
fdiv.h f28, f7, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f16, 0(x2) # load 0x00000000ffff8400 from memory into f16
la x2, scratch
li x3, 0xb404930ed24102f7 # load x3 with value 0xb404930ed24102f7
sd x3, 0(x2) # store 0xb404930ed24102f7 in memory
fld f25, 0(x2) # load 0xb404930ed24102f7 from memory into f25
fdiv.h f2, f16, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f1, 0(x2) # load 0xefffffffffff7bff from memory into f1
la x2, scratch
li x3, 0x8d608aa2c98367f5 # load x3 with value 0x8d608aa2c98367f5
sd x3, 0(x2) # store 0x8d608aa2c98367f5 in memory
fld f21, 0(x2) # load 0x8d608aa2c98367f5 from memory into f21
fdiv.h f10, f1, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f12, 0(x2) # load 0xc0dec0dec0defbff from memory into f12
la x2, scratch
li x3, 0x8dd6f45a9240708d # load x3 with value 0x8dd6f45a9240708d
sd x3, 0(x2) # store 0x8dd6f45a9240708d in memory
fld f20, 0(x2) # load 0x8dd6f45a9240708d from memory into f20
fdiv.h f19, f12, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f26, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f26
la x2, scratch
li x3, 0x16b68e7e08d849db # load x3 with value 0x16b68e7e08d849db
sd x3, 0(x2) # store 0x16b68e7e08d849db in memory
fld f9, 0(x2) # load 0x16b68e7e08d849db from memory into f9
fdiv.h f13, f26, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f5, 0(x2) # load 0xffffffff0ffffc00 from memory into f5
la x2, scratch
li x3, 0x0c3bde1dd6d4c133 # load x3 with value 0x0c3bde1dd6d4c133
sd x3, 0(x2) # store 0x0c3bde1dd6d4c133 in memory
fld f30, 0(x2) # load 0x0c3bde1dd6d4c133 from memory into f30
fdiv.h f15, f5, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f8, 0(x2) # load 0xfffeffffffff7e00 from memory into f8
la x2, scratch
li x3, 0x3fa1be53a74532a5 # load x3 with value 0x3fa1be53a74532a5
sd x3, 0(x2) # store 0x3fa1be53a74532a5 in memory
fld f21, 0(x2) # load 0x3fa1be53a74532a5 from memory into f21
fdiv.h f9, f8, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f17, 0(x2) # load 0xffffffefffff7fff from memory into f17
la x2, scratch
li x3, 0xd7a242bdaad15ab8 # load x3 with value 0xd7a242bdaad15ab8
sd x3, 0(x2) # store 0xd7a242bdaad15ab8 in memory
fld f5, 0(x2) # load 0xd7a242bdaad15ab8 from memory into f5
fdiv.h f26, f17, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f22, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f22
la x2, scratch
li x3, 0xb976ed85363dff21 # load x3 with value 0xb976ed85363dff21
sd x3, 0(x2) # store 0xb976ed85363dff21 in memory
fld f9, 0(x2) # load 0xb976ed85363dff21 from memory into f9
fdiv.h f11, f22, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f22, 0(x2) # load 0xfffffffcffff7dff from memory into f22
la x2, scratch
li x3, 0xa08f8fb447e84ac5 # load x3 with value 0xa08f8fb447e84ac5
sd x3, 0(x2) # store 0xa08f8fb447e84ac5 in memory
fld f31, 0(x2) # load 0xa08f8fb447e84ac5 from memory into f31
fdiv.h f26, f22, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xe585b772abb179f0 # load x3 with value 0xe585b772abb179f0
sd x3, 0(x2) # store 0xe585b772abb179f0 in memory
fld f7, 0(x2) # load 0xe585b772abb179f0 from memory into f7
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f12, 0(x2) # load 0xffffffff00000000 from memory into f12
fdiv.h f8, f7, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x371ea331cac9d4c5 # load x3 with value 0x371ea331cac9d4c5
sd x3, 0(x2) # store 0x371ea331cac9d4c5 in memory
fld f23, 0(x2) # load 0x371ea331cac9d4c5 from memory into f23
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f13, 0(x2) # load 0xfffffffffffe8000 from memory into f13
fdiv.h f17, f23, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x9d4dbb4c46f58a64 # load x3 with value 0x9d4dbb4c46f58a64
sd x3, 0(x2) # store 0x9d4dbb4c46f58a64 in memory
fld f24, 0(x2) # load 0x9d4dbb4c46f58a64 from memory into f24
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f13, 0(x2) # load 0x7fffffffffff3c00 from memory into f13
fdiv.h f28, f24, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x46ebeee513f68934 # load x3 with value 0x46ebeee513f68934
sd x3, 0(x2) # store 0x46ebeee513f68934 in memory
fld f18, 0(x2) # load 0x46ebeee513f68934 from memory into f18
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f14, 0(x2) # load 0xfeedbee5beefbc00 from memory into f14
fdiv.h f15, f18, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xad9eabc1e57513af # load x3 with value 0xad9eabc1e57513af
sd x3, 0(x2) # store 0xad9eabc1e57513af in memory
fld f11, 0(x2) # load 0xad9eabc1e57513af from memory into f11
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f26, 0(x2) # load 0xffffffefffff0400 from memory into f26
fdiv.h f14, f11, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x77909545fa82be4b # load x3 with value 0x77909545fa82be4b
sd x3, 0(x2) # store 0x77909545fa82be4b in memory
fld f22, 0(x2) # load 0x77909545fa82be4b from memory into f22
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f17, 0(x2) # load 0x00000000ffff8400 from memory into f17
fdiv.h f25, f22, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x7a7376dd182cbf18 # load x3 with value 0x7a7376dd182cbf18
sd x3, 0(x2) # store 0x7a7376dd182cbf18 in memory
fld f14, 0(x2) # load 0x7a7376dd182cbf18 from memory into f14
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f6, 0(x2) # load 0xefffffffffff7bff from memory into f6
fdiv.h f25, f14, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x391bf4213153b1a5 # load x3 with value 0x391bf4213153b1a5
sd x3, 0(x2) # store 0x391bf4213153b1a5 in memory
fld f16, 0(x2) # load 0x391bf4213153b1a5 from memory into f16
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f25, 0(x2) # load 0xc0dec0dec0defbff from memory into f25
fdiv.h f5, f16, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xa000af1b11257800 # load x3 with value 0xa000af1b11257800
sd x3, 0(x2) # store 0xa000af1b11257800 in memory
fld f14, 0(x2) # load 0xa000af1b11257800 from memory into f14
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f23, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f23
fdiv.h f7, f14, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x5141a6d1b98fc583 # load x3 with value 0x5141a6d1b98fc583
sd x3, 0(x2) # store 0x5141a6d1b98fc583 in memory
fld f26, 0(x2) # load 0x5141a6d1b98fc583 from memory into f26
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f28, 0(x2) # load 0xffffffff0ffffc00 from memory into f28
fdiv.h f3, f26, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x266c32ce1ee08f86 # load x3 with value 0x266c32ce1ee08f86
sd x3, 0(x2) # store 0x266c32ce1ee08f86 in memory
fld f26, 0(x2) # load 0x266c32ce1ee08f86 from memory into f26
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f16, 0(x2) # load 0xfffeffffffff7e00 from memory into f16
fdiv.h f15, f26, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xbe056036be402a6d # load x3 with value 0xbe056036be402a6d
sd x3, 0(x2) # store 0xbe056036be402a6d in memory
fld f17, 0(x2) # load 0xbe056036be402a6d from memory into f17
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f24, 0(x2) # load 0xffffffefffff7fff from memory into f24
fdiv.h f16, f17, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x9e33f00cf3720a91 # load x3 with value 0x9e33f00cf3720a91
sd x3, 0(x2) # store 0x9e33f00cf3720a91 in memory
fld f2, 0(x2) # load 0x9e33f00cf3720a91 from memory into f2
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f26, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f26
fdiv.h f6, f2, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x8abfb802b92b12d0 # load x3 with value 0x8abfb802b92b12d0
sd x3, 0(x2) # store 0x8abfb802b92b12d0 in memory
fld f13, 0(x2) # load 0x8abfb802b92b12d0 from memory into f13
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f8, 0(x2) # load 0xfffffffcffff7dff from memory into f8
fdiv.h f22, f13, f8 # perform operation

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
