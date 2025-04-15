///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fmadd.s.S
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
li x3, 0x00000000708553af # load x3 with value 0x00000000708553af
sw x3, 0(x2) # store 0x00000000708553af in memory
flw f7, 0(x2) # load 0x00000000708553af from memory into f7
la x2, scratch
li x3, 0x00000000a7033d20 # load x3 with value 0x00000000a7033d20
sw x3, 0(x2) # store 0x00000000a7033d20 in memory
flw f23, 0(x2) # load 0x00000000a7033d20 from memory into f23
la x2, scratch
li x3, 0x000000003ed3fe2f # load x3 with value 0x000000003ed3fe2f
sw x3, 0(x2) # store 0x000000003ed3fe2f in memory
flw f18, 0(x2) # load 0x000000003ed3fe2f from memory into f18
fmadd.s f27, f7, f23, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffffefff00000000 from memory into f14
la x2, scratch
li x3, 0x969aec4b # load x3 with 32 MSBs 0x00000000969aec4b
sw x3, 0(x2) # store x3 (0x969aec4b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000969aec4b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000969aec4b from memory into f24
la x2, scratch
li x3, 0xdb7967e4 # load x3 with 32 MSBs 0x00000000db7967e4
sw x3, 0(x2) # store x3 (0xdb7967e4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000db7967e4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000db7967e4 from memory into f1
fmadd.s f10, f14, f24, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xaaaaaaaa80000000 from memory into f22
la x2, scratch
li x3, 0x07de7d4e # load x3 with 32 MSBs 0x0000000007de7d4e
sw x3, 0(x2) # store x3 (0x07de7d4e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000007de7d4e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000007de7d4e from memory into f23
la x2, scratch
li x3, 0x8dfc1f7e # load x3 with 32 MSBs 0x000000008dfc1f7e
sw x3, 0(x2) # store x3 (0x8dfc1f7e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008dfc1f7e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000008dfc1f7e from memory into f12
fmadd.s f2, f22, f23, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000003f800000 from memory into f28
la x2, scratch
li x3, 0x34281df9 # load x3 with 32 MSBs 0x0000000034281df9
sw x3, 0(x2) # store x3 (0x34281df9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000034281df9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000034281df9 from memory into f22
la x2, scratch
li x3, 0xb71bb42e # load x3 with 32 MSBs 0x00000000b71bb42e
sw x3, 0(x2) # store x3 (0xb71bb42e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b71bb42e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000b71bb42e from memory into f19
fmadd.s f11, f28, f22, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xdeadbeefbf800000 from memory into f28
la x2, scratch
li x3, 0x41540485 # load x3 with 32 MSBs 0x0000000041540485
sw x3, 0(x2) # store x3 (0x41540485) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000041540485
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000041540485 from memory into f20
la x2, scratch
li x3, 0x4cdf3efe # load x3 with 32 MSBs 0x000000004cdf3efe
sw x3, 0(x2) # store x3 (0x4cdf3efe) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004cdf3efe
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000004cdf3efe from memory into f25
fmadd.s f18, f28, f20, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xa1b2c3d400800000 from memory into f10
la x2, scratch
li x3, 0xe5a3e71f # load x3 with 32 MSBs 0x00000000e5a3e71f
sw x3, 0(x2) # store x3 (0xe5a3e71f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e5a3e71f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000e5a3e71f from memory into f29
la x2, scratch
li x3, 0x1c7cee7d # load x3 with 32 MSBs 0x000000001c7cee7d
sw x3, 0(x2) # store x3 (0x1c7cee7d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001c7cee7d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000001c7cee7d from memory into f17
fmadd.s f9, f10, f29, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xffffffef80800000 from memory into f5
la x2, scratch
li x3, 0x5c32f22d # load x3 with 32 MSBs 0x000000005c32f22d
sw x3, 0(x2) # store x3 (0x5c32f22d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005c32f22d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000005c32f22d from memory into f19
la x2, scratch
li x3, 0x22f9a92b # load x3 with 32 MSBs 0x0000000022f9a92b
sw x3, 0(x2) # store x3 (0x22f9a92b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000022f9a92b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000022f9a92b from memory into f9
fmadd.s f26, f5, f19, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xfeffffef7f7fffff from memory into f11
la x2, scratch
li x3, 0x47cff56b # load x3 with 32 MSBs 0x0000000047cff56b
sw x3, 0(x2) # store x3 (0x47cff56b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000047cff56b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000047cff56b from memory into f1
la x2, scratch
li x3, 0xafb3396e # load x3 with 32 MSBs 0x00000000afb3396e
sw x3, 0(x2) # store x3 (0xafb3396e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000afb3396e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000afb3396e from memory into f2
fmadd.s f20, f11, f1, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f29
la x2, scratch
li x3, 0xb0f36289 # load x3 with 32 MSBs 0x00000000b0f36289
sw x3, 0(x2) # store x3 (0xb0f36289) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b0f36289
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000b0f36289 from memory into f27
la x2, scratch
li x3, 0xd02990b1 # load x3 with 32 MSBs 0x00000000d02990b1
sw x3, 0(x2) # store x3 (0xd02990b1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d02990b1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000d02990b1 from memory into f22
fmadd.s f1, f29, f27, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7fffffff7f800000 from memory into f26
la x2, scratch
li x3, 0x6dabfe17 # load x3 with 32 MSBs 0x000000006dabfe17
sw x3, 0(x2) # store x3 (0x6dabfe17) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006dabfe17
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000006dabfe17 from memory into f8
la x2, scratch
li x3, 0x3b8fb847 # load x3 with 32 MSBs 0x000000003b8fb847
sw x3, 0(x2) # store x3 (0x3b8fb847) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003b8fb847
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000003b8fb847 from memory into f23
fmadd.s f29, f26, f8, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfffffffeff800000 from memory into f20
la x2, scratch
li x3, 0x1787b42c # load x3 with 32 MSBs 0x000000001787b42c
sw x3, 0(x2) # store x3 (0x1787b42c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001787b42c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000001787b42c from memory into f19
la x2, scratch
li x3, 0x6ec06bea # load x3 with 32 MSBs 0x000000006ec06bea
sw x3, 0(x2) # store x3 (0x6ec06bea) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006ec06bea
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000006ec06bea from memory into f21
fmadd.s f7, f20, f19, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfeedbee57fc00000 from memory into f8
la x2, scratch
li x3, 0x51f24498 # load x3 with 32 MSBs 0x0000000051f24498
sw x3, 0(x2) # store x3 (0x51f24498) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000051f24498
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000051f24498 from memory into f9
la x2, scratch
li x3, 0x8ed3d809 # load x3 with 32 MSBs 0x000000008ed3d809
sw x3, 0(x2) # store x3 (0x8ed3d809) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008ed3d809
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000008ed3d809 from memory into f21
fmadd.s f29, f8, f9, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xffc0deff7fffffff from memory into f12
la x2, scratch
li x3, 0xcd8e321f # load x3 with 32 MSBs 0x00000000cd8e321f
sw x3, 0(x2) # store x3 (0xcd8e321f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cd8e321f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000cd8e321f from memory into f14
la x2, scratch
li x3, 0xc037b2e8 # load x3 with 32 MSBs 0x00000000c037b2e8
sw x3, 0(x2) # store x3 (0xc037b2e8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c037b2e8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000c037b2e8 from memory into f8
fmadd.s f29, f12, f14, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xfeffffff7f800001 from memory into f11
la x2, scratch
li x3, 0xb944fa4f # load x3 with 32 MSBs 0x00000000b944fa4f
sw x3, 0(x2) # store x3 (0xb944fa4f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b944fa4f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000b944fa4f from memory into f3
la x2, scratch
li x3, 0x7b9b12b0 # load x3 with 32 MSBs 0x000000007b9b12b0
sw x3, 0(x2) # store x3 (0x7b9b12b0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007b9b12b0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000007b9b12b0 from memory into f9
fmadd.s f28, f11, f3, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfffffeff7fbfffff from memory into f29
la x2, scratch
li x3, 0x96530574 # load x3 with 32 MSBs 0x0000000096530574
sw x3, 0(x2) # store x3 (0x96530574) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000096530574
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000096530574 from memory into f18
la x2, scratch
li x3, 0xa08ebdb2 # load x3 with 32 MSBs 0x00000000a08ebdb2
sw x3, 0(x2) # store x3 (0xa08ebdb2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a08ebdb2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000a08ebdb2 from memory into f22
fmadd.s f26, f29, f18, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x25f6bad4 # load x3 with 32 MSBs 0x0000000025f6bad4
sw x3, 0(x2) # store x3 (0x25f6bad4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000025f6bad4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000025f6bad4 from memory into f8
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xffffefff00000000 from memory into f19
la x2, scratch
li x3, 0x62c4b8bc # load x3 with 32 MSBs 0x0000000062c4b8bc
sw x3, 0(x2) # store x3 (0x62c4b8bc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000062c4b8bc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x0000000062c4b8bc from memory into f20
fmadd.s f26, f8, f19, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0xb7401ca5 # load x3 with 32 MSBs 0x00000000b7401ca5
sw x3, 0(x2) # store x3 (0xb7401ca5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b7401ca5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000b7401ca5 from memory into f18
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xaaaaaaaa80000000 from memory into f12
la x2, scratch
li x3, 0xb3a93de7 # load x3 with 32 MSBs 0x00000000b3a93de7
sw x3, 0(x2) # store x3 (0xb3a93de7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b3a93de7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000b3a93de7 from memory into f9
fmadd.s f3, f18, f12, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x08baeee6 # load x3 with 32 MSBs 0x0000000008baeee6
sw x3, 0(x2) # store x3 (0x08baeee6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000008baeee6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000008baeee6 from memory into f11
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000003f800000 from memory into f18
la x2, scratch
li x3, 0x5baf6960 # load x3 with 32 MSBs 0x000000005baf6960
sw x3, 0(x2) # store x3 (0x5baf6960) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005baf6960
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000005baf6960 from memory into f13
fmadd.s f2, f11, f18, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x50513363 # load x3 with 32 MSBs 0x0000000050513363
sw x3, 0(x2) # store x3 (0x50513363) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000050513363
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x0000000050513363 from memory into f23
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xdeadbeefbf800000 from memory into f6
la x2, scratch
li x3, 0x9bed043c # load x3 with 32 MSBs 0x000000009bed043c
sw x3, 0(x2) # store x3 (0x9bed043c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009bed043c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000009bed043c from memory into f17
fmadd.s f27, f23, f6, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x918a5672 # load x3 with 32 MSBs 0x00000000918a5672
sw x3, 0(x2) # store x3 (0x918a5672) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000918a5672
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000918a5672 from memory into f21
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xa1b2c3d400800000 from memory into f15
la x2, scratch
li x3, 0x149e6029 # load x3 with 32 MSBs 0x00000000149e6029
sw x3, 0(x2) # store x3 (0x149e6029) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000149e6029
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000149e6029 from memory into f9
fmadd.s f17, f21, f15, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x4bf0f962 # load x3 with 32 MSBs 0x000000004bf0f962
sw x3, 0(x2) # store x3 (0x4bf0f962) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004bf0f962
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000004bf0f962 from memory into f28
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xffffffef80800000 from memory into f16
la x2, scratch
li x3, 0xf56495b1 # load x3 with 32 MSBs 0x00000000f56495b1
sw x3, 0(x2) # store x3 (0xf56495b1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f56495b1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000f56495b1 from memory into f22
fmadd.s f10, f28, f16, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xbee59079 # load x3 with 32 MSBs 0x00000000bee59079
sw x3, 0(x2) # store x3 (0xbee59079) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bee59079
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000bee59079 from memory into f10
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfeffffef7f7fffff from memory into f26
la x2, scratch
li x3, 0x9323dab8 # load x3 with 32 MSBs 0x000000009323dab8
sw x3, 0(x2) # store x3 (0x9323dab8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009323dab8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000009323dab8 from memory into f7
fmadd.s f31, f10, f26, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x2591ecd7 # load x3 with 32 MSBs 0x000000002591ecd7
sw x3, 0(x2) # store x3 (0x2591ecd7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002591ecd7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000002591ecd7 from memory into f10
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f22
la x2, scratch
li x3, 0xadec2ebc # load x3 with 32 MSBs 0x00000000adec2ebc
sw x3, 0(x2) # store x3 (0xadec2ebc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000adec2ebc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000adec2ebc from memory into f31
fmadd.s f11, f10, f22, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x75acdde6 # load x3 with 32 MSBs 0x0000000075acdde6
sw x3, 0(x2) # store x3 (0x75acdde6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000075acdde6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000075acdde6 from memory into f24
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x7fffffff7f800000 from memory into f19
la x2, scratch
li x3, 0x3b3a68ee # load x3 with 32 MSBs 0x000000003b3a68ee
sw x3, 0(x2) # store x3 (0x3b3a68ee) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003b3a68ee
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000003b3a68ee from memory into f30
fmadd.s f21, f24, f19, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x26098844 # load x3 with 32 MSBs 0x0000000026098844
sw x3, 0(x2) # store x3 (0x26098844) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000026098844
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000026098844 from memory into f7
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xfffffffeff800000 from memory into f11
la x2, scratch
li x3, 0x9f66ef71 # load x3 with 32 MSBs 0x000000009f66ef71
sw x3, 0(x2) # store x3 (0x9f66ef71) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009f66ef71
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000009f66ef71 from memory into f8
fmadd.s f1, f7, f11, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0xb5292a96 # load x3 with 32 MSBs 0x00000000b5292a96
sw x3, 0(x2) # store x3 (0xb5292a96) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b5292a96
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000b5292a96 from memory into f29
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xfeedbee57fc00000 from memory into f21
la x2, scratch
li x3, 0xd0a60ef7 # load x3 with 32 MSBs 0x00000000d0a60ef7
sw x3, 0(x2) # store x3 (0xd0a60ef7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d0a60ef7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000d0a60ef7 from memory into f3
fmadd.s f17, f29, f21, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x94e741e9 # load x3 with 32 MSBs 0x0000000094e741e9
sw x3, 0(x2) # store x3 (0x94e741e9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000094e741e9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000094e741e9 from memory into f6
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xffc0deff7fffffff from memory into f10
la x2, scratch
li x3, 0xb8bb9408 # load x3 with 32 MSBs 0x00000000b8bb9408
sw x3, 0(x2) # store x3 (0xb8bb9408) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b8bb9408
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000b8bb9408 from memory into f25
fmadd.s f29, f6, f10, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x4cda7b24 # load x3 with 32 MSBs 0x000000004cda7b24
sw x3, 0(x2) # store x3 (0x4cda7b24) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004cda7b24
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000004cda7b24 from memory into f2
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfeffffff7f800001 from memory into f17
la x2, scratch
li x3, 0xc74a1d15 # load x3 with 32 MSBs 0x00000000c74a1d15
sw x3, 0(x2) # store x3 (0xc74a1d15) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c74a1d15
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000c74a1d15 from memory into f7
fmadd.s f11, f2, f17, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xf5aea7e1 # load x3 with 32 MSBs 0x00000000f5aea7e1
sw x3, 0(x2) # store x3 (0xf5aea7e1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f5aea7e1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000f5aea7e1 from memory into f9
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xfffffeff7fbfffff from memory into f19
la x2, scratch
li x3, 0x66441635 # load x3 with 32 MSBs 0x0000000066441635
sw x3, 0(x2) # store x3 (0x66441635) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000066441635
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000066441635 from memory into f12
fmadd.s f21, f9, f19, f12 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffefff00000000)
la x2, scratch
li x3, 0xf36768c4 # load x3 with 32 MSBs 0x00000000f36768c4
sw x3, 0(x2) # store x3 (0xf36768c4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f36768c4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000f36768c4 from memory into f26
la x2, scratch
li x3, 0xc8ca1c53 # load x3 with 32 MSBs 0x00000000c8ca1c53
sw x3, 0(x2) # store x3 (0xc8ca1c53) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c8ca1c53
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000c8ca1c53 from memory into f25
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffffefff00000000 from memory into f14
fmadd.s f9, f26, f25, f14 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x35e8d29d # load x3 with 32 MSBs 0x0000000035e8d29d
sw x3, 0(x2) # store x3 (0x35e8d29d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000035e8d29d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000035e8d29d from memory into f7
la x2, scratch
li x3, 0x1c075479 # load x3 with 32 MSBs 0x000000001c075479
sw x3, 0(x2) # store x3 (0x1c075479) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001c075479
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000001c075479 from memory into f19
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xaaaaaaaa80000000 from memory into f30
fmadd.s f21, f7, f19, f30 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x3f800000)
la x2, scratch
li x3, 0x2de9af23 # load x3 with 32 MSBs 0x000000002de9af23
sw x3, 0(x2) # store x3 (0x2de9af23) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002de9af23
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000002de9af23 from memory into f28
la x2, scratch
li x3, 0x631492c9 # load x3 with 32 MSBs 0x00000000631492c9
sw x3, 0(x2) # store x3 (0x631492c9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000631492c9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000631492c9 from memory into f12
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000003f800000 from memory into f20
fmadd.s f13, f28, f12, f20 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x68f0ce24 # load x3 with 32 MSBs 0x0000000068f0ce24
sw x3, 0(x2) # store x3 (0x68f0ce24) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000068f0ce24
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000068f0ce24 from memory into f17
la x2, scratch
li x3, 0xd6803abc # load x3 with 32 MSBs 0x00000000d6803abc
sw x3, 0(x2) # store x3 (0xd6803abc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d6803abc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000d6803abc from memory into f13
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xdeadbeefbf800000 from memory into f11
fmadd.s f25, f17, f13, f11 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x414c7faa # load x3 with 32 MSBs 0x00000000414c7faa
sw x3, 0(x2) # store x3 (0x414c7faa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000414c7faa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000414c7faa from memory into f5
la x2, scratch
li x3, 0xb99fc37d # load x3 with 32 MSBs 0x00000000b99fc37d
sw x3, 0(x2) # store x3 (0xb99fc37d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b99fc37d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000b99fc37d from memory into f2
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xa1b2c3d400800000 from memory into f19
fmadd.s f7, f5, f2, f19 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x2477d4ec # load x3 with 32 MSBs 0x000000002477d4ec
sw x3, 0(x2) # store x3 (0x2477d4ec) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002477d4ec
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000002477d4ec from memory into f15
la x2, scratch
li x3, 0x092bb72a # load x3 with 32 MSBs 0x00000000092bb72a
sw x3, 0(x2) # store x3 (0x092bb72a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000092bb72a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000092bb72a from memory into f14
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffffffef80800000 from memory into f11
fmadd.s f26, f15, f14, f11 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x50bec88d # load x3 with 32 MSBs 0x0000000050bec88d
sw x3, 0(x2) # store x3 (0x50bec88d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000050bec88d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000050bec88d from memory into f24
la x2, scratch
li x3, 0x3734a85f # load x3 with 32 MSBs 0x000000003734a85f
sw x3, 0(x2) # store x3 (0x3734a85f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003734a85f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000003734a85f from memory into f28
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfeffffef7f7fffff from memory into f5
fmadd.s f6, f24, f28, f5 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x02de96f3 # load x3 with 32 MSBs 0x0000000002de96f3
sw x3, 0(x2) # store x3 (0x02de96f3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000002de96f3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000002de96f3 from memory into f17
la x2, scratch
li x3, 0x72551473 # load x3 with 32 MSBs 0x0000000072551473
sw x3, 0(x2) # store x3 (0x72551473) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000072551473
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000072551473 from memory into f27
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f28
fmadd.s f31, f17, f27, f28 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0xd1576c92 # load x3 with 32 MSBs 0x00000000d1576c92
sw x3, 0(x2) # store x3 (0xd1576c92) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d1576c92
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000d1576c92 from memory into f21
la x2, scratch
li x3, 0x2d05dbd3 # load x3 with 32 MSBs 0x000000002d05dbd3
sw x3, 0(x2) # store x3 (0x2d05dbd3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002d05dbd3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000002d05dbd3 from memory into f1
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x7fffffff7f800000 from memory into f5
fmadd.s f7, f21, f1, f5 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x9623aa8c # load x3 with 32 MSBs 0x000000009623aa8c
sw x3, 0(x2) # store x3 (0x9623aa8c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009623aa8c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000009623aa8c from memory into f14
la x2, scratch
li x3, 0x684d41a9 # load x3 with 32 MSBs 0x00000000684d41a9
sw x3, 0(x2) # store x3 (0x684d41a9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000684d41a9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000684d41a9 from memory into f22
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfffffffeff800000 from memory into f18
fmadd.s f19, f14, f22, f18 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0xaa020c57 # load x3 with 32 MSBs 0x00000000aa020c57
sw x3, 0(x2) # store x3 (0xaa020c57) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aa020c57
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000aa020c57 from memory into f14
la x2, scratch
li x3, 0x77ce9e0c # load x3 with 32 MSBs 0x0000000077ce9e0c
sw x3, 0(x2) # store x3 (0x77ce9e0c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000077ce9e0c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000077ce9e0c from memory into f5
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfeedbee57fc00000 from memory into f6
fmadd.s f9, f14, f5, f6 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x1c756285 # load x3 with 32 MSBs 0x000000001c756285
sw x3, 0(x2) # store x3 (0x1c756285) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001c756285
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000001c756285 from memory into f5
la x2, scratch
li x3, 0x2c931739 # load x3 with 32 MSBs 0x000000002c931739
sw x3, 0(x2) # store x3 (0x2c931739) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002c931739
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000002c931739 from memory into f6
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffc0deff7fffffff from memory into f11
fmadd.s f14, f5, f6, f11 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0xdbd7616e # load x3 with 32 MSBs 0x00000000dbd7616e
sw x3, 0(x2) # store x3 (0xdbd7616e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dbd7616e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000dbd7616e from memory into f26
la x2, scratch
li x3, 0xad43c8f9 # load x3 with 32 MSBs 0x00000000ad43c8f9
sw x3, 0(x2) # store x3 (0xad43c8f9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ad43c8f9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000ad43c8f9 from memory into f9
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfeffffff7f800001 from memory into f6
fmadd.s f5, f26, f9, f6 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x9bc1fc2f # load x3 with 32 MSBs 0x000000009bc1fc2f
sw x3, 0(x2) # store x3 (0x9bc1fc2f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009bc1fc2f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000009bc1fc2f from memory into f8
la x2, scratch
li x3, 0x331b2a65 # load x3 with 32 MSBs 0x00000000331b2a65
sw x3, 0(x2) # store x3 (0x331b2a65) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000331b2a65
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000331b2a65 from memory into f12
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfffffeff7fbfffff from memory into f18
fmadd.s f5, f8, f12, f18 # perform operation

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
