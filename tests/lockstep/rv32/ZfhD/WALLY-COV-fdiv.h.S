///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv32/ZfhD/WALLY-COV-fdiv.h.S
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
li x3, 0x000000003780357e # load x3 with value 0x000000003780357e
sw x3, 0(x2) # store 0x000000003780357e in memory
flh f8, 0(x2) # load 0x000000003780357e from memory into f8
la x2, scratch
li x3, 0x00000000646738b9 # load x3 with value 0x00000000646738b9
sw x3, 0(x2) # store 0x00000000646738b9 in memory
flh f12, 0(x2) # load 0x00000000646738b9 from memory into f12
fdiv.h f9, f8, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f29, 0(x2) # load 0xffffffff00000000 from memory into f29
la x2, scratch
li x3, 0xbd46c28d # load x3 with 32 MSBs 0x00000000bd46c28d
sw x3, 0(x2) # store x3 (0xbd46c28d) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000bd46c28d
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000bd46c28d from memory into f22
fdiv.h f23, f29, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xfffffffffffe8000 from memory into f15
la x2, scratch
li x3, 0x6a797be5 # load x3 with 32 MSBs 0x000000006a797be5
sw x3, 0(x2) # store x3 (0x6a797be5) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006a797be5
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x000000006a797be5 from memory into f19
fdiv.h f30, f15, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x7fffffffffff3c00 from memory into f2
la x2, scratch
li x3, 0x1fcddca1 # load x3 with 32 MSBs 0x000000001fcddca1
sw x3, 0(x2) # store x3 (0x1fcddca1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000001fcddca1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x000000001fcddca1 from memory into f9
fdiv.h f15, f2, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xfeedbee5beefbc00 from memory into f27
la x2, scratch
li x3, 0xf92cd9ea # load x3 with 32 MSBs 0x00000000f92cd9ea
sw x3, 0(x2) # store x3 (0xf92cd9ea) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000f92cd9ea
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000f92cd9ea from memory into f1
fdiv.h f26, f27, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xffffffefffff0400 from memory into f26
la x2, scratch
li x3, 0x6cc4a805 # load x3 with 32 MSBs 0x000000006cc4a805
sw x3, 0(x2) # store x3 (0x6cc4a805) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000006cc4a805
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f5, 0(x2) # load 0x000000006cc4a805 from memory into f5
fdiv.h f11, f26, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f9, 0(x2) # load 0x00000000ffff8400 from memory into f9
la x2, scratch
li x3, 0x5db3872e # load x3 with 32 MSBs 0x000000005db3872e
sw x3, 0(x2) # store x3 (0x5db3872e) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000005db3872e
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x000000005db3872e from memory into f27
fdiv.h f23, f9, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0xefffffffffff7bff from memory into f28
la x2, scratch
li x3, 0xde2d9a84 # load x3 with 32 MSBs 0x00000000de2d9a84
sw x3, 0(x2) # store x3 (0xde2d9a84) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000de2d9a84
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f11, 0(x2) # load 0x00000000de2d9a84 from memory into f11
fdiv.h f21, f28, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xc0dec0dec0defbff from memory into f25
la x2, scratch
li x3, 0xac8fcc55 # load x3 with 32 MSBs 0x00000000ac8fcc55
sw x3, 0(x2) # store x3 (0xac8fcc55) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ac8fcc55
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f1, 0(x2) # load 0x00000000ac8fcc55 from memory into f1
fdiv.h f2, f25, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f21, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f21
la x2, scratch
li x3, 0xec0f36d9 # load x3 with 32 MSBs 0x00000000ec0f36d9
sw x3, 0(x2) # store x3 (0xec0f36d9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ec0f36d9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f30, 0(x2) # load 0x00000000ec0f36d9 from memory into f30
fdiv.h f10, f21, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f22, 0(x2) # load 0xffffffff0ffffc00 from memory into f22
la x2, scratch
li x3, 0x00d25888 # load x3 with 32 MSBs 0x0000000000d25888
sw x3, 0(x2) # store x3 (0x00d25888) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000000d25888
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f25, 0(x2) # load 0x0000000000d25888 from memory into f25
fdiv.h f27, f22, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f24, 0(x2) # load 0xfffeffffffff7e00 from memory into f24
la x2, scratch
li x3, 0xacdd046c # load x3 with 32 MSBs 0x00000000acdd046c
sw x3, 0(x2) # store x3 (0xacdd046c) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000acdd046c
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000acdd046c from memory into f19
fdiv.h f2, f24, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xffffffefffff7fff from memory into f27
la x2, scratch
li x3, 0xd14bf2c1 # load x3 with 32 MSBs 0x00000000d14bf2c1
sw x3, 0(x2) # store x3 (0xd14bf2c1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000d14bf2c1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f14, 0(x2) # load 0x00000000d14bf2c1 from memory into f14
fdiv.h f8, f27, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f2, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f2
la x2, scratch
li x3, 0x46d2ae43 # load x3 with 32 MSBs 0x0000000046d2ae43
sw x3, 0(x2) # store x3 (0x46d2ae43) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000046d2ae43
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x0000000046d2ae43 from memory into f3
fdiv.h f5, f2, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f27, 0(x2) # load 0xfffffffcffff7dff from memory into f27
la x2, scratch
li x3, 0x3572ca75 # load x3 with 32 MSBs 0x000000003572ca75
sw x3, 0(x2) # store x3 (0x3572ca75) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000003572ca75
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f29, 0(x2) # load 0x000000003572ca75 from memory into f29
fdiv.h f11, f27, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xe2cc9dae # load x3 with 32 MSBs 0x00000000e2cc9dae
sw x3, 0(x2) # store x3 (0xe2cc9dae) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000e2cc9dae
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x00000000e2cc9dae from memory into f7
la x2, scratch
li x3, 0x00000000 # load x3 with 32 MSBs 0xffffffff00000000
sw x3, 0(x2) # store x3 (0x00000000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff00000000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xffffffff00000000 from memory into f12
fdiv.h f10, f7, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x371ea331 # load x3 with 32 MSBs 0x00000000371ea331
sw x3, 0(x2) # store x3 (0x371ea331) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000371ea331
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f3, 0(x2) # load 0x00000000371ea331 from memory into f3
la x2, scratch
li x3, 0xfffe8000 # load x3 with 32 MSBs 0xfffffffffffe8000
sw x3, 0(x2) # store x3 (0xfffe8000) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xfffffffffffe8000
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f7, 0(x2) # load 0xfffffffffffe8000 from memory into f7
fdiv.h f13, f3, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xa707caaf # load x3 with 32 MSBs 0x00000000a707caaf
sw x3, 0(x2) # store x3 (0xa707caaf) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000a707caaf
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000a707caaf from memory into f22
la x2, scratch
li x3, 0xffff3c00 # load x3 with 32 MSBs 0x7fffffffffff3c00
sw x3, 0(x2) # store x3 (0xffff3c00) in memory
li x3, 0x7fffffff # load x2 with 32 LSBs of 0x7fffffffffff3c00
sw x3, 4(x2) # store x4 (0x7fffffff) in memory 4 bytes after x3
fld f28, 0(x2) # load 0x7fffffffffff3c00 from memory into f28
fdiv.h f16, f22, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x8fa1ed68 # load x3 with 32 MSBs 0x000000008fa1ed68
sw x3, 0(x2) # store x3 (0x8fa1ed68) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008fa1ed68
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f18, 0(x2) # load 0x000000008fa1ed68 from memory into f18
la x2, scratch
li x3, 0xbeefbc00 # load x3 with 32 MSBs 0xfeedbee5beefbc00
sw x3, 0(x2) # store x3 (0xbeefbc00) in memory
li x3, 0xfeedbee5 # load x2 with 32 LSBs of 0xfeedbee5beefbc00
sw x3, 4(x2) # store x4 (0xfeedbee5) in memory 4 bytes after x3
fld f14, 0(x2) # load 0xfeedbee5beefbc00 from memory into f14
fdiv.h f1, f18, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xb33790f9 # load x3 with 32 MSBs 0x00000000b33790f9
sw x3, 0(x2) # store x3 (0xb33790f9) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b33790f9
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x00000000b33790f9 from memory into f19
la x2, scratch
li x3, 0xffff0400 # load x3 with 32 MSBs 0xffffffefffff0400
sw x3, 0(x2) # store x3 (0xffff0400) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff0400
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f8, 0(x2) # load 0xffffffefffff0400 from memory into f8
fdiv.h f22, f19, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xad9eabc1 # load x3 with 32 MSBs 0x00000000ad9eabc1
sw x3, 0(x2) # store x3 (0xad9eabc1) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ad9eabc1
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f27, 0(x2) # load 0x00000000ad9eabc1 from memory into f27
la x2, scratch
li x3, 0xffff8400 # load x3 with 32 MSBs 0x00000000ffff8400
sw x3, 0(x2) # store x3 (0xffff8400) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000ffff8400
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f22, 0(x2) # load 0x00000000ffff8400 from memory into f22
fdiv.h f8, f27, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x8ea14579 # load x3 with 32 MSBs 0x000000008ea14579
sw x3, 0(x2) # store x3 (0x8ea14579) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000008ea14579
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f2, 0(x2) # load 0x000000008ea14579 from memory into f2
la x2, scratch
li x3, 0xffff7bff # load x3 with 32 MSBs 0xefffffffffff7bff
sw x3, 0(x2) # store x3 (0xffff7bff) in memory
li x3, 0xefffffff # load x2 with 32 LSBs of 0xefffffffffff7bff
sw x3, 4(x2) # store x4 (0xefffffff) in memory 4 bytes after x3
fld f25, 0(x2) # load 0xefffffffffff7bff from memory into f25
fdiv.h f27, f2, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x28ae1234 # load x3 with 32 MSBs 0x0000000028ae1234
sw x3, 0(x2) # store x3 (0x28ae1234) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000028ae1234
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000028ae1234 from memory into f19
la x2, scratch
li x3, 0xc0defbff # load x3 with 32 MSBs 0xc0dec0dec0defbff
sw x3, 0(x2) # store x3 (0xc0defbff) in memory
li x3, 0xc0dec0de # load x2 with 32 LSBs of 0xc0dec0dec0defbff
sw x3, 4(x2) # store x4 (0xc0dec0de) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xc0dec0dec0defbff from memory into f11
fdiv.h f6, f19, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x89c86055 # load x3 with 32 MSBs 0x0000000089c86055
sw x3, 0(x2) # store x3 (0x89c86055) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000089c86055
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f16, 0(x2) # load 0x0000000089c86055 from memory into f16
la x2, scratch
li x3, 0x4f1a7c00 # load x3 with 32 MSBs 0xa83ef1cc4f1a7c00
sw x3, 0(x2) # store x3 (0x4f1a7c00) in memory
li x3, 0xa83ef1cc # load x2 with 32 LSBs of 0xa83ef1cc4f1a7c00
sw x3, 4(x2) # store x4 (0xa83ef1cc) in memory 4 bytes after x3
fld f11, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f11
fdiv.h f14, f16, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xb90c1c9b # load x3 with 32 MSBs 0x00000000b90c1c9b
sw x3, 0(x2) # store x3 (0xb90c1c9b) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000b90c1c9b
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f13, 0(x2) # load 0x00000000b90c1c9b from memory into f13
la x2, scratch
li x3, 0x0ffffc00 # load x3 with 32 MSBs 0xffffffff0ffffc00
sw x3, 0(x2) # store x3 (0x0ffffc00) in memory
li x3, 0xffffffff # load x2 with 32 LSBs of 0xffffffff0ffffc00
sw x3, 4(x2) # store x4 (0xffffffff) in memory 4 bytes after x3
fld f26, 0(x2) # load 0xffffffff0ffffc00 from memory into f26
fdiv.h f5, f13, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x53833320 # load x3 with 32 MSBs 0x0000000053833320
sw x3, 0(x2) # store x3 (0x53833320) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000053833320
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f24, 0(x2) # load 0x0000000053833320 from memory into f24
la x2, scratch
li x3, 0xffff7e00 # load x3 with 32 MSBs 0xfffeffffffff7e00
sw x3, 0(x2) # store x3 (0xffff7e00) in memory
li x3, 0xfffeffff # load x2 with 32 LSBs of 0xfffeffffffff7e00
sw x3, 4(x2) # store x4 (0xfffeffff) in memory 4 bytes after x3
fld f23, 0(x2) # load 0xfffeffffffff7e00 from memory into f23
fdiv.h f1, f24, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x864ca09a # load x3 with 32 MSBs 0x00000000864ca09a
sw x3, 0(x2) # store x3 (0x864ca09a) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x00000000864ca09a
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f23, 0(x2) # load 0x00000000864ca09a from memory into f23
la x2, scratch
li x3, 0xffff7fff # load x3 with 32 MSBs 0xffffffefffff7fff
sw x3, 0(x2) # store x3 (0xffff7fff) in memory
li x3, 0xffffffef # load x2 with 32 LSBs of 0xffffffefffff7fff
sw x3, 4(x2) # store x4 (0xffffffef) in memory 4 bytes after x3
fld f15, 0(x2) # load 0xffffffefffff7fff from memory into f15
fdiv.h f22, f23, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x39d91a57 # load x3 with 32 MSBs 0x0000000039d91a57
sw x3, 0(x2) # store x3 (0x39d91a57) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x0000000039d91a57
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f19, 0(x2) # load 0x0000000039d91a57 from memory into f19
la x2, scratch
li x3, 0xe5f67c01 # load x3 with 32 MSBs 0xa1b2c3d4e5f67c01
sw x3, 0(x2) # store x3 (0xe5f67c01) in memory
li x3, 0xa1b2c3d4 # load x2 with 32 LSBs of 0xa1b2c3d4e5f67c01
sw x3, 4(x2) # store x4 (0xa1b2c3d4) in memory 4 bytes after x3
fld f12, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f12
fdiv.h f6, f19, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x2e3d26cd # load x3 with 32 MSBs 0x000000002e3d26cd
sw x3, 0(x2) # store x3 (0x2e3d26cd) in memory
li x3, 0x00000000 # load x2 with 32 LSBs of 0x000000002e3d26cd
sw x3, 4(x2) # store x4 (0x00000000) in memory 4 bytes after x3
fld f7, 0(x2) # load 0x000000002e3d26cd from memory into f7
la x2, scratch
li x3, 0xffff7dff # load x3 with 32 MSBs 0xfffffffcffff7dff
sw x3, 0(x2) # store x3 (0xffff7dff) in memory
li x3, 0xfffffffc # load x2 with 32 LSBs of 0xfffffffcffff7dff
sw x3, 4(x2) # store x4 (0xfffffffc) in memory 4 bytes after x3
fld f3, 0(x2) # load 0xfffffffcffff7dff from memory into f3
fdiv.h f6, f7, f3 # perform operation

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
