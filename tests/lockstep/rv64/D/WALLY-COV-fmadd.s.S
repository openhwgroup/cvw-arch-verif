///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fmadd.s.S
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
li x3, 0x0917518875754f3f # load x3 with value 0x0917518875754f3f
sd x3, 0(x2) # store 0x0917518875754f3f in memory
flw f7, 0(x2) # load 0x0917518875754f3f from memory into f7
la x2, scratch
li x3, 0x2fbb8bc310c0ad4b # load x3 with value 0x2fbb8bc310c0ad4b
sd x3, 0(x2) # store 0x2fbb8bc310c0ad4b in memory
flw f23, 0(x2) # load 0x2fbb8bc310c0ad4b from memory into f23
la x2, scratch
li x3, 0x3ed3fe2fed89210d # load x3 with value 0x3ed3fe2fed89210d
sd x3, 0(x2) # store 0x3ed3fe2fed89210d in memory
flw f18, 0(x2) # load 0x3ed3fe2fed89210d from memory into f18
fmadd.s f27, f7, f23, f18 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f14, 0(x2) # load 0xffffefff00000000 from memory into f14
la x2, scratch
li x3, 0x969aec4b9a8cda2f # load x3 with value 0x969aec4b9a8cda2f
sd x3, 0(x2) # store 0x969aec4b9a8cda2f in memory
fld f24, 0(x2) # load 0x969aec4b9a8cda2f from memory into f24
la x2, scratch
li x3, 0x193b0f7ddb7967e4 # load x3 with value 0x193b0f7ddb7967e4
sd x3, 0(x2) # store 0x193b0f7ddb7967e4 in memory
fld f1, 0(x2) # load 0x193b0f7ddb7967e4 from memory into f1
fmadd.s f18, f14, f24, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f19, 0(x2) # load 0xaaaaaaaa80000000 from memory into f19
la x2, scratch
li x3, 0x27b886950c17d59b # load x3 with value 0x27b886950c17d59b
sd x3, 0(x2) # store 0x27b886950c17d59b in memory
fld f7, 0(x2) # load 0x27b886950c17d59b from memory into f7
la x2, scratch
li x3, 0x982a1ad671f28bbe # load x3 with value 0x982a1ad671f28bbe
sd x3, 0(x2) # store 0x982a1ad671f28bbe in memory
fld f11, 0(x2) # load 0x982a1ad671f28bbe from memory into f11
fmadd.s f29, f19, f7, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f23)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f23, 0(x2) # load 0x000000003f800000 from memory into f23
la x2, scratch
li x3, 0x4cdf3efe94280b64 # load x3 with value 0x4cdf3efe94280b64
sd x3, 0(x2) # store 0x4cdf3efe94280b64 in memory
fld f30, 0(x2) # load 0x4cdf3efe94280b64 from memory into f30
la x2, scratch
li x3, 0x34281df9bc67d302 # load x3 with value 0x34281df9bc67d302
sd x3, 0(x2) # store 0x34281df9bc67d302 in memory
fld f26, 0(x2) # load 0x34281df9bc67d302 from memory into f26
fmadd.s f6, f23, f30, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f28, 0(x2) # load 0xdeadbeefbf800000 from memory into f28
la x2, scratch
li x3, 0x499a84a7da89cb80 # load x3 with value 0x499a84a7da89cb80
sd x3, 0(x2) # store 0x499a84a7da89cb80 in memory
fld f19, 0(x2) # load 0x499a84a7da89cb80 from memory into f19
la x2, scratch
li x3, 0xa1a0ce35ed19c24b # load x3 with value 0xa1a0ce35ed19c24b
sd x3, 0(x2) # store 0xa1a0ce35ed19c24b in memory
fld f9, 0(x2) # load 0xa1a0ce35ed19c24b from memory into f9
fmadd.s f30, f28, f19, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f5, 0(x2) # load 0xa1b2c3d400800000 from memory into f5
la x2, scratch
li x3, 0x353aa073aa1f5e61 # load x3 with value 0x353aa073aa1f5e61
sd x3, 0(x2) # store 0x353aa073aa1f5e61 in memory
fld f19, 0(x2) # load 0x353aa073aa1f5e61 from memory into f19
la x2, scratch
li x3, 0x61d22d1022f9a92b # load x3 with value 0x61d22d1022f9a92b
sd x3, 0(x2) # store 0x61d22d1022f9a92b in memory
fld f9, 0(x2) # load 0x61d22d1022f9a92b from memory into f9
fmadd.s f26, f5, f19, f9 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f8, 0(x2) # load 0xffffffef80800000 from memory into f8
la x2, scratch
li x3, 0xe54a7bb52de81f8c # load x3 with value 0xe54a7bb52de81f8c
sd x3, 0(x2) # store 0xe54a7bb52de81f8c in memory
fld f14, 0(x2) # load 0xe54a7bb52de81f8c from memory into f14
la x2, scratch
li x3, 0xa430c9e5e45bfe7e # load x3 with value 0xa430c9e5e45bfe7e
sd x3, 0(x2) # store 0xa430c9e5e45bfe7e in memory
fld f21, 0(x2) # load 0xa430c9e5e45bfe7e from memory into f21
fmadd.s f10, f8, f14, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f2, 0(x2) # load 0xfeffffef7f7fffff from memory into f2
la x2, scratch
li x3, 0xbe78612317758f98 # load x3 with value 0xbe78612317758f98
sd x3, 0(x2) # store 0xbe78612317758f98 in memory
fld f29, 0(x2) # load 0xbe78612317758f98 from memory into f29
la x2, scratch
li x3, 0xa260b0f59f802a8f # load x3 with value 0xa260b0f59f802a8f
sd x3, 0(x2) # store 0xa260b0f59f802a8f in memory
fld f16, 0(x2) # load 0xa260b0f59f802a8f from memory into f16
fmadd.s f14, f2, f29, f16 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f22, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f22
la x2, scratch
li x3, 0x3c7182875dbeed9d # load x3 with value 0x3c7182875dbeed9d
sd x3, 0(x2) # store 0x3c7182875dbeed9d in memory
fld f14, 0(x2) # load 0x3c7182875dbeed9d from memory into f14
la x2, scratch
li x3, 0x8f0c6054a59a73e9 # load x3 with value 0x8f0c6054a59a73e9
sd x3, 0(x2) # store 0x8f0c6054a59a73e9 in memory
fld f10, 0(x2) # load 0x8f0c6054a59a73e9 from memory into f10
fmadd.s f3, f22, f14, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f19, 0(x2) # load 0x7fffffff7f800000 from memory into f19
la x2, scratch
li x3, 0xb0c532f85ef08136 # load x3 with value 0xb0c532f85ef08136
sd x3, 0(x2) # store 0xb0c532f85ef08136 in memory
fld f12, 0(x2) # load 0xb0c532f85ef08136 from memory into f12
la x2, scratch
li x3, 0x85c1c17fbfbfbb37 # load x3 with value 0x85c1c17fbfbfbb37
sd x3, 0(x2) # store 0x85c1c17fbfbfbb37 in memory
fld f21, 0(x2) # load 0x85c1c17fbfbfbb37 from memory into f21
fmadd.s f17, f19, f12, f21 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f7, 0(x2) # load 0xfffffffeff800000 from memory into f7
la x2, scratch
li x3, 0x3353efa1f3300edb # load x3 with value 0x3353efa1f3300edb
sd x3, 0(x2) # store 0x3353efa1f3300edb in memory
fld f12, 0(x2) # load 0x3353efa1f3300edb from memory into f12
la x2, scratch
li x3, 0xcd8e321f671fd444 # load x3 with value 0xcd8e321f671fd444
sd x3, 0(x2) # store 0xcd8e321f671fd444 in memory
fld f14, 0(x2) # load 0xcd8e321f671fd444 from memory into f14
fmadd.s f17, f7, f12, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f11, 0(x2) # load 0xfeedbee57fc00000 from memory into f11
la x2, scratch
li x3, 0xc0efa00290d53a27 # load x3 with value 0xc0efa00290d53a27
sd x3, 0(x2) # store 0xc0efa00290d53a27 in memory
fld f14, 0(x2) # load 0xc0efa00290d53a27 from memory into f14
la x2, scratch
li x3, 0xcdf982db7a95747d # load x3 with value 0xcdf982db7a95747d
sd x3, 0(x2) # store 0xcdf982db7a95747d in memory
fld f29, 0(x2) # load 0xcdf982db7a95747d from memory into f29
fmadd.s f20, f11, f14, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f24, 0(x2) # load 0xffc0deff7fffffff from memory into f24
la x2, scratch
li x3, 0x2814f52008d0c5b8 # load x3 with value 0x2814f52008d0c5b8
sd x3, 0(x2) # store 0x2814f52008d0c5b8 in memory
fld f14, 0(x2) # load 0x2814f52008d0c5b8 from memory into f14
la x2, scratch
li x3, 0x8d2f1ba574c96384 # load x3 with value 0x8d2f1ba574c96384
sd x3, 0(x2) # store 0x8d2f1ba574c96384 in memory
fld f19, 0(x2) # load 0x8d2f1ba574c96384 from memory into f19
fmadd.s f2, f24, f14, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f21, 0(x2) # load 0xfeffffff7f800001 from memory into f21
la x2, scratch
li x3, 0xe4241a804fd5bb44 # load x3 with value 0xe4241a804fd5bb44
sd x3, 0(x2) # store 0xe4241a804fd5bb44 in memory
fld f13, 0(x2) # load 0xe4241a804fd5bb44 from memory into f13
la x2, scratch
li x3, 0xc311adb431e52b0b # load x3 with value 0xc311adb431e52b0b
sd x3, 0(x2) # store 0xc311adb431e52b0b in memory
fld f1, 0(x2) # load 0xc311adb431e52b0b from memory into f1
fmadd.s f11, f21, f13, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f27)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f27, 0(x2) # load 0xfffffeff7fbfffff from memory into f27
la x2, scratch
li x3, 0xa8ba8ce43f0a076d # load x3 with value 0xa8ba8ce43f0a076d
sd x3, 0(x2) # store 0xa8ba8ce43f0a076d in memory
fld f22, 0(x2) # load 0xa8ba8ce43f0a076d from memory into f22
la x2, scratch
li x3, 0x5c15cfc45c1b9240 # load x3 with value 0x5c15cfc45c1b9240
sd x3, 0(x2) # store 0x5c15cfc45c1b9240 in memory
fld f14, 0(x2) # load 0x5c15cfc45c1b9240 from memory into f14
fmadd.s f29, f27, f22, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0xb3a93de7aacdb5d5 # load x3 with value 0xb3a93de7aacdb5d5
sd x3, 0(x2) # store 0xb3a93de7aacdb5d5 in memory
fld f8, 0(x2) # load 0xb3a93de7aacdb5d5 from memory into f8
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f19, 0(x2) # load 0xffffefff00000000 from memory into f19
la x2, scratch
li x3, 0xa333846eab655c69 # load x3 with value 0xa333846eab655c69
sd x3, 0(x2) # store 0xa333846eab655c69 in memory
fld f20, 0(x2) # load 0xa333846eab655c69 from memory into f20
fmadd.s f18, f8, f19, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0xd2d3edce5eb70b7d # load x3 with value 0xd2d3edce5eb70b7d
sd x3, 0(x2) # store 0xd2d3edce5eb70b7d in memory
fld f11, 0(x2) # load 0xd2d3edce5eb70b7d from memory into f11
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f18, 0(x2) # load 0xaaaaaaaa80000000 from memory into f18
la x2, scratch
li x3, 0x0931fc145baf6960 # load x3 with value 0x0931fc145baf6960
sd x3, 0(x2) # store 0x0931fc145baf6960 in memory
fld f13, 0(x2) # load 0x0931fc145baf6960 from memory into f13
fmadd.s f2, f11, f18, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x918a567280793dc0 # load x3 with value 0x918a567280793dc0
sd x3, 0(x2) # store 0x918a567280793dc0 in memory
fld f18, 0(x2) # load 0x918a567280793dc0 from memory into f18
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f3, 0(x2) # load 0x000000003f800000 from memory into f3
la x2, scratch
li x3, 0x4267b46c70d195f3 # load x3 with value 0x4267b46c70d195f3
sd x3, 0(x2) # store 0x4267b46c70d195f3 in memory
fld f21, 0(x2) # load 0x4267b46c70d195f3 from memory into f21
fmadd.s f7, f18, f3, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x4afa1618195ae9ef # load x3 with value 0x4afa1618195ae9ef
sd x3, 0(x2) # store 0x4afa1618195ae9ef in memory
fld f28, 0(x2) # load 0x4afa1618195ae9ef from memory into f28
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f19, 0(x2) # load 0xdeadbeefbf800000 from memory into f19
la x2, scratch
li x3, 0x08910a89acab3f73 # load x3 with value 0x08910a89acab3f73
sd x3, 0(x2) # store 0x08910a89acab3f73 in memory
fld f15, 0(x2) # load 0x08910a89acab3f73 from memory into f15
fmadd.s f9, f28, f19, f15 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0xaec96d0349d4a27f # load x3 with value 0xaec96d0349d4a27f
sd x3, 0(x2) # store 0xaec96d0349d4a27f in memory
fld f20, 0(x2) # load 0xaec96d0349d4a27f from memory into f20
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f1, 0(x2) # load 0xa1b2c3d400800000 from memory into f1
la x2, scratch
li x3, 0xbb0e20da443e0518 # load x3 with value 0xbb0e20da443e0518
sd x3, 0(x2) # store 0xbb0e20da443e0518 in memory
fld f25, 0(x2) # load 0xbb0e20da443e0518 from memory into f25
fmadd.s f6, f20, f1, f25 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x742eace075acdde6 # load x3 with value 0x742eace075acdde6
sd x3, 0(x2) # store 0x742eace075acdde6 in memory
fld f2, 0(x2) # load 0x742eace075acdde6 from memory into f2
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f14, 0(x2) # load 0xffffffef80800000 from memory into f14
la x2, scratch
li x3, 0x3b3a68eee917e4b2 # load x3 with value 0x3b3a68eee917e4b2
sd x3, 0(x2) # store 0x3b3a68eee917e4b2 in memory
fld f13, 0(x2) # load 0x3b3a68eee917e4b2 from memory into f13
fmadd.s f19, f2, f14, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x9c912d90f4b4f86a # load x3 with value 0x9c912d90f4b4f86a
sd x3, 0(x2) # store 0x9c912d90f4b4f86a in memory
fld f23, 0(x2) # load 0x9c912d90f4b4f86a from memory into f23
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f20, 0(x2) # load 0xfeffffef7f7fffff from memory into f20
la x2, scratch
li x3, 0x26098844f514854b # load x3 with value 0x26098844f514854b
sd x3, 0(x2) # store 0x26098844f514854b in memory
fld f31, 0(x2) # load 0x26098844f514854b from memory into f31
fmadd.s f13, f23, f20, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x2ef5d59677630e57 # load x3 with value 0x2ef5d59677630e57
sd x3, 0(x2) # store 0x2ef5d59677630e57 in memory
fld f29, 0(x2) # load 0x2ef5d59677630e57 from memory into f29
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f27, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f27
la x2, scratch
li x3, 0x209d8c41d5b738e5 # load x3 with value 0x209d8c41d5b738e5
sd x3, 0(x2) # store 0x209d8c41d5b738e5 in memory
fld f8, 0(x2) # load 0x209d8c41d5b738e5 from memory into f8
fmadd.s f9, f29, f27, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x4781e3cf4cda7b24 # load x3 with value 0x4781e3cf4cda7b24
sd x3, 0(x2) # store 0x4781e3cf4cda7b24 in memory
fld f1, 0(x2) # load 0x4781e3cf4cda7b24 from memory into f1
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f23, 0(x2) # load 0x7fffffff7f800000 from memory into f23
la x2, scratch
li x3, 0xc74a1d15303434f7 # load x3 with value 0xc74a1d15303434f7
sd x3, 0(x2) # store 0xc74a1d15303434f7 in memory
fld f26, 0(x2) # load 0xc74a1d15303434f7 from memory into f26
fmadd.s f11, f1, f23, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0xf925ccd3a69be48c # load x3 with value 0xf925ccd3a69be48c
sd x3, 0(x2) # store 0xf925ccd3a69be48c in memory
fld f15, 0(x2) # load 0xf925ccd3a69be48c from memory into f15
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f19, 0(x2) # load 0xfffffffeff800000 from memory into f19
la x2, scratch
li x3, 0xe0727d2d2ba5523b # load x3 with value 0xe0727d2d2ba5523b
sd x3, 0(x2) # store 0xe0727d2d2ba5523b in memory
fld f21, 0(x2) # load 0xe0727d2d2ba5523b from memory into f21
fmadd.s f26, f15, f19, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x75118e2cb153fd16 # load x3 with value 0x75118e2cb153fd16
sd x3, 0(x2) # store 0x75118e2cb153fd16 in memory
fld f7, 0(x2) # load 0x75118e2cb153fd16 from memory into f7
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f30, 0(x2) # load 0xfeedbee57fc00000 from memory into f30
la x2, scratch
li x3, 0x089073d880e27630 # load x3 with value 0x089073d880e27630
sd x3, 0(x2) # store 0x089073d880e27630 in memory
fld f2, 0(x2) # load 0x089073d880e27630 from memory into f2
fmadd.s f23, f7, f30, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x82919ba102369281 # load x3 with value 0x82919ba102369281
sd x3, 0(x2) # store 0x82919ba102369281 in memory
fld f28, 0(x2) # load 0x82919ba102369281 from memory into f28
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f12, 0(x2) # load 0xffc0deff7fffffff from memory into f12
la x2, scratch
li x3, 0x3e85f6fcdf961dec # load x3 with value 0x3e85f6fcdf961dec
sd x3, 0(x2) # store 0x3e85f6fcdf961dec in memory
fld f30, 0(x2) # load 0x3e85f6fcdf961dec from memory into f30
fmadd.s f1, f28, f12, f30 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x0195ff2fb2a37cea # load x3 with value 0x0195ff2fb2a37cea
sd x3, 0(x2) # store 0x0195ff2fb2a37cea in memory
fld f10, 0(x2) # load 0x0195ff2fb2a37cea from memory into f10
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f9, 0(x2) # load 0xfeffffff7f800001 from memory into f9
la x2, scratch
li x3, 0x7607ca865d8418b2 # load x3 with value 0x7607ca865d8418b2
sd x3, 0(x2) # store 0x7607ca865d8418b2 in memory
fld f14, 0(x2) # load 0x7607ca865d8418b2 from memory into f14
fmadd.s f15, f10, f9, f14 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x180db046914ca7fd # load x3 with value 0x180db046914ca7fd
sd x3, 0(x2) # store 0x180db046914ca7fd in memory
fld f7, 0(x2) # load 0x180db046914ca7fd from memory into f7
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f10, 0(x2) # load 0xfffffeff7fbfffff from memory into f10
la x2, scratch
li x3, 0x335016305cceb53f # load x3 with value 0x335016305cceb53f
sd x3, 0(x2) # store 0x335016305cceb53f in memory
fld f1, 0(x2) # load 0x335016305cceb53f from memory into f1
fmadd.s f15, f7, f10, f1 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x599fc9ae66605ef1 # load x3 with value 0x599fc9ae66605ef1
sd x3, 0(x2) # store 0x599fc9ae66605ef1 in memory
fld f26, 0(x2) # load 0x599fc9ae66605ef1 from memory into f26
la x2, scratch
li x3, 0xbb865edd7c2bc3fb # load x3 with value 0xbb865edd7c2bc3fb
sd x3, 0(x2) # store 0xbb865edd7c2bc3fb in memory
fld f25, 0(x2) # load 0xbb865edd7c2bc3fb from memory into f25
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f14, 0(x2) # load 0xffffefff00000000 from memory into f14
fmadd.s f28, f26, f25, f14 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0xd01a7bf46a956658 # load x3 with value 0xd01a7bf46a956658
sd x3, 0(x2) # store 0xd01a7bf46a956658 in memory
fld f10, 0(x2) # load 0xd01a7bf46a956658 from memory into f10
la x2, scratch
li x3, 0x2de9af239d2e5109 # load x3 with value 0x2de9af239d2e5109
sd x3, 0(x2) # store 0x2de9af239d2e5109 in memory
fld f6, 0(x2) # load 0x2de9af239d2e5109 from memory into f6
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f28, 0(x2) # load 0xaaaaaaaa80000000 from memory into f28
fmadd.s f20, f10, f6, f28 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x3f800000)
la x2, scratch
li x3, 0x68f0ce24c9f73693 # load x3 with value 0x68f0ce24c9f73693
sd x3, 0(x2) # store 0x68f0ce24c9f73693 in memory
fld f7, 0(x2) # load 0x68f0ce24c9f73693 from memory into f7
la x2, scratch
li x3, 0x23b31d4f28df93cc # load x3 with value 0x23b31d4f28df93cc
sd x3, 0(x2) # store 0x23b31d4f28df93cc in memory
fld f1, 0(x2) # load 0x23b31d4f28df93cc from memory into f1
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f6, 0(x2) # load 0x000000003f800000 from memory into f6
fmadd.s f11, f7, f1, f6 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0xe220980c548001c3 # load x3 with value 0xe220980c548001c3
sd x3, 0(x2) # store 0xe220980c548001c3 in memory
fld f25, 0(x2) # load 0xe220980c548001c3 from memory into f25
la x2, scratch
li x3, 0xd04d2b9546f85be6 # load x3 with value 0xd04d2b9546f85be6
sd x3, 0(x2) # store 0xd04d2b9546f85be6 in memory
fld f26, 0(x2) # load 0xd04d2b9546f85be6 from memory into f26
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f19, 0(x2) # load 0xdeadbeefbf800000 from memory into f19
fmadd.s f5, f25, f26, f19 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x6efe932a2477d4ec # load x3 with value 0x6efe932a2477d4ec
sd x3, 0(x2) # store 0x6efe932a2477d4ec in memory
fld f11, 0(x2) # load 0x6efe932a2477d4ec from memory into f11
la x2, scratch
li x3, 0x092bb72af64599bd # load x3 with value 0x092bb72af64599bd
sd x3, 0(x2) # store 0x092bb72af64599bd in memory
fld f13, 0(x2) # load 0x092bb72af64599bd from memory into f13
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f9, 0(x2) # load 0xa1b2c3d400800000 from memory into f9
fmadd.s f26, f11, f13, f9 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x3734a85fcc3c5f6b # load x3 with value 0x3734a85fcc3c5f6b
sd x3, 0(x2) # store 0x3734a85fcc3c5f6b in memory
fld f24, 0(x2) # load 0x3734a85fcc3c5f6b from memory into f24
la x2, scratch
li x3, 0x68f362978b84bcd5 # load x3 with value 0x68f362978b84bcd5
sd x3, 0(x2) # store 0x68f362978b84bcd5 in memory
fld f28, 0(x2) # load 0x68f362978b84bcd5 from memory into f28
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f5, 0(x2) # load 0xffffffef80800000 from memory into f5
fmadd.s f27, f24, f28, f5 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0x03f0edb7a10e1cfc # load x3 with value 0x03f0edb7a10e1cfc
sd x3, 0(x2) # store 0x03f0edb7a10e1cfc in memory
fld f9, 0(x2) # load 0x03f0edb7a10e1cfc from memory into f9
la x2, scratch
li x3, 0x93021dde9711c298 # load x3 with value 0x93021dde9711c298
sd x3, 0(x2) # store 0x93021dde9711c298 in memory
fld f15, 0(x2) # load 0x93021dde9711c298 from memory into f15
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f14, 0(x2) # load 0xfeffffef7f7fffff from memory into f14
fmadd.s f1, f9, f15, f14 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x8824986ff03a9291 # load x3 with value 0x8824986ff03a9291
sd x3, 0(x2) # store 0x8824986ff03a9291 in memory
fld f1, 0(x2) # load 0x8824986ff03a9291 from memory into f1
la x2, scratch
li x3, 0x4310c217192838aa # load x3 with value 0x4310c217192838aa
sd x3, 0(x2) # store 0x4310c217192838aa in memory
fld f6, 0(x2) # load 0x4310c217192838aa from memory into f6
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f22, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f22
fmadd.s f5, f1, f6, f22 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x1c75628593aa78bc # load x3 with value 0x1c75628593aa78bc
sd x3, 0(x2) # store 0x1c75628593aa78bc in memory
fld f5, 0(x2) # load 0x1c75628593aa78bc from memory into f5
la x2, scratch
li x3, 0xc90c82584270d6df # load x3 with value 0xc90c82584270d6df
sd x3, 0(x2) # store 0xc90c82584270d6df in memory
fld f14, 0(x2) # load 0xc90c82584270d6df from memory into f14
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f6, 0(x2) # load 0x7fffffff7f800000 from memory into f6
fmadd.s f11, f5, f14, f6 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x331b2a65476af4aa # load x3 with value 0x331b2a65476af4aa
sd x3, 0(x2) # store 0x331b2a65476af4aa in memory
fld f8, 0(x2) # load 0x331b2a65476af4aa from memory into f8
la x2, scratch
li x3, 0x75e03bf6bc1f5641 # load x3 with value 0x75e03bf6bc1f5641
sd x3, 0(x2) # store 0x75e03bf6bc1f5641 in memory
fld f12, 0(x2) # load 0x75e03bf6bc1f5641 from memory into f12
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f18, 0(x2) # load 0xfffffffeff800000 from memory into f18
fmadd.s f20, f8, f12, f18 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0x47177bcee5ea9f6f # load x3 with value 0x47177bcee5ea9f6f
sd x3, 0(x2) # store 0x47177bcee5ea9f6f in memory
fld f16, 0(x2) # load 0x47177bcee5ea9f6f from memory into f16
la x2, scratch
li x3, 0x963a4c4cf7e92352 # load x3 with value 0x963a4c4cf7e92352
sd x3, 0(x2) # store 0x963a4c4cf7e92352 in memory
fld f12, 0(x2) # load 0x963a4c4cf7e92352 from memory into f12
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f29, 0(x2) # load 0xfeedbee57fc00000 from memory into f29
fmadd.s f22, f16, f12, f29 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0xacaeb06c541cf3c5 # load x3 with value 0xacaeb06c541cf3c5
sd x3, 0(x2) # store 0xacaeb06c541cf3c5 in memory
fld f6, 0(x2) # load 0xacaeb06c541cf3c5 from memory into f6
la x2, scratch
li x3, 0x858c5bc7d4097d5c # load x3 with value 0x858c5bc7d4097d5c
sd x3, 0(x2) # store 0x858c5bc7d4097d5c in memory
fld f1, 0(x2) # load 0x858c5bc7d4097d5c from memory into f1
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f31, 0(x2) # load 0xffc0deff7fffffff from memory into f31
fmadd.s f2, f6, f1, f31 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x9bc34f04d2fd6866 # load x3 with value 0x9bc34f04d2fd6866
sd x3, 0(x2) # store 0x9bc34f04d2fd6866 in memory
fld f29, 0(x2) # load 0x9bc34f04d2fd6866 from memory into f29
la x2, scratch
li x3, 0x9f4cefcbc2839afb # load x3 with value 0x9f4cefcbc2839afb
sd x3, 0(x2) # store 0x9f4cefcbc2839afb in memory
fld f9, 0(x2) # load 0x9f4cefcbc2839afb from memory into f9
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f22, 0(x2) # load 0xfeffffff7f800001 from memory into f22
fmadd.s f23, f29, f9, f22 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0xa6290388262401ff # load x3 with value 0xa6290388262401ff
sd x3, 0(x2) # store 0xa6290388262401ff in memory
fld f30, 0(x2) # load 0xa6290388262401ff from memory into f30
la x2, scratch
li x3, 0x43ae479d75d07c25 # load x3 with value 0x43ae479d75d07c25
sd x3, 0(x2) # store 0x43ae479d75d07c25 in memory
fld f15, 0(x2) # load 0x43ae479d75d07c25 from memory into f15
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f10, 0(x2) # load 0xfffffeff7fbfffff from memory into f10
fmadd.s f25, f30, f15, f10 # perform operation

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
