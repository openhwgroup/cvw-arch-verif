///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fmsub.s.S
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
li x3, 0x00000000ecf249b4 # load x3 with value 0x00000000ecf249b4
sw x3, 0(x2) # store 0x00000000ecf249b4 in memory
flw f20, 0(x2) # load 0x00000000ecf249b4 from memory into f20
la x2, scratch
li x3, 0x00000000fb226955 # load x3 with value 0x00000000fb226955
sw x3, 0(x2) # store 0x00000000fb226955 in memory
flw f9, 0(x2) # load 0x00000000fb226955 from memory into f9
la x2, scratch
li x3, 0x000000007475f3f0 # load x3 with value 0x000000007475f3f0
sw x3, 0(x2) # store 0x000000007475f3f0 in memory
flw f28, 0(x2) # load 0x000000007475f3f0 from memory into f28
fmsub.s f17, f20, f9, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xffffefff00000000 from memory into f28
la x2, scratch
li x3, 0xe878970c # load x3 with 32 MSBs 0x00000000e878970c
sw x3, 0(x2) # store x3 (0xe878970c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e878970c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x00000000e878970c from memory into f20
la x2, scratch
li x3, 0x285610bb # load x3 with 32 MSBs 0x00000000285610bb
sw x3, 0(x2) # store x3 (0x285610bb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000285610bb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000285610bb from memory into f14
fmsub.s f15, f28, f20, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xaaaaaaaa80000000 from memory into f29
la x2, scratch
li x3, 0xa2c86de6 # load x3 with 32 MSBs 0x00000000a2c86de6
sw x3, 0(x2) # store x3 (0xa2c86de6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a2c86de6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000a2c86de6 from memory into f3
la x2, scratch
li x3, 0xa3b4af31 # load x3 with 32 MSBs 0x00000000a3b4af31
sw x3, 0(x2) # store x3 (0xa3b4af31) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a3b4af31
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000a3b4af31 from memory into f25
fmsub.s f19, f29, f3, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000003f800000 from memory into f2
la x2, scratch
li x3, 0xfcd326c5 # load x3 with 32 MSBs 0x00000000fcd326c5
sw x3, 0(x2) # store x3 (0xfcd326c5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fcd326c5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000fcd326c5 from memory into f6
la x2, scratch
li x3, 0x092723a1 # load x3 with 32 MSBs 0x00000000092723a1
sw x3, 0(x2) # store x3 (0x092723a1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000092723a1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000092723a1 from memory into f25
fmsub.s f14, f2, f6, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xdeadbeefbf800000 from memory into f22
la x2, scratch
li x3, 0x585c0351 # load x3 with 32 MSBs 0x00000000585c0351
sw x3, 0(x2) # store x3 (0x585c0351) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000585c0351
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000585c0351 from memory into f10
la x2, scratch
li x3, 0x1d84891e # load x3 with 32 MSBs 0x000000001d84891e
sw x3, 0(x2) # store x3 (0x1d84891e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001d84891e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000001d84891e from memory into f12
fmsub.s f8, f22, f10, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xa1b2c3d400800000 from memory into f17
la x2, scratch
li x3, 0xc2041a47 # load x3 with 32 MSBs 0x00000000c2041a47
sw x3, 0(x2) # store x3 (0xc2041a47) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c2041a47
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000c2041a47 from memory into f29
la x2, scratch
li x3, 0x0cba0e5f # load x3 with 32 MSBs 0x000000000cba0e5f
sw x3, 0(x2) # store x3 (0x0cba0e5f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000cba0e5f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000000cba0e5f from memory into f7
fmsub.s f24, f17, f29, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xffffffef80800000 from memory into f26
la x2, scratch
li x3, 0xbdd8e581 # load x3 with 32 MSBs 0x00000000bdd8e581
sw x3, 0(x2) # store x3 (0xbdd8e581) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bdd8e581
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000bdd8e581 from memory into f23
la x2, scratch
li x3, 0xdabc46c6 # load x3 with 32 MSBs 0x00000000dabc46c6
sw x3, 0(x2) # store x3 (0xdabc46c6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dabc46c6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000dabc46c6 from memory into f27
fmsub.s f17, f26, f23, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfeffffef7f7fffff from memory into f7
la x2, scratch
li x3, 0x22b771ae # load x3 with 32 MSBs 0x0000000022b771ae
sw x3, 0(x2) # store x3 (0x22b771ae) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000022b771ae
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000022b771ae from memory into f11
la x2, scratch
li x3, 0x635f592d # load x3 with 32 MSBs 0x00000000635f592d
sw x3, 0(x2) # store x3 (0x635f592d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000635f592d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000635f592d from memory into f23
fmsub.s f16, f7, f11, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f16
la x2, scratch
li x3, 0x2a896156 # load x3 with 32 MSBs 0x000000002a896156
sw x3, 0(x2) # store x3 (0x2a896156) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002a896156
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x000000002a896156 from memory into f24
la x2, scratch
li x3, 0x3238b923 # load x3 with 32 MSBs 0x000000003238b923
sw x3, 0(x2) # store x3 (0x3238b923) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003238b923
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000003238b923 from memory into f18
fmsub.s f8, f16, f24, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7fffffff7f800000 from memory into f3
la x2, scratch
li x3, 0x230a310c # load x3 with 32 MSBs 0x00000000230a310c
sw x3, 0(x2) # store x3 (0x230a310c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000230a310c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000230a310c from memory into f17
la x2, scratch
li x3, 0xebe1360c # load x3 with 32 MSBs 0x00000000ebe1360c
sw x3, 0(x2) # store x3 (0xebe1360c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ebe1360c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000ebe1360c from memory into f26
fmsub.s f7, f3, f17, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xfffffffeff800000 from memory into f19
la x2, scratch
li x3, 0x23bd3e7f # load x3 with 32 MSBs 0x0000000023bd3e7f
sw x3, 0(x2) # store x3 (0x23bd3e7f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000023bd3e7f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000023bd3e7f from memory into f22
la x2, scratch
li x3, 0xdd41fb01 # load x3 with 32 MSBs 0x00000000dd41fb01
sw x3, 0(x2) # store x3 (0xdd41fb01) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dd41fb01
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000dd41fb01 from memory into f21
fmsub.s f12, f19, f22, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfeedbee57fc00000 from memory into f28
la x2, scratch
li x3, 0xb0a52e62 # load x3 with 32 MSBs 0x00000000b0a52e62
sw x3, 0(x2) # store x3 (0xb0a52e62) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b0a52e62
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000b0a52e62 from memory into f13
la x2, scratch
li x3, 0x664edd08 # load x3 with 32 MSBs 0x00000000664edd08
sw x3, 0(x2) # store x3 (0x664edd08) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000664edd08
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000664edd08 from memory into f18
fmsub.s f31, f28, f13, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xffc0deff7fffffff from memory into f30
la x2, scratch
li x3, 0x7d2131d0 # load x3 with 32 MSBs 0x000000007d2131d0
sw x3, 0(x2) # store x3 (0x7d2131d0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007d2131d0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000007d2131d0 from memory into f27
la x2, scratch
li x3, 0x85347f6c # load x3 with 32 MSBs 0x0000000085347f6c
sw x3, 0(x2) # store x3 (0x85347f6c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000085347f6c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000085347f6c from memory into f22
fmsub.s f24, f30, f27, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfeffffff7f800001 from memory into f26
la x2, scratch
li x3, 0x02ee5cc2 # load x3 with 32 MSBs 0x0000000002ee5cc2
sw x3, 0(x2) # store x3 (0x02ee5cc2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000002ee5cc2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000002ee5cc2 from memory into f12
la x2, scratch
li x3, 0xe24883c4 # load x3 with 32 MSBs 0x00000000e24883c4
sw x3, 0(x2) # store x3 (0xe24883c4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e24883c4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000e24883c4 from memory into f24
fmsub.s f27, f26, f12, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfffffeff7fbfffff from memory into f15
la x2, scratch
li x3, 0x466bd278 # load x3 with 32 MSBs 0x00000000466bd278
sw x3, 0(x2) # store x3 (0x466bd278) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000466bd278
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000466bd278 from memory into f10
la x2, scratch
li x3, 0xaa679c7f # load x3 with 32 MSBs 0x00000000aa679c7f
sw x3, 0(x2) # store x3 (0xaa679c7f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aa679c7f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000aa679c7f from memory into f1
fmsub.s f12, f15, f10, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x661fe7ab # load x3 with 32 MSBs 0x00000000661fe7ab
sw x3, 0(x2) # store x3 (0x661fe7ab) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000661fe7ab
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000661fe7ab from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffffefff00000000 from memory into f27
la x2, scratch
li x3, 0x6953fc81 # load x3 with 32 MSBs 0x000000006953fc81
sw x3, 0(x2) # store x3 (0x6953fc81) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006953fc81
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000006953fc81 from memory into f25
fmsub.s f17, f30, f27, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x671f283a # load x3 with 32 MSBs 0x00000000671f283a
sw x3, 0(x2) # store x3 (0x671f283a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000671f283a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000671f283a from memory into f14
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xaaaaaaaa80000000 from memory into f3
la x2, scratch
li x3, 0x75559cfe # load x3 with 32 MSBs 0x0000000075559cfe
sw x3, 0(x2) # store x3 (0x75559cfe) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000075559cfe
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000075559cfe from memory into f19
fmsub.s f20, f14, f3, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x870596bc # load x3 with 32 MSBs 0x00000000870596bc
sw x3, 0(x2) # store x3 (0x870596bc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000870596bc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000870596bc from memory into f23
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000003f800000 from memory into f29
la x2, scratch
li x3, 0x7f82e993 # load x3 with 32 MSBs 0x000000007f82e993
sw x3, 0(x2) # store x3 (0x7f82e993) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007f82e993
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000007f82e993 from memory into f20
fmsub.s f9, f23, f29, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0xafda2f5b # load x3 with 32 MSBs 0x00000000afda2f5b
sw x3, 0(x2) # store x3 (0xafda2f5b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000afda2f5b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000afda2f5b from memory into f12
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xdeadbeefbf800000 from memory into f30
la x2, scratch
li x3, 0xf91ab365 # load x3 with 32 MSBs 0x00000000f91ab365
sw x3, 0(x2) # store x3 (0xf91ab365) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f91ab365
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000f91ab365 from memory into f10
fmsub.s f28, f12, f30, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0xf27a3dec # load x3 with 32 MSBs 0x00000000f27a3dec
sw x3, 0(x2) # store x3 (0xf27a3dec) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f27a3dec
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000f27a3dec from memory into f5
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xa1b2c3d400800000 from memory into f24
la x2, scratch
li x3, 0xa3d82313 # load x3 with 32 MSBs 0x00000000a3d82313
sw x3, 0(x2) # store x3 (0xa3d82313) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a3d82313
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000a3d82313 from memory into f1
fmsub.s f19, f5, f24, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x90e095b3 # load x3 with 32 MSBs 0x0000000090e095b3
sw x3, 0(x2) # store x3 (0x90e095b3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000090e095b3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000090e095b3 from memory into f27
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xffffffef80800000 from memory into f28
la x2, scratch
li x3, 0xae5326ba # load x3 with 32 MSBs 0x00000000ae5326ba
sw x3, 0(x2) # store x3 (0xae5326ba) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ae5326ba
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000ae5326ba from memory into f9
fmsub.s f6, f27, f28, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x101272dd # load x3 with 32 MSBs 0x00000000101272dd
sw x3, 0(x2) # store x3 (0x101272dd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000101272dd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000101272dd from memory into f25
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfeffffef7f7fffff from memory into f24
la x2, scratch
li x3, 0x060287a9 # load x3 with 32 MSBs 0x00000000060287a9
sw x3, 0(x2) # store x3 (0x060287a9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000060287a9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000060287a9 from memory into f12
fmsub.s f1, f25, f24, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x02af58f2 # load x3 with 32 MSBs 0x0000000002af58f2
sw x3, 0(x2) # store x3 (0x02af58f2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000002af58f2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000002af58f2 from memory into f16
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f11
la x2, scratch
li x3, 0x642f32f5 # load x3 with 32 MSBs 0x00000000642f32f5
sw x3, 0(x2) # store x3 (0x642f32f5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000642f32f5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000642f32f5 from memory into f25
fmsub.s f7, f16, f11, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x5ece10eb # load x3 with 32 MSBs 0x000000005ece10eb
sw x3, 0(x2) # store x3 (0x5ece10eb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005ece10eb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000005ece10eb from memory into f13
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x7fffffff7f800000 from memory into f8
la x2, scratch
li x3, 0x561cc773 # load x3 with 32 MSBs 0x00000000561cc773
sw x3, 0(x2) # store x3 (0x561cc773) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000561cc773
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000561cc773 from memory into f2
fmsub.s f10, f13, f8, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x66f1859a # load x3 with 32 MSBs 0x0000000066f1859a
sw x3, 0(x2) # store x3 (0x66f1859a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000066f1859a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000066f1859a from memory into f12
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfffffffeff800000 from memory into f10
la x2, scratch
li x3, 0xd92fea73 # load x3 with 32 MSBs 0x00000000d92fea73
sw x3, 0(x2) # store x3 (0xd92fea73) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d92fea73
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000d92fea73 from memory into f30
fmsub.s f25, f12, f10, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0xe0003733 # load x3 with 32 MSBs 0x00000000e0003733
sw x3, 0(x2) # store x3 (0xe0003733) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e0003733
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000e0003733 from memory into f22
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfeedbee57fc00000 from memory into f29
la x2, scratch
li x3, 0x9d1feedf # load x3 with 32 MSBs 0x000000009d1feedf
sw x3, 0(x2) # store x3 (0x9d1feedf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009d1feedf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000009d1feedf from memory into f18
fmsub.s f6, f22, f29, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x31b4685c # load x3 with 32 MSBs 0x0000000031b4685c
sw x3, 0(x2) # store x3 (0x31b4685c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000031b4685c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000031b4685c from memory into f29
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xffc0deff7fffffff from memory into f8
la x2, scratch
li x3, 0x3b96658b # load x3 with 32 MSBs 0x000000003b96658b
sw x3, 0(x2) # store x3 (0x3b96658b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003b96658b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000003b96658b from memory into f9
fmsub.s f17, f29, f8, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x8978292a # load x3 with 32 MSBs 0x000000008978292a
sw x3, 0(x2) # store x3 (0x8978292a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008978292a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x000000008978292a from memory into f6
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xfeffffff7f800001 from memory into f27
la x2, scratch
li x3, 0x54264643 # load x3 with 32 MSBs 0x0000000054264643
sw x3, 0(x2) # store x3 (0x54264643) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000054264643
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000054264643 from memory into f8
fmsub.s f20, f6, f27, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x3850b2cb # load x3 with 32 MSBs 0x000000003850b2cb
sw x3, 0(x2) # store x3 (0x3850b2cb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003850b2cb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000003850b2cb from memory into f26
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xfffffeff7fbfffff from memory into f21
la x2, scratch
li x3, 0x9ca02426 # load x3 with 32 MSBs 0x000000009ca02426
sw x3, 0(x2) # store x3 (0x9ca02426) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009ca02426
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000009ca02426 from memory into f2
fmsub.s f7, f26, f21, f2 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x9871326a # load x3 with 32 MSBs 0x000000009871326a
sw x3, 0(x2) # store x3 (0x9871326a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009871326a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000009871326a from memory into f9
la x2, scratch
li x3, 0xd55c063b # load x3 with 32 MSBs 0x00000000d55c063b
sw x3, 0(x2) # store x3 (0xd55c063b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d55c063b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000d55c063b from memory into f22
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xffffefff00000000 from memory into f26
fmsub.s f30, f9, f22, f26 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x53277128 # load x3 with 32 MSBs 0x0000000053277128
sw x3, 0(x2) # store x3 (0x53277128) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000053277128
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000053277128 from memory into f22
la x2, scratch
li x3, 0xcbd5b16a # load x3 with 32 MSBs 0x00000000cbd5b16a
sw x3, 0(x2) # store x3 (0xcbd5b16a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cbd5b16a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000cbd5b16a from memory into f17
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xaaaaaaaa80000000 from memory into f31
fmsub.s f6, f22, f17, f31 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x3f800000)
la x2, scratch
li x3, 0x507f3914 # load x3 with 32 MSBs 0x00000000507f3914
sw x3, 0(x2) # store x3 (0x507f3914) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000507f3914
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000507f3914 from memory into f3
la x2, scratch
li x3, 0x69907f74 # load x3 with 32 MSBs 0x0000000069907f74
sw x3, 0(x2) # store x3 (0x69907f74) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000069907f74
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x0000000069907f74 from memory into f26
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000003f800000 from memory into f7
fmsub.s f29, f3, f26, f7 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x82742ae9 # load x3 with 32 MSBs 0x0000000082742ae9
sw x3, 0(x2) # store x3 (0x82742ae9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000082742ae9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000082742ae9 from memory into f19
la x2, scratch
li x3, 0x95dfb4b1 # load x3 with 32 MSBs 0x0000000095dfb4b1
sw x3, 0(x2) # store x3 (0x95dfb4b1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000095dfb4b1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000095dfb4b1 from memory into f14
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xdeadbeefbf800000 from memory into f15
fmsub.s f17, f19, f14, f15 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x51d8a96a # load x3 with 32 MSBs 0x0000000051d8a96a
sw x3, 0(x2) # store x3 (0x51d8a96a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000051d8a96a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000051d8a96a from memory into f16
la x2, scratch
li x3, 0x2abd30b4 # load x3 with 32 MSBs 0x000000002abd30b4
sw x3, 0(x2) # store x3 (0x2abd30b4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002abd30b4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000002abd30b4 from memory into f18
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xa1b2c3d400800000 from memory into f6
fmsub.s f26, f16, f18, f6 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffef80800000)
la x2, scratch
li x3, 0xd74dc9cf # load x3 with 32 MSBs 0x00000000d74dc9cf
sw x3, 0(x2) # store x3 (0xd74dc9cf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d74dc9cf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000d74dc9cf from memory into f18
la x2, scratch
li x3, 0xe019f824 # load x3 with 32 MSBs 0x00000000e019f824
sw x3, 0(x2) # store x3 (0xe019f824) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e019f824
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000e019f824 from memory into f15
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xffffffef80800000 from memory into f6
fmsub.s f17, f18, f15, f6 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xb0be2acc # load x3 with 32 MSBs 0x00000000b0be2acc
sw x3, 0(x2) # store x3 (0xb0be2acc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b0be2acc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000b0be2acc from memory into f19
la x2, scratch
li x3, 0x47bc5b59 # load x3 with 32 MSBs 0x0000000047bc5b59
sw x3, 0(x2) # store x3 (0x47bc5b59) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000047bc5b59
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000047bc5b59 from memory into f6
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xfeffffef7f7fffff from memory into f1
fmsub.s f15, f19, f6, f1 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0xca9c32bb # load x3 with 32 MSBs 0x00000000ca9c32bb
sw x3, 0(x2) # store x3 (0xca9c32bb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ca9c32bb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000ca9c32bb from memory into f10
la x2, scratch
li x3, 0x6ca5462a # load x3 with 32 MSBs 0x000000006ca5462a
sw x3, 0(x2) # store x3 (0x6ca5462a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006ca5462a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000006ca5462a from memory into f16
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f7
fmsub.s f26, f10, f16, f7 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0xf826b3ac # load x3 with 32 MSBs 0x00000000f826b3ac
sw x3, 0(x2) # store x3 (0xf826b3ac) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f826b3ac
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000f826b3ac from memory into f2
la x2, scratch
li x3, 0x80d2a91c # load x3 with 32 MSBs 0x0000000080d2a91c
sw x3, 0(x2) # store x3 (0x80d2a91c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000080d2a91c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000080d2a91c from memory into f28
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x7fffffff7f800000 from memory into f31
fmsub.s f17, f2, f28, f31 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0xcaa5d364 # load x3 with 32 MSBs 0x00000000caa5d364
sw x3, 0(x2) # store x3 (0xcaa5d364) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000caa5d364
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000caa5d364 from memory into f21
la x2, scratch
li x3, 0xdbe576ef # load x3 with 32 MSBs 0x00000000dbe576ef
sw x3, 0(x2) # store x3 (0xdbe576ef) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dbe576ef
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000dbe576ef from memory into f14
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfffffffeff800000 from memory into f23
fmsub.s f20, f21, f14, f23 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x212710b3 # load x3 with 32 MSBs 0x00000000212710b3
sw x3, 0(x2) # store x3 (0x212710b3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000212710b3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000212710b3 from memory into f17
la x2, scratch
li x3, 0x72688d0d # load x3 with 32 MSBs 0x0000000072688d0d
sw x3, 0(x2) # store x3 (0x72688d0d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000072688d0d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x0000000072688d0d from memory into f14
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfeedbee57fc00000 from memory into f7
fmsub.s f21, f17, f14, f7 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x2c9b48c1 # load x3 with 32 MSBs 0x000000002c9b48c1
sw x3, 0(x2) # store x3 (0x2c9b48c1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002c9b48c1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000002c9b48c1 from memory into f20
la x2, scratch
li x3, 0xd056e7d4 # load x3 with 32 MSBs 0x00000000d056e7d4
sw x3, 0(x2) # store x3 (0xd056e7d4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d056e7d4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000d056e7d4 from memory into f14
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffc0deff7fffffff from memory into f11
fmsub.s f22, f20, f14, f11 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0xb8959e9b # load x3 with 32 MSBs 0x00000000b8959e9b
sw x3, 0(x2) # store x3 (0xb8959e9b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b8959e9b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000b8959e9b from memory into f12
la x2, scratch
li x3, 0x6cf9a62b # load x3 with 32 MSBs 0x000000006cf9a62b
sw x3, 0(x2) # store x3 (0x6cf9a62b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006cf9a62b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000006cf9a62b from memory into f14
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfeffffff7f800001 from memory into f23
fmsub.s f11, f12, f14, f23 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xd92d3c6a # load x3 with 32 MSBs 0x00000000d92d3c6a
sw x3, 0(x2) # store x3 (0xd92d3c6a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d92d3c6a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000d92d3c6a from memory into f6
la x2, scratch
li x3, 0x3c176cde # load x3 with 32 MSBs 0x000000003c176cde
sw x3, 0(x2) # store x3 (0x3c176cde) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003c176cde
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000003c176cde from memory into f9
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfffffeff7fbfffff from memory into f30
fmsub.s f18, f6, f9, f30 # perform operation

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
