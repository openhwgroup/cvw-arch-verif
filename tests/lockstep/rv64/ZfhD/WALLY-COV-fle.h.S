///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfhD/WALLY-COV-fle.h.S
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
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f22, 0(x2) # load 0xffffffff00000000 from memory into f22
la x2, scratch
li x3, 0x7d8335168aa19bdc # load x3 with value 0x7d8335168aa19bdc
sd x3, 0(x2) # store 0x7d8335168aa19bdc in memory
fld f13, 0(x2) # load 0x7d8335168aa19bdc from memory into f13
fle.h x17, f22, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 0)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f14)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f14, 0(x2) # load 0xfffffffffffe8000 from memory into f14
la x2, scratch
li x3, 0x62bd1e093e0bc523 # load x3 with value 0x62bd1e093e0bc523
sd x3, 0(x2) # store 0x62bd1e093e0bc523 in memory
fld f26, 0(x2) # load 0x62bd1e093e0bc523 from memory into f26
fle.h x30, f14, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 8)

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f24, 0(x2) # load 0x7fffffffffff3c00 from memory into f24
la x2, scratch
li x3, 0xa8068b6ce36e7699 # load x3 with value 0xa8068b6ce36e7699
sd x3, 0(x2) # store 0xa8068b6ce36e7699 in memory
fld f26, 0(x2) # load 0xa8068b6ce36e7699 from memory into f26
fle.h x2, f24, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 16)

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f12, 0(x2) # load 0xfeedbee5beefbc00 from memory into f12
la x2, scratch
li x3, 0xb2a599f045bbe814 # load x3 with value 0xb2a599f045bbe814
sd x3, 0(x2) # store 0xb2a599f045bbe814 in memory
fld f3, 0(x2) # load 0xb2a599f045bbe814 from memory into f3
fle.h x6, f12, f3 # perform operation
RVTEST_SIGUPD(x4, x0, x6, 24)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f3)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f3, 0(x2) # load 0xffffffefffff0400 from memory into f3
la x2, scratch
li x3, 0xdfdbefd15c2016cc # load x3 with value 0xdfdbefd15c2016cc
sd x3, 0(x2) # store 0xdfdbefd15c2016cc in memory
fld f24, 0(x2) # load 0xdfdbefd15c2016cc from memory into f24
fle.h x2, f3, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 32)

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f24)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f24, 0(x2) # load 0x00000000ffff8400 from memory into f24
la x2, scratch
li x3, 0xbaaaa37ddb5d3a68 # load x3 with value 0xbaaaa37ddb5d3a68
sd x3, 0(x2) # store 0xbaaaa37ddb5d3a68 in memory
fld f5, 0(x2) # load 0xbaaaa37ddb5d3a68 from memory into f5
fle.h x21, f24, f5 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 40)

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f12, 0(x2) # load 0xefffffffffff7bff from memory into f12
la x2, scratch
li x3, 0xb25d0d359488cec5 # load x3 with value 0xb25d0d359488cec5
sd x3, 0(x2) # store 0xb25d0d359488cec5 in memory
fld f17, 0(x2) # load 0xb25d0d359488cec5 from memory into f17
fle.h x2, f12, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x2, 48)

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f16)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f16, 0(x2) # load 0xc0dec0dec0defbff from memory into f16
la x2, scratch
li x3, 0xba42d50196e98016 # load x3 with value 0xba42d50196e98016
sd x3, 0(x2) # store 0xba42d50196e98016 in memory
fld f22, 0(x2) # load 0xba42d50196e98016 from memory into f22
fle.h x14, f16, f22 # perform operation
RVTEST_SIGUPD(x4, x0, x14, 56)

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f1, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f1
la x2, scratch
li x3, 0x04cecdca4a1aa5d8 # load x3 with value 0x04cecdca4a1aa5d8
sd x3, 0(x2) # store 0x04cecdca4a1aa5d8 in memory
fld f21, 0(x2) # load 0x04cecdca4a1aa5d8 from memory into f21
fle.h x17, f1, f21 # perform operation
RVTEST_SIGUPD(x4, x0, x17, 64)

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f10)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f10, 0(x2) # load 0xffffffff0ffffc00 from memory into f10
la x2, scratch
li x3, 0x0cdecea4f612f81d # load x3 with value 0x0cdecea4f612f81d
sd x3, 0(x2) # store 0x0cdecea4f612f81d in memory
fld f24, 0(x2) # load 0x0cdecea4f612f81d from memory into f24
fle.h x7, f10, f24 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 72)

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f2, 0(x2) # load 0xfffeffffffff7e00 from memory into f2
la x2, scratch
li x3, 0x92e5de2d864038ea # load x3 with value 0x92e5de2d864038ea
sd x3, 0(x2) # store 0x92e5de2d864038ea in memory
fld f30, 0(x2) # load 0x92e5de2d864038ea from memory into f30
fle.h x20, f2, f30 # perform operation
RVTEST_SIGUPD(x4, x0, x20, 80)

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f19, 0(x2) # load 0xffffffefffff7fff from memory into f19
la x2, scratch
li x3, 0x6c3ff94a90c9362d # load x3 with value 0x6c3ff94a90c9362d
sd x3, 0(x2) # store 0x6c3ff94a90c9362d in memory
fld f13, 0(x2) # load 0x6c3ff94a90c9362d from memory into f13
fle.h x7, f19, f13 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 88)

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f1, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f1
la x2, scratch
li x3, 0xc398c14e7a628f4b # load x3 with value 0xc398c14e7a628f4b
sd x3, 0(x2) # store 0xc398c14e7a628f4b in memory
fld f7, 0(x2) # load 0xc398c14e7a628f4b from memory into f7
fle.h x21, f1, f7 # perform operation
RVTEST_SIGUPD(x4, x0, x21, 96)

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f22)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f22, 0(x2) # load 0xfffffffcffff7dff from memory into f22
la x2, scratch
li x3, 0x953bdddb32a2d3d8 # load x3 with value 0x953bdddb32a2d3d8
sd x3, 0(x2) # store 0x953bdddb32a2d3d8 in memory
fld f25, 0(x2) # load 0x953bdddb32a2d3d8 from memory into f25
fle.h x5, f22, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 104)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xac55a88da2f6d83e # load x3 with value 0xac55a88da2f6d83e
sd x3, 0(x2) # store 0xac55a88da2f6d83e in memory
fld f29, 0(x2) # load 0xac55a88da2f6d83e from memory into f29
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f9, 0(x2) # load 0xffffffff00000000 from memory into f9
fle.h x15, f29, f9 # perform operation
RVTEST_SIGUPD(x4, x0, x15, 112)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0x350ec8b3b194556d # load x3 with value 0x350ec8b3b194556d
sd x3, 0(x2) # store 0x350ec8b3b194556d in memory
fld f2, 0(x2) # load 0x350ec8b3b194556d from memory into f2
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f20, 0(x2) # load 0xfffffffffffe8000 from memory into f20
fle.h x19, f2, f20 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 120)

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xdf34d6e6e6aba91b # load x3 with value 0xdf34d6e6e6aba91b
sd x3, 0(x2) # store 0xdf34d6e6e6aba91b in memory
fld f18, 0(x2) # load 0xdf34d6e6e6aba91b from memory into f18
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f26, 0(x2) # load 0x7fffffffffff3c00 from memory into f26
fle.h x27, f18, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x27, 128)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xe536d082b5f575d9 # load x3 with value 0xe536d082b5f575d9
sd x3, 0(x2) # store 0xe536d082b5f575d9 in memory
fld f1, 0(x2) # load 0xe536d082b5f575d9 from memory into f1
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f26, 0(x2) # load 0xfeedbee5beefbc00 from memory into f26
fle.h x5, f1, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x5, 136)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0x69378d6f7bce2428 # load x3 with value 0x69378d6f7bce2428
sd x3, 0(x2) # store 0x69378d6f7bce2428 in memory
fld f29, 0(x2) # load 0x69378d6f7bce2428 from memory into f29
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f18, 0(x2) # load 0xffffffefffff0400 from memory into f18
fle.h x30, f29, f18 # perform operation
RVTEST_SIGUPD(x4, x0, x30, 144)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0x9c1f21d3a64bc7f4 # load x3 with value 0x9c1f21d3a64bc7f4
sd x3, 0(x2) # store 0x9c1f21d3a64bc7f4 in memory
fld f15, 0(x2) # load 0x9c1f21d3a64bc7f4 from memory into f15
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f19, 0(x2) # load 0x00000000ffff8400 from memory into f19
fle.h x1, f15, f19 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 152)

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x48e8183239fb662d # load x3 with value 0x48e8183239fb662d
sd x3, 0(x2) # store 0x48e8183239fb662d in memory
fld f29, 0(x2) # load 0x48e8183239fb662d from memory into f29
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f27, 0(x2) # load 0xefffffffffff7bff from memory into f27
fle.h x24, f29, f27 # perform operation
RVTEST_SIGUPD(x4, x0, x24, 160)

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x620ba1de6ad7143f # load x3 with value 0x620ba1de6ad7143f
sd x3, 0(x2) # store 0x620ba1de6ad7143f in memory
fld f28, 0(x2) # load 0x620ba1de6ad7143f from memory into f28
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f17, 0(x2) # load 0xc0dec0dec0defbff from memory into f17
fle.h x16, f28, f17 # perform operation
RVTEST_SIGUPD(x4, x0, x16, 168)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x038820ccf2c8f356 # load x3 with value 0x038820ccf2c8f356
sd x3, 0(x2) # store 0x038820ccf2c8f356 in memory
fld f19, 0(x2) # load 0x038820ccf2c8f356 from memory into f19
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f26, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f26
fle.h x1, f19, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 176)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x4be24d071a0a2295 # load x3 with value 0x4be24d071a0a2295
sd x3, 0(x2) # store 0x4be24d071a0a2295 in memory
fld f24, 0(x2) # load 0x4be24d071a0a2295 from memory into f24
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f26, 0(x2) # load 0xffffffff0ffffc00 from memory into f26
fle.h x29, f24, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x29, 184)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x45c6ea9f9c13c443 # load x3 with value 0x45c6ea9f9c13c443
sd x3, 0(x2) # store 0x45c6ea9f9c13c443 in memory
fld f6, 0(x2) # load 0x45c6ea9f9c13c443 from memory into f6
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f14, 0(x2) # load 0xfffeffffffff7e00 from memory into f14
fle.h x22, f6, f14 # perform operation
RVTEST_SIGUPD(x4, x0, x22, 192)

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xd1bf8dfb5694e02a # load x3 with value 0xd1bf8dfb5694e02a
sd x3, 0(x2) # store 0xd1bf8dfb5694e02a in memory
fld f9, 0(x2) # load 0xd1bf8dfb5694e02a from memory into f9
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f25, 0(x2) # load 0xffffffefffff7fff from memory into f25
fle.h x7, f9, f25 # perform operation
RVTEST_SIGUPD(x4, x0, x7, 200)

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0x78911ec2a8701d40 # load x3 with value 0x78911ec2a8701d40
sd x3, 0(x2) # store 0x78911ec2a8701d40 in memory
fld f15, 0(x2) # load 0x78911ec2a8701d40 from memory into f15
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f29, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f29
fle.h x1, f15, f29 # perform operation
RVTEST_SIGUPD(x4, x0, x1, 208)

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0x735d1d6ae3219005 # load x3 with value 0x735d1d6ae3219005
sd x3, 0(x2) # store 0x735d1d6ae3219005 in memory
fld f25, 0(x2) # load 0x735d1d6ae3219005 from memory into f25
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f26, 0(x2) # load 0xfffffffcffff7dff from memory into f26
fle.h x19, f25, f26 # perform operation
RVTEST_SIGUPD(x4, x0, x19, 216)

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
