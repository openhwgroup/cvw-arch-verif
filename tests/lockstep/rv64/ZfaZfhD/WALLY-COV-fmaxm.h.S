///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfaZfhD/WALLY-COV-fmaxm.h.S
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
li x3, 0x06b890318e838e20 # load x3 with value 0x06b890318e838e20
sd x3, 0(x2) # store 0x06b890318e838e20 in memory
flh f9, 0(x2) # load 0x06b890318e838e20 from memory into f9
la x2, scratch
li x3, 0x8796af8a59f9efe8 # load x3 with value 0x8796af8a59f9efe8
sd x3, 0(x2) # store 0x8796af8a59f9efe8 in memory
flh f19, 0(x2) # load 0x8796af8a59f9efe8 from memory into f19
fmaxm.h f6, f9, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f18, 0(x2) # load 0xffffffff00000000 from memory into f18
la x2, scratch
li x3, 0xf60e2e93e4843a6b # load x3 with value 0xf60e2e93e4843a6b
sd x3, 0(x2) # store 0xf60e2e93e4843a6b in memory
fld f26, 0(x2) # load 0xf60e2e93e4843a6b from memory into f26
fmaxm.h f17, f18, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f16, 0(x2) # load 0xfffffffffffe8000 from memory into f16
la x2, scratch
li x3, 0x730bb1198dfec017 # load x3 with value 0x730bb1198dfec017
sd x3, 0(x2) # store 0x730bb1198dfec017 in memory
fld f24, 0(x2) # load 0x730bb1198dfec017 from memory into f24
fmaxm.h f7, f16, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f24, 0(x2) # load 0x7fffffffffff3c00 from memory into f24
la x2, scratch
li x3, 0x99f40e080f7f43e6 # load x3 with value 0x99f40e080f7f43e6
sd x3, 0(x2) # store 0x99f40e080f7f43e6 in memory
fld f8, 0(x2) # load 0x99f40e080f7f43e6 from memory into f8
fmaxm.h f23, f24, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f19, 0(x2) # load 0xfeedbee5beefbc00 from memory into f19
la x2, scratch
li x3, 0xf2586b6fb875b092 # load x3 with value 0xf2586b6fb875b092
sd x3, 0(x2) # store 0xf2586b6fb875b092 in memory
fld f20, 0(x2) # load 0xf2586b6fb875b092 from memory into f20
fmaxm.h f13, f19, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f24, 0(x2) # load 0xffffffefffff0400 from memory into f24
la x2, scratch
li x3, 0xe3fc6c36d6033e00 # load x3 with value 0xe3fc6c36d6033e00
sd x3, 0(x2) # store 0xe3fc6c36d6033e00 in memory
fld f18, 0(x2) # load 0xe3fc6c36d6033e00 from memory into f18
fmaxm.h f10, f24, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f22, 0(x2) # load 0x00000000ffff8400 from memory into f22
la x2, scratch
li x3, 0x08e642679982ccc0 # load x3 with value 0x08e642679982ccc0
sd x3, 0(x2) # store 0x08e642679982ccc0 in memory
fld f12, 0(x2) # load 0x08e642679982ccc0 from memory into f12
fmaxm.h f11, f22, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f22, 0(x2) # load 0xefffffffffff7bff from memory into f22
la x2, scratch
li x3, 0x999b06fb9360ec88 # load x3 with value 0x999b06fb9360ec88
sd x3, 0(x2) # store 0x999b06fb9360ec88 in memory
fld f29, 0(x2) # load 0x999b06fb9360ec88 from memory into f29
fmaxm.h f25, f22, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f25, 0(x2) # load 0xc0dec0dec0defbff from memory into f25
la x2, scratch
li x3, 0x433e9cc32600ad28 # load x3 with value 0x433e9cc32600ad28
sd x3, 0(x2) # store 0x433e9cc32600ad28 in memory
fld f23, 0(x2) # load 0x433e9cc32600ad28 from memory into f23
fmaxm.h f8, f25, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f13, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f13
la x2, scratch
li x3, 0x53dbb0897b56026f # load x3 with value 0x53dbb0897b56026f
sd x3, 0(x2) # store 0x53dbb0897b56026f in memory
fld f21, 0(x2) # load 0x53dbb0897b56026f from memory into f21
fmaxm.h f16, f13, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f17, 0(x2) # load 0xffffffff0ffffc00 from memory into f17
la x2, scratch
li x3, 0xb40034720cd0b1e8 # load x3 with value 0xb40034720cd0b1e8
sd x3, 0(x2) # store 0xb40034720cd0b1e8 in memory
fld f31, 0(x2) # load 0xb40034720cd0b1e8 from memory into f31
fmaxm.h f13, f17, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f22, 0(x2) # load 0xfffeffffffff7e00 from memory into f22
la x2, scratch
li x3, 0xb121eb9558c6dfd4 # load x3 with value 0xb121eb9558c6dfd4
sd x3, 0(x2) # store 0xb121eb9558c6dfd4 in memory
fld f15, 0(x2) # load 0xb121eb9558c6dfd4 from memory into f15
fmaxm.h f11, f22, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f18, 0(x2) # load 0xffffffefffff7fff from memory into f18
la x2, scratch
li x3, 0x770df5e99feb220b # load x3 with value 0x770df5e99feb220b
sd x3, 0(x2) # store 0x770df5e99feb220b in memory
fld f12, 0(x2) # load 0x770df5e99feb220b from memory into f12
fmaxm.h f11, f18, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f28, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f28
la x2, scratch
li x3, 0x7c3cfda35f44eb6f # load x3 with value 0x7c3cfda35f44eb6f
sd x3, 0(x2) # store 0x7c3cfda35f44eb6f in memory
fld f29, 0(x2) # load 0x7c3cfda35f44eb6f from memory into f29
fmaxm.h f18, f28, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f28, 0(x2) # load 0xfffffffcffff7dff from memory into f28
la x2, scratch
li x3, 0x42a2a25cb730d71e # load x3 with value 0x42a2a25cb730d71e
sd x3, 0(x2) # store 0x42a2a25cb730d71e in memory
fld f5, 0(x2) # load 0x42a2a25cb730d71e from memory into f5
fmaxm.h f2, f28, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x165e497c108d9781 # load x3 with value 0x165e497c108d9781
sd x3, 0(x2) # store 0x165e497c108d9781 in memory
fld f12, 0(x2) # load 0x165e497c108d9781 from memory into f12
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f29, 0(x2) # load 0xffffffff00000000 from memory into f29
fmaxm.h f7, f12, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x610dc8c9e1d055bc # load x3 with value 0x610dc8c9e1d055bc
sd x3, 0(x2) # store 0x610dc8c9e1d055bc in memory
fld f27, 0(x2) # load 0x610dc8c9e1d055bc from memory into f27
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f24, 0(x2) # load 0xfffffffffffe8000 from memory into f24
fmaxm.h f30, f27, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x7e006cf89e8f8445 # load x3 with value 0x7e006cf89e8f8445
sd x3, 0(x2) # store 0x7e006cf89e8f8445 in memory
fld f8, 0(x2) # load 0x7e006cf89e8f8445 from memory into f8
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f13, 0(x2) # load 0x7fffffffffff3c00 from memory into f13
fmaxm.h f12, f8, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xf7b1534ca9d7393e # load x3 with value 0xf7b1534ca9d7393e
sd x3, 0(x2) # store 0xf7b1534ca9d7393e in memory
fld f29, 0(x2) # load 0xf7b1534ca9d7393e from memory into f29
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f13, 0(x2) # load 0xfeedbee5beefbc00 from memory into f13
fmaxm.h f15, f29, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xb067e71d602db102 # load x3 with value 0xb067e71d602db102
sd x3, 0(x2) # store 0xb067e71d602db102 in memory
fld f14, 0(x2) # load 0xb067e71d602db102 from memory into f14
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f25, 0(x2) # load 0xffffffefffff0400 from memory into f25
fmaxm.h f9, f14, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xbdbe5320376b7abc # load x3 with value 0xbdbe5320376b7abc
sd x3, 0(x2) # store 0xbdbe5320376b7abc in memory
fld f31, 0(x2) # load 0xbdbe5320376b7abc from memory into f31
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f29, 0(x2) # load 0x00000000ffff8400 from memory into f29
fmaxm.h f19, f31, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x5fa892968b2cf1dd # load x3 with value 0x5fa892968b2cf1dd
sd x3, 0(x2) # store 0x5fa892968b2cf1dd in memory
fld f17, 0(x2) # load 0x5fa892968b2cf1dd from memory into f17
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f8, 0(x2) # load 0xefffffffffff7bff from memory into f8
fmaxm.h f15, f17, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x5b427e4b53c58a86 # load x3 with value 0x5b427e4b53c58a86
sd x3, 0(x2) # store 0x5b427e4b53c58a86 in memory
fld f25, 0(x2) # load 0x5b427e4b53c58a86 from memory into f25
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f16, 0(x2) # load 0xc0dec0dec0defbff from memory into f16
fmaxm.h f23, f25, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xed1bdac2fb8d1191 # load x3 with value 0xed1bdac2fb8d1191
sd x3, 0(x2) # store 0xed1bdac2fb8d1191 in memory
fld f1, 0(x2) # load 0xed1bdac2fb8d1191 from memory into f1
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f14, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f14
fmaxm.h f2, f1, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x0387febfa668980e # load x3 with value 0x0387febfa668980e
sd x3, 0(x2) # store 0x0387febfa668980e in memory
fld f11, 0(x2) # load 0x0387febfa668980e from memory into f11
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f24, 0(x2) # load 0xffffffff0ffffc00 from memory into f24
fmaxm.h f30, f11, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x1315d73c774d1f04 # load x3 with value 0x1315d73c774d1f04
sd x3, 0(x2) # store 0x1315d73c774d1f04 in memory
fld f15, 0(x2) # load 0x1315d73c774d1f04 from memory into f15
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f30, 0(x2) # load 0xfffeffffffff7e00 from memory into f30
fmaxm.h f12, f15, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x13c8f76209ad13f1 # load x3 with value 0x13c8f76209ad13f1
sd x3, 0(x2) # store 0x13c8f76209ad13f1 in memory
fld f11, 0(x2) # load 0x13c8f76209ad13f1 from memory into f11
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f21, 0(x2) # load 0xffffffefffff7fff from memory into f21
fmaxm.h f5, f11, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x8d4504cbb576a306 # load x3 with value 0x8d4504cbb576a306
sd x3, 0(x2) # store 0x8d4504cbb576a306 in memory
fld f18, 0(x2) # load 0x8d4504cbb576a306 from memory into f18
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f30, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f30
fmaxm.h f14, f18, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x7e7754d369ec0532 # load x3 with value 0x7e7754d369ec0532
sd x3, 0(x2) # store 0x7e7754d369ec0532 in memory
fld f21, 0(x2) # load 0x7e7754d369ec0532 from memory into f21
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f3, 0(x2) # load 0xfffffffcffff7dff from memory into f3
fmaxm.h f10, f21, f3 # perform operation

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
