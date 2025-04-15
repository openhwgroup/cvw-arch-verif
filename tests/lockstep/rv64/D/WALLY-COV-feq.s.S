///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-feq.s.S
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


# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f30)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f30, 0(x2) # load 0xffffefff00000000 from memory into f30
la x2, scratch
li x3, 0xca2010d9dd5f9d2b # load x3 with value 0xca2010d9dd5f9d2b
sd x3, 0(x2) # store 0xca2010d9dd5f9d2b in memory
fld f6, 0(x2) # load 0xca2010d9dd5f9d2b from memory into f6
feq.s x1, f30, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 0)

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f17, 0(x2) # load 0xaaaaaaaa80000000 from memory into f17
la x2, scratch
li x3, 0x33fb49b73dba3fb5 # load x3 with value 0x33fb49b73dba3fb5
sd x3, 0(x2) # store 0x33fb49b73dba3fb5 in memory
fld f14, 0(x2) # load 0x33fb49b73dba3fb5 from memory into f14
feq.s x9, f17, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 8)

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f13, 0(x2) # load 0x000000003f800000 from memory into f13
la x2, scratch
li x3, 0x0d15e0f2ea93d686 # load x3 with value 0x0d15e0f2ea93d686
sd x3, 0(x2) # store 0x0d15e0f2ea93d686 in memory
fld f17, 0(x2) # load 0x0d15e0f2ea93d686 from memory into f17
feq.s x28, f13, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x28, 16)

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f29, 0(x2) # load 0xdeadbeefbf800000 from memory into f29
la x2, scratch
li x3, 0xce53a02031e4a83b # load x3 with value 0xce53a02031e4a83b
sd x3, 0(x2) # store 0xce53a02031e4a83b in memory
fld f18, 0(x2) # load 0xce53a02031e4a83b from memory into f18
feq.s x11, f29, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 24)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f18, 0(x2) # load 0xa1b2c3d400800000 from memory into f18
la x2, scratch
li x3, 0xefb2089b2501a8e7 # load x3 with value 0xefb2089b2501a8e7
sd x3, 0(x2) # store 0xefb2089b2501a8e7 in memory
fld f21, 0(x2) # load 0xefb2089b2501a8e7 from memory into f21
feq.s x12, f18, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x12, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f12, 0(x2) # load 0xffffffef80800000 from memory into f12
la x2, scratch
li x3, 0x2a904ff7371c6ef5 # load x3 with value 0x2a904ff7371c6ef5
sd x3, 0(x2) # store 0x2a904ff7371c6ef5 in memory
fld f28, 0(x2) # load 0x2a904ff7371c6ef5 from memory into f28
feq.s x14, f12, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 40)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f5)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f5, 0(x2) # load 0xfeffffef7f7fffff from memory into f5
la x2, scratch
li x3, 0x226495d7d0267047 # load x3 with value 0x226495d7d0267047
sd x3, 0(x2) # store 0x226495d7d0267047 in memory
fld f30, 0(x2) # load 0x226495d7d0267047 from memory into f30
feq.s x13, f5, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x13, 48)

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f9, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f9
la x2, scratch
li x3, 0x29f46efe890741a2 # load x3 with value 0x29f46efe890741a2
sd x3, 0(x2) # store 0x29f46efe890741a2 in memory
fld f6, 0(x2) # load 0x29f46efe890741a2 from memory into f6
feq.s x2, f9, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 56)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f9)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f9, 0(x2) # load 0x7fffffff7f800000 from memory into f9
la x2, scratch
li x3, 0x8949c89561588565 # load x3 with value 0x8949c89561588565
sd x3, 0(x2) # store 0x8949c89561588565 in memory
fld f23, 0(x2) # load 0x8949c89561588565 from memory into f23
feq.s x16, f9, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 64)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f26, 0(x2) # load 0xfffffffeff800000 from memory into f26
la x2, scratch
li x3, 0x530a9236da4343da # load x3 with value 0x530a9236da4343da
sd x3, 0(x2) # store 0x530a9236da4343da in memory
fld f16, 0(x2) # load 0x530a9236da4343da from memory into f16
feq.s x9, f26, f16 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 72)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f22, 0(x2) # load 0xfeedbee57fc00000 from memory into f22
la x2, scratch
li x3, 0x4987ae8075333529 # load x3 with value 0x4987ae8075333529
sd x3, 0(x2) # store 0x4987ae8075333529 in memory
fld f8, 0(x2) # load 0x4987ae8075333529 from memory into f8
feq.s x1, f22, f8 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 80)

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f31, 0(x2) # load 0xffc0deff7fffffff from memory into f31
la x2, scratch
li x3, 0x893ed0b9841e1c07 # load x3 with value 0x893ed0b9841e1c07
sd x3, 0(x2) # store 0x893ed0b9841e1c07 in memory
fld f9, 0(x2) # load 0x893ed0b9841e1c07 from memory into f9
feq.s x11, f31, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 88)

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f15)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f15, 0(x2) # load 0xfeffffff7f800001 from memory into f15
la x2, scratch
li x3, 0x3984dbee8e4eaf72 # load x3 with value 0x3984dbee8e4eaf72
sd x3, 0(x2) # store 0x3984dbee8e4eaf72 in memory
fld f19, 0(x2) # load 0x3984dbee8e4eaf72 from memory into f19
feq.s x11, f15, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x11, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f18, 0(x2) # load 0xfffffeff7fbfffff from memory into f18
la x2, scratch
li x3, 0x25bae0cf5bcf81c2 # load x3 with value 0x25bae0cf5bcf81c2
sd x3, 0(x2) # store 0x25bae0cf5bcf81c2 in memory
fld f6, 0(x2) # load 0x25bae0cf5bcf81c2 from memory into f6
feq.s x10, f18, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x10, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x26a6554557eb3f5a # load x3 with value 0x26a6554557eb3f5a
sd x3, 0(x2) # store 0x26a6554557eb3f5a in memory
fld f10, 0(x2) # load 0x26a6554557eb3f5a from memory into f10
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f6, 0(x2) # load 0xffffefff00000000 from memory into f6
feq.s x17, f10, f6 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 112)

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x35c7cd0605503c5d # load x3 with value 0x35c7cd0605503c5d
sd x3, 0(x2) # store 0x35c7cd0605503c5d in memory
fld f25, 0(x2) # load 0x35c7cd0605503c5d from memory into f25
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f11, 0(x2) # load 0xaaaaaaaa80000000 from memory into f11
feq.s x17, f25, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 120)

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x5422d635f1d3bf99 # load x3 with value 0x5422d635f1d3bf99
sd x3, 0(x2) # store 0x5422d635f1d3bf99 in memory
fld f5, 0(x2) # load 0x5422d635f1d3bf99 from memory into f5
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f12, 0(x2) # load 0x000000003f800000 from memory into f12
feq.s x1, f5, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 128)

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x59e4925f8367e957 # load x3 with value 0x59e4925f8367e957
sd x3, 0(x2) # store 0x59e4925f8367e957 in memory
fld f23, 0(x2) # load 0x59e4925f8367e957 from memory into f23
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f28, 0(x2) # load 0xdeadbeefbf800000 from memory into f28
feq.s x30, f23, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 136)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0x99173e2f82d98efb # load x3 with value 0x99173e2f82d98efb
sd x3, 0(x2) # store 0x99173e2f82d98efb in memory
fld f6, 0(x2) # load 0x99173e2f82d98efb from memory into f6
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f23, 0(x2) # load 0xa1b2c3d400800000 from memory into f23
feq.s x8, f6, f23 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 144)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0x2b58515f7ae09b00 # load x3 with value 0x2b58515f7ae09b00
sd x3, 0(x2) # store 0x2b58515f7ae09b00 in memory
fld f31, 0(x2) # load 0x2b58515f7ae09b00 from memory into f31
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f12, 0(x2) # load 0xffffffef80800000 from memory into f12
feq.s x15, f31, f12 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 152)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xb6f228e7b5b087d9 # load x3 with value 0xb6f228e7b5b087d9
sd x3, 0(x2) # store 0xb6f228e7b5b087d9 in memory
fld f11, 0(x2) # load 0xb6f228e7b5b087d9 from memory into f11
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f25, 0(x2) # load 0xfeffffef7f7fffff from memory into f25
feq.s x18, f11, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x18, 160)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x19f578d2b414e9d2 # load x3 with value 0x19f578d2b414e9d2
sd x3, 0(x2) # store 0x19f578d2b414e9d2 in memory
fld f24, 0(x2) # load 0x19f578d2b414e9d2 from memory into f24
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f11, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f11
feq.s x8, f24, f11 # perform operation
RVTEST_SIGUPD(x4, x0, x8, 168)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0x397be15dd2557048 # load x3 with value 0x397be15dd2557048
sd x3, 0(x2) # store 0x397be15dd2557048 in memory
fld f31, 0(x2) # load 0x397be15dd2557048 from memory into f31
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f30, 0(x2) # load 0x7fffffff7f800000 from memory into f30
feq.s x9, f31, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x9, 176)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0x3f555b876ccd1757 # load x3 with value 0x3f555b876ccd1757
sd x3, 0(x2) # store 0x3f555b876ccd1757 in memory
fld f23, 0(x2) # load 0x3f555b876ccd1757 from memory into f23
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f30, 0(x2) # load 0xfffffffeff800000 from memory into f30
feq.s x25, f23, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x25, 184)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0xe08ad9ce3c8b2b5c # load x3 with value 0xe08ad9ce3c8b2b5c
sd x3, 0(x2) # store 0xe08ad9ce3c8b2b5c in memory
fld f17, 0(x2) # load 0xe08ad9ce3c8b2b5c from memory into f17
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f30, 0(x2) # load 0xfeedbee57fc00000 from memory into f30
feq.s x20, f17, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 192)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0xc0a6b2ed9ba96f03 # load x3 with value 0xc0a6b2ed9ba96f03
sd x3, 0(x2) # store 0xc0a6b2ed9ba96f03 in memory
fld f1, 0(x2) # load 0xc0a6b2ed9ba96f03 from memory into f1
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f28, 0(x2) # load 0xffc0deff7fffffff from memory into f28
feq.s x26, f1, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x26, 200)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0xea2345ee2637c2ea # load x3 with value 0xea2345ee2637c2ea
sd x3, 0(x2) # store 0xea2345ee2637c2ea in memory
fld f20, 0(x2) # load 0xea2345ee2637c2ea from memory into f20
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f31, 0(x2) # load 0xfeffffff7f800001 from memory into f31
feq.s x7, f20, f31 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 208)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x0cc8cdcecac625f4 # load x3 with value 0x0cc8cdcecac625f4
sd x3, 0(x2) # store 0x0cc8cdcecac625f4 in memory
fld f10, 0(x2) # load 0x0cc8cdcecac625f4 from memory into f10
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f28, 0(x2) # load 0xfffffeff7fbfffff from memory into f28
feq.s x6, f10, f28 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 216)

.EQU SIGSIZE,224


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
