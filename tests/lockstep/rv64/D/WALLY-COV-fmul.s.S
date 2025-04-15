///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/D/WALLY-COV-fmul.s.S
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
li x3, 0x7f089301eab713d8 # load x3 with value 0x7f089301eab713d8
sd x3, 0(x2) # store 0x7f089301eab713d8 in memory
flw f22, 0(x2) # load 0x7f089301eab713d8 from memory into f22
la x2, scratch
li x3, 0x3027cdf52da343b8 # load x3 with value 0x3027cdf52da343b8
sd x3, 0(x2) # store 0x3027cdf52da343b8 in memory
flw f31, 0(x2) # load 0x3027cdf52da343b8 from memory into f31
fmul.s f29, f22, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffefff00000000 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f18, 0(x2) # load 0xffffefff00000000 from memory into f18
la x2, scratch
li x3, 0x12b2772d16f5cf8e # load x3 with value 0x12b2772d16f5cf8e
sd x3, 0(x2) # store 0x12b2772d16f5cf8e in memory
fld f2, 0(x2) # load 0x12b2772d16f5cf8e from memory into f2
fmul.s f11, f18, f2 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xaaaaaaaa80000000 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f10, 0(x2) # load 0xaaaaaaaa80000000 from memory into f10
la x2, scratch
li x3, 0x3e80345108eb34dc # load x3 with value 0x3e80345108eb34dc
sd x3, 0(x2) # store 0x3e80345108eb34dc in memory
fld f11, 0(x2) # load 0x3e80345108eb34dc from memory into f11
fmul.s f15, f10, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x3f800000 in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f8, 0(x2) # load 0x000000003f800000 from memory into f8
la x2, scratch
li x3, 0x2445aad56bf1e741 # load x3 with value 0x2445aad56bf1e741
sd x3, 0(x2) # store 0x2445aad56bf1e741 in memory
fld f10, 0(x2) # load 0x2445aad56bf1e741 from memory into f10
fmul.s f9, f8, f10 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xdeadbeefbf800000 in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f19, 0(x2) # load 0xdeadbeefbf800000 from memory into f19
la x2, scratch
li x3, 0x3f301fe31e1689ce # load x3 with value 0x3f301fe31e1689ce
sd x3, 0(x2) # store 0x3f301fe31e1689ce in memory
fld f31, 0(x2) # load 0x3f301fe31e1689ce from memory into f31
fmul.s f24, f19, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d400800000 in f11)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f11, 0(x2) # load 0xa1b2c3d400800000 from memory into f11
la x2, scratch
li x3, 0xeec7ab46599589a1 # load x3 with value 0xeec7ab46599589a1
sd x3, 0(x2) # store 0xeec7ab46599589a1 in memory
fld f26, 0(x2) # load 0xeec7ab46599589a1 from memory into f26
fmul.s f28, f11, f26 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffef80800000 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f28, 0(x2) # load 0xffffffef80800000 from memory into f28
la x2, scratch
li x3, 0x883bb8e528b3ab69 # load x3 with value 0x883bb8e528b3ab69
sd x3, 0(x2) # store 0x883bb8e528b3ab69 in memory
fld f20, 0(x2) # load 0x883bb8e528b3ab69 from memory into f20
fmul.s f19, f28, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffef7f7fffff in f21)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f21, 0(x2) # load 0xfeffffef7f7fffff from memory into f21
la x2, scratch
li x3, 0xbfcba98d7209a36e # load x3 with value 0xbfcba98d7209a36e
sd x3, 0(x2) # store 0xbfcba98d7209a36e in memory
fld f1, 0(x2) # load 0xbfcba98d7209a36e from memory into f1
fmul.s f8, f21, f1 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7e7e7e7eff7fffff in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f29, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f29
la x2, scratch
li x3, 0x406850bfb15ad405 # load x3 with value 0x406850bfb15ad405
sd x3, 0(x2) # store 0x406850bfb15ad405 in memory
fld f27, 0(x2) # load 0x406850bfb15ad405 from memory into f27
fmul.s f5, f29, f27 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffff7f800000 in f31)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f31, 0(x2) # load 0x7fffffff7f800000 from memory into f31
la x2, scratch
li x3, 0xc47dfb4a663a4051 # load x3 with value 0xc47dfb4a663a4051
sd x3, 0(x2) # store 0xc47dfb4a663a4051 in memory
fld f11, 0(x2) # load 0xc47dfb4a663a4051 from memory into f11
fmul.s f26, f31, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffeff800000 in f17)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f17, 0(x2) # load 0xfffffffeff800000 from memory into f17
la x2, scratch
li x3, 0x47e4b559c4d7aea7 # load x3 with value 0x47e4b559c4d7aea7
sd x3, 0(x2) # store 0x47e4b559c4d7aea7 in memory
fld f6, 0(x2) # load 0x47e4b559c4d7aea7 from memory into f6
fmul.s f19, f17, f6 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee57fc00000 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f6, 0(x2) # load 0xfeedbee57fc00000 from memory into f6
la x2, scratch
li x3, 0x828b9361dfd14b74 # load x3 with value 0x828b9361dfd14b74
sd x3, 0(x2) # store 0x828b9361dfd14b74 in memory
fld f29, 0(x2) # load 0x828b9361dfd14b74 from memory into f29
fmul.s f10, f6, f29 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffc0deff7fffffff in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f1, 0(x2) # load 0xffc0deff7fffffff from memory into f1
la x2, scratch
li x3, 0xd4fd68ec85cf9cb4 # load x3 with value 0xd4fd68ec85cf9cb4
sd x3, 0(x2) # store 0xd4fd68ec85cf9cb4 in memory
fld f8, 0(x2) # load 0xd4fd68ec85cf9cb4 from memory into f8
fmul.s f5, f1, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeffffff7f800001 in f6)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f6, 0(x2) # load 0xfeffffff7f800001 from memory into f6
la x2, scratch
li x3, 0xa3dce3c18ccf3e0f # load x3 with value 0xa3dce3c18ccf3e0f
sd x3, 0(x2) # store 0xa3dce3c18ccf3e0f in memory
fld f11, 0(x2) # load 0xa3dce3c18ccf3e0f from memory into f11
fmul.s f27, f6, f11 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffeff7fbfffff in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f26, 0(x2) # load 0xfffffeff7fbfffff from memory into f26
la x2, scratch
li x3, 0x40a5ffe1569f53b2 # load x3 with value 0x40a5ffe1569f53b2
sd x3, 0(x2) # store 0x40a5ffe1569f53b2 in memory
fld f31, 0(x2) # load 0x40a5ffe1569f53b2 from memory into f31
fmul.s f1, f26, f31 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffefff00000000)
la x2, scratch
li x3, 0x6820a4fe4c4b9549 # load x3 with value 0x6820a4fe4c4b9549
sd x3, 0(x2) # store 0x6820a4fe4c4b9549 in memory
fld f20, 0(x2) # load 0x6820a4fe4c4b9549 from memory into f20
la x2, scratch
li x3, 0xffffefff00000000 # load x3 with value 0xffffefff00000000
sd x3, 0(x2) # store 0xffffefff00000000 in memory
fld f9, 0(x2) # load 0xffffefff00000000 from memory into f9
fmul.s f30, f20, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xaaaaaaaa80000000)
la x2, scratch
li x3, 0x325a8d8fd3edd238 # load x3 with value 0x325a8d8fd3edd238
sd x3, 0(x2) # store 0x325a8d8fd3edd238 in memory
fld f27, 0(x2) # load 0x325a8d8fd3edd238 from memory into f27
la x2, scratch
li x3, 0xaaaaaaaa80000000 # load x3 with value 0xaaaaaaaa80000000
sd x3, 0(x2) # store 0xaaaaaaaa80000000 in memory
fld f5, 0(x2) # load 0xaaaaaaaa80000000 from memory into f5
fmul.s f16, f27, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x3f800000)
la x2, scratch
li x3, 0x4d443f835fd376e8 # load x3 with value 0x4d443f835fd376e8
sd x3, 0(x2) # store 0x4d443f835fd376e8 in memory
fld f8, 0(x2) # load 0x4d443f835fd376e8 from memory into f8
la x2, scratch
li x3, 0x000000003f800000 # load x3 with value 0x000000003f800000
sd x3, 0(x2) # store 0x000000003f800000 in memory
fld f23, 0(x2) # load 0x000000003f800000 from memory into f23
fmul.s f14, f8, f23 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xdeadbeefbf800000)
la x2, scratch
li x3, 0x3286c70398a099c5 # load x3 with value 0x3286c70398a099c5
sd x3, 0(x2) # store 0x3286c70398a099c5 in memory
fld f1, 0(x2) # load 0x3286c70398a099c5 from memory into f1
la x2, scratch
li x3, 0xdeadbeefbf800000 # load x3 with value 0xdeadbeefbf800000
sd x3, 0(x2) # store 0xdeadbeefbf800000 in memory
fld f7, 0(x2) # load 0xdeadbeefbf800000 from memory into f7
fmul.s f11, f1, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d400800000)
la x2, scratch
li x3, 0xf77e8696cfe607c5 # load x3 with value 0xf77e8696cfe607c5
sd x3, 0(x2) # store 0xf77e8696cfe607c5 in memory
fld f29, 0(x2) # load 0xf77e8696cfe607c5 from memory into f29
la x2, scratch
li x3, 0xa1b2c3d400800000 # load x3 with value 0xa1b2c3d400800000
sd x3, 0(x2) # store 0xa1b2c3d400800000 in memory
fld f3, 0(x2) # load 0xa1b2c3d400800000 from memory into f3
fmul.s f18, f29, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffef80800000)
la x2, scratch
li x3, 0xe9313aacb7975e94 # load x3 with value 0xe9313aacb7975e94
sd x3, 0(x2) # store 0xe9313aacb7975e94 in memory
fld f29, 0(x2) # load 0xe9313aacb7975e94 from memory into f29
la x2, scratch
li x3, 0xffffffef80800000 # load x3 with value 0xffffffef80800000
sd x3, 0(x2) # store 0xffffffef80800000 in memory
fld f27, 0(x2) # load 0xffffffef80800000 from memory into f27
fmul.s f14, f29, f27 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffef7f7fffff)
la x2, scratch
li x3, 0xab31a44a1ec235de # load x3 with value 0xab31a44a1ec235de
sd x3, 0(x2) # store 0xab31a44a1ec235de in memory
fld f30, 0(x2) # load 0xab31a44a1ec235de from memory into f30
la x2, scratch
li x3, 0xfeffffef7f7fffff # load x3 with value 0xfeffffef7f7fffff
sd x3, 0(x2) # store 0xfeffffef7f7fffff in memory
fld f26, 0(x2) # load 0xfeffffef7f7fffff from memory into f26
fmul.s f18, f30, f26 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7e7e7e7eff7fffff)
la x2, scratch
li x3, 0x66abc35eb973ef9a # load x3 with value 0x66abc35eb973ef9a
sd x3, 0(x2) # store 0x66abc35eb973ef9a in memory
fld f5, 0(x2) # load 0x66abc35eb973ef9a from memory into f5
la x2, scratch
li x3, 0x7e7e7e7eff7fffff # load x3 with value 0x7e7e7e7eff7fffff
sd x3, 0(x2) # store 0x7e7e7e7eff7fffff in memory
fld f16, 0(x2) # load 0x7e7e7e7eff7fffff from memory into f16
fmul.s f26, f5, f16 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffff7f800000)
la x2, scratch
li x3, 0xa552ecc88cd5770f # load x3 with value 0xa552ecc88cd5770f
sd x3, 0(x2) # store 0xa552ecc88cd5770f in memory
fld f10, 0(x2) # load 0xa552ecc88cd5770f from memory into f10
la x2, scratch
li x3, 0x7fffffff7f800000 # load x3 with value 0x7fffffff7f800000
sd x3, 0(x2) # store 0x7fffffff7f800000 in memory
fld f5, 0(x2) # load 0x7fffffff7f800000 from memory into f5
fmul.s f27, f10, f5 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffeff800000)
la x2, scratch
li x3, 0xb0568cee4babf821 # load x3 with value 0xb0568cee4babf821
sd x3, 0(x2) # store 0xb0568cee4babf821 in memory
fld f14, 0(x2) # load 0xb0568cee4babf821 from memory into f14
la x2, scratch
li x3, 0xfffffffeff800000 # load x3 with value 0xfffffffeff800000
sd x3, 0(x2) # store 0xfffffffeff800000 in memory
fld f10, 0(x2) # load 0xfffffffeff800000 from memory into f10
fmul.s f31, f14, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee57fc00000)
la x2, scratch
li x3, 0xf31ae3bdbdf6c098 # load x3 with value 0xf31ae3bdbdf6c098
sd x3, 0(x2) # store 0xf31ae3bdbdf6c098 in memory
fld f12, 0(x2) # load 0xf31ae3bdbdf6c098 from memory into f12
la x2, scratch
li x3, 0xfeedbee57fc00000 # load x3 with value 0xfeedbee57fc00000
sd x3, 0(x2) # store 0xfeedbee57fc00000 in memory
fld f2, 0(x2) # load 0xfeedbee57fc00000 from memory into f2
fmul.s f13, f12, f2 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffc0deff7fffffff)
la x2, scratch
li x3, 0x6247bc4e82facbcf # load x3 with value 0x6247bc4e82facbcf
sd x3, 0(x2) # store 0x6247bc4e82facbcf in memory
fld f19, 0(x2) # load 0x6247bc4e82facbcf from memory into f19
la x2, scratch
li x3, 0xffc0deff7fffffff # load x3 with value 0xffc0deff7fffffff
sd x3, 0(x2) # store 0xffc0deff7fffffff in memory
fld f7, 0(x2) # load 0xffc0deff7fffffff from memory into f7
fmul.s f18, f19, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeffffff7f800001)
la x2, scratch
li x3, 0x39266c5244733b32 # load x3 with value 0x39266c5244733b32
sd x3, 0(x2) # store 0x39266c5244733b32 in memory
fld f2, 0(x2) # load 0x39266c5244733b32 from memory into f2
la x2, scratch
li x3, 0xfeffffff7f800001 # load x3 with value 0xfeffffff7f800001
sd x3, 0(x2) # store 0xfeffffff7f800001 in memory
fld f11, 0(x2) # load 0xfeffffff7f800001 from memory into f11
fmul.s f15, f2, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffeff7fbfffff)
la x2, scratch
li x3, 0x01d712fb47ada036 # load x3 with value 0x01d712fb47ada036
sd x3, 0(x2) # store 0x01d712fb47ada036 in memory
fld f27, 0(x2) # load 0x01d712fb47ada036 from memory into f27
la x2, scratch
li x3, 0xfffffeff7fbfffff # load x3 with value 0xfffffeff7fbfffff
sd x3, 0(x2) # store 0xfffffeff7fbfffff in memory
fld f29, 0(x2) # load 0xfffffeff7fbfffff from memory into f29
fmul.s f3, f27, f29 # perform operation

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
