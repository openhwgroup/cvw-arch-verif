///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfhD/WALLY-COV-fle.h.S
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


# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xffffffff00000000 from memory into f22
la x2, scratch
li x3, 0xcb11faa6 # load x3 with 32 MSBs 0x00000000cb11faa6
sw x3, 0(x2) # store x3 (0xcb11faa6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000cb11faa6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000cb11faa6 from memory into f13
fle.h x8, f22, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xfffffffffffe8000 from memory into f16
la x2, scratch
li x3, 0x6752243f # load x3 with 32 MSBs 0x000000006752243f
sw x3, 0(x2) # store x3 (0x6752243f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006752243f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000006752243f from memory into f2
fle.h x26, f16, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 4)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x7fffffffffff3c00 from memory into f13
la x2, scratch
li x3, 0x39d94e86 # load x3 with 32 MSBs 0x0000000039d94e86
sw x3, 0(x2) # store x3 (0x39d94e86) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000039d94e86
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x0000000039d94e86 from memory into f29
fle.h x31, f13, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 8)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfeedbee5beefbc00 from memory into f26
la x2, scratch
li x3, 0xa8068b6c # load x3 with 32 MSBs 0x00000000a8068b6c
sw x3, 0(x2) # store x3 (0xa8068b6c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a8068b6c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000a8068b6c from memory into f19
fle.h x17, f26, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 12)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xffffffefffff0400 from memory into f12
la x2, scratch
li x3, 0xb641e271 # load x3 with 32 MSBs 0x00000000b641e271
sw x3, 0(x2) # store x3 (0xb641e271) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b641e271
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000b641e271 from memory into f3
fle.h x25, f12, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 16)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000ffff8400 from memory into f22
la x2, scratch
li x3, 0xa676ada7 # load x3 with 32 MSBs 0x00000000a676ada7
sw x3, 0(x2) # store x3 (0xa676ada7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a676ada7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000a676ada7 from memory into f3
fle.h x5, f22, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 20)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xefffffffffff7bff from memory into f12
la x2, scratch
li x3, 0x3f771f47 # load x3 with 32 MSBs 0x000000003f771f47
sw x3, 0(x2) # store x3 (0x3f771f47) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003f771f47
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000003f771f47 from memory into f2
fle.h x23, f12, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 24)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xc0dec0dec0defbff from memory into f24
la x2, scratch
li x3, 0xbe41b675 # load x3 with 32 MSBs 0x00000000be41b675
sw x3, 0(x2) # store x3 (0xbe41b675) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000be41b675
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000be41b675 from memory into f5
fle.h x21, f24, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 28)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f24
la x2, scratch
li x3, 0x0d3ccc2a # load x3 with 32 MSBs 0x000000000d3ccc2a
sw x3, 0(x2) # store x3 (0x0d3ccc2a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000d3ccc2a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000000d3ccc2a from memory into f8
fle.h x11, f24, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f31, 0(x2) # load 0xffffffff0ffffc00 from memory into f31
la x2, scratch
li x3, 0x6cedf375 # load x3 with 32 MSBs 0x000000006cedf375
sw x3, 0(x2) # store x3 (0x6cedf375) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006cedf375
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000006cedf375 from memory into f19
fle.h x17, f31, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 36)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xfffeffffffff7e00 from memory into f2
la x2, scratch
li x3, 0xb513e174 # load x3 with 32 MSBs 0x00000000b513e174
sw x3, 0(x2) # store x3 (0xb513e174) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b513e174
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000b513e174 from memory into f3
fle.h x18, f2, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 40)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xffffffefffff7fff from memory into f17
la x2, scratch
li x3, 0xd9899361 # load x3 with 32 MSBs 0x00000000d9899361
sw x3, 0(x2) # store x3 (0xd9899361) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d9899361
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000d9899361 from memory into f8
fle.h x16, f17, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 44)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f24
la x2, scratch
li x3, 0x049c6b51 # load x3 with 32 MSBs 0x00000000049c6b51
sw x3, 0(x2) # store x3 (0x049c6b51) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000049c6b51
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000049c6b51 from memory into f21
fle.h x31, f24, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 48)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfffffffcffff7dff from memory into f25
la x2, scratch
li x3, 0x7b20fa25 # load x3 with 32 MSBs 0x000000007b20fa25
sw x3, 0(x2) # store x3 (0x7b20fa25) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007b20fa25
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000007b20fa25 from memory into f19
fle.h x5, f25, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 52)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xd915a2c5 # load x3 with 32 MSBs 0x00000000d915a2c5
sw x3, 0(x2) # store x3 (0xd915a2c5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d915a2c5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x00000000d915a2c5 from memory into f29
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f9, 0(x2) # load 0xffffffff00000000 from memory into f9
fle.h x15, f29, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 56)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x93784e84 # load x3 with 32 MSBs 0x0000000093784e84
sw x3, 0(x2) # store x3 (0x93784e84) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000093784e84
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000093784e84 from memory into f19
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xfffffffffffe8000 from memory into f8
fle.h x12, f19, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 60)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x3526d1f0 # load x3 with 32 MSBs 0x000000003526d1f0
sw x3, 0(x2) # store x3 (0x3526d1f0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003526d1f0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000003526d1f0 from memory into f18
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x7fffffffffff3c00 from memory into f26
fle.h x12, f18, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 64)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xe536d082 # load x3 with 32 MSBs 0x00000000e536d082
sw x3, 0(x2) # store x3 (0xe536d082) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e536d082
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000e536d082 from memory into f1
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xfeedbee5beefbc00 from memory into f26
fle.h x23, f1, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 68)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x8beb8e69 # load x3 with 32 MSBs 0x000000008beb8e69
sw x3, 0(x2) # store x3 (0x8beb8e69) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008beb8e69
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000008beb8e69 from memory into f8
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xffffffefffff0400 from memory into f24
fle.h x29, f8, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 72)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x970cb2d5 # load x3 with 32 MSBs 0x00000000970cb2d5
sw x3, 0(x2) # store x3 (0x970cb2d5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000970cb2d5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000970cb2d5 from memory into f18
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x00000000ffff8400 from memory into f5
fle.h x23, f18, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 76)

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0xe99448e1 # load x3 with 32 MSBs 0x00000000e99448e1
sw x3, 0(x2) # store x3 (0xe99448e1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e99448e1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x00000000e99448e1 from memory into f31
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xefffffffffff7bff from memory into f21
fle.h x12, f31, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 80)

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xd4d23b7a # load x3 with 32 MSBs 0x00000000d4d23b7a
sw x3, 0(x2) # store x3 (0xd4d23b7a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d4d23b7a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000d4d23b7a from memory into f24
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xc0dec0dec0defbff from memory into f8
fle.h x25, f24, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 84)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x4013fb6c # load x3 with 32 MSBs 0x000000004013fb6c
sw x3, 0(x2) # store x3 (0x4013fb6c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000004013fb6c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x000000004013fb6c from memory into f1
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f16
fle.h x15, f1, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 88)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xdac56e36 # load x3 with 32 MSBs 0x00000000dac56e36
sw x3, 0(x2) # store x3 (0xdac56e36) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000dac56e36
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000dac56e36 from memory into f22
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xffffffff0ffffc00 from memory into f2
fle.h x12, f22, f2 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 92)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x04098ed0 # load x3 with 32 MSBs 0x0000000004098ed0
sw x3, 0(x2) # store x3 (0x04098ed0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000004098ed0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f31, 0(x2) # load 0x0000000004098ed0 from memory into f31
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xfffeffffffff7e00 from memory into f1
fle.h x16, f31, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 96)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x947845e5 # load x3 with 32 MSBs 0x00000000947845e5
sw x3, 0(x2) # store x3 (0x947845e5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000947845e5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000947845e5 from memory into f8
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xffffffefffff7fff from memory into f15
fle.h x25, f8, f15 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 100)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xfe186e54 # load x3 with 32 MSBs 0x00000000fe186e54
sw x3, 0(x2) # store x3 (0xfe186e54) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fe186e54
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000fe186e54 from memory into f6
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f20, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f20
fle.h x5, f6, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xc76cdbb1 # load x3 with 32 MSBs 0x00000000c76cdbb1
sw x3, 0(x2) # store x3 (0xc76cdbb1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000c76cdbb1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f15, 0(x2) # load 0x00000000c76cdbb1 from memory into f15
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xfffffffcffff7dff from memory into f25
fle.h x9, f15, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 108)

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
