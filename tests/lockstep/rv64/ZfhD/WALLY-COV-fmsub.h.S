///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfhD/WALLY-COV-fmsub.h.S
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
li x3, 0x4a40844bfee47e3f # load x3 with value 0x4a40844bfee47e3f
sd x3, 0(x2) # store 0x4a40844bfee47e3f in memory
flh f3, 0(x2) # load 0x4a40844bfee47e3f from memory into f3
la x2, scratch
li x3, 0xca20f63c87d84451 # load x3 with value 0xca20f63c87d84451
sd x3, 0(x2) # store 0xca20f63c87d84451 in memory
flh f23, 0(x2) # load 0xca20f63c87d84451 from memory into f23
la x2, scratch
li x3, 0xc2d60e4ff03c5f77 # load x3 with value 0xc2d60e4ff03c5f77
sd x3, 0(x2) # store 0xc2d60e4ff03c5f77 in memory
flh f30, 0(x2) # load 0xc2d60e4ff03c5f77 from memory into f30
fmsub.h f29, f3, f23, f30 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f5, 0(x2) # load 0xffffffff00000000 from memory into f5
la x2, scratch
li x3, 0x0ae2b1cbde7d61a5 # load x3 with value 0x0ae2b1cbde7d61a5
sd x3, 0(x2) # store 0x0ae2b1cbde7d61a5 in memory
fld f2, 0(x2) # load 0x0ae2b1cbde7d61a5 from memory into f2
la x2, scratch
li x3, 0x379823c7636d1a66 # load x3 with value 0x379823c7636d1a66
sd x3, 0(x2) # store 0x379823c7636d1a66 in memory
fld f26, 0(x2) # load 0x379823c7636d1a66 from memory into f26
fmsub.h f13, f5, f2, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f26, 0(x2) # load 0xfffffffffffe8000 from memory into f26
la x2, scratch
li x3, 0xebe70f794f672b06 # load x3 with value 0xebe70f794f672b06
sd x3, 0(x2) # store 0xebe70f794f672b06 in memory
fld f8, 0(x2) # load 0xebe70f794f672b06 from memory into f8
la x2, scratch
li x3, 0x1c25dc10adc8d72f # load x3 with value 0x1c25dc10adc8d72f
sd x3, 0(x2) # store 0x1c25dc10adc8d72f in memory
fld f7, 0(x2) # load 0x1c25dc10adc8d72f from memory into f7
fmsub.h f16, f26, f8, f7 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f23, 0(x2) # load 0x7fffffffffff3c00 from memory into f23
la x2, scratch
li x3, 0x974bc512b83df2b6 # load x3 with value 0x974bc512b83df2b6
sd x3, 0(x2) # store 0x974bc512b83df2b6 in memory
fld f2, 0(x2) # load 0x974bc512b83df2b6 from memory into f2
la x2, scratch
li x3, 0xfdcba924eb649fb3 # load x3 with value 0xfdcba924eb649fb3
sd x3, 0(x2) # store 0xfdcba924eb649fb3 in memory
fld f19, 0(x2) # load 0xfdcba924eb649fb3 from memory into f19
fmsub.h f29, f23, f2, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f14, 0(x2) # load 0xfeedbee5beefbc00 from memory into f14
la x2, scratch
li x3, 0xf644ee7db5234bfd # load x3 with value 0xf644ee7db5234bfd
sd x3, 0(x2) # store 0xf644ee7db5234bfd in memory
fld f12, 0(x2) # load 0xf644ee7db5234bfd from memory into f12
la x2, scratch
li x3, 0xeb4329feca0be5f1 # load x3 with value 0xeb4329feca0be5f1
sd x3, 0(x2) # store 0xeb4329feca0be5f1 in memory
fld f24, 0(x2) # load 0xeb4329feca0be5f1 from memory into f24
fmsub.h f6, f14, f12, f24 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f13, 0(x2) # load 0xffffffefffff0400 from memory into f13
la x2, scratch
li x3, 0xa5532038d616516d # load x3 with value 0xa5532038d616516d
sd x3, 0(x2) # store 0xa5532038d616516d in memory
fld f1, 0(x2) # load 0xa5532038d616516d from memory into f1
la x2, scratch
li x3, 0x0679429a1f6c3189 # load x3 with value 0x0679429a1f6c3189
sd x3, 0(x2) # store 0x0679429a1f6c3189 in memory
fld f12, 0(x2) # load 0x0679429a1f6c3189 from memory into f12
fmsub.h f2, f13, f1, f12 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f3, 0(x2) # load 0x00000000ffff8400 from memory into f3
la x2, scratch
li x3, 0xde75ce8c137660c6 # load x3 with value 0xde75ce8c137660c6
sd x3, 0(x2) # store 0xde75ce8c137660c6 in memory
fld f11, 0(x2) # load 0xde75ce8c137660c6 from memory into f11
la x2, scratch
li x3, 0x89298adc7ccd1a6a # load x3 with value 0x89298adc7ccd1a6a
sd x3, 0(x2) # store 0x89298adc7ccd1a6a in memory
fld f22, 0(x2) # load 0x89298adc7ccd1a6a from memory into f22
fmsub.h f8, f3, f11, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f2, 0(x2) # load 0xefffffffffff7bff from memory into f2
la x2, scratch
li x3, 0x980d14af310b1d42 # load x3 with value 0x980d14af310b1d42
sd x3, 0(x2) # store 0x980d14af310b1d42 in memory
fld f22, 0(x2) # load 0x980d14af310b1d42 from memory into f22
la x2, scratch
li x3, 0x9ec0e14f917ac2a5 # load x3 with value 0x9ec0e14f917ac2a5
sd x3, 0(x2) # store 0x9ec0e14f917ac2a5 in memory
fld f3, 0(x2) # load 0x9ec0e14f917ac2a5 from memory into f3
fmsub.h f1, f2, f22, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f15, 0(x2) # load 0xc0dec0dec0defbff from memory into f15
la x2, scratch
li x3, 0x7ee60e8b41f6d3de # load x3 with value 0x7ee60e8b41f6d3de
sd x3, 0(x2) # store 0x7ee60e8b41f6d3de in memory
fld f16, 0(x2) # load 0x7ee60e8b41f6d3de from memory into f16
la x2, scratch
li x3, 0xa6d3fcf7da53c1bd # load x3 with value 0xa6d3fcf7da53c1bd
sd x3, 0(x2) # store 0xa6d3fcf7da53c1bd in memory
fld f28, 0(x2) # load 0xa6d3fcf7da53c1bd from memory into f28
fmsub.h f7, f15, f16, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f24, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f24
la x2, scratch
li x3, 0xf301535149cb9260 # load x3 with value 0xf301535149cb9260
sd x3, 0(x2) # store 0xf301535149cb9260 in memory
fld f3, 0(x2) # load 0xf301535149cb9260 from memory into f3
la x2, scratch
li x3, 0x1d4f79a650b69307 # load x3 with value 0x1d4f79a650b69307
sd x3, 0(x2) # store 0x1d4f79a650b69307 in memory
fld f27, 0(x2) # load 0x1d4f79a650b69307 from memory into f27
fmsub.h f9, f24, f3, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f21, 0(x2) # load 0xffffffff0ffffc00 from memory into f21
la x2, scratch
li x3, 0x4c68233abcf067bd # load x3 with value 0x4c68233abcf067bd
sd x3, 0(x2) # store 0x4c68233abcf067bd in memory
fld f16, 0(x2) # load 0x4c68233abcf067bd from memory into f16
la x2, scratch
li x3, 0xec5c4acb69a99039 # load x3 with value 0xec5c4acb69a99039
sd x3, 0(x2) # store 0xec5c4acb69a99039 in memory
fld f5, 0(x2) # load 0xec5c4acb69a99039 from memory into f5
fmsub.h f8, f21, f16, f5 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f16, 0(x2) # load 0xfffeffffffff7e00 from memory into f16
la x2, scratch
li x3, 0x4462e357d81e20cc # load x3 with value 0x4462e357d81e20cc
sd x3, 0(x2) # store 0x4462e357d81e20cc in memory
fld f7, 0(x2) # load 0x4462e357d81e20cc from memory into f7
la x2, scratch
li x3, 0xa4949342787bc4cd # load x3 with value 0xa4949342787bc4cd
sd x3, 0(x2) # store 0xa4949342787bc4cd in memory
fld f21, 0(x2) # load 0xa4949342787bc4cd from memory into f21
fmsub.h f13, f16, f7, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f6, 0(x2) # load 0xffffffefffff7fff from memory into f6
la x2, scratch
li x3, 0x1b623ebc3751e2fb # load x3 with value 0x1b623ebc3751e2fb
sd x3, 0(x2) # store 0x1b623ebc3751e2fb in memory
fld f5, 0(x2) # load 0x1b623ebc3751e2fb from memory into f5
la x2, scratch
li x3, 0x4ed923fec56e2a53 # load x3 with value 0x4ed923fec56e2a53
sd x3, 0(x2) # store 0x4ed923fec56e2a53 in memory
fld f11, 0(x2) # load 0x4ed923fec56e2a53 from memory into f11
fmsub.h f27, f6, f5, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f14, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f14
la x2, scratch
li x3, 0x376d07f1b48f4a39 # load x3 with value 0x376d07f1b48f4a39
sd x3, 0(x2) # store 0x376d07f1b48f4a39 in memory
fld f22, 0(x2) # load 0x376d07f1b48f4a39 from memory into f22
la x2, scratch
li x3, 0xe0e240ccec2c6309 # load x3 with value 0xe0e240ccec2c6309
sd x3, 0(x2) # store 0xe0e240ccec2c6309 in memory
fld f2, 0(x2) # load 0xe0e240ccec2c6309 from memory into f2
fmsub.h f23, f14, f22, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f24, 0(x2) # load 0xfffffffcffff7dff from memory into f24
la x2, scratch
li x3, 0x3e4bd4b1ec7b8a85 # load x3 with value 0x3e4bd4b1ec7b8a85
sd x3, 0(x2) # store 0x3e4bd4b1ec7b8a85 in memory
fld f2, 0(x2) # load 0x3e4bd4b1ec7b8a85 from memory into f2
la x2, scratch
li x3, 0x76b58ab705c5e04c # load x3 with value 0x76b58ab705c5e04c
sd x3, 0(x2) # store 0x76b58ab705c5e04c in memory
fld f23, 0(x2) # load 0x76b58ab705c5e04c from memory into f23
fmsub.h f27, f24, f2, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x016cd0db63efee9e # load x3 with value 0x016cd0db63efee9e
sd x3, 0(x2) # store 0x016cd0db63efee9e in memory
fld f13, 0(x2) # load 0x016cd0db63efee9e from memory into f13
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f1, 0(x2) # load 0xffffffff00000000 from memory into f1
la x2, scratch
li x3, 0xf028c0d303aa749d # load x3 with value 0xf028c0d303aa749d
sd x3, 0(x2) # store 0xf028c0d303aa749d in memory
fld f12, 0(x2) # load 0xf028c0d303aa749d from memory into f12
fmsub.h f5, f13, f1, f12 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x5be5d7aace992141 # load x3 with value 0x5be5d7aace992141
sd x3, 0(x2) # store 0x5be5d7aace992141 in memory
fld f16, 0(x2) # load 0x5be5d7aace992141 from memory into f16
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f15, 0(x2) # load 0xfffffffffffe8000 from memory into f15
la x2, scratch
li x3, 0x63ebd19d4be40625 # load x3 with value 0x63ebd19d4be40625
sd x3, 0(x2) # store 0x63ebd19d4be40625 in memory
fld f29, 0(x2) # load 0x63ebd19d4be40625 from memory into f29
fmsub.h f24, f16, f15, f29 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x7a3dff147d5f827b # load x3 with value 0x7a3dff147d5f827b
sd x3, 0(x2) # store 0x7a3dff147d5f827b in memory
fld f25, 0(x2) # load 0x7a3dff147d5f827b from memory into f25
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f5, 0(x2) # load 0x7fffffffffff3c00 from memory into f5
la x2, scratch
li x3, 0xb6035a4564195f7a # load x3 with value 0xb6035a4564195f7a
sd x3, 0(x2) # store 0xb6035a4564195f7a in memory
fld f22, 0(x2) # load 0xb6035a4564195f7a from memory into f22
fmsub.h f11, f25, f5, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xa683020c7f8d9a41 # load x3 with value 0xa683020c7f8d9a41
sd x3, 0(x2) # store 0xa683020c7f8d9a41 in memory
fld f10, 0(x2) # load 0xa683020c7f8d9a41 from memory into f10
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f18, 0(x2) # load 0xfeedbee5beefbc00 from memory into f18
la x2, scratch
li x3, 0x18264b813ec1ae05 # load x3 with value 0x18264b813ec1ae05
sd x3, 0(x2) # store 0x18264b813ec1ae05 in memory
fld f22, 0(x2) # load 0x18264b813ec1ae05 from memory into f22
fmsub.h f26, f10, f18, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xaeb6f6297b600fd9 # load x3 with value 0xaeb6f6297b600fd9
sd x3, 0(x2) # store 0xaeb6f6297b600fd9 in memory
fld f5, 0(x2) # load 0xaeb6f6297b600fd9 from memory into f5
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f29, 0(x2) # load 0xffffffefffff0400 from memory into f29
la x2, scratch
li x3, 0x9d361fbac135a490 # load x3 with value 0x9d361fbac135a490
sd x3, 0(x2) # store 0x9d361fbac135a490 in memory
fld f25, 0(x2) # load 0x9d361fbac135a490 from memory into f25
fmsub.h f27, f5, f29, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x477ee07169bc1aaf # load x3 with value 0x477ee07169bc1aaf
sd x3, 0(x2) # store 0x477ee07169bc1aaf in memory
fld f2, 0(x2) # load 0x477ee07169bc1aaf from memory into f2
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f15, 0(x2) # load 0x00000000ffff8400 from memory into f15
la x2, scratch
li x3, 0x50658dceb5608479 # load x3 with value 0x50658dceb5608479
sd x3, 0(x2) # store 0x50658dceb5608479 in memory
fld f3, 0(x2) # load 0x50658dceb5608479 from memory into f3
fmsub.h f21, f2, f15, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x095230fcec26b844 # load x3 with value 0x095230fcec26b844
sd x3, 0(x2) # store 0x095230fcec26b844 in memory
fld f20, 0(x2) # load 0x095230fcec26b844 from memory into f20
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f22, 0(x2) # load 0xefffffffffff7bff from memory into f22
la x2, scratch
li x3, 0x3477ae1b8e9c78a4 # load x3 with value 0x3477ae1b8e9c78a4
sd x3, 0(x2) # store 0x3477ae1b8e9c78a4 in memory
fld f19, 0(x2) # load 0x3477ae1b8e9c78a4 from memory into f19
fmsub.h f5, f20, f22, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x24f0bb2bf7853fe4 # load x3 with value 0x24f0bb2bf7853fe4
sd x3, 0(x2) # store 0x24f0bb2bf7853fe4 in memory
fld f23, 0(x2) # load 0x24f0bb2bf7853fe4 from memory into f23
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f18, 0(x2) # load 0xc0dec0dec0defbff from memory into f18
la x2, scratch
li x3, 0xc9356562c227f103 # load x3 with value 0xc9356562c227f103
sd x3, 0(x2) # store 0xc9356562c227f103 in memory
fld f1, 0(x2) # load 0xc9356562c227f103 from memory into f1
fmsub.h f24, f23, f18, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x70a36f1fc8d15a07 # load x3 with value 0x70a36f1fc8d15a07
sd x3, 0(x2) # store 0x70a36f1fc8d15a07 in memory
fld f15, 0(x2) # load 0x70a36f1fc8d15a07 from memory into f15
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f20, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f20
la x2, scratch
li x3, 0x597276fb6baacb53 # load x3 with value 0x597276fb6baacb53
sd x3, 0(x2) # store 0x597276fb6baacb53 in memory
fld f1, 0(x2) # load 0x597276fb6baacb53 from memory into f1
fmsub.h f22, f15, f20, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x5ae5060868d5b535 # load x3 with value 0x5ae5060868d5b535
sd x3, 0(x2) # store 0x5ae5060868d5b535 in memory
fld f23, 0(x2) # load 0x5ae5060868d5b535 from memory into f23
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f20, 0(x2) # load 0xffffffff0ffffc00 from memory into f20
la x2, scratch
li x3, 0xb3b8014b4415d5b6 # load x3 with value 0xb3b8014b4415d5b6
sd x3, 0(x2) # store 0xb3b8014b4415d5b6 in memory
fld f21, 0(x2) # load 0xb3b8014b4415d5b6 from memory into f21
fmsub.h f14, f23, f20, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xb740e952508aa8d4 # load x3 with value 0xb740e952508aa8d4
sd x3, 0(x2) # store 0xb740e952508aa8d4 in memory
fld f15, 0(x2) # load 0xb740e952508aa8d4 from memory into f15
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f29, 0(x2) # load 0xfffeffffffff7e00 from memory into f29
la x2, scratch
li x3, 0x78c062b5318cd05a # load x3 with value 0x78c062b5318cd05a
sd x3, 0(x2) # store 0x78c062b5318cd05a in memory
fld f7, 0(x2) # load 0x78c062b5318cd05a from memory into f7
fmsub.h f25, f15, f29, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x962cbe8272dcb64c # load x3 with value 0x962cbe8272dcb64c
sd x3, 0(x2) # store 0x962cbe8272dcb64c in memory
fld f30, 0(x2) # load 0x962cbe8272dcb64c from memory into f30
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f20, 0(x2) # load 0xffffffefffff7fff from memory into f20
la x2, scratch
li x3, 0x9dc287480804b80b # load x3 with value 0x9dc287480804b80b
sd x3, 0(x2) # store 0x9dc287480804b80b in memory
fld f27, 0(x2) # load 0x9dc287480804b80b from memory into f27
fmsub.h f10, f30, f20, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x91494efd29f00799 # load x3 with value 0x91494efd29f00799
sd x3, 0(x2) # store 0x91494efd29f00799 in memory
fld f30, 0(x2) # load 0x91494efd29f00799 from memory into f30
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f16, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f16
la x2, scratch
li x3, 0xaeb7491989dda9f2 # load x3 with value 0xaeb7491989dda9f2
sd x3, 0(x2) # store 0xaeb7491989dda9f2 in memory
fld f3, 0(x2) # load 0xaeb7491989dda9f2 from memory into f3
fmsub.h f20, f30, f16, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x802decd9a668f81f # load x3 with value 0x802decd9a668f81f
sd x3, 0(x2) # store 0x802decd9a668f81f in memory
fld f21, 0(x2) # load 0x802decd9a668f81f from memory into f21
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f6, 0(x2) # load 0xfffffffcffff7dff from memory into f6
la x2, scratch
li x3, 0xa2f99970a313602e # load x3 with value 0xa2f99970a313602e
sd x3, 0(x2) # store 0xa2f99970a313602e in memory
fld f16, 0(x2) # load 0xa2f99970a313602e from memory into f16
fmsub.h f12, f21, f6, f16 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x825cfb4d0897dbda # load x3 with value 0x825cfb4d0897dbda
sd x3, 0(x2) # store 0x825cfb4d0897dbda in memory
fld f14, 0(x2) # load 0x825cfb4d0897dbda from memory into f14
la x2, scratch
li x3, 0xc5b0607a1644c6f9 # load x3 with value 0xc5b0607a1644c6f9
sd x3, 0(x2) # store 0xc5b0607a1644c6f9 in memory
fld f11, 0(x2) # load 0xc5b0607a1644c6f9 from memory into f11
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f25, 0(x2) # load 0xffffffff00000000 from memory into f25
fmsub.h f17, f14, f11, f25 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x9fc59115d555fcbc # load x3 with value 0x9fc59115d555fcbc
sd x3, 0(x2) # store 0x9fc59115d555fcbc in memory
fld f8, 0(x2) # load 0x9fc59115d555fcbc from memory into f8
la x2, scratch
li x3, 0xad09a1ff809b4645 # load x3 with value 0xad09a1ff809b4645
sd x3, 0(x2) # store 0xad09a1ff809b4645 in memory
fld f12, 0(x2) # load 0xad09a1ff809b4645 from memory into f12
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f1, 0(x2) # load 0xfffffffffffe8000 from memory into f1
fmsub.h f16, f8, f12, f1 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xc08d71e0c0c0ff8f # load x3 with value 0xc08d71e0c0c0ff8f
sd x3, 0(x2) # store 0xc08d71e0c0c0ff8f in memory
fld f10, 0(x2) # load 0xc08d71e0c0c0ff8f from memory into f10
la x2, scratch
li x3, 0xd673718cb367182e # load x3 with value 0xd673718cb367182e
sd x3, 0(x2) # store 0xd673718cb367182e in memory
fld f12, 0(x2) # load 0xd673718cb367182e from memory into f12
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f11, 0(x2) # load 0x7fffffffffff3c00 from memory into f11
fmsub.h f29, f10, f12, f11 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xaef8aa1f6af6f384 # load x3 with value 0xaef8aa1f6af6f384
sd x3, 0(x2) # store 0xaef8aa1f6af6f384 in memory
fld f2, 0(x2) # load 0xaef8aa1f6af6f384 from memory into f2
la x2, scratch
li x3, 0x9b87985d11a1314b # load x3 with value 0x9b87985d11a1314b
sd x3, 0(x2) # store 0x9b87985d11a1314b in memory
fld f3, 0(x2) # load 0x9b87985d11a1314b from memory into f3
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f6, 0(x2) # load 0xfeedbee5beefbc00 from memory into f6
fmsub.h f20, f2, f3, f6 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xf0edbb97cbeb5f3a # load x3 with value 0xf0edbb97cbeb5f3a
sd x3, 0(x2) # store 0xf0edbb97cbeb5f3a in memory
fld f7, 0(x2) # load 0xf0edbb97cbeb5f3a from memory into f7
la x2, scratch
li x3, 0x6c5d190238ebdc6e # load x3 with value 0x6c5d190238ebdc6e
sd x3, 0(x2) # store 0x6c5d190238ebdc6e in memory
fld f5, 0(x2) # load 0x6c5d190238ebdc6e from memory into f5
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f15, 0(x2) # load 0xffffffefffff0400 from memory into f15
fmsub.h f9, f7, f5, f15 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffff8400)
la x2, scratch
li x3, 0xa06cefc2d374d864 # load x3 with value 0xa06cefc2d374d864
sd x3, 0(x2) # store 0xa06cefc2d374d864 in memory
fld f21, 0(x2) # load 0xa06cefc2d374d864 from memory into f21
la x2, scratch
li x3, 0x343515cdd6445be8 # load x3 with value 0x343515cdd6445be8
sd x3, 0(x2) # store 0x343515cdd6445be8 in memory
fld f17, 0(x2) # load 0x343515cdd6445be8 from memory into f17
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f11, 0(x2) # load 0x00000000ffff8400 from memory into f11
fmsub.h f5, f21, f17, f11 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x1551292f19a56e55 # load x3 with value 0x1551292f19a56e55
sd x3, 0(x2) # store 0x1551292f19a56e55 in memory
fld f15, 0(x2) # load 0x1551292f19a56e55 from memory into f15
la x2, scratch
li x3, 0xc034447138943f17 # load x3 with value 0xc034447138943f17
sd x3, 0(x2) # store 0xc034447138943f17 in memory
fld f5, 0(x2) # load 0xc034447138943f17 from memory into f5
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f8, 0(x2) # load 0xefffffffffff7bff from memory into f8
fmsub.h f21, f15, f5, f8 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x78206c4e4ad74aa6 # load x3 with value 0x78206c4e4ad74aa6
sd x3, 0(x2) # store 0x78206c4e4ad74aa6 in memory
fld f25, 0(x2) # load 0x78206c4e4ad74aa6 from memory into f25
la x2, scratch
li x3, 0xe4a756232d6a6c3b # load x3 with value 0xe4a756232d6a6c3b
sd x3, 0(x2) # store 0xe4a756232d6a6c3b in memory
fld f28, 0(x2) # load 0xe4a756232d6a6c3b from memory into f28
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f20, 0(x2) # load 0xc0dec0dec0defbff from memory into f20
fmsub.h f27, f25, f28, f20 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xa9b0245f1074818c # load x3 with value 0xa9b0245f1074818c
sd x3, 0(x2) # store 0xa9b0245f1074818c in memory
fld f17, 0(x2) # load 0xa9b0245f1074818c from memory into f17
la x2, scratch
li x3, 0x40e876f905c70181 # load x3 with value 0x40e876f905c70181
sd x3, 0(x2) # store 0x40e876f905c70181 in memory
fld f15, 0(x2) # load 0x40e876f905c70181 from memory into f15
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f22, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f22
fmsub.h f5, f17, f15, f22 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xc94bba9c74404959 # load x3 with value 0xc94bba9c74404959
sd x3, 0(x2) # store 0xc94bba9c74404959 in memory
fld f26, 0(x2) # load 0xc94bba9c74404959 from memory into f26
la x2, scratch
li x3, 0xbc37ae26f249f523 # load x3 with value 0xbc37ae26f249f523
sd x3, 0(x2) # store 0xbc37ae26f249f523 in memory
fld f15, 0(x2) # load 0xbc37ae26f249f523 from memory into f15
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f3, 0(x2) # load 0xffffffff0ffffc00 from memory into f3
fmsub.h f11, f26, f15, f3 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x64a82f51d36365c0 # load x3 with value 0x64a82f51d36365c0
sd x3, 0(x2) # store 0x64a82f51d36365c0 in memory
fld f10, 0(x2) # load 0x64a82f51d36365c0 from memory into f10
la x2, scratch
li x3, 0xff5be03ff02b5148 # load x3 with value 0xff5be03ff02b5148
sd x3, 0(x2) # store 0xff5be03ff02b5148 in memory
fld f3, 0(x2) # load 0xff5be03ff02b5148 from memory into f3
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f6, 0(x2) # load 0xfffeffffffff7e00 from memory into f6
fmsub.h f15, f10, f3, f6 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x3ab00870850c17c7 # load x3 with value 0x3ab00870850c17c7
sd x3, 0(x2) # store 0x3ab00870850c17c7 in memory
fld f9, 0(x2) # load 0x3ab00870850c17c7 from memory into f9
la x2, scratch
li x3, 0x6d36a12d04e44d50 # load x3 with value 0x6d36a12d04e44d50
sd x3, 0(x2) # store 0x6d36a12d04e44d50 in memory
fld f19, 0(x2) # load 0x6d36a12d04e44d50 from memory into f19
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f12, 0(x2) # load 0xffffffefffff7fff from memory into f12
fmsub.h f14, f9, f19, f12 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xae8e722862ef19ab # load x3 with value 0xae8e722862ef19ab
sd x3, 0(x2) # store 0xae8e722862ef19ab in memory
fld f26, 0(x2) # load 0xae8e722862ef19ab from memory into f26
la x2, scratch
li x3, 0x92a8a5ddd0bf2000 # load x3 with value 0x92a8a5ddd0bf2000
sd x3, 0(x2) # store 0x92a8a5ddd0bf2000 in memory
fld f29, 0(x2) # load 0x92a8a5ddd0bf2000 from memory into f29
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f28, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f28
fmsub.h f17, f26, f29, f28 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x42344d9f00d02849 # load x3 with value 0x42344d9f00d02849
sd x3, 0(x2) # store 0x42344d9f00d02849 in memory
fld f21, 0(x2) # load 0x42344d9f00d02849 from memory into f21
la x2, scratch
li x3, 0x6b1d3d9db4c6556d # load x3 with value 0x6b1d3d9db4c6556d
sd x3, 0(x2) # store 0x6b1d3d9db4c6556d in memory
fld f27, 0(x2) # load 0x6b1d3d9db4c6556d from memory into f27
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f11, 0(x2) # load 0xfffffffcffff7dff from memory into f11
fmsub.h f17, f21, f27, f11 # perform operation

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
