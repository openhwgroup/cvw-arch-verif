///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfhD/WALLY-COV-feq.h.S
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


# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xffffffff00000000 from memory into f3
la x2, scratch
li x3, 0xa2bb86ef # load x3 with 32 MSBs 0x00000000a2bb86ef
sw x3, 0(x2) # store x3 (0xa2bb86ef) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a2bb86ef
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000a2bb86ef from memory into f6
feq.h x7, f3, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xfffffffffffe8000 from memory into f12
la x2, scratch
li x3, 0xbf86e6d7 # load x3 with 32 MSBs 0x00000000bf86e6d7
sw x3, 0(x2) # store x3 (0xbf86e6d7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bf86e6d7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000bf86e6d7 from memory into f25
feq.h x27, f12, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 4)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x7fffffffffff3c00 from memory into f30
la x2, scratch
li x3, 0xa825dffd # load x3 with 32 MSBs 0x00000000a825dffd
sw x3, 0(x2) # store x3 (0xa825dffd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a825dffd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000a825dffd from memory into f1
feq.h x15, f30, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 8)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xfeedbee5beefbc00 from memory into f22
la x2, scratch
li x3, 0x21bac4c0 # load x3 with 32 MSBs 0x0000000021bac4c0
sw x3, 0(x2) # store x3 (0x21bac4c0) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000021bac4c0
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000021bac4c0 from memory into f24
feq.h x31, f22, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x31, 12)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xffffffefffff0400 from memory into f5
la x2, scratch
li x3, 0x661343d2 # load x3 with 32 MSBs 0x00000000661343d2
sw x3, 0(x2) # store x3 (0x661343d2) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000661343d2
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f12, 0(x2) # load 0x00000000661343d2 from memory into f12
feq.h x15, f5, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 16)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f21, 0(x2) # load 0x00000000ffff8400 from memory into f21
la x2, scratch
li x3, 0x1b505fd6 # load x3 with 32 MSBs 0x000000001b505fd6
sw x3, 0(x2) # store x3 (0x1b505fd6) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001b505fd6
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x000000001b505fd6 from memory into f14
feq.h x9, f21, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 20)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xefffffffffff7bff from memory into f8
la x2, scratch
li x3, 0xe6b65087 # load x3 with 32 MSBs 0x00000000e6b65087
sw x3, 0(x2) # store x3 (0xe6b65087) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e6b65087
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000e6b65087 from memory into f7
feq.h x23, f8, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x23, 24)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xc0dec0dec0defbff from memory into f27
la x2, scratch
li x3, 0xe9492716 # load x3 with 32 MSBs 0x00000000e9492716
sw x3, 0(x2) # store x3 (0xe9492716) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e9492716
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x00000000e9492716 from memory into f25
feq.h x16, f27, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 28)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f17, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f17
la x2, scratch
li x3, 0x0b66f61a # load x3 with 32 MSBs 0x000000000b66f61a
sw x3, 0(x2) # store x3 (0x0b66f61a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000000b66f61a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f26, 0(x2) # load 0x000000000b66f61a from memory into f26
feq.h x15, f17, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xffffffff0ffffc00 from memory into f22
la x2, scratch
li x3, 0xec9095d5 # load x3 with 32 MSBs 0x00000000ec9095d5
sw x3, 0(x2) # store x3 (0xec9095d5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ec9095d5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000ec9095d5 from memory into f23
feq.h x28, f22, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 36)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xfffeffffffff7e00 from memory into f11
la x2, scratch
li x3, 0x431f7b15 # load x3 with 32 MSBs 0x00000000431f7b15
sw x3, 0(x2) # store x3 (0x431f7b15) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000431f7b15
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x00000000431f7b15 from memory into f24
feq.h x16, f11, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 40)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f5, 0(x2) # load 0xffffffefffff7fff from memory into f5
la x2, scratch
li x3, 0x08679e0d # load x3 with 32 MSBs 0x0000000008679e0d
sw x3, 0(x2) # store x3 (0x08679e0d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000008679e0d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000008679e0d from memory into f7
feq.h x2, f5, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 44)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f18, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f18
la x2, scratch
li x3, 0x40ef124f # load x3 with 32 MSBs 0x0000000040ef124f
sw x3, 0(x2) # store x3 (0x40ef124f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000040ef124f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x0000000040ef124f from memory into f8
feq.h x21, f18, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 48)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xfffffffcffff7dff from memory into f29
la x2, scratch
li x3, 0x87741b87 # load x3 with 32 MSBs 0x0000000087741b87
sw x3, 0(x2) # store x3 (0x87741b87) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000087741b87
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000087741b87 from memory into f7
feq.h x16, f29, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 52)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xb336a78d # load x3 with 32 MSBs 0x00000000b336a78d
sw x3, 0(x2) # store x3 (0xb336a78d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b336a78d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x00000000b336a78d from memory into f16
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffffffff00000000 from memory into f21
feq.h x5, f16, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 56)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x306e812c # load x3 with 32 MSBs 0x00000000306e812c
sw x3, 0(x2) # store x3 (0x306e812c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000306e812c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000306e812c from memory into f6
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f19, 0(x2) # load 0xfffffffffffe8000 from memory into f19
feq.h x21, f6, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 60)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x7b78b00d # load x3 with 32 MSBs 0x000000007b78b00d
sw x3, 0(x2) # store x3 (0x7b78b00d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000007b78b00d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x000000007b78b00d from memory into f3
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x7fffffffffff3c00 from memory into f27
feq.h x26, f3, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 64)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x17317ac7 # load x3 with 32 MSBs 0x0000000017317ac7
sw x3, 0(x2) # store x3 (0x17317ac7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000017317ac7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x0000000017317ac7 from memory into f5
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f1, 0(x2) # load 0xfeedbee5beefbc00 from memory into f1
feq.h x22, f5, f1 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 68)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x6c00cd04 # load x3 with 32 MSBs 0x000000006c00cd04
sw x3, 0(x2) # store x3 (0x6c00cd04) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006c00cd04
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x000000006c00cd04 from memory into f10
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xffffffefffff0400 from memory into f23
feq.h x29, f10, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 72)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xde84784e # load x3 with 32 MSBs 0x00000000de84784e
sw x3, 0(x2) # store x3 (0xde84784e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000de84784e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x00000000de84784e from memory into f18
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000ffff8400 from memory into f19
feq.h x11, f18, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 76)

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x42e79c26 # load x3 with 32 MSBs 0x0000000042e79c26
sw x3, 0(x2) # store x3 (0x42e79c26) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000042e79c26
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x0000000042e79c26 from memory into f7
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xefffffffffff7bff from memory into f29
feq.h x22, f7, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 80)

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x00480ce7 # load x3 with 32 MSBs 0x0000000000480ce7
sw x3, 0(x2) # store x3 (0x00480ce7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000480ce7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x0000000000480ce7 from memory into f18
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xc0dec0dec0defbff from memory into f27
feq.h x3, f18, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 84)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x67e3260d # load x3 with 32 MSBs 0x0000000067e3260d
sw x3, 0(x2) # store x3 (0x67e3260d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000067e3260d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x0000000067e3260d from memory into f1
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f16, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f16
feq.h x19, f1, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 88)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x1f328e89 # load x3 with 32 MSBs 0x000000001f328e89
sw x3, 0(x2) # store x3 (0x1f328e89) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001f328e89
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x000000001f328e89 from memory into f8
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xffffffff0ffffc00 from memory into f22
feq.h x7, f8, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 92)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xb871dbf1 # load x3 with 32 MSBs 0x00000000b871dbf1
sw x3, 0(x2) # store x3 (0xb871dbf1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b871dbf1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f8, 0(x2) # load 0x00000000b871dbf1 from memory into f8
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfffeffffffff7e00 from memory into f23
feq.h x24, f8, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 96)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xfb1fdf0f # load x3 with 32 MSBs 0x00000000fb1fdf0f
sw x3, 0(x2) # store x3 (0xfb1fdf0f) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000fb1fdf0f
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x00000000fb1fdf0f from memory into f28
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xffffffefffff7fff from memory into f21
feq.h x3, f28, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x3, 100)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x657376a7 # load x3 with 32 MSBs 0x00000000657376a7
sw x3, 0(x2) # store x3 (0x657376a7) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000657376a7
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f6, 0(x2) # load 0x00000000657376a7 from memory into f6
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f8
feq.h x7, f6, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x73ba48c9 # load x3 with 32 MSBs 0x0000000073ba48c9
sw x3, 0(x2) # store x3 (0x73ba48c9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000073ba48c9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f10, 0(x2) # load 0x0000000073ba48c9 from memory into f10
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f6, 0(x2) # load 0xfffffffcffff7dff from memory into f6
feq.h x15, f10, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 108)

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
