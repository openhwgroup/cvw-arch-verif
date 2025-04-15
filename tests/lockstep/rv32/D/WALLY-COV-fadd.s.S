///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fadd.s.S
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
li x3, 0x00000000e1f87bd7 # load x3 with value 0x00000000e1f87bd7
sw x3, 0(x2) # store 0x00000000e1f87bd7 in memory
flw f18, 0(x2) # load 0x00000000e1f87bd7 from memory into f18
la x2, scratch
li x3, 0x0000000094620304 # load x3 with value 0x0000000094620304
sw x3, 0(x2) # store 0x0000000094620304 in memory
flw f27, 0(x2) # load 0x0000000094620304 from memory into f27
fadd.s f16, f18, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffffefff00000000 from memory into f11
la x2, scratch
li x3, 0xd9fff063 # load x3 with 32 MSBs 0x00000000d9fff063
sw x3, 0(x2) # store x3 (0xd9fff063) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d9fff063
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000d9fff063 from memory into f8
fadd.s f29, f11, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xaaaaaaaa80000000 from memory into f1
la x2, scratch
li x3, 0xeb42a248 # load x3 with 32 MSBs 0x00000000eb42a248
sw x3, 0(x2) # store x3 (0xeb42a248) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000eb42a248
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000eb42a248 from memory into f25
fadd.s f19, f1, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000003f800000 from memory into f11
la x2, scratch
li x3, 0xfa2d4766 # load x3 with 32 MSBs 0x00000000fa2d4766
sw x3, 0(x2) # store x3 (0xfa2d4766) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fa2d4766
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000fa2d4766 from memory into f14
fadd.s f19, f11, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xdeadbeefbf800000 from memory into f19
la x2, scratch
li x3, 0xe296160b # load x3 with 32 MSBs 0x00000000e296160b
sw x3, 0(x2) # store x3 (0xe296160b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e296160b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000e296160b from memory into f5
fadd.s f9, f19, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xa1b2c3d400800000 from memory into f1
la x2, scratch
li x3, 0xf03668a6 # load x3 with 32 MSBs 0x00000000f03668a6
sw x3, 0(x2) # store x3 (0xf03668a6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f03668a6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000f03668a6 from memory into f12
fadd.s f28, f1, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xffffffef80800000 from memory into f5
la x2, scratch
li x3, 0xfd7381fa # load x3 with 32 MSBs 0x00000000fd7381fa
sw x3, 0(x2) # store x3 (0xfd7381fa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fd7381fa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000fd7381fa from memory into f18
fadd.s f24, f5, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfeffffef7f7fffff from memory into f24
la x2, scratch
li x3, 0xc9bce3ee # load x3 with 32 MSBs 0x00000000c9bce3ee
sw x3, 0(x2) # store x3 (0xc9bce3ee) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c9bce3ee
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000c9bce3ee from memory into f22
fadd.s f13, f24, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f14
la x2, scratch
li x3, 0x67c07256 # load x3 with 32 MSBs 0x0000000067c07256
sw x3, 0(x2) # store x3 (0x67c07256) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000067c07256
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000067c07256 from memory into f19
fadd.s f13, f14, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7fffffff7f800000 from memory into f6
la x2, scratch
li x3, 0x9d19b36b # load x3 with 32 MSBs 0x000000009d19b36b
sw x3, 0(x2) # store x3 (0x9d19b36b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009d19b36b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000009d19b36b from memory into f8
fadd.s f9, f6, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfffffffeff800000 from memory into f13
la x2, scratch
li x3, 0x76515426 # load x3 with 32 MSBs 0x0000000076515426
sw x3, 0(x2) # store x3 (0x76515426) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000076515426
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000076515426 from memory into f30
fadd.s f2, f13, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xfeedbee57fc00000 from memory into f31
la x2, scratch
li x3, 0x200beb88 # load x3 with 32 MSBs 0x00000000200beb88
sw x3, 0(x2) # store x3 (0x200beb88) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000200beb88
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000200beb88 from memory into f27
fadd.s f30, f31, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xffc0deff7fffffff from memory into f6
la x2, scratch
li x3, 0xd4d2428d # load x3 with 32 MSBs 0x00000000d4d2428d
sw x3, 0(x2) # store x3 (0xd4d2428d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d4d2428d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000d4d2428d from memory into f14
fadd.s f26, f6, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xfeffffff7f800001 from memory into f5
la x2, scratch
li x3, 0x7ac2614f # load x3 with 32 MSBs 0x000000007ac2614f
sw x3, 0(x2) # store x3 (0x7ac2614f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007ac2614f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000007ac2614f from memory into f18
fadd.s f19, f5, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfffffeff7fbfffff from memory into f7
la x2, scratch
li x3, 0xdd4d30e1 # load x3 with 32 MSBs 0x00000000dd4d30e1
sw x3, 0(x2) # store x3 (0xdd4d30e1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dd4d30e1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000dd4d30e1 from memory into f10
fadd.s f28, f7, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x6146b5e3 # load x3 with 32 MSBs 0x000000006146b5e3
sw x3, 0(x2) # store x3 (0x6146b5e3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006146b5e3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000006146b5e3 from memory into f26
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xffffefff00000000 from memory into f2
fadd.s f31, f26, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x248cf29e # load x3 with 32 MSBs 0x00000000248cf29e
sw x3, 0(x2) # store x3 (0x248cf29e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000248cf29e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000248cf29e from memory into f20
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xaaaaaaaa80000000 from memory into f22
fadd.s f29, f20, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x4e9aa067 # load x3 with 32 MSBs 0x000000004e9aa067
sw x3, 0(x2) # store x3 (0x4e9aa067) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004e9aa067
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000004e9aa067 from memory into f6
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000003f800000 from memory into f24
fadd.s f3, f6, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x0fe6e50f # load x3 with 32 MSBs 0x000000000fe6e50f
sw x3, 0(x2) # store x3 (0x0fe6e50f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000fe6e50f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000000fe6e50f from memory into f26
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xdeadbeefbf800000 from memory into f27
fadd.s f20, f26, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x5fb6f8c3 # load x3 with 32 MSBs 0x000000005fb6f8c3
sw x3, 0(x2) # store x3 (0x5fb6f8c3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005fb6f8c3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000005fb6f8c3 from memory into f14
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xa1b2c3d400800000 from memory into f13
fadd.s f25, f14, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0xf6e552c8 # load x3 with 32 MSBs 0x00000000f6e552c8
sw x3, 0(x2) # store x3 (0xf6e552c8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f6e552c8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000f6e552c8 from memory into f16
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xffffffef80800000 from memory into f13
fadd.s f8, f16, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x7cec0580 # load x3 with 32 MSBs 0x000000007cec0580
sw x3, 0(x2) # store x3 (0x7cec0580) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007cec0580
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000007cec0580 from memory into f1
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfeffffef7f7fffff from memory into f24
fadd.s f18, f1, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x8a8bdddf # load x3 with 32 MSBs 0x000000008a8bdddf
sw x3, 0(x2) # store x3 (0x8a8bdddf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008a8bdddf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000008a8bdddf from memory into f20
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f18
fadd.s f7, f20, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x8e2e28b7 # load x3 with 32 MSBs 0x000000008e2e28b7
sw x3, 0(x2) # store x3 (0x8e2e28b7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008e2e28b7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000008e2e28b7 from memory into f2
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7fffffff7f800000 from memory into f28
fadd.s f12, f2, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0xf81f45ef # load x3 with 32 MSBs 0x00000000f81f45ef
sw x3, 0(x2) # store x3 (0xf81f45ef) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f81f45ef
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000f81f45ef from memory into f23
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfffffffeff800000 from memory into f22
fadd.s f8, f23, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x29261768 # load x3 with 32 MSBs 0x0000000029261768
sw x3, 0(x2) # store x3 (0x29261768) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000029261768
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000029261768 from memory into f6
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfeedbee57fc00000 from memory into f25
fadd.s f16, f6, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0xdb4ee6f9 # load x3 with 32 MSBs 0x00000000db4ee6f9
sw x3, 0(x2) # store x3 (0xdb4ee6f9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000db4ee6f9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000db4ee6f9 from memory into f31
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xffc0deff7fffffff from memory into f15
fadd.s f1, f31, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x87c7dbe3 # load x3 with 32 MSBs 0x0000000087c7dbe3
sw x3, 0(x2) # store x3 (0x87c7dbe3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000087c7dbe3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x0000000087c7dbe3 from memory into f21
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfeffffff7f800001 from memory into f6
fadd.s f3, f21, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x1d0eff70 # load x3 with 32 MSBs 0x000000001d0eff70
sw x3, 0(x2) # store x3 (0x1d0eff70) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001d0eff70
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000001d0eff70 from memory into f26
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xfffffeff7fbfffff from memory into f31
fadd.s f3, f26, f31 # perform operation

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
