///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/D/WALLY-COV-fnmsub.s.S
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
li x3, 0x0000000067aaea84 # load x3 with value 0x0000000067aaea84
sw x3, 0(x2) # store 0x0000000067aaea84 in memory
flw f16, 0(x2) # load 0x0000000067aaea84 from memory into f16
la x2, scratch
li x3, 0x00000000e3c9aae9 # load x3 with value 0x00000000e3c9aae9
sw x3, 0(x2) # store 0x00000000e3c9aae9 in memory
flw f20, 0(x2) # load 0x00000000e3c9aae9 from memory into f20
la x2, scratch
li x3, 0x00000000281a98e8 # load x3 with value 0x00000000281a98e8
sw x3, 0(x2) # store 0x00000000281a98e8 in memory
flw f10, 0(x2) # load 0x00000000281a98e8 from memory into f10
fnmsub.s f8, f16, f20, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xffffefff00000000 from memory into f18
la x2, scratch
li x3, 0xc9540b93 # load x3 with 32 MSBs 0x00000000c9540b93
sw x3, 0(x2) # store x3 (0xc9540b93) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c9540b93
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000c9540b93 from memory into f22
la x2, scratch
li x3, 0x20f21fa1 # load x3 with 32 MSBs 0x0000000020f21fa1
sw x3, 0(x2) # store x3 (0x20f21fa1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000020f21fa1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000020f21fa1 from memory into f31
fnmsub.s f23, f18, f22, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xaaaaaaaa80000000 from memory into f14
la x2, scratch
li x3, 0xd29a28d9 # load x3 with 32 MSBs 0x00000000d29a28d9
sw x3, 0(x2) # store x3 (0xd29a28d9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d29a28d9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000d29a28d9 from memory into f16
la x2, scratch
li x3, 0x95e813dc # load x3 with 32 MSBs 0x0000000095e813dc
sw x3, 0(x2) # store x3 (0x95e813dc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000095e813dc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x0000000095e813dc from memory into f6
fnmsub.s f3, f14, f16, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x000000003f800000 from memory into f22
la x2, scratch
li x3, 0xf746766c # load x3 with 32 MSBs 0x00000000f746766c
sw x3, 0(x2) # store x3 (0xf746766c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f746766c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000f746766c from memory into f27
la x2, scratch
li x3, 0x6dae2ff2 # load x3 with 32 MSBs 0x000000006dae2ff2
sw x3, 0(x2) # store x3 (0x6dae2ff2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006dae2ff2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000006dae2ff2 from memory into f16
fnmsub.s f18, f22, f27, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xdeadbeefbf800000 from memory into f12
la x2, scratch
li x3, 0xdbc82270 # load x3 with 32 MSBs 0x00000000dbc82270
sw x3, 0(x2) # store x3 (0xdbc82270) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dbc82270
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000dbc82270 from memory into f23
la x2, scratch
li x3, 0xb299a545 # load x3 with 32 MSBs 0x00000000b299a545
sw x3, 0(x2) # store x3 (0xb299a545) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b299a545
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000b299a545 from memory into f1
fnmsub.s f28, f12, f23, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xa1b2c3d400800000 from memory into f17
la x2, scratch
li x3, 0x588f7780 # load x3 with 32 MSBs 0x00000000588f7780
sw x3, 0(x2) # store x3 (0x588f7780) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000588f7780
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000588f7780 from memory into f9
la x2, scratch
li x3, 0xa0c72649 # load x3 with 32 MSBs 0x00000000a0c72649
sw x3, 0(x2) # store x3 (0xa0c72649) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a0c72649
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000a0c72649 from memory into f29
fnmsub.s f30, f17, f9, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xffffffef80800000 from memory into f26
la x2, scratch
li x3, 0x13de35d1 # load x3 with 32 MSBs 0x0000000013de35d1
sw x3, 0(x2) # store x3 (0x13de35d1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000013de35d1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000013de35d1 from memory into f11
la x2, scratch
li x3, 0x22f3b25d # load x3 with 32 MSBs 0x0000000022f3b25d
sw x3, 0(x2) # store x3 (0x22f3b25d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000022f3b25d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x0000000022f3b25d from memory into f28
fnmsub.s f24, f26, f11, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfeffffef7f7fffff from memory into f29
la x2, scratch
li x3, 0x1179d683 # load x3 with 32 MSBs 0x000000001179d683
sw x3, 0(x2) # store x3 (0x1179d683) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001179d683
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000001179d683 from memory into f14
la x2, scratch
li x3, 0x358e5b76 # load x3 with 32 MSBs 0x00000000358e5b76
sw x3, 0(x2) # store x3 (0x358e5b76) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000358e5b76
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000358e5b76 from memory into f11
fnmsub.s f28, f29, f14, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f7
la x2, scratch
li x3, 0xf869542c # load x3 with 32 MSBs 0x00000000f869542c
sw x3, 0(x2) # store x3 (0xf869542c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f869542c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000f869542c from memory into f17
la x2, scratch
li x3, 0x5e0334a4 # load x3 with 32 MSBs 0x000000005e0334a4
sw x3, 0(x2) # store x3 (0x5e0334a4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005e0334a4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x000000005e0334a4 from memory into f11
fnmsub.s f19, f7, f17, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7fffffff7f800000 from memory into f11
la x2, scratch
li x3, 0x12764fea # load x3 with 32 MSBs 0x0000000012764fea
sw x3, 0(x2) # store x3 (0x12764fea) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000012764fea
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000012764fea from memory into f30
la x2, scratch
li x3, 0x6dbfb3cf # load x3 with 32 MSBs 0x000000006dbfb3cf
sw x3, 0(x2) # store x3 (0x6dbfb3cf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006dbfb3cf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000006dbfb3cf from memory into f7
fnmsub.s f8, f11, f30, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfffffffeff800000 from memory into f22
la x2, scratch
li x3, 0x84b8a6c3 # load x3 with 32 MSBs 0x0000000084b8a6c3
sw x3, 0(x2) # store x3 (0x84b8a6c3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000084b8a6c3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000084b8a6c3 from memory into f25
la x2, scratch
li x3, 0xfe5900ff # load x3 with 32 MSBs 0x00000000fe5900ff
sw x3, 0(x2) # store x3 (0xfe5900ff) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fe5900ff
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000fe5900ff from memory into f6
fnmsub.s f9, f22, f25, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xfeedbee57fc00000 from memory into f13
la x2, scratch
li x3, 0x11ea2ffb # load x3 with 32 MSBs 0x0000000011ea2ffb
sw x3, 0(x2) # store x3 (0x11ea2ffb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000011ea2ffb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000011ea2ffb from memory into f29
la x2, scratch
li x3, 0x448aa99a # load x3 with 32 MSBs 0x00000000448aa99a
sw x3, 0(x2) # store x3 (0x448aa99a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000448aa99a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000448aa99a from memory into f27
fnmsub.s f22, f13, f29, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffc0deff7fffffff from memory into f11
la x2, scratch
li x3, 0x129b3b3c # load x3 with 32 MSBs 0x00000000129b3b3c
sw x3, 0(x2) # store x3 (0x129b3b3c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000129b3b3c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000129b3b3c from memory into f28
la x2, scratch
li x3, 0x21359b3b # load x3 with 32 MSBs 0x0000000021359b3b
sw x3, 0(x2) # store x3 (0x21359b3b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000021359b3b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x0000000021359b3b from memory into f17
fnmsub.s f6, f11, f28, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfeffffff7f800001 from memory into f20
la x2, scratch
li x3, 0x019058bb # load x3 with 32 MSBs 0x00000000019058bb
sw x3, 0(x2) # store x3 (0x019058bb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000019058bb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000019058bb from memory into f17
la x2, scratch
li x3, 0xde413078 # load x3 with 32 MSBs 0x00000000de413078
sw x3, 0(x2) # store x3 (0xde413078) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000de413078
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000de413078 from memory into f1
fnmsub.s f30, f20, f17, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfffffeff7fbfffff from memory into f3
la x2, scratch
li x3, 0xfb42662a # load x3 with 32 MSBs 0x00000000fb42662a
sw x3, 0(x2) # store x3 (0xfb42662a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fb42662a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000fb42662a from memory into f6
la x2, scratch
li x3, 0xb75c2017 # load x3 with 32 MSBs 0x00000000b75c2017
sw x3, 0(x2) # store x3 (0xb75c2017) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b75c2017
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000b75c2017 from memory into f21
fnmsub.s f24, f3, f6, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x9eebc724 # load x3 with 32 MSBs 0x000000009eebc724
sw x3, 0(x2) # store x3 (0x9eebc724) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009eebc724
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000009eebc724 from memory into f17
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xffffefff00000000 from memory into f28
la x2, scratch
li x3, 0xd1b24d28 # load x3 with 32 MSBs 0x00000000d1b24d28
sw x3, 0(x2) # store x3 (0xd1b24d28) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d1b24d28
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000d1b24d28 from memory into f7
fnmsub.s f24, f17, f28, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x8a9b3669 # load x3 with 32 MSBs 0x000000008a9b3669
sw x3, 0(x2) # store x3 (0x8a9b3669) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008a9b3669
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000008a9b3669 from memory into f26
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xaaaaaaaa80000000 from memory into f10
la x2, scratch
li x3, 0x2a9d8a8f # load x3 with 32 MSBs 0x000000002a9d8a8f
sw x3, 0(x2) # store x3 (0x2a9d8a8f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002a9d8a8f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000002a9d8a8f from memory into f15
fnmsub.s f18, f26, f10, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x925b151a # load x3 with 32 MSBs 0x00000000925b151a
sw x3, 0(x2) # store x3 (0x925b151a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000925b151a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000925b151a from memory into f25
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000003f800000 from memory into f13
la x2, scratch
li x3, 0xe8ad8dec # load x3 with 32 MSBs 0x00000000e8ad8dec
sw x3, 0(x2) # store x3 (0xe8ad8dec) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e8ad8dec
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000e8ad8dec from memory into f24
fnmsub.s f19, f25, f13, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x24fac939 # load x3 with 32 MSBs 0x0000000024fac939
sw x3, 0(x2) # store x3 (0x24fac939) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000024fac939
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000024fac939 from memory into f29
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xdeadbeefbf800000 from memory into f21
la x2, scratch
li x3, 0x26a12816 # load x3 with 32 MSBs 0x0000000026a12816
sw x3, 0(x2) # store x3 (0x26a12816) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000026a12816
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x0000000026a12816 from memory into f2
fnmsub.s f15, f29, f21, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x7f8b4269 # load x3 with 32 MSBs 0x000000007f8b4269
sw x3, 0(x2) # store x3 (0x7f8b4269) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007f8b4269
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000007f8b4269 from memory into f5
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xa1b2c3d400800000 from memory into f7
la x2, scratch
li x3, 0x36a51ea4 # load x3 with 32 MSBs 0x0000000036a51ea4
sw x3, 0(x2) # store x3 (0x36a51ea4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000036a51ea4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000036a51ea4 from memory into f12
fnmsub.s f22, f5, f7, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0xaf6b4b3d # load x3 with 32 MSBs 0x00000000af6b4b3d
sw x3, 0(x2) # store x3 (0xaf6b4b3d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000af6b4b3d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000af6b4b3d from memory into f13
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xffffffef80800000 from memory into f7
la x2, scratch
li x3, 0xb7552f25 # load x3 with 32 MSBs 0x00000000b7552f25
sw x3, 0(x2) # store x3 (0xb7552f25) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b7552f25
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000b7552f25 from memory into f8
fnmsub.s f14, f13, f7, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xc5b4434c # load x3 with 32 MSBs 0x00000000c5b4434c
sw x3, 0(x2) # store x3 (0xc5b4434c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c5b4434c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000c5b4434c from memory into f15
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfeffffef7f7fffff from memory into f20
la x2, scratch
li x3, 0xbb7bba87 # load x3 with 32 MSBs 0x00000000bb7bba87
sw x3, 0(x2) # store x3 (0xbb7bba87) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bb7bba87
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000bb7bba87 from memory into f29
fnmsub.s f10, f15, f20, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x5ed78cbb # load x3 with 32 MSBs 0x000000005ed78cbb
sw x3, 0(x2) # store x3 (0x5ed78cbb) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005ed78cbb
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000005ed78cbb from memory into f16
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f29
la x2, scratch
li x3, 0x603336ab # load x3 with 32 MSBs 0x00000000603336ab
sw x3, 0(x2) # store x3 (0x603336ab) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000603336ab
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000603336ab from memory into f5
fnmsub.s f9, f16, f29, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0xbd5d19dd # load x3 with 32 MSBs 0x00000000bd5d19dd
sw x3, 0(x2) # store x3 (0xbd5d19dd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bd5d19dd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000bd5d19dd from memory into f8
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7fffffff7f800000 from memory into f6
la x2, scratch
li x3, 0x11ee50b7 # load x3 with 32 MSBs 0x0000000011ee50b7
sw x3, 0(x2) # store x3 (0x11ee50b7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000011ee50b7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000011ee50b7 from memory into f31
fnmsub.s f21, f8, f6, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x55929961 # load x3 with 32 MSBs 0x0000000055929961
sw x3, 0(x2) # store x3 (0x55929961) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000055929961
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000055929961 from memory into f31
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xfffffffeff800000 from memory into f21
la x2, scratch
li x3, 0x345674dc # load x3 with 32 MSBs 0x00000000345674dc
sw x3, 0(x2) # store x3 (0x345674dc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000345674dc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000345674dc from memory into f6
fnmsub.s f9, f31, f21, f6 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0xed963999 # load x3 with 32 MSBs 0x00000000ed963999
sw x3, 0(x2) # store x3 (0xed963999) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ed963999
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000ed963999 from memory into f18
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfeedbee57fc00000 from memory into f23
la x2, scratch
li x3, 0xaeb04e56 # load x3 with 32 MSBs 0x00000000aeb04e56
sw x3, 0(x2) # store x3 (0xaeb04e56) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000aeb04e56
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000aeb04e56 from memory into f8
fnmsub.s f19, f18, f23, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x4716b5c0 # load x3 with 32 MSBs 0x000000004716b5c0
sw x3, 0(x2) # store x3 (0x4716b5c0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004716b5c0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000004716b5c0 from memory into f26
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xffc0deff7fffffff from memory into f10
la x2, scratch
li x3, 0x902d2abd # load x3 with 32 MSBs 0x00000000902d2abd
sw x3, 0(x2) # store x3 (0x902d2abd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000902d2abd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000902d2abd from memory into f24
fnmsub.s f17, f26, f10, f24 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x935128c5 # load x3 with 32 MSBs 0x00000000935128c5
sw x3, 0(x2) # store x3 (0x935128c5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000935128c5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000935128c5 from memory into f13
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfeffffff7f800001 from memory into f29
la x2, scratch
li x3, 0xe9f5030b # load x3 with 32 MSBs 0x00000000e9f5030b
sw x3, 0(x2) # store x3 (0xe9f5030b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e9f5030b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000e9f5030b from memory into f19
fnmsub.s f6, f13, f29, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xb1868073 # load x3 with 32 MSBs 0x00000000b1868073
sw x3, 0(x2) # store x3 (0xb1868073) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b1868073
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000b1868073 from memory into f14
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfffffeff7fbfffff from memory into f6
la x2, scratch
li x3, 0x2a1ee671 # load x3 with 32 MSBs 0x000000002a1ee671
sw x3, 0(x2) # store x3 (0x2a1ee671) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002a1ee671
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000002a1ee671 from memory into f9
fnmsub.s f10, f14, f6, f9 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffefff00000000)
la x2, scratch
li x3, 0xcb765252 # load x3 with 32 MSBs 0x00000000cb765252
sw x3, 0(x2) # store x3 (0xcb765252) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cb765252
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x00000000cb765252 from memory into f26
la x2, scratch
li x3, 0x3c4a773c # load x3 with 32 MSBs 0x000000003c4a773c
sw x3, 0(x2) # store x3 (0x3c4a773c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003c4a773c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000003c4a773c from memory into f28
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffefff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffefff # load x2 with 32 LSBs of 0xffffefff00000000
sw x3, 4(x2) # store x4 (0xffffefff) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xffffefff00000000 from memory into f20
fnmsub.s f10, f26, f28, f20 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0xb41677b9 # load x3 with 32 MSBs 0x00000000b41677b9
sw x3, 0(x2) # store x3 (0xb41677b9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b41677b9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000b41677b9 from memory into f7
la x2, scratch
li x3, 0xf59ce3a7 # load x3 with 32 MSBs 0x00000000f59ce3a7
sw x3, 0(x2) # store x3 (0xf59ce3a7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f59ce3a7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000f59ce3a7 from memory into f31
la x2, scratch
li x3, 0x80000000 # load x3 with 32 MSBs 0xaaaaaaaa80000000
sw x3, 0(x2) # store x3 (0x80000000) in memory
li x3, 0xaaaaaaaa # load x2 with 32 LSBs of 0xaaaaaaaa80000000
sw x3, 4(x2) # store x4 (0xaaaaaaaa) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xaaaaaaaa80000000 from memory into f17
fnmsub.s f18, f7, f31, f17 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x3f800000)
la x2, scratch
li x3, 0xe494ec91 # load x3 with 32 MSBs 0x00000000e494ec91
sw x3, 0(x2) # store x3 (0xe494ec91) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e494ec91
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000e494ec91 from memory into f3
la x2, scratch
li x3, 0x53c84059 # load x3 with 32 MSBs 0x0000000053c84059
sw x3, 0(x2) # store x3 (0x53c84059) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000053c84059
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x0000000053c84059 from memory into f13
la x2, scratch
li x3, 0x3f800000 # load x3 with 32 MSBs 0x000000003f800000
sw x3, 0(x2) # store x3 (0x3f800000) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f800000
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000003f800000 from memory into f21
fnmsub.s f11, f3, f13, f21 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x97f2cdf1 # load x3 with 32 MSBs 0x0000000097f2cdf1
sw x3, 0(x2) # store x3 (0x97f2cdf1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000097f2cdf1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x0000000097f2cdf1 from memory into f11
la x2, scratch
li x3, 0x95da0f9f # load x3 with 32 MSBs 0x0000000095da0f9f
sw x3, 0(x2) # store x3 (0x95da0f9f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000095da0f9f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000095da0f9f from memory into f1
la x2, scratch
li x3, 0xbf800000 # load x3 with 32 MSBs 0xdeadbeefbf800000
sw x3, 0(x2) # store x3 (0xbf800000) in memory
li x3, 0xdeadbeef # load x2 with 32 LSBs of 0xdeadbeefbf800000
sw x3, 4(x2) # store x4 (0xdeadbeef) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xdeadbeefbf800000 from memory into f17
fnmsub.s f12, f11, f1, f17 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0xd33526ee # load x3 with 32 MSBs 0x00000000d33526ee
sw x3, 0(x2) # store x3 (0xd33526ee) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d33526ee
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000d33526ee from memory into f10
la x2, scratch
li x3, 0x2599171e # load x3 with 32 MSBs 0x000000002599171e
sw x3, 0(x2) # store x3 (0x2599171e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002599171e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000002599171e from memory into f5
la x2, scratch
li x3, 0x00800000 # load x3 with 32 MSBs 0xa1b2c3d400800000
sw x3, 0(x2) # store x3 (0x00800000) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d400800000
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xa1b2c3d400800000 from memory into f25
fnmsub.s f3, f10, f5, f25 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x14004df7 # load x3 with 32 MSBs 0x0000000014004df7
sw x3, 0(x2) # store x3 (0x14004df7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000014004df7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000014004df7 from memory into f25
la x2, scratch
li x3, 0x7dcb8c8a # load x3 with 32 MSBs 0x000000007dcb8c8a
sw x3, 0(x2) # store x3 (0x7dcb8c8a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007dcb8c8a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000007dcb8c8a from memory into f21
la x2, scratch
li x3, 0x80800000 # load x3 with 32 MSBs 0xffffffef80800000
sw x3, 0(x2) # store x3 (0x80800000) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffef80800000
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xffffffef80800000 from memory into f14
fnmsub.s f9, f25, f21, f14 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xda817a38 # load x3 with 32 MSBs 0x00000000da817a38
sw x3, 0(x2) # store x3 (0xda817a38) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000da817a38
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000da817a38 from memory into f14
la x2, scratch
li x3, 0x5c69e639 # load x3 with 32 MSBs 0x000000005c69e639
sw x3, 0(x2) # store x3 (0x5c69e639) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005c69e639
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000005c69e639 from memory into f26
la x2, scratch
li x3, 0x7f7fffff # load x3 with 32 MSBs 0xfeffffef7f7fffff
sw x3, 0(x2) # store x3 (0x7f7fffff) in memory
li x3, 0xfeffffef # load x2 with 32 LSBs of 0xfeffffef7f7fffff
sw x3, 4(x2) # store x4 (0xfeffffef) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfeffffef7f7fffff from memory into f15
fnmsub.s f5, f14, f26, f15 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x8ec7fd0b # load x3 with 32 MSBs 0x000000008ec7fd0b
sw x3, 0(x2) # store x3 (0x8ec7fd0b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008ec7fd0b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000008ec7fd0b from memory into f19
la x2, scratch
li x3, 0x76920fa1 # load x3 with 32 MSBs 0x0000000076920fa1
sw x3, 0(x2) # store x3 (0x76920fa1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000076920fa1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000076920fa1 from memory into f3
la x2, scratch
li x3, 0xff7fffff # load x3 with 32 MSBs 0x7e7e7e7eff7fffff
sw x3, 0(x2) # store x3 (0xff7fffff) in memory
li x3, 0x7e7e7e7e # load x2 with 32 LSBs of 0x7e7e7e7eff7fffff
sw x3, 4(x2) # store x4 (0x7e7e7e7e) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f11
fnmsub.s f16, f19, f3, f11 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x6888bbde # load x3 with 32 MSBs 0x000000006888bbde
sw x3, 0(x2) # store x3 (0x6888bbde) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006888bbde
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000006888bbde from memory into f19
la x2, scratch
li x3, 0xe6c7958e # load x3 with 32 MSBs 0x00000000e6c7958e
sw x3, 0(x2) # store x3 (0xe6c7958e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e6c7958e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000e6c7958e from memory into f29
la x2, scratch
li x3, 0x7f800000 # load x3 with 32 MSBs 0x7fffffff7f800000
sw x3, 0(x2) # store x3 (0x7f800000) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffff7f800000
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x7fffffff7f800000 from memory into f3
fnmsub.s f16, f19, f29, f3 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x76191cc4 # load x3 with 32 MSBs 0x0000000076191cc4
sw x3, 0(x2) # store x3 (0x76191cc4) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000076191cc4
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000076191cc4 from memory into f19
la x2, scratch
li x3, 0x2dc8ae45 # load x3 with 32 MSBs 0x000000002dc8ae45
sw x3, 0(x2) # store x3 (0x2dc8ae45) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002dc8ae45
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000002dc8ae45 from memory into f17
la x2, scratch
li x3, 0xff800000 # load x3 with 32 MSBs 0xfffffffeff800000
sw x3, 0(x2) # store x3 (0xff800000) in memory
li x3, 0xfffffffe # load x2 with 32 LSBs of 0xfffffffeff800000
sw x3, 4(x2) # store x4 (0xfffffffe) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfffffffeff800000 from memory into f26
fnmsub.s f1, f19, f17, f26 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0xead61e8f # load x3 with 32 MSBs 0x00000000ead61e8f
sw x3, 0(x2) # store x3 (0xead61e8f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ead61e8f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000ead61e8f from memory into f7
la x2, scratch
li x3, 0xfd74d914 # load x3 with 32 MSBs 0x00000000fd74d914
sw x3, 0(x2) # store x3 (0xfd74d914) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fd74d914
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000fd74d914 from memory into f21
la x2, scratch
li x3, 0x7fc00000 # load x3 with 32 MSBs 0xfeedbee57fc00000
sw x3, 0(x2) # store x3 (0x7fc00000) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee57fc00000
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfeedbee57fc00000 from memory into f12
fnmsub.s f29, f7, f21, f12 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x0365ea45 # load x3 with 32 MSBs 0x000000000365ea45
sw x3, 0(x2) # store x3 (0x0365ea45) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000365ea45
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000000365ea45 from memory into f18
la x2, scratch
li x3, 0x42f8ecac # load x3 with 32 MSBs 0x0000000042f8ecac
sw x3, 0(x2) # store x3 (0x42f8ecac) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000042f8ecac
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000042f8ecac from memory into f12
la x2, scratch
li x3, 0x7fffffff # load x3 with 32 MSBs 0xffc0deff7fffffff
sw x3, 0(x2) # store x3 (0x7fffffff) in memory
li x3, 0xffc0deff # load x2 with 32 LSBs of 0xffc0deff7fffffff
sw x3, 4(x2) # store x4 (0xffc0deff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xffc0deff7fffffff from memory into f23
fnmsub.s f1, f18, f12, f23 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x5a0b6258 # load x3 with 32 MSBs 0x000000005a0b6258
sw x3, 0(x2) # store x3 (0x5a0b6258) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005a0b6258
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000005a0b6258 from memory into f16
la x2, scratch
li x3, 0xbeb0a433 # load x3 with 32 MSBs 0x00000000beb0a433
sw x3, 0(x2) # store x3 (0xbeb0a433) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000beb0a433
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000beb0a433 from memory into f17
la x2, scratch
li x3, 0x7f800001 # load x3 with 32 MSBs 0xfeffffff7f800001
sw x3, 0(x2) # store x3 (0x7f800001) in memory
li x3, 0xfeffffff # load x2 with 32 LSBs of 0xfeffffff7f800001
sw x3, 4(x2) # store x4 (0xfeffffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xfeffffff7f800001 from memory into f9
fnmsub.s f1, f16, f17, f9 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x0659609e # load x3 with 32 MSBs 0x000000000659609e
sw x3, 0(x2) # store x3 (0x0659609e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000659609e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x000000000659609e from memory into f13
la x2, scratch
li x3, 0xc7d4c5da # load x3 with 32 MSBs 0x00000000c7d4c5da
sw x3, 0(x2) # store x3 (0xc7d4c5da) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c7d4c5da
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x00000000c7d4c5da from memory into f17
la x2, scratch
li x3, 0x7fbfffff # load x3 with 32 MSBs 0xfffffeff7fbfffff
sw x3, 0(x2) # store x3 (0x7fbfffff) in memory
li x3, 0xfffffeff # load x2 with 32 LSBs of 0xfffffeff7fbfffff
sw x3, 4(x2) # store x4 (0xfffffeff) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xfffffeff7fbfffff from memory into f14
fnmsub.s f16, f13, f17, f14 # perform operation

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
