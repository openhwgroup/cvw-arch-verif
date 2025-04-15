///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfhD/WALLY-COV-flt.h.S
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


# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xffffffff00000000 from memory into f30
la x2, scratch
li x3, 0xffc22e32 # load x3 with 32 MSBs 0x00000000ffc22e32
sw x3, 0(x2) # store x3 (0xffc22e32) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffc22e32
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000ffc22e32 from memory into f11
flt.h x20, f30, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfffffffffffe8000 from memory into f24
la x2, scratch
li x3, 0x585b7b34 # load x3 with 32 MSBs 0x00000000585b7b34
sw x3, 0(x2) # store x3 (0x585b7b34) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000585b7b34
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000585b7b34 from memory into f19
flt.h x1, f24, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 4)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x7fffffffffff3c00 from memory into f6
la x2, scratch
li x3, 0x73f9b67d # load x3 with 32 MSBs 0x0000000073f9b67d
sw x3, 0(x2) # store x3 (0x73f9b67d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000073f9b67d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000073f9b67d from memory into f10
flt.h x24, f6, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 8)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xfeedbee5beefbc00 from memory into f10
la x2, scratch
li x3, 0x0d65f843 # load x3 with 32 MSBs 0x000000000d65f843
sw x3, 0(x2) # store x3 (0x0d65f843) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000d65f843
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000000d65f843 from memory into f5
flt.h x18, f10, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 12)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xffffffefffff0400 from memory into f7
la x2, scratch
li x3, 0xc79406a2 # load x3 with 32 MSBs 0x00000000c79406a2
sw x3, 0(x2) # store x3 (0xc79406a2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c79406a2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000c79406a2 from memory into f15
flt.h x14, f7, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 16)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000ffff8400 from memory into f14
la x2, scratch
li x3, 0x1c0c0edf # load x3 with 32 MSBs 0x000000001c0c0edf
sw x3, 0(x2) # store x3 (0x1c0c0edf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001c0c0edf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x000000001c0c0edf from memory into f30
flt.h x17, f14, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 20)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xefffffffffff7bff from memory into f23
la x2, scratch
li x3, 0xbf3e0410 # load x3 with 32 MSBs 0x00000000bf3e0410
sw x3, 0(x2) # store x3 (0xbf3e0410) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bf3e0410
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000bf3e0410 from memory into f31
flt.h x21, f23, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 24)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xc0dec0dec0defbff from memory into f21
la x2, scratch
li x3, 0x64217630 # load x3 with 32 MSBs 0x0000000064217630
sw x3, 0(x2) # store x3 (0x64217630) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000064217630
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x0000000064217630 from memory into f12
flt.h x29, f21, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 28)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f25
la x2, scratch
li x3, 0x8cebb1e9 # load x3 with 32 MSBs 0x000000008cebb1e9
sw x3, 0(x2) # store x3 (0x8cebb1e9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008cebb1e9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x000000008cebb1e9 from memory into f28
flt.h x9, f25, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xffffffff0ffffc00 from memory into f6
la x2, scratch
li x3, 0x8e2bc2bf # load x3 with 32 MSBs 0x000000008e2bc2bf
sw x3, 0(x2) # store x3 (0x8e2bc2bf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008e2bc2bf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x000000008e2bc2bf from memory into f23
flt.h x13, f6, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 36)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfffeffffffff7e00 from memory into f25
la x2, scratch
li x3, 0xba63b2d5 # load x3 with 32 MSBs 0x00000000ba63b2d5
sw x3, 0(x2) # store x3 (0xba63b2d5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ba63b2d5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x00000000ba63b2d5 from memory into f2
flt.h x27, f25, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 40)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffffffefffff7fff from memory into f29
la x2, scratch
li x3, 0x32e95ab6 # load x3 with 32 MSBs 0x0000000032e95ab6
sw x3, 0(x2) # store x3 (0x32e95ab6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000032e95ab6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000032e95ab6 from memory into f5
flt.h x17, f29, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 44)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f23
la x2, scratch
li x3, 0x7207a3f3 # load x3 with 32 MSBs 0x000000007207a3f3
sw x3, 0(x2) # store x3 (0x7207a3f3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007207a3f3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f20, 0(x2) # load 0x000000007207a3f3 from memory into f20
flt.h x19, f23, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 48)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xfffffffcffff7dff from memory into f11
la x2, scratch
li x3, 0x6785f6e3 # load x3 with 32 MSBs 0x000000006785f6e3
sw x3, 0(x2) # store x3 (0x6785f6e3) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006785f6e3
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x000000006785f6e3 from memory into f16
flt.h x29, f11, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 52)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x09808e54 # load x3 with 32 MSBs 0x0000000009808e54
sw x3, 0(x2) # store x3 (0x09808e54) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000009808e54
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x0000000009808e54 from memory into f30
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xffffffff00000000 from memory into f11
flt.h x8, f30, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 56)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x9117c223 # load x3 with 32 MSBs 0x000000009117c223
sw x3, 0(x2) # store x3 (0x9117c223) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000009117c223
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f17, 0(x2) # load 0x000000009117c223 from memory into f17
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfffffffffffe8000 from memory into f26
flt.h x20, f17, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 60)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x14012fa7 # load x3 with 32 MSBs 0x0000000014012fa7
sw x3, 0(x2) # store x3 (0x14012fa7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000014012fa7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x0000000014012fa7 from memory into f9
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x7fffffffffff3c00 from memory into f24
flt.h x15, f9, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 64)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x4ef33171 # load x3 with 32 MSBs 0x000000004ef33171
sw x3, 0(x2) # store x3 (0x4ef33171) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004ef33171
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000004ef33171 from memory into f18
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xfeedbee5beefbc00 from memory into f28
flt.h x9, f18, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 68)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xa3ede399 # load x3 with 32 MSBs 0x00000000a3ede399
sw x3, 0(x2) # store x3 (0xa3ede399) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a3ede399
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000a3ede399 from memory into f3
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffffffefffff0400 from memory into f29
flt.h x6, f3, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 72)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xca932473 # load x3 with 32 MSBs 0x00000000ca932473
sw x3, 0(x2) # store x3 (0xca932473) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ca932473
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000ca932473 from memory into f16
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000ffff8400 from memory into f14
flt.h x29, f16, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 76)

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x609aa814 # load x3 with 32 MSBs 0x00000000609aa814
sw x3, 0(x2) # store x3 (0x609aa814) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000609aa814
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000609aa814 from memory into f12
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f10, 0(x2) # load 0xefffffffffff7bff from memory into f10
flt.h x1, f12, f10 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x3b3c3e41 # load x3 with 32 MSBs 0x000000003b3c3e41
sw x3, 0(x2) # store x3 (0x3b3c3e41) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003b3c3e41
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000003b3c3e41 from memory into f29
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f13, 0(x2) # load 0xc0dec0dec0defbff from memory into f13
flt.h x10, f29, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 84)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xbb55d14e # load x3 with 32 MSBs 0x00000000bb55d14e
sw x3, 0(x2) # store x3 (0xbb55d14e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bb55d14e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000bb55d14e from memory into f7
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f24
flt.h x17, f7, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 88)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xc9eeccfa # load x3 with 32 MSBs 0x00000000c9eeccfa
sw x3, 0(x2) # store x3 (0xc9eeccfa) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c9eeccfa
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000c9eeccfa from memory into f12
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xffffffff0ffffc00 from memory into f31
flt.h x7, f12, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 92)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x5da3d1f8 # load x3 with 32 MSBs 0x000000005da3d1f8
sw x3, 0(x2) # store x3 (0x5da3d1f8) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005da3d1f8
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x000000005da3d1f8 from memory into f25
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0xfffeffffffff7e00 from memory into f30
flt.h x26, f25, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 96)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x582eebef # load x3 with 32 MSBs 0x00000000582eebef
sw x3, 0(x2) # store x3 (0x582eebef) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000582eebef
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000582eebef from memory into f5
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xffffffefffff7fff from memory into f1
flt.h x23, f5, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 100)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x3e38ca97 # load x3 with 32 MSBs 0x000000003e38ca97
sw x3, 0(x2) # store x3 (0x3e38ca97) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003e38ca97
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000003e38ca97 from memory into f9
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f21
flt.h x28, f9, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xa7d23312 # load x3 with 32 MSBs 0x00000000a7d23312
sw x3, 0(x2) # store x3 (0xa7d23312) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a7d23312
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000a7d23312 from memory into f24
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xfffffffcffff7dff from memory into f18
flt.h x19, f24, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 108)

.EQU SIGSIZE,112


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
