///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fsgnjx.s.S
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
li x3, 0x198f0e7033586bcd # load x3 with value 0x198f0e7033586bcd
sd x3, 0(x2) # store 0x198f0e7033586bcd in memory
flw f20, 0(x2) # load 0x198f0e7033586bcd from memory into f20
la x2, scratch
li x3, 0xea3ba89b6a87a0ca # load x3 with value 0xea3ba89b6a87a0ca
sd x3, 0(x2) # store 0xea3ba89b6a87a0ca in memory
flw f29, 0(x2) # load 0xea3ba89b6a87a0ca from memory into f29
fsgnjx.s f22, f20, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f5, 0(x2) # load 0xffffefff00000000 from memory into f5
la x2, scratch
li x3, 0xf1fbbea98c1792b1 # load x3 with value 0xf1fbbea98c1792b1
sd x3, 0(x2) # store 0xf1fbbea98c1792b1 in memory
fld f11, 0(x2) # load 0xf1fbbea98c1792b1 from memory into f11
fsgnjx.s f29, f5, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f12, 0(x2) # load 0xaaaaaaaa80000000 from memory into f12
la x2, scratch
li x3, 0x634e5899c4346f73 # load x3 with value 0x634e5899c4346f73
sd x3, 0(x2) # store 0x634e5899c4346f73 in memory
fld f26, 0(x2) # load 0x634e5899c4346f73 from memory into f26
fsgnjx.s f15, f12, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f10, 0(x2) # load 0x000000003f800000 from memory into f10
la x2, scratch
li x3, 0xe2d5c76ab56d3310 # load x3 with value 0xe2d5c76ab56d3310
sd x3, 0(x2) # store 0xe2d5c76ab56d3310 in memory
fld f19, 0(x2) # load 0xe2d5c76ab56d3310 from memory into f19
fsgnjx.s f25, f10, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f8, 0(x2) # load 0xdeadbeefbf800000 from memory into f8
la x2, scratch
li x3, 0xde1a743f7300db30 # load x3 with value 0xde1a743f7300db30
sd x3, 0(x2) # store 0xde1a743f7300db30 in memory
fld f13, 0(x2) # load 0xde1a743f7300db30 from memory into f13
fsgnjx.s f3, f8, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f15, 0(x2) # load 0xa1b2c3d400800000 from memory into f15
la x2, scratch
li x3, 0xa5087c051fe7e2ba # load x3 with value 0xa5087c051fe7e2ba
sd x3, 0(x2) # store 0xa5087c051fe7e2ba in memory
fld f13, 0(x2) # load 0xa5087c051fe7e2ba from memory into f13
fsgnjx.s f19, f15, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f25, 0(x2) # load 0xffffffef80800000 from memory into f25
la x2, scratch
li x3, 0xa9aeabd9954b3c4b # load x3 with value 0xa9aeabd9954b3c4b
sd x3, 0(x2) # store 0xa9aeabd9954b3c4b in memory
fld f29, 0(x2) # load 0xa9aeabd9954b3c4b from memory into f29
fsgnjx.s f21, f25, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f15, 0(x2) # load 0xfeffffef7f7fffff from memory into f15
la x2, scratch
li x3, 0x2dbece3163b1a6f0 # load x3 with value 0x2dbece3163b1a6f0
sd x3, 0(x2) # store 0x2dbece3163b1a6f0 in memory
fld f9, 0(x2) # load 0x2dbece3163b1a6f0 from memory into f9
fsgnjx.s f12, f15, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f7, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f7
la x2, scratch
li x3, 0x0c99c70dc27d6e44 # load x3 with value 0x0c99c70dc27d6e44
sd x3, 0(x2) # store 0x0c99c70dc27d6e44 in memory
fld f10, 0(x2) # load 0x0c99c70dc27d6e44 from memory into f10
fsgnjx.s f20, f7, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f13, 0(x2) # load 0x7fffffff7f800000 from memory into f13
la x2, scratch
li x3, 0x983391ea621ff5d5 # load x3 with value 0x983391ea621ff5d5
sd x3, 0(x2) # store 0x983391ea621ff5d5 in memory
fld f20, 0(x2) # load 0x983391ea621ff5d5 from memory into f20
fsgnjx.s f23, f13, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f24, 0(x2) # load 0xfffffffeff800000 from memory into f24
la x2, scratch
li x3, 0xc6e241edb68ba3c4 # load x3 with value 0xc6e241edb68ba3c4
sd x3, 0(x2) # store 0xc6e241edb68ba3c4 in memory
fld f18, 0(x2) # load 0xc6e241edb68ba3c4 from memory into f18
fsgnjx.s f22, f24, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f19, 0(x2) # load 0xfeedbee57fc00000 from memory into f19
la x2, scratch
li x3, 0x8394694dacd26e08 # load x3 with value 0x8394694dacd26e08
sd x3, 0(x2) # store 0x8394694dacd26e08 in memory
fld f8, 0(x2) # load 0x8394694dacd26e08 from memory into f8
fsgnjx.s f11, f19, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f7, 0(x2) # load 0xffc0deff7fffffff from memory into f7
la x2, scratch
li x3, 0x68e13bffbd36bb6f # load x3 with value 0x68e13bffbd36bb6f
sd x3, 0(x2) # store 0x68e13bffbd36bb6f in memory
fld f16, 0(x2) # load 0x68e13bffbd36bb6f from memory into f16
fsgnjx.s f2, f7, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f3, 0(x2) # load 0xfeffffff7f800001 from memory into f3
la x2, scratch
li x3, 0x50a210eb9636f838 # load x3 with value 0x50a210eb9636f838
sd x3, 0(x2) # store 0x50a210eb9636f838 in memory
fld f11, 0(x2) # load 0x50a210eb9636f838 from memory into f11
fsgnjx.s f15, f3, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f24, 0(x2) # load 0xfffffeff7fbfffff from memory into f24
la x2, scratch
li x3, 0x964696bcfedbccfd # load x3 with value 0x964696bcfedbccfd
sd x3, 0(x2) # store 0x964696bcfedbccfd in memory
fld f22, 0(x2) # load 0x964696bcfedbccfd from memory into f22
fsgnjx.s f11, f24, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x12126a40b2380bfe # load x3 with value 0x12126a40b2380bfe
sd x3, 0(x2) # store 0x12126a40b2380bfe in memory
fld f16, 0(x2) # load 0x12126a40b2380bfe from memory into f16
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f6, 0(x2) # load 0xffffefff00000000 from memory into f6
fsgnjx.s f2, f16, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0xf22e3d13ff61456b # load x3 with value 0xf22e3d13ff61456b
sd x3, 0(x2) # store 0xf22e3d13ff61456b in memory
fld f23, 0(x2) # load 0xf22e3d13ff61456b from memory into f23
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f11, 0(x2) # load 0xaaaaaaaa80000000 from memory into f11
fsgnjx.s f31, f23, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0xf2033f47a0c0bed0 # load x3 with value 0xf2033f47a0c0bed0
sd x3, 0(x2) # store 0xf2033f47a0c0bed0 in memory
fld f14, 0(x2) # load 0xf2033f47a0c0bed0 from memory into f14
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f20, 0(x2) # load 0x000000003f800000 from memory into f20
fsgnjx.s f30, f14, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0xfffa72e7484b47a2 # load x3 with value 0xfffa72e7484b47a2
sd x3, 0(x2) # store 0xfffa72e7484b47a2 in memory
fld f31, 0(x2) # load 0xfffa72e7484b47a2 from memory into f31
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f3, 0(x2) # load 0xdeadbeefbf800000 from memory into f3
fsgnjx.s f26, f31, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0xe1e5e439a8e5c8e9 # load x3 with value 0xe1e5e439a8e5c8e9
sd x3, 0(x2) # store 0xe1e5e439a8e5c8e9 in memory
fld f15, 0(x2) # load 0xe1e5e439a8e5c8e9 from memory into f15
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f19, 0(x2) # load 0xa1b2c3d400800000 from memory into f19
fsgnjx.s f2, f15, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x63e1e6d28db1d4fa # load x3 with value 0x63e1e6d28db1d4fa
sd x3, 0(x2) # store 0x63e1e6d28db1d4fa in memory
fld f17, 0(x2) # load 0x63e1e6d28db1d4fa from memory into f17
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f26, 0(x2) # load 0xffffffef80800000 from memory into f26
fsgnjx.s f12, f17, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x1ec3af053a43d8fa # load x3 with value 0x1ec3af053a43d8fa
sd x3, 0(x2) # store 0x1ec3af053a43d8fa in memory
fld f19, 0(x2) # load 0x1ec3af053a43d8fa from memory into f19
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f5, 0(x2) # load 0xfeffffef7f7fffff from memory into f5
fsgnjx.s f7, f19, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x54a5be31542b5a1f # load x3 with value 0x54a5be31542b5a1f
sd x3, 0(x2) # store 0x54a5be31542b5a1f in memory
fld f22, 0(x2) # load 0x54a5be31542b5a1f from memory into f22
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f13, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f13
fsgnjx.s f9, f22, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x1dc5cc695f85b827 # load x3 with value 0x1dc5cc695f85b827
sd x3, 0(x2) # store 0x1dc5cc695f85b827 in memory
fld f20, 0(x2) # load 0x1dc5cc695f85b827 from memory into f20
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f9, 0(x2) # load 0x7fffffff7f800000 from memory into f9
fsgnjx.s f6, f20, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x14d6af3606c708b3 # load x3 with value 0x14d6af3606c708b3
sd x3, 0(x2) # store 0x14d6af3606c708b3 in memory
fld f22, 0(x2) # load 0x14d6af3606c708b3 from memory into f22
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f26, 0(x2) # load 0xfffffffeff800000 from memory into f26
fsgnjx.s f29, f22, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x56d248297362209e # load x3 with value 0x56d248297362209e
sd x3, 0(x2) # store 0x56d248297362209e in memory
fld f27, 0(x2) # load 0x56d248297362209e from memory into f27
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f13, 0(x2) # load 0xfeedbee57fc00000 from memory into f13
fsgnjx.s f14, f27, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0xa3e8f631be0fb9b6 # load x3 with value 0xa3e8f631be0fb9b6
sd x3, 0(x2) # store 0xa3e8f631be0fb9b6 in memory
fld f17, 0(x2) # load 0xa3e8f631be0fb9b6 from memory into f17
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f6, 0(x2) # load 0xffc0deff7fffffff from memory into f6
fsgnjx.s f28, f17, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x51f1e72da44e962b # load x3 with value 0x51f1e72da44e962b
sd x3, 0(x2) # store 0x51f1e72da44e962b in memory
fld f29, 0(x2) # load 0x51f1e72da44e962b from memory into f29
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f25, 0(x2) # load 0xfeffffff7f800001 from memory into f25
fsgnjx.s f17, f29, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xe09f4f9cdcab70cb # load x3 with value 0xe09f4f9cdcab70cb
sd x3, 0(x2) # store 0xe09f4f9cdcab70cb in memory
fld f28, 0(x2) # load 0xe09f4f9cdcab70cb from memory into f28
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f21, 0(x2) # load 0xfffffeff7fbfffff from memory into f21
fsgnjx.s f31, f28, f21 # perform operation

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
