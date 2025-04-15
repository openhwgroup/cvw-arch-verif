///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfaZfhD/WALLY-COV-fminm.h.S
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
li x3, 0xf43d633f45d8f959 # load x3 with value 0xf43d633f45d8f959
sd x3, 0(x2) # store 0xf43d633f45d8f959 in memory
flh f22, 0(x2) # load 0xf43d633f45d8f959 from memory into f22
la x2, scratch
li x3, 0xafb5f74cd67fd01e # load x3 with value 0xafb5f74cd67fd01e
sd x3, 0(x2) # store 0xafb5f74cd67fd01e in memory
flh f13, 0(x2) # load 0xafb5f74cd67fd01e from memory into f13
fminm.h f2, f22, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f26, 0(x2) # load 0xffffffff00000000 from memory into f26
la x2, scratch
li x3, 0x5b3230b0cc76c2e9 # load x3 with value 0x5b3230b0cc76c2e9
sd x3, 0(x2) # store 0x5b3230b0cc76c2e9 in memory
fld f17, 0(x2) # load 0x5b3230b0cc76c2e9 from memory into f17
fminm.h f21, f26, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f13, 0(x2) # load 0xfffffffffffe8000 from memory into f13
la x2, scratch
li x3, 0x47c2408198ef7793 # load x3 with value 0x47c2408198ef7793
sd x3, 0(x2) # store 0x47c2408198ef7793 in memory
fld f31, 0(x2) # load 0x47c2408198ef7793 from memory into f31
fminm.h f29, f13, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f20, 0(x2) # load 0x7fffffffffff3c00 from memory into f20
la x2, scratch
li x3, 0xdbf32ad40530bcab # load x3 with value 0xdbf32ad40530bcab
sd x3, 0(x2) # store 0xdbf32ad40530bcab in memory
fld f13, 0(x2) # load 0xdbf32ad40530bcab from memory into f13
fminm.h f2, f20, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f3, 0(x2) # load 0xfeedbee5beefbc00 from memory into f3
la x2, scratch
li x3, 0x94255f8e426612c8 # load x3 with value 0x94255f8e426612c8
sd x3, 0(x2) # store 0x94255f8e426612c8 in memory
fld f6, 0(x2) # load 0x94255f8e426612c8 from memory into f6
fminm.h f24, f3, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f30, 0(x2) # load 0xffffffefffff0400 from memory into f30
la x2, scratch
li x3, 0x945dca2d775d4fc8 # load x3 with value 0x945dca2d775d4fc8
sd x3, 0(x2) # store 0x945dca2d775d4fc8 in memory
fld f29, 0(x2) # load 0x945dca2d775d4fc8 from memory into f29
fminm.h f2, f30, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f12, 0(x2) # load 0x00000000ffff8400 from memory into f12
la x2, scratch
li x3, 0xdcee1d7f28c28a0b # load x3 with value 0xdcee1d7f28c28a0b
sd x3, 0(x2) # store 0xdcee1d7f28c28a0b in memory
fld f23, 0(x2) # load 0xdcee1d7f28c28a0b from memory into f23
fminm.h f18, f12, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f2, 0(x2) # load 0xefffffffffff7bff from memory into f2
la x2, scratch
li x3, 0xac69c2e6e1e82382 # load x3 with value 0xac69c2e6e1e82382
sd x3, 0(x2) # store 0xac69c2e6e1e82382 in memory
fld f26, 0(x2) # load 0xac69c2e6e1e82382 from memory into f26
fminm.h f5, f2, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f9, 0(x2) # load 0xc0dec0dec0defbff from memory into f9
la x2, scratch
li x3, 0xa22492c0193f5657 # load x3 with value 0xa22492c0193f5657
sd x3, 0(x2) # store 0xa22492c0193f5657 in memory
fld f18, 0(x2) # load 0xa22492c0193f5657 from memory into f18
fminm.h f16, f9, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f12, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f12
la x2, scratch
li x3, 0x4cae6c16bd78966c # load x3 with value 0x4cae6c16bd78966c
sd x3, 0(x2) # store 0x4cae6c16bd78966c in memory
fld f22, 0(x2) # load 0x4cae6c16bd78966c from memory into f22
fminm.h f8, f12, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f26, 0(x2) # load 0xffffffff0ffffc00 from memory into f26
la x2, scratch
li x3, 0xbe08ff7df9f05c95 # load x3 with value 0xbe08ff7df9f05c95
sd x3, 0(x2) # store 0xbe08ff7df9f05c95 in memory
fld f7, 0(x2) # load 0xbe08ff7df9f05c95 from memory into f7
fminm.h f8, f26, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f1, 0(x2) # load 0xfffeffffffff7e00 from memory into f1
la x2, scratch
li x3, 0xa0fc255c556814f3 # load x3 with value 0xa0fc255c556814f3
sd x3, 0(x2) # store 0xa0fc255c556814f3 in memory
fld f17, 0(x2) # load 0xa0fc255c556814f3 from memory into f17
fminm.h f18, f1, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f28, 0(x2) # load 0xffffffefffff7fff from memory into f28
la x2, scratch
li x3, 0x2808ba8c7cdf8e3c # load x3 with value 0x2808ba8c7cdf8e3c
sd x3, 0(x2) # store 0x2808ba8c7cdf8e3c in memory
fld f1, 0(x2) # load 0x2808ba8c7cdf8e3c from memory into f1
fminm.h f24, f28, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f23, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f23
la x2, scratch
li x3, 0x28fd202d879c0c14 # load x3 with value 0x28fd202d879c0c14
sd x3, 0(x2) # store 0x28fd202d879c0c14 in memory
fld f12, 0(x2) # load 0x28fd202d879c0c14 from memory into f12
fminm.h f26, f23, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f14, 0(x2) # load 0xfffffffcffff7dff from memory into f14
la x2, scratch
li x3, 0x71d56840e81cdad7 # load x3 with value 0x71d56840e81cdad7
sd x3, 0(x2) # store 0x71d56840e81cdad7 in memory
fld f8, 0(x2) # load 0x71d56840e81cdad7 from memory into f8
fminm.h f17, f14, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xd9271087f6ed6efd # load x3 with value 0xd9271087f6ed6efd
sd x3, 0(x2) # store 0xd9271087f6ed6efd in memory
fld f21, 0(x2) # load 0xd9271087f6ed6efd from memory into f21
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f22, 0(x2) # load 0xffffffff00000000 from memory into f22
fminm.h f26, f21, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x5898914dbe9075ec # load x3 with value 0x5898914dbe9075ec
sd x3, 0(x2) # store 0x5898914dbe9075ec in memory
fld f8, 0(x2) # load 0x5898914dbe9075ec from memory into f8
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f19, 0(x2) # load 0xfffffffffffe8000 from memory into f19
fminm.h f5, f8, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x42531a7f83cf5b19 # load x3 with value 0x42531a7f83cf5b19
sd x3, 0(x2) # store 0x42531a7f83cf5b19 in memory
fld f28, 0(x2) # load 0x42531a7f83cf5b19 from memory into f28
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f30, 0(x2) # load 0x7fffffffffff3c00 from memory into f30
fminm.h f3, f28, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x7a85dcadec6c83aa # load x3 with value 0x7a85dcadec6c83aa
sd x3, 0(x2) # store 0x7a85dcadec6c83aa in memory
fld f11, 0(x2) # load 0x7a85dcadec6c83aa from memory into f11
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f5, 0(x2) # load 0xfeedbee5beefbc00 from memory into f5
fminm.h f8, f11, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xc725fe93ba98a72f # load x3 with value 0xc725fe93ba98a72f
sd x3, 0(x2) # store 0xc725fe93ba98a72f in memory
fld f11, 0(x2) # load 0xc725fe93ba98a72f from memory into f11
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f5, 0(x2) # load 0xffffffefffff0400 from memory into f5
fminm.h f31, f11, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x530021c4438f70ca # load x3 with value 0x530021c4438f70ca
sd x3, 0(x2) # store 0x530021c4438f70ca in memory
fld f20, 0(x2) # load 0x530021c4438f70ca from memory into f20
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f28, 0(x2) # load 0x00000000ffff8400 from memory into f28
fminm.h f16, f20, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0xc1d906fc982ed80a # load x3 with value 0xc1d906fc982ed80a
sd x3, 0(x2) # store 0xc1d906fc982ed80a in memory
fld f15, 0(x2) # load 0xc1d906fc982ed80a from memory into f15
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f27, 0(x2) # load 0xefffffffffff7bff from memory into f27
fminm.h f2, f15, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xc4fb4658a512de8b # load x3 with value 0xc4fb4658a512de8b
sd x3, 0(x2) # store 0xc4fb4658a512de8b in memory
fld f11, 0(x2) # load 0xc4fb4658a512de8b from memory into f11
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f24, 0(x2) # load 0xc0dec0dec0defbff from memory into f24
fminm.h f10, f11, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xd11f889e0305ddcb # load x3 with value 0xd11f889e0305ddcb
sd x3, 0(x2) # store 0xd11f889e0305ddcb in memory
fld f5, 0(x2) # load 0xd11f889e0305ddcb from memory into f5
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f13, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f13
fminm.h f30, f5, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x1ff8acbec9826689 # load x3 with value 0x1ff8acbec9826689
sd x3, 0(x2) # store 0x1ff8acbec9826689 in memory
fld f8, 0(x2) # load 0x1ff8acbec9826689 from memory into f8
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f2, 0(x2) # load 0xffffffff0ffffc00 from memory into f2
fminm.h f3, f8, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x802c7da79ad3c3fb # load x3 with value 0x802c7da79ad3c3fb
sd x3, 0(x2) # store 0x802c7da79ad3c3fb in memory
fld f19, 0(x2) # load 0x802c7da79ad3c3fb from memory into f19
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f2, 0(x2) # load 0xfffeffffffff7e00 from memory into f2
fminm.h f27, f19, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xf5adc4189402d931 # load x3 with value 0xf5adc4189402d931
sd x3, 0(x2) # store 0xf5adc4189402d931 in memory
fld f28, 0(x2) # load 0xf5adc4189402d931 from memory into f28
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f17, 0(x2) # load 0xffffffefffff7fff from memory into f17
fminm.h f10, f28, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xf0a5c37a972d9df1 # load x3 with value 0xf0a5c37a972d9df1
sd x3, 0(x2) # store 0xf0a5c37a972d9df1 in memory
fld f19, 0(x2) # load 0xf0a5c37a972d9df1 from memory into f19
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f23, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f23
fminm.h f16, f19, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x957c6bf3aaa630c0 # load x3 with value 0x957c6bf3aaa630c0
sd x3, 0(x2) # store 0x957c6bf3aaa630c0 in memory
fld f12, 0(x2) # load 0x957c6bf3aaa630c0 from memory into f12
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f28, 0(x2) # load 0xfffffffcffff7dff from memory into f28
fminm.h f17, f12, f28 # perform operation

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
