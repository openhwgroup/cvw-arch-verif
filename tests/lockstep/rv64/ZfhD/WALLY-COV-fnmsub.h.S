///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfhD/WALLY-COV-fnmsub.h.S
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
li x3, 0x3c425ce6e57baa06 # load x3 with value 0x3c425ce6e57baa06
sd x3, 0(x2) # store 0x3c425ce6e57baa06 in memory
flh f2, 0(x2) # load 0x3c425ce6e57baa06 from memory into f2
la x2, scratch
li x3, 0x59aa32f1069ed706 # load x3 with value 0x59aa32f1069ed706
sd x3, 0(x2) # store 0x59aa32f1069ed706 in memory
flh f24, 0(x2) # load 0x59aa32f1069ed706 from memory into f24
la x2, scratch
li x3, 0x8d2ed7bb51b2b1ff # load x3 with value 0x8d2ed7bb51b2b1ff
sd x3, 0(x2) # store 0x8d2ed7bb51b2b1ff in memory
flh f6, 0(x2) # load 0x8d2ed7bb51b2b1ff from memory into f6
fnmsub.h f13, f2, f24, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f17, 0(x2) # load 0xffffffff00000000 from memory into f17
la x2, scratch
li x3, 0x3917ee2fea55378e # load x3 with value 0x3917ee2fea55378e
sd x3, 0(x2) # store 0x3917ee2fea55378e in memory
fld f9, 0(x2) # load 0x3917ee2fea55378e from memory into f9
la x2, scratch
li x3, 0x49f55306ee666a27 # load x3 with value 0x49f55306ee666a27
sd x3, 0(x2) # store 0x49f55306ee666a27 in memory
fld f31, 0(x2) # load 0x49f55306ee666a27 from memory into f31
fnmsub.h f25, f17, f9, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f2, 0(x2) # load 0xfffffffffffe8000 from memory into f2
la x2, scratch
li x3, 0x8361afe4392ba6c7 # load x3 with value 0x8361afe4392ba6c7
sd x3, 0(x2) # store 0x8361afe4392ba6c7 in memory
fld f22, 0(x2) # load 0x8361afe4392ba6c7 from memory into f22
la x2, scratch
li x3, 0x023a6b3252f4299c # load x3 with value 0x023a6b3252f4299c
sd x3, 0(x2) # store 0x023a6b3252f4299c in memory
fld f1, 0(x2) # load 0x023a6b3252f4299c from memory into f1
fnmsub.h f28, f2, f22, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f20)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f20, 0(x2) # load 0x7fffffffffff3c00 from memory into f20
la x2, scratch
li x3, 0x53a9a28359b8a7e9 # load x3 with value 0x53a9a28359b8a7e9
sd x3, 0(x2) # store 0x53a9a28359b8a7e9 in memory
fld f10, 0(x2) # load 0x53a9a28359b8a7e9 from memory into f10
la x2, scratch
li x3, 0x5edb8d21423ef7ad # load x3 with value 0x5edb8d21423ef7ad
sd x3, 0(x2) # store 0x5edb8d21423ef7ad in memory
fld f27, 0(x2) # load 0x5edb8d21423ef7ad from memory into f27
fnmsub.h f11, f20, f10, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f26, 0(x2) # load 0xfeedbee5beefbc00 from memory into f26
la x2, scratch
li x3, 0x9a9d9c7a514a3595 # load x3 with value 0x9a9d9c7a514a3595
sd x3, 0(x2) # store 0x9a9d9c7a514a3595 in memory
fld f10, 0(x2) # load 0x9a9d9c7a514a3595 from memory into f10
la x2, scratch
li x3, 0x85dc9325a938f884 # load x3 with value 0x85dc9325a938f884
sd x3, 0(x2) # store 0x85dc9325a938f884 in memory
fld f6, 0(x2) # load 0x85dc9325a938f884 from memory into f6
fnmsub.h f9, f26, f10, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f13, 0(x2) # load 0xffffffefffff0400 from memory into f13
la x2, scratch
li x3, 0x7f062ad8bffa3c9d # load x3 with value 0x7f062ad8bffa3c9d
sd x3, 0(x2) # store 0x7f062ad8bffa3c9d in memory
fld f21, 0(x2) # load 0x7f062ad8bffa3c9d from memory into f21
la x2, scratch
li x3, 0x48604cff1ffeefbf # load x3 with value 0x48604cff1ffeefbf
sd x3, 0(x2) # store 0x48604cff1ffeefbf in memory
fld f11, 0(x2) # load 0x48604cff1ffeefbf from memory into f11
fnmsub.h f28, f13, f21, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f21, 0(x2) # load 0x00000000ffff8400 from memory into f21
la x2, scratch
li x3, 0x9acc9b70db50f720 # load x3 with value 0x9acc9b70db50f720
sd x3, 0(x2) # store 0x9acc9b70db50f720 in memory
fld f13, 0(x2) # load 0x9acc9b70db50f720 from memory into f13
la x2, scratch
li x3, 0xdce0f7530781d6bc # load x3 with value 0xdce0f7530781d6bc
sd x3, 0(x2) # store 0xdce0f7530781d6bc in memory
fld f11, 0(x2) # load 0xdce0f7530781d6bc from memory into f11
fnmsub.h f31, f21, f13, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f11, 0(x2) # load 0xefffffffffff7bff from memory into f11
la x2, scratch
li x3, 0xd2be04b08eb82436 # load x3 with value 0xd2be04b08eb82436
sd x3, 0(x2) # store 0xd2be04b08eb82436 in memory
fld f17, 0(x2) # load 0xd2be04b08eb82436 from memory into f17
la x2, scratch
li x3, 0x01463342794f9c5e # load x3 with value 0x01463342794f9c5e
sd x3, 0(x2) # store 0x01463342794f9c5e in memory
fld f6, 0(x2) # load 0x01463342794f9c5e from memory into f6
fnmsub.h f23, f11, f17, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f7, 0(x2) # load 0xc0dec0dec0defbff from memory into f7
la x2, scratch
li x3, 0xb181eeeab076b889 # load x3 with value 0xb181eeeab076b889
sd x3, 0(x2) # store 0xb181eeeab076b889 in memory
fld f20, 0(x2) # load 0xb181eeeab076b889 from memory into f20
la x2, scratch
li x3, 0xf10a6c7a04a75c45 # load x3 with value 0xf10a6c7a04a75c45
sd x3, 0(x2) # store 0xf10a6c7a04a75c45 in memory
fld f16, 0(x2) # load 0xf10a6c7a04a75c45 from memory into f16
fnmsub.h f11, f7, f20, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f5, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f5
la x2, scratch
li x3, 0x6b03bd122e9e7b72 # load x3 with value 0x6b03bd122e9e7b72
sd x3, 0(x2) # store 0x6b03bd122e9e7b72 in memory
fld f14, 0(x2) # load 0x6b03bd122e9e7b72 from memory into f14
la x2, scratch
li x3, 0x479ad8a132305dd1 # load x3 with value 0x479ad8a132305dd1
sd x3, 0(x2) # store 0x479ad8a132305dd1 in memory
fld f10, 0(x2) # load 0x479ad8a132305dd1 from memory into f10
fnmsub.h f11, f5, f14, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f1, 0(x2) # load 0xffffffff0ffffc00 from memory into f1
la x2, scratch
li x3, 0xb6456b595a14b72d # load x3 with value 0xb6456b595a14b72d
sd x3, 0(x2) # store 0xb6456b595a14b72d in memory
fld f20, 0(x2) # load 0xb6456b595a14b72d from memory into f20
la x2, scratch
li x3, 0xff6bae9afc2baaab # load x3 with value 0xff6bae9afc2baaab
sd x3, 0(x2) # store 0xff6bae9afc2baaab in memory
fld f9, 0(x2) # load 0xff6bae9afc2baaab from memory into f9
fnmsub.h f21, f1, f20, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f31, 0(x2) # load 0xfffeffffffff7e00 from memory into f31
la x2, scratch
li x3, 0x67a013457aed748c # load x3 with value 0x67a013457aed748c
sd x3, 0(x2) # store 0x67a013457aed748c in memory
fld f24, 0(x2) # load 0x67a013457aed748c from memory into f24
la x2, scratch
li x3, 0x58ce07493fb0b8df # load x3 with value 0x58ce07493fb0b8df
sd x3, 0(x2) # store 0x58ce07493fb0b8df in memory
fld f18, 0(x2) # load 0x58ce07493fb0b8df from memory into f18
fnmsub.h f26, f31, f24, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f22, 0(x2) # load 0xffffffefffff7fff from memory into f22
la x2, scratch
li x3, 0x1a839e68d3579c3c # load x3 with value 0x1a839e68d3579c3c
sd x3, 0(x2) # store 0x1a839e68d3579c3c in memory
fld f8, 0(x2) # load 0x1a839e68d3579c3c from memory into f8
la x2, scratch
li x3, 0x7b6880168f079244 # load x3 with value 0x7b6880168f079244
sd x3, 0(x2) # store 0x7b6880168f079244 in memory
fld f3, 0(x2) # load 0x7b6880168f079244 from memory into f3
fnmsub.h f28, f22, f8, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f25, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f25
la x2, scratch
li x3, 0xc558abfeea3ad4b1 # load x3 with value 0xc558abfeea3ad4b1
sd x3, 0(x2) # store 0xc558abfeea3ad4b1 in memory
fld f23, 0(x2) # load 0xc558abfeea3ad4b1 from memory into f23
la x2, scratch
li x3, 0xb7d565d7e0efa5a3 # load x3 with value 0xb7d565d7e0efa5a3
sd x3, 0(x2) # store 0xb7d565d7e0efa5a3 in memory
fld f22, 0(x2) # load 0xb7d565d7e0efa5a3 from memory into f22
fnmsub.h f18, f25, f23, f22 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f25, 0(x2) # load 0xfffffffcffff7dff from memory into f25
la x2, scratch
li x3, 0x14be76b6c390333f # load x3 with value 0x14be76b6c390333f
sd x3, 0(x2) # store 0x14be76b6c390333f in memory
fld f23, 0(x2) # load 0x14be76b6c390333f from memory into f23
la x2, scratch
li x3, 0xe7d1ae8a193735e3 # load x3 with value 0xe7d1ae8a193735e3
sd x3, 0(x2) # store 0xe7d1ae8a193735e3 in memory
fld f11, 0(x2) # load 0xe7d1ae8a193735e3 from memory into f11
fnmsub.h f6, f25, f23, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x613344e5b99bd622 # load x3 with value 0x613344e5b99bd622
sd x3, 0(x2) # store 0x613344e5b99bd622 in memory
fld f2, 0(x2) # load 0x613344e5b99bd622 from memory into f2
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f14, 0(x2) # load 0xffffffff00000000 from memory into f14
la x2, scratch
li x3, 0x57f78e8180f6775c # load x3 with value 0x57f78e8180f6775c
sd x3, 0(x2) # store 0x57f78e8180f6775c in memory
fld f7, 0(x2) # load 0x57f78e8180f6775c from memory into f7
fnmsub.h f19, f2, f14, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x99248d07ba1c39a9 # load x3 with value 0x99248d07ba1c39a9
sd x3, 0(x2) # store 0x99248d07ba1c39a9 in memory
fld f24, 0(x2) # load 0x99248d07ba1c39a9 from memory into f24
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f9, 0(x2) # load 0xfffffffffffe8000 from memory into f9
la x2, scratch
li x3, 0xe6d387ddbd51c5a1 # load x3 with value 0xe6d387ddbd51c5a1
sd x3, 0(x2) # store 0xe6d387ddbd51c5a1 in memory
fld f28, 0(x2) # load 0xe6d387ddbd51c5a1 from memory into f28
fnmsub.h f21, f24, f9, f28 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xeeb28a9628fe94f1 # load x3 with value 0xeeb28a9628fe94f1
sd x3, 0(x2) # store 0xeeb28a9628fe94f1 in memory
fld f13, 0(x2) # load 0xeeb28a9628fe94f1 from memory into f13
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f29, 0(x2) # load 0x7fffffffffff3c00 from memory into f29
la x2, scratch
li x3, 0x0f13e88d940a6560 # load x3 with value 0x0f13e88d940a6560
sd x3, 0(x2) # store 0x0f13e88d940a6560 in memory
fld f15, 0(x2) # load 0x0f13e88d940a6560 from memory into f15
fnmsub.h f22, f13, f29, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xa44d1c7424e4def8 # load x3 with value 0xa44d1c7424e4def8
sd x3, 0(x2) # store 0xa44d1c7424e4def8 in memory
fld f28, 0(x2) # load 0xa44d1c7424e4def8 from memory into f28
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f31, 0(x2) # load 0xfeedbee5beefbc00 from memory into f31
la x2, scratch
li x3, 0xd24e76771a9c4825 # load x3 with value 0xd24e76771a9c4825
sd x3, 0(x2) # store 0xd24e76771a9c4825 in memory
fld f22, 0(x2) # load 0xd24e76771a9c4825 from memory into f22
fnmsub.h f16, f28, f31, f22 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x10b6120e60d50632 # load x3 with value 0x10b6120e60d50632
sd x3, 0(x2) # store 0x10b6120e60d50632 in memory
fld f5, 0(x2) # load 0x10b6120e60d50632 from memory into f5
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f23, 0(x2) # load 0xffffffefffff0400 from memory into f23
la x2, scratch
li x3, 0xd3222a43039afd32 # load x3 with value 0xd3222a43039afd32
sd x3, 0(x2) # store 0xd3222a43039afd32 in memory
fld f2, 0(x2) # load 0xd3222a43039afd32 from memory into f2
fnmsub.h f13, f5, f23, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xc7b94bee5a099e2e # load x3 with value 0xc7b94bee5a099e2e
sd x3, 0(x2) # store 0xc7b94bee5a099e2e in memory
fld f31, 0(x2) # load 0xc7b94bee5a099e2e from memory into f31
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f18, 0(x2) # load 0x00000000ffff8400 from memory into f18
la x2, scratch
li x3, 0xccd9701402a0754e # load x3 with value 0xccd9701402a0754e
sd x3, 0(x2) # store 0xccd9701402a0754e in memory
fld f27, 0(x2) # load 0xccd9701402a0754e from memory into f27
fnmsub.h f11, f31, f18, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x56db9a847cfeadf7 # load x3 with value 0x56db9a847cfeadf7
sd x3, 0(x2) # store 0x56db9a847cfeadf7 in memory
fld f6, 0(x2) # load 0x56db9a847cfeadf7 from memory into f6
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f18, 0(x2) # load 0xefffffffffff7bff from memory into f18
la x2, scratch
li x3, 0x28ed4f9298f7a72f # load x3 with value 0x28ed4f9298f7a72f
sd x3, 0(x2) # store 0x28ed4f9298f7a72f in memory
fld f21, 0(x2) # load 0x28ed4f9298f7a72f from memory into f21
fnmsub.h f31, f6, f18, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xd95c13c85c4fdb1f # load x3 with value 0xd95c13c85c4fdb1f
sd x3, 0(x2) # store 0xd95c13c85c4fdb1f in memory
fld f3, 0(x2) # load 0xd95c13c85c4fdb1f from memory into f3
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f25, 0(x2) # load 0xc0dec0dec0defbff from memory into f25
la x2, scratch
li x3, 0x03b40d7acff4b3ed # load x3 with value 0x03b40d7acff4b3ed
sd x3, 0(x2) # store 0x03b40d7acff4b3ed in memory
fld f14, 0(x2) # load 0x03b40d7acff4b3ed from memory into f14
fnmsub.h f12, f3, f25, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xd548e5d57b42a894 # load x3 with value 0xd548e5d57b42a894
sd x3, 0(x2) # store 0xd548e5d57b42a894 in memory
fld f6, 0(x2) # load 0xd548e5d57b42a894 from memory into f6
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f23, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f23
la x2, scratch
li x3, 0xe5dd843c31fb3055 # load x3 with value 0xe5dd843c31fb3055
sd x3, 0(x2) # store 0xe5dd843c31fb3055 in memory
fld f16, 0(x2) # load 0xe5dd843c31fb3055 from memory into f16
fnmsub.h f29, f6, f23, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x1600cf8806516c52 # load x3 with value 0x1600cf8806516c52
sd x3, 0(x2) # store 0x1600cf8806516c52 in memory
fld f30, 0(x2) # load 0x1600cf8806516c52 from memory into f30
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f16, 0(x2) # load 0xffffffff0ffffc00 from memory into f16
la x2, scratch
li x3, 0x3dec4c64efd8531c # load x3 with value 0x3dec4c64efd8531c
sd x3, 0(x2) # store 0x3dec4c64efd8531c in memory
fld f31, 0(x2) # load 0x3dec4c64efd8531c from memory into f31
fnmsub.h f9, f30, f16, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xac8c11475b41c009 # load x3 with value 0xac8c11475b41c009
sd x3, 0(x2) # store 0xac8c11475b41c009 in memory
fld f31, 0(x2) # load 0xac8c11475b41c009 from memory into f31
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f13, 0(x2) # load 0xfffeffffffff7e00 from memory into f13
la x2, scratch
li x3, 0x6c3094c5edfc0eb0 # load x3 with value 0x6c3094c5edfc0eb0
sd x3, 0(x2) # store 0x6c3094c5edfc0eb0 in memory
fld f1, 0(x2) # load 0x6c3094c5edfc0eb0 from memory into f1
fnmsub.h f7, f31, f13, f1 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x7e8ab9b99963d083 # load x3 with value 0x7e8ab9b99963d083
sd x3, 0(x2) # store 0x7e8ab9b99963d083 in memory
fld f28, 0(x2) # load 0x7e8ab9b99963d083 from memory into f28
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f21, 0(x2) # load 0xffffffefffff7fff from memory into f21
la x2, scratch
li x3, 0x032be60c9fb0a13c # load x3 with value 0x032be60c9fb0a13c
sd x3, 0(x2) # store 0x032be60c9fb0a13c in memory
fld f7, 0(x2) # load 0x032be60c9fb0a13c from memory into f7
fnmsub.h f5, f28, f21, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xa8663e50627d99fd # load x3 with value 0xa8663e50627d99fd
sd x3, 0(x2) # store 0xa8663e50627d99fd in memory
fld f13, 0(x2) # load 0xa8663e50627d99fd from memory into f13
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f26, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f26
la x2, scratch
li x3, 0x29560a89b4d5f91a # load x3 with value 0x29560a89b4d5f91a
sd x3, 0(x2) # store 0x29560a89b4d5f91a in memory
fld f3, 0(x2) # load 0x29560a89b4d5f91a from memory into f3
fnmsub.h f9, f13, f26, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x8ac558c84432839a # load x3 with value 0x8ac558c84432839a
sd x3, 0(x2) # store 0x8ac558c84432839a in memory
fld f8, 0(x2) # load 0x8ac558c84432839a from memory into f8
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f12, 0(x2) # load 0xfffffffcffff7dff from memory into f12
la x2, scratch
li x3, 0xaaf08aa8ccf0c1fe # load x3 with value 0xaaf08aa8ccf0c1fe
sd x3, 0(x2) # store 0xaaf08aa8ccf0c1fe in memory
fld f2, 0(x2) # load 0xaaf08aa8ccf0c1fe from memory into f2
fnmsub.h f23, f8, f12, f2 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x1681ad0793891636 # load x3 with value 0x1681ad0793891636
sd x3, 0(x2) # store 0x1681ad0793891636 in memory
fld f9, 0(x2) # load 0x1681ad0793891636 from memory into f9
la x2, scratch
li x3, 0x0608577ef1a70262 # load x3 with value 0x0608577ef1a70262
sd x3, 0(x2) # store 0x0608577ef1a70262 in memory
fld f26, 0(x2) # load 0x0608577ef1a70262 from memory into f26
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f14, 0(x2) # load 0xffffffff00000000 from memory into f14
fnmsub.h f28, f9, f26, f14 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x66b12915155f162f # load x3 with value 0x66b12915155f162f
sd x3, 0(x2) # store 0x66b12915155f162f in memory
fld f18, 0(x2) # load 0x66b12915155f162f from memory into f18
la x2, scratch
li x3, 0x051c5d25aed313c3 # load x3 with value 0x051c5d25aed313c3
sd x3, 0(x2) # store 0x051c5d25aed313c3 in memory
fld f10, 0(x2) # load 0x051c5d25aed313c3 from memory into f10
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f20, 0(x2) # load 0xfffffffffffe8000 from memory into f20
fnmsub.h f8, f18, f10, f20 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xf5d1f3f6d4b021f6 # load x3 with value 0xf5d1f3f6d4b021f6
sd x3, 0(x2) # store 0xf5d1f3f6d4b021f6 in memory
fld f3, 0(x2) # load 0xf5d1f3f6d4b021f6 from memory into f3
la x2, scratch
li x3, 0xf70ce6fee798a7c6 # load x3 with value 0xf70ce6fee798a7c6
sd x3, 0(x2) # store 0xf70ce6fee798a7c6 in memory
fld f28, 0(x2) # load 0xf70ce6fee798a7c6 from memory into f28
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f27, 0(x2) # load 0x7fffffffffff3c00 from memory into f27
fnmsub.h f15, f3, f28, f27 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0x14046fda7bcd72c7 # load x3 with value 0x14046fda7bcd72c7
sd x3, 0(x2) # store 0x14046fda7bcd72c7 in memory
fld f7, 0(x2) # load 0x14046fda7bcd72c7 from memory into f7
la x2, scratch
li x3, 0xa10dd60a06b0d0aa # load x3 with value 0xa10dd60a06b0d0aa
sd x3, 0(x2) # store 0xa10dd60a06b0d0aa in memory
fld f28, 0(x2) # load 0xa10dd60a06b0d0aa from memory into f28
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f14, 0(x2) # load 0xfeedbee5beefbc00 from memory into f14
fnmsub.h f1, f7, f28, f14 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x2c358ac42df50b6c # load x3 with value 0x2c358ac42df50b6c
sd x3, 0(x2) # store 0x2c358ac42df50b6c in memory
fld f15, 0(x2) # load 0x2c358ac42df50b6c from memory into f15
la x2, scratch
li x3, 0x26cf62181a5fc61c # load x3 with value 0x26cf62181a5fc61c
sd x3, 0(x2) # store 0x26cf62181a5fc61c in memory
fld f21, 0(x2) # load 0x26cf62181a5fc61c from memory into f21
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f31, 0(x2) # load 0xffffffefffff0400 from memory into f31
fnmsub.h f6, f15, f21, f31 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffff8400)
la x2, scratch
li x3, 0xff45dfd4b99cb7f8 # load x3 with value 0xff45dfd4b99cb7f8
sd x3, 0(x2) # store 0xff45dfd4b99cb7f8 in memory
fld f28, 0(x2) # load 0xff45dfd4b99cb7f8 from memory into f28
la x2, scratch
li x3, 0x77b6d76bb8a514ed # load x3 with value 0x77b6d76bb8a514ed
sd x3, 0(x2) # store 0x77b6d76bb8a514ed in memory
fld f21, 0(x2) # load 0x77b6d76bb8a514ed from memory into f21
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f23, 0(x2) # load 0x00000000ffff8400 from memory into f23
fnmsub.h f14, f28, f21, f23 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0xe92fdf73a972bc22 # load x3 with value 0xe92fdf73a972bc22
sd x3, 0(x2) # store 0xe92fdf73a972bc22 in memory
fld f31, 0(x2) # load 0xe92fdf73a972bc22 from memory into f31
la x2, scratch
li x3, 0xd2e0101199032f3f # load x3 with value 0xd2e0101199032f3f
sd x3, 0(x2) # store 0xd2e0101199032f3f in memory
fld f14, 0(x2) # load 0xd2e0101199032f3f from memory into f14
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f25, 0(x2) # load 0xefffffffffff7bff from memory into f25
fnmsub.h f21, f31, f14, f25 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0xaae15360c4a49d81 # load x3 with value 0xaae15360c4a49d81
sd x3, 0(x2) # store 0xaae15360c4a49d81 in memory
fld f1, 0(x2) # load 0xaae15360c4a49d81 from memory into f1
la x2, scratch
li x3, 0xd4654bb44aa916bc # load x3 with value 0xd4654bb44aa916bc
sd x3, 0(x2) # store 0xd4654bb44aa916bc in memory
fld f5, 0(x2) # load 0xd4654bb44aa916bc from memory into f5
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f16, 0(x2) # load 0xc0dec0dec0defbff from memory into f16
fnmsub.h f9, f1, f5, f16 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0xd9644cd83b39445b # load x3 with value 0xd9644cd83b39445b
sd x3, 0(x2) # store 0xd9644cd83b39445b in memory
fld f20, 0(x2) # load 0xd9644cd83b39445b from memory into f20
la x2, scratch
li x3, 0x970385d6131e3fbb # load x3 with value 0x970385d6131e3fbb
sd x3, 0(x2) # store 0x970385d6131e3fbb in memory
fld f17, 0(x2) # load 0x970385d6131e3fbb from memory into f17
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f25, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f25
fnmsub.h f15, f20, f17, f25 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x802908a2d9d38030 # load x3 with value 0x802908a2d9d38030
sd x3, 0(x2) # store 0x802908a2d9d38030 in memory
fld f16, 0(x2) # load 0x802908a2d9d38030 from memory into f16
la x2, scratch
li x3, 0xddea7c4b67e609ec # load x3 with value 0xddea7c4b67e609ec
sd x3, 0(x2) # store 0xddea7c4b67e609ec in memory
fld f29, 0(x2) # load 0xddea7c4b67e609ec from memory into f29
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f30, 0(x2) # load 0xffffffff0ffffc00 from memory into f30
fnmsub.h f14, f16, f29, f30 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x92b206ec50605aeb # load x3 with value 0x92b206ec50605aeb
sd x3, 0(x2) # store 0x92b206ec50605aeb in memory
fld f13, 0(x2) # load 0x92b206ec50605aeb from memory into f13
la x2, scratch
li x3, 0x08d7b09d900ea57c # load x3 with value 0x08d7b09d900ea57c
sd x3, 0(x2) # store 0x08d7b09d900ea57c in memory
fld f24, 0(x2) # load 0x08d7b09d900ea57c from memory into f24
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f16, 0(x2) # load 0xfffeffffffff7e00 from memory into f16
fnmsub.h f1, f13, f24, f16 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x476a65f20b733c39 # load x3 with value 0x476a65f20b733c39
sd x3, 0(x2) # store 0x476a65f20b733c39 in memory
fld f19, 0(x2) # load 0x476a65f20b733c39 from memory into f19
la x2, scratch
li x3, 0xfcd0ffccb7d24a2f # load x3 with value 0xfcd0ffccb7d24a2f
sd x3, 0(x2) # store 0xfcd0ffccb7d24a2f in memory
fld f15, 0(x2) # load 0xfcd0ffccb7d24a2f from memory into f15
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f29, 0(x2) # load 0xffffffefffff7fff from memory into f29
fnmsub.h f1, f19, f15, f29 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x68868d2d65cf243f # load x3 with value 0x68868d2d65cf243f
sd x3, 0(x2) # store 0x68868d2d65cf243f in memory
fld f9, 0(x2) # load 0x68868d2d65cf243f from memory into f9
la x2, scratch
li x3, 0x47cc66e987421258 # load x3 with value 0x47cc66e987421258
sd x3, 0(x2) # store 0x47cc66e987421258 in memory
fld f22, 0(x2) # load 0x47cc66e987421258 from memory into f22
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f2, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f2
fnmsub.h f18, f9, f22, f2 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xf28d4071b64a2475 # load x3 with value 0xf28d4071b64a2475
sd x3, 0(x2) # store 0xf28d4071b64a2475 in memory
fld f14, 0(x2) # load 0xf28d4071b64a2475 from memory into f14
la x2, scratch
li x3, 0xabbea7e853b608cf # load x3 with value 0xabbea7e853b608cf
sd x3, 0(x2) # store 0xabbea7e853b608cf in memory
fld f23, 0(x2) # load 0xabbea7e853b608cf from memory into f23
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f30, 0(x2) # load 0xfffffffcffff7dff from memory into f30
fnmsub.h f10, f14, f23, f30 # perform operation

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
