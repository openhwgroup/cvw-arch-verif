///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfhD/WALLY-COV-fmin.h.S
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
li x3, 0x000000005cecebc6 # load x3 with value 0x000000005cecebc6
sw x3, 0(x2) # store 0x000000005cecebc6 in memory
flh f28, 0(x2) # load 0x000000005cecebc6 from memory into f28
la x2, scratch
li x3, 0x00000000efdc9ef6 # load x3 with value 0x00000000efdc9ef6
sw x3, 0(x2) # store 0x00000000efdc9ef6 in memory
flh f2, 0(x2) # load 0x00000000efdc9ef6 from memory into f2
fmin.h f3, f28, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xffffffff00000000 from memory into f15
la x2, scratch
li x3, 0x900dd200 # load x3 with 32 MSBs 0x00000000900dd200
sw x3, 0(x2) # store x3 (0x900dd200) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000900dd200
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000900dd200 from memory into f21
fmin.h f25, f15, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfffffffffffe8000 from memory into f28
la x2, scratch
li x3, 0x555a896d # load x3 with 32 MSBs 0x00000000555a896d
sw x3, 0(x2) # store x3 (0x555a896d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000555a896d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000555a896d from memory into f18
fmin.h f11, f28, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x7fffffffffff3c00 from memory into f21
la x2, scratch
li x3, 0xd81ddcef # load x3 with 32 MSBs 0x00000000d81ddcef
sw x3, 0(x2) # store x3 (0xd81ddcef) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d81ddcef
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000d81ddcef from memory into f12
fmin.h f29, f21, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfeedbee5beefbc00 from memory into f3
la x2, scratch
li x3, 0x4ee4fa5f # load x3 with 32 MSBs 0x000000004ee4fa5f
sw x3, 0(x2) # store x3 (0x4ee4fa5f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004ee4fa5f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000004ee4fa5f from memory into f27
fmin.h f28, f3, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffffffefffff0400 from memory into f27
la x2, scratch
li x3, 0xd7e5e621 # load x3 with 32 MSBs 0x00000000d7e5e621
sw x3, 0(x2) # store x3 (0xd7e5e621) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d7e5e621
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000d7e5e621 from memory into f7
fmin.h f20, f27, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000ffff8400 from memory into f27
la x2, scratch
li x3, 0x562897da # load x3 with 32 MSBs 0x00000000562897da
sw x3, 0(x2) # store x3 (0x562897da) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000562897da
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000562897da from memory into f16
fmin.h f23, f27, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xefffffffffff7bff from memory into f24
la x2, scratch
li x3, 0x71016f6e # load x3 with 32 MSBs 0x0000000071016f6e
sw x3, 0(x2) # store x3 (0x71016f6e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000071016f6e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x0000000071016f6e from memory into f15
fmin.h f8, f24, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xc0dec0dec0defbff from memory into f11
la x2, scratch
li x3, 0xde176b2b # load x3 with 32 MSBs 0x00000000de176b2b
sw x3, 0(x2) # store x3 (0xde176b2b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000de176b2b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000de176b2b from memory into f31
fmin.h f12, f11, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f20
la x2, scratch
li x3, 0xdce37c6f # load x3 with 32 MSBs 0x00000000dce37c6f
sw x3, 0(x2) # store x3 (0xdce37c6f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dce37c6f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000dce37c6f from memory into f14
fmin.h f9, f20, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xffffffff0ffffc00 from memory into f17
la x2, scratch
li x3, 0x4f18d3f1 # load x3 with 32 MSBs 0x000000004f18d3f1
sw x3, 0(x2) # store x3 (0x4f18d3f1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004f18d3f1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000004f18d3f1 from memory into f19
fmin.h f22, f17, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xfffeffffffff7e00 from memory into f21
la x2, scratch
li x3, 0x1e275883 # load x3 with 32 MSBs 0x000000001e275883
sw x3, 0(x2) # store x3 (0x1e275883) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001e275883
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000001e275883 from memory into f20
fmin.h f18, f21, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xffffffefffff7fff from memory into f13
la x2, scratch
li x3, 0x27a930b9 # load x3 with 32 MSBs 0x0000000027a930b9
sw x3, 0(x2) # store x3 (0x27a930b9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000027a930b9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000027a930b9 from memory into f18
fmin.h f11, f13, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f3
la x2, scratch
li x3, 0x0b424aa9 # load x3 with 32 MSBs 0x000000000b424aa9
sw x3, 0(x2) # store x3 (0x0b424aa9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000b424aa9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x000000000b424aa9 from memory into f21
fmin.h f18, f3, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfffffffcffff7dff from memory into f17
la x2, scratch
li x3, 0x1052bc7d # load x3 with 32 MSBs 0x000000001052bc7d
sw x3, 0(x2) # store x3 (0x1052bc7d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001052bc7d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000001052bc7d from memory into f30
fmin.h f14, f17, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xe681ac4e # load x3 with 32 MSBs 0x00000000e681ac4e
sw x3, 0(x2) # store x3 (0xe681ac4e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e681ac4e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x00000000e681ac4e from memory into f10
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffffffff00000000 from memory into f21
fmin.h f29, f10, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x82106b9d # load x3 with 32 MSBs 0x0000000082106b9d
sw x3, 0(x2) # store x3 (0x82106b9d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000082106b9d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x0000000082106b9d from memory into f27
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xfffffffffffe8000 from memory into f17
fmin.h f13, f27, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x4ac25d0b # load x3 with 32 MSBs 0x000000004ac25d0b
sw x3, 0(x2) # store x3 (0x4ac25d0b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004ac25d0b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x000000004ac25d0b from memory into f15
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x7fffffffffff3c00 from memory into f9
fmin.h f21, f15, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xf18c680a # load x3 with 32 MSBs 0x00000000f18c680a
sw x3, 0(x2) # store x3 (0xf18c680a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f18c680a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000f18c680a from memory into f27
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfeedbee5beefbc00 from memory into f28
fmin.h f1, f27, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xda7cbd79 # load x3 with 32 MSBs 0x00000000da7cbd79
sw x3, 0(x2) # store x3 (0xda7cbd79) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000da7cbd79
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000da7cbd79 from memory into f6
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffffffefffff0400 from memory into f11
fmin.h f28, f6, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x3016b53a # load x3 with 32 MSBs 0x000000003016b53a
sw x3, 0(x2) # store x3 (0x3016b53a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003016b53a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000003016b53a from memory into f10
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000ffff8400 from memory into f28
fmin.h f17, f10, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x4e38418c # load x3 with 32 MSBs 0x000000004e38418c
sw x3, 0(x2) # store x3 (0x4e38418c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004e38418c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x000000004e38418c from memory into f12
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xefffffffffff7bff from memory into f19
fmin.h f3, f12, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x21878c52 # load x3 with 32 MSBs 0x0000000021878c52
sw x3, 0(x2) # store x3 (0x21878c52) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000021878c52
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000021878c52 from memory into f9
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xc0dec0dec0defbff from memory into f8
fmin.h f19, f9, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x6feed20b # load x3 with 32 MSBs 0x000000006feed20b
sw x3, 0(x2) # store x3 (0x6feed20b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006feed20b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000006feed20b from memory into f28
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f11
fmin.h f13, f28, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x05ba5072 # load x3 with 32 MSBs 0x0000000005ba5072
sw x3, 0(x2) # store x3 (0x05ba5072) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000005ba5072
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x0000000005ba5072 from memory into f22
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xffffffff0ffffc00 from memory into f13
fmin.h f18, f22, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xe8db5ea2 # load x3 with 32 MSBs 0x00000000e8db5ea2
sw x3, 0(x2) # store x3 (0xe8db5ea2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e8db5ea2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000e8db5ea2 from memory into f18
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfffeffffffff7e00 from memory into f12
fmin.h f19, f18, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x2e9b910f # load x3 with 32 MSBs 0x000000002e9b910f
sw x3, 0(x2) # store x3 (0x2e9b910f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002e9b910f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000002e9b910f from memory into f29
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xffffffefffff7fff from memory into f13
fmin.h f11, f29, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x90de80bc # load x3 with 32 MSBs 0x0000000090de80bc
sw x3, 0(x2) # store x3 (0x90de80bc) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000090de80bc
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000090de80bc from memory into f24
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f27
fmin.h f22, f24, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x6919b2dd # load x3 with 32 MSBs 0x000000006919b2dd
sw x3, 0(x2) # store x3 (0x6919b2dd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006919b2dd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000006919b2dd from memory into f1
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xfffffffcffff7dff from memory into f20
fmin.h f7, f1, f20 # perform operation

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
