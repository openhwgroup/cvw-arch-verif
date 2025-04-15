///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfhD/WALLY-COV-fsgnjx.h.S
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
li x3, 0x7e1f6660d3bd69fb # load x3 with value 0x7e1f6660d3bd69fb
sd x3, 0(x2) # store 0x7e1f6660d3bd69fb in memory
flh f6, 0(x2) # load 0x7e1f6660d3bd69fb from memory into f6
la x2, scratch
li x3, 0x4d3aebff8ef289d0 # load x3 with value 0x4d3aebff8ef289d0
sd x3, 0(x2) # store 0x4d3aebff8ef289d0 in memory
flh f23, 0(x2) # load 0x4d3aebff8ef289d0 from memory into f23
fsgnjx.h f26, f6, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f8, 0(x2) # load 0xffffffff00000000 from memory into f8
la x2, scratch
li x3, 0xc6d71b9630449f8a # load x3 with value 0xc6d71b9630449f8a
sd x3, 0(x2) # store 0xc6d71b9630449f8a in memory
fld f26, 0(x2) # load 0xc6d71b9630449f8a from memory into f26
fsgnjx.h f10, f8, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f27, 0(x2) # load 0xfffffffffffe8000 from memory into f27
la x2, scratch
li x3, 0x0ac8ce17f27a1f0e # load x3 with value 0x0ac8ce17f27a1f0e
sd x3, 0(x2) # store 0x0ac8ce17f27a1f0e in memory
fld f12, 0(x2) # load 0x0ac8ce17f27a1f0e from memory into f12
fsgnjx.h f6, f27, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f5, 0(x2) # load 0x7fffffffffff3c00 from memory into f5
la x2, scratch
li x3, 0x3b2e988f827f8d60 # load x3 with value 0x3b2e988f827f8d60
sd x3, 0(x2) # store 0x3b2e988f827f8d60 in memory
fld f28, 0(x2) # load 0x3b2e988f827f8d60 from memory into f28
fsgnjx.h f25, f5, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f20, 0(x2) # load 0xfeedbee5beefbc00 from memory into f20
la x2, scratch
li x3, 0x6373ef885a88f073 # load x3 with value 0x6373ef885a88f073
sd x3, 0(x2) # store 0x6373ef885a88f073 in memory
fld f13, 0(x2) # load 0x6373ef885a88f073 from memory into f13
fsgnjx.h f19, f20, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f18, 0(x2) # load 0xffffffefffff0400 from memory into f18
la x2, scratch
li x3, 0xb67b8584af26f878 # load x3 with value 0xb67b8584af26f878
sd x3, 0(x2) # store 0xb67b8584af26f878 in memory
fld f3, 0(x2) # load 0xb67b8584af26f878 from memory into f3
fsgnjx.h f17, f18, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f11, 0(x2) # load 0x00000000ffff8400 from memory into f11
la x2, scratch
li x3, 0x5d6a3692a9f5f720 # load x3 with value 0x5d6a3692a9f5f720
sd x3, 0(x2) # store 0x5d6a3692a9f5f720 in memory
fld f31, 0(x2) # load 0x5d6a3692a9f5f720 from memory into f31
fsgnjx.h f9, f11, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f7, 0(x2) # load 0xefffffffffff7bff from memory into f7
la x2, scratch
li x3, 0xf828159d933c1e15 # load x3 with value 0xf828159d933c1e15
sd x3, 0(x2) # store 0xf828159d933c1e15 in memory
fld f12, 0(x2) # load 0xf828159d933c1e15 from memory into f12
fsgnjx.h f19, f7, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f29, 0(x2) # load 0xc0dec0dec0defbff from memory into f29
la x2, scratch
li x3, 0xf0a9c49797534a43 # load x3 with value 0xf0a9c49797534a43
sd x3, 0(x2) # store 0xf0a9c49797534a43 in memory
fld f6, 0(x2) # load 0xf0a9c49797534a43 from memory into f6
fsgnjx.h f31, f29, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f8, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f8
la x2, scratch
li x3, 0x8426631ff4aa52bc # load x3 with value 0x8426631ff4aa52bc
sd x3, 0(x2) # store 0x8426631ff4aa52bc in memory
fld f10, 0(x2) # load 0x8426631ff4aa52bc from memory into f10
fsgnjx.h f28, f8, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f15, 0(x2) # load 0xffffffff0ffffc00 from memory into f15
la x2, scratch
li x3, 0x2fe6ccc60c3e382e # load x3 with value 0x2fe6ccc60c3e382e
sd x3, 0(x2) # store 0x2fe6ccc60c3e382e in memory
fld f11, 0(x2) # load 0x2fe6ccc60c3e382e from memory into f11
fsgnjx.h f5, f15, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f18, 0(x2) # load 0xfffeffffffff7e00 from memory into f18
la x2, scratch
li x3, 0x31341599c323f675 # load x3 with value 0x31341599c323f675
sd x3, 0(x2) # store 0x31341599c323f675 in memory
fld f6, 0(x2) # load 0x31341599c323f675 from memory into f6
fsgnjx.h f22, f18, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f23, 0(x2) # load 0xffffffefffff7fff from memory into f23
la x2, scratch
li x3, 0x39c5579ed8a8436d # load x3 with value 0x39c5579ed8a8436d
sd x3, 0(x2) # store 0x39c5579ed8a8436d in memory
fld f13, 0(x2) # load 0x39c5579ed8a8436d from memory into f13
fsgnjx.h f2, f23, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f10, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f10
la x2, scratch
li x3, 0xb50cd28419d8137d # load x3 with value 0xb50cd28419d8137d
sd x3, 0(x2) # store 0xb50cd28419d8137d in memory
fld f13, 0(x2) # load 0xb50cd28419d8137d from memory into f13
fsgnjx.h f24, f10, f13 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f2, 0(x2) # load 0xfffffffcffff7dff from memory into f2
la x2, scratch
li x3, 0x461d0c9c179e7c15 # load x3 with value 0x461d0c9c179e7c15
sd x3, 0(x2) # store 0x461d0c9c179e7c15 in memory
fld f27, 0(x2) # load 0x461d0c9c179e7c15 from memory into f27
fsgnjx.h f15, f2, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xfb314758c337a94e # load x3 with value 0xfb314758c337a94e
sd x3, 0(x2) # store 0xfb314758c337a94e in memory
fld f29, 0(x2) # load 0xfb314758c337a94e from memory into f29
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f2, 0(x2) # load 0xffffffff00000000 from memory into f2
fsgnjx.h f17, f29, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xe57d773737b6ce14 # load x3 with value 0xe57d773737b6ce14
sd x3, 0(x2) # store 0xe57d773737b6ce14 in memory
fld f8, 0(x2) # load 0xe57d773737b6ce14 from memory into f8
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f2, 0(x2) # load 0xfffffffffffe8000 from memory into f2
fsgnjx.h f6, f8, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x36b1fafc5a9ed779 # load x3 with value 0x36b1fafc5a9ed779
sd x3, 0(x2) # store 0x36b1fafc5a9ed779 in memory
fld f11, 0(x2) # load 0x36b1fafc5a9ed779 from memory into f11
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f8, 0(x2) # load 0x7fffffffffff3c00 from memory into f8
fsgnjx.h f5, f11, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x2a37d27494847bde # load x3 with value 0x2a37d27494847bde
sd x3, 0(x2) # store 0x2a37d27494847bde in memory
fld f27, 0(x2) # load 0x2a37d27494847bde from memory into f27
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f2, 0(x2) # load 0xfeedbee5beefbc00 from memory into f2
fsgnjx.h f5, f27, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x68b6809788e222fd # load x3 with value 0x68b6809788e222fd
sd x3, 0(x2) # store 0x68b6809788e222fd in memory
fld f10, 0(x2) # load 0x68b6809788e222fd from memory into f10
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f30, 0(x2) # load 0xffffffefffff0400 from memory into f30
fsgnjx.h f28, f10, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xc9fea733f0faa928 # load x3 with value 0xc9fea733f0faa928
sd x3, 0(x2) # store 0xc9fea733f0faa928 in memory
fld f8, 0(x2) # load 0xc9fea733f0faa928 from memory into f8
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f16, 0(x2) # load 0x00000000ffff8400 from memory into f16
fsgnjx.h f22, f8, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0xa5a729f1f1e24d74 # load x3 with value 0xa5a729f1f1e24d74
sd x3, 0(x2) # store 0xa5a729f1f1e24d74 in memory
fld f2, 0(x2) # load 0xa5a729f1f1e24d74 from memory into f2
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f20, 0(x2) # load 0xefffffffffff7bff from memory into f20
fsgnjx.h f23, f2, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x0d10c561229fcb73 # load x3 with value 0x0d10c561229fcb73
sd x3, 0(x2) # store 0x0d10c561229fcb73 in memory
fld f17, 0(x2) # load 0x0d10c561229fcb73 from memory into f17
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f27, 0(x2) # load 0xc0dec0dec0defbff from memory into f27
fsgnjx.h f10, f17, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xc507678504b6bdc2 # load x3 with value 0xc507678504b6bdc2
sd x3, 0(x2) # store 0xc507678504b6bdc2 in memory
fld f1, 0(x2) # load 0xc507678504b6bdc2 from memory into f1
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f7, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f7
fsgnjx.h f2, f1, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xdda7a3b30d039ea7 # load x3 with value 0xdda7a3b30d039ea7
sd x3, 0(x2) # store 0xdda7a3b30d039ea7 in memory
fld f8, 0(x2) # load 0xdda7a3b30d039ea7 from memory into f8
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f19, 0(x2) # load 0xffffffff0ffffc00 from memory into f19
fsgnjx.h f26, f8, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x659f7350f7cfb3ef # load x3 with value 0x659f7350f7cfb3ef
sd x3, 0(x2) # store 0x659f7350f7cfb3ef in memory
fld f3, 0(x2) # load 0x659f7350f7cfb3ef from memory into f3
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f23, 0(x2) # load 0xfffeffffffff7e00 from memory into f23
fsgnjx.h f18, f3, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x1d12a460cbc6fcc8 # load x3 with value 0x1d12a460cbc6fcc8
sd x3, 0(x2) # store 0x1d12a460cbc6fcc8 in memory
fld f12, 0(x2) # load 0x1d12a460cbc6fcc8 from memory into f12
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f9, 0(x2) # load 0xffffffefffff7fff from memory into f9
fsgnjx.h f8, f12, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x2145f1eb85c669ba # load x3 with value 0x2145f1eb85c669ba
sd x3, 0(x2) # store 0x2145f1eb85c669ba in memory
fld f17, 0(x2) # load 0x2145f1eb85c669ba from memory into f17
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f18, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f18
fsgnjx.h f12, f17, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x2cf3f18e78373f30 # load x3 with value 0x2cf3f18e78373f30
sd x3, 0(x2) # store 0x2cf3f18e78373f30 in memory
fld f19, 0(x2) # load 0x2cf3f18e78373f30 from memory into f19
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f21, 0(x2) # load 0xfffffffcffff7dff from memory into f21
fsgnjx.h f8, f19, f21 # perform operation

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
