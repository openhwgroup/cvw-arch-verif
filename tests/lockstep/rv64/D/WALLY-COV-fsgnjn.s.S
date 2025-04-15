///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fsgnjn.s.S
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
li x3, 0x130652cc256a4d57 # load x3 with value 0x130652cc256a4d57
sd x3, 0(x2) # store 0x130652cc256a4d57 in memory
flw f18, 0(x2) # load 0x130652cc256a4d57 from memory into f18
la x2, scratch
li x3, 0x4a69a39ac5ad5590 # load x3 with value 0x4a69a39ac5ad5590
sd x3, 0(x2) # store 0x4a69a39ac5ad5590 in memory
flw f27, 0(x2) # load 0x4a69a39ac5ad5590 from memory into f27
fsgnjn.s f23, f18, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f29, 0(x2) # load 0xffffefff00000000 from memory into f29
la x2, scratch
li x3, 0x15a0edade82255e2 # load x3 with value 0x15a0edade82255e2
sd x3, 0(x2) # store 0x15a0edade82255e2 in memory
fld f13, 0(x2) # load 0x15a0edade82255e2 from memory into f13
fsgnjn.s f20, f29, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f1, 0(x2) # load 0xaaaaaaaa80000000 from memory into f1
la x2, scratch
li x3, 0x4603824b52e25dd2 # load x3 with value 0x4603824b52e25dd2
sd x3, 0(x2) # store 0x4603824b52e25dd2 in memory
fld f19, 0(x2) # load 0x4603824b52e25dd2 from memory into f19
fsgnjn.s f7, f1, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f8, 0(x2) # load 0x000000003f800000 from memory into f8
la x2, scratch
li x3, 0x5c7087d025a0a61e # load x3 with value 0x5c7087d025a0a61e
sd x3, 0(x2) # store 0x5c7087d025a0a61e in memory
fld f23, 0(x2) # load 0x5c7087d025a0a61e from memory into f23
fsgnjn.s f3, f8, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f9, 0(x2) # load 0xdeadbeefbf800000 from memory into f9
la x2, scratch
li x3, 0xa32af3d9b3cdb30b # load x3 with value 0xa32af3d9b3cdb30b
sd x3, 0(x2) # store 0xa32af3d9b3cdb30b in memory
fld f24, 0(x2) # load 0xa32af3d9b3cdb30b from memory into f24
fsgnjn.s f6, f9, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f19, 0(x2) # load 0xa1b2c3d400800000 from memory into f19
la x2, scratch
li x3, 0xf5dedb911564d7e7 # load x3 with value 0xf5dedb911564d7e7
sd x3, 0(x2) # store 0xf5dedb911564d7e7 in memory
fld f20, 0(x2) # load 0xf5dedb911564d7e7 from memory into f20
fsgnjn.s f6, f19, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f25, 0(x2) # load 0xffffffef80800000 from memory into f25
la x2, scratch
li x3, 0xb9ddba96ead1659e # load x3 with value 0xb9ddba96ead1659e
sd x3, 0(x2) # store 0xb9ddba96ead1659e in memory
fld f14, 0(x2) # load 0xb9ddba96ead1659e from memory into f14
fsgnjn.s f30, f25, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f16, 0(x2) # load 0xfeffffef7f7fffff from memory into f16
la x2, scratch
li x3, 0x7438b4157ee29f80 # load x3 with value 0x7438b4157ee29f80
sd x3, 0(x2) # store 0x7438b4157ee29f80 in memory
fld f19, 0(x2) # load 0x7438b4157ee29f80 from memory into f19
fsgnjn.s f5, f16, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f9, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f9
la x2, scratch
li x3, 0x59f1ed83b2720fe0 # load x3 with value 0x59f1ed83b2720fe0
sd x3, 0(x2) # store 0x59f1ed83b2720fe0 in memory
fld f18, 0(x2) # load 0x59f1ed83b2720fe0 from memory into f18
fsgnjn.s f13, f9, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f30, 0(x2) # load 0x7fffffff7f800000 from memory into f30
la x2, scratch
li x3, 0x894af41c914c298c # load x3 with value 0x894af41c914c298c
sd x3, 0(x2) # store 0x894af41c914c298c in memory
fld f19, 0(x2) # load 0x894af41c914c298c from memory into f19
fsgnjn.s f2, f30, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f27, 0(x2) # load 0xfffffffeff800000 from memory into f27
la x2, scratch
li x3, 0x6edb863e2c25cbd3 # load x3 with value 0x6edb863e2c25cbd3
sd x3, 0(x2) # store 0x6edb863e2c25cbd3 in memory
fld f25, 0(x2) # load 0x6edb863e2c25cbd3 from memory into f25
fsgnjn.s f22, f27, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f14, 0(x2) # load 0xfeedbee57fc00000 from memory into f14
la x2, scratch
li x3, 0x1d13bdb94c1efe48 # load x3 with value 0x1d13bdb94c1efe48
sd x3, 0(x2) # store 0x1d13bdb94c1efe48 in memory
fld f1, 0(x2) # load 0x1d13bdb94c1efe48 from memory into f1
fsgnjn.s f20, f14, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f26, 0(x2) # load 0xffc0deff7fffffff from memory into f26
la x2, scratch
li x3, 0x6e0bde5e12dd69ac # load x3 with value 0x6e0bde5e12dd69ac
sd x3, 0(x2) # store 0x6e0bde5e12dd69ac in memory
fld f18, 0(x2) # load 0x6e0bde5e12dd69ac from memory into f18
fsgnjn.s f11, f26, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f10, 0(x2) # load 0xfeffffff7f800001 from memory into f10
la x2, scratch
li x3, 0xee7e196543d6f6b3 # load x3 with value 0xee7e196543d6f6b3
sd x3, 0(x2) # store 0xee7e196543d6f6b3 in memory
fld f31, 0(x2) # load 0xee7e196543d6f6b3 from memory into f31
fsgnjn.s f20, f10, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f10, 0(x2) # load 0xfffffeff7fbfffff from memory into f10
la x2, scratch
li x3, 0xe6438d94c73d86f0 # load x3 with value 0xe6438d94c73d86f0
sd x3, 0(x2) # store 0xe6438d94c73d86f0 in memory
fld f11, 0(x2) # load 0xe6438d94c73d86f0 from memory into f11
fsgnjn.s f1, f10, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0xfd64056bbc8854c1 # load x3 with value 0xfd64056bbc8854c1
sd x3, 0(x2) # store 0xfd64056bbc8854c1 in memory
fld f10, 0(x2) # load 0xfd64056bbc8854c1 from memory into f10
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f30, 0(x2) # load 0xffffefff00000000 from memory into f30
fsgnjn.s f7, f10, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x8976d2f2f82369bd # load x3 with value 0x8976d2f2f82369bd
sd x3, 0(x2) # store 0x8976d2f2f82369bd in memory
fld f13, 0(x2) # load 0x8976d2f2f82369bd from memory into f13
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f30, 0(x2) # load 0xaaaaaaaa80000000 from memory into f30
fsgnjn.s f24, f13, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0xd2bde4557d5211dd # load x3 with value 0xd2bde4557d5211dd
sd x3, 0(x2) # store 0xd2bde4557d5211dd in memory
fld f10, 0(x2) # load 0xd2bde4557d5211dd from memory into f10
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f8, 0(x2) # load 0x000000003f800000 from memory into f8
fsgnjn.s f5, f10, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x622e3bac651af4f8 # load x3 with value 0x622e3bac651af4f8
sd x3, 0(x2) # store 0x622e3bac651af4f8 in memory
fld f3, 0(x2) # load 0x622e3bac651af4f8 from memory into f3
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f13, 0(x2) # load 0xdeadbeefbf800000 from memory into f13
fsgnjn.s f17, f3, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x09f5844fb6c87b1e # load x3 with value 0x09f5844fb6c87b1e
sd x3, 0(x2) # store 0x09f5844fb6c87b1e in memory
fld f16, 0(x2) # load 0x09f5844fb6c87b1e from memory into f16
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f23, 0(x2) # load 0xa1b2c3d400800000 from memory into f23
fsgnjn.s f29, f16, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x73c74adeb958e9ff # load x3 with value 0x73c74adeb958e9ff
sd x3, 0(x2) # store 0x73c74adeb958e9ff in memory
fld f6, 0(x2) # load 0x73c74adeb958e9ff from memory into f6
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f11, 0(x2) # load 0xffffffef80800000 from memory into f11
fsgnjn.s f31, f6, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xce4cef31816c8d04 # load x3 with value 0xce4cef31816c8d04
sd x3, 0(x2) # store 0xce4cef31816c8d04 in memory
fld f2, 0(x2) # load 0xce4cef31816c8d04 from memory into f2
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f13, 0(x2) # load 0xfeffffef7f7fffff from memory into f13
fsgnjn.s f15, f2, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0xe80dd8c58d30d555 # load x3 with value 0xe80dd8c58d30d555
sd x3, 0(x2) # store 0xe80dd8c58d30d555 in memory
fld f30, 0(x2) # load 0xe80dd8c58d30d555 from memory into f30
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f24, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f24
fsgnjn.s f16, f30, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x11090784ee87ffa4 # load x3 with value 0x11090784ee87ffa4
sd x3, 0(x2) # store 0x11090784ee87ffa4 in memory
fld f10, 0(x2) # load 0x11090784ee87ffa4 from memory into f10
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f7, 0(x2) # load 0x7fffffff7f800000 from memory into f7
fsgnjn.s f5, f10, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x0d1235eb64ce996f # load x3 with value 0x0d1235eb64ce996f
sd x3, 0(x2) # store 0x0d1235eb64ce996f in memory
fld f15, 0(x2) # load 0x0d1235eb64ce996f from memory into f15
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f28, 0(x2) # load 0xfffffffeff800000 from memory into f28
fsgnjn.s f9, f15, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x7c4ea05339390bb9 # load x3 with value 0x7c4ea05339390bb9
sd x3, 0(x2) # store 0x7c4ea05339390bb9 in memory
fld f7, 0(x2) # load 0x7c4ea05339390bb9 from memory into f7
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f23, 0(x2) # load 0xfeedbee57fc00000 from memory into f23
fsgnjn.s f24, f7, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0xc29d8bb8c839d1d1 # load x3 with value 0xc29d8bb8c839d1d1
sd x3, 0(x2) # store 0xc29d8bb8c839d1d1 in memory
fld f14, 0(x2) # load 0xc29d8bb8c839d1d1 from memory into f14
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f17, 0(x2) # load 0xffc0deff7fffffff from memory into f17
fsgnjn.s f11, f14, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x47a69263fb4e100a # load x3 with value 0x47a69263fb4e100a
sd x3, 0(x2) # store 0x47a69263fb4e100a in memory
fld f8, 0(x2) # load 0x47a69263fb4e100a from memory into f8
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f12, 0(x2) # load 0xfeffffff7f800001 from memory into f12
fsgnjn.s f6, f8, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xe79879c1e1b0977b # load x3 with value 0xe79879c1e1b0977b
sd x3, 0(x2) # store 0xe79879c1e1b0977b in memory
fld f22, 0(x2) # load 0xe79879c1e1b0977b from memory into f22
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f3, 0(x2) # load 0xfffffeff7fbfffff from memory into f3
fsgnjn.s f17, f22, f3 # perform operation

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
