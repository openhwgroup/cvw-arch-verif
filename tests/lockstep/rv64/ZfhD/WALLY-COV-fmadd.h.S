///////////////////////////////////////////
// /home/jcassidy/cvw/addins/cvw-arch-verif/tests/lockstep/rv64/ZfhD/WALLY-COV-fmadd.h.S
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
li x3, 0xdc30266486253f89 # load x3 with value 0xdc30266486253f89
sd x3, 0(x2) # store 0xdc30266486253f89 in memory
flh f28, 0(x2) # load 0xdc30266486253f89 from memory into f28
la x2, scratch
li x3, 0x444622c1a820fde2 # load x3 with value 0x444622c1a820fde2
sd x3, 0(x2) # store 0x444622c1a820fde2 in memory
flh f7, 0(x2) # load 0x444622c1a820fde2 from memory into f7
la x2, scratch
li x3, 0xbf9c623d3456fcd2 # load x3 with value 0xbf9c623d3456fcd2
sd x3, 0(x2) # store 0xbf9c623d3456fcd2 in memory
flh f25, 0(x2) # load 0xbf9c623d3456fcd2 from memory into f25
fmadd.h f3, f28, f7, f25 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff00000000 in f29)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f29, 0(x2) # load 0xffffffff00000000 from memory into f29
la x2, scratch
li x3, 0x9c42e390663e19be # load x3 with value 0x9c42e390663e19be
sd x3, 0(x2) # store 0x9c42e390663e19be in memory
fld f16, 0(x2) # load 0x9c42e390663e19be from memory into f16
la x2, scratch
li x3, 0x8a37a764a09e9c40 # load x3 with value 0x8a37a764a09e9c40
sd x3, 0(x2) # store 0x8a37a764a09e9c40 in memory
fld f15, 0(x2) # load 0x8a37a764a09e9c40 from memory into f15
fmadd.h f18, f29, f16, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffffffe8000 in f25)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f25, 0(x2) # load 0xfffffffffffe8000 from memory into f25
la x2, scratch
li x3, 0xf3cf86051278de23 # load x3 with value 0xf3cf86051278de23
sd x3, 0(x2) # store 0xf3cf86051278de23 in memory
fld f23, 0(x2) # load 0xf3cf86051278de23 from memory into f23
la x2, scratch
li x3, 0xf79182962de00bb3 # load x3 with value 0xf79182962de00bb3
sd x3, 0(x2) # store 0xf79182962de00bb3 in memory
fld f3, 0(x2) # load 0xf79182962de00bb3 from memory into f3
fmadd.h f20, f25, f23, f3 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0x7fffffffffff3c00 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f2, 0(x2) # load 0x7fffffffffff3c00 from memory into f2
la x2, scratch
li x3, 0x217713d19f30bbf6 # load x3 with value 0x217713d19f30bbf6
sd x3, 0(x2) # store 0x217713d19f30bbf6 in memory
fld f3, 0(x2) # load 0x217713d19f30bbf6 from memory into f3
la x2, scratch
li x3, 0x376e1cb43847152b # load x3 with value 0x376e1cb43847152b
sd x3, 0(x2) # store 0x376e1cb43847152b in memory
fld f31, 0(x2) # load 0x376e1cb43847152b from memory into f31
fmadd.h f24, f2, f3, f31 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfeedbee5beefbc00 in f18)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f18, 0(x2) # load 0xfeedbee5beefbc00 from memory into f18
la x2, scratch
li x3, 0xd0fd87e7d43a4545 # load x3 with value 0xd0fd87e7d43a4545
sd x3, 0(x2) # store 0xd0fd87e7d43a4545 in memory
fld f28, 0(x2) # load 0xd0fd87e7d43a4545 from memory into f28
la x2, scratch
li x3, 0x3025f979a5ee4796 # load x3 with value 0x3025f979a5ee4796
sd x3, 0(x2) # store 0x3025f979a5ee4796 in memory
fld f19, 0(x2) # load 0x3025f979a5ee4796 from memory into f19
fmadd.h f26, f18, f28, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff0400 in f2)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f2, 0(x2) # load 0xffffffefffff0400 from memory into f2
la x2, scratch
li x3, 0x17c6a1430886d1dd # load x3 with value 0x17c6a1430886d1dd
sd x3, 0(x2) # store 0x17c6a1430886d1dd in memory
fld f17, 0(x2) # load 0x17c6a1430886d1dd from memory into f17
la x2, scratch
li x3, 0x599c78156c789443 # load x3 with value 0x599c78156c789443
sd x3, 0(x2) # store 0x599c78156c789443 in memory
fld f28, 0(x2) # load 0x599c78156c789443 from memory into f28
fmadd.h f5, f2, f17, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffff8400 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f7, 0(x2) # load 0x00000000ffff8400 from memory into f7
la x2, scratch
li x3, 0x743b2f5999add168 # load x3 with value 0x743b2f5999add168
sd x3, 0(x2) # store 0x743b2f5999add168 in memory
fld f18, 0(x2) # load 0x743b2f5999add168 from memory into f18
la x2, scratch
li x3, 0x402d791a016194a6 # load x3 with value 0x402d791a016194a6
sd x3, 0(x2) # store 0x402d791a016194a6 in memory
fld f8, 0(x2) # load 0x402d791a016194a6 from memory into f8
fmadd.h f3, f7, f18, f8 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xefffffffffff7bff in f12)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f12, 0(x2) # load 0xefffffffffff7bff from memory into f12
la x2, scratch
li x3, 0xb193cc4e98b6d6e8 # load x3 with value 0xb193cc4e98b6d6e8
sd x3, 0(x2) # store 0xb193cc4e98b6d6e8 in memory
fld f31, 0(x2) # load 0xb193cc4e98b6d6e8 from memory into f31
la x2, scratch
li x3, 0x42950e9eeb6e5f1c # load x3 with value 0x42950e9eeb6e5f1c
sd x3, 0(x2) # store 0x42950e9eeb6e5f1c in memory
fld f23, 0(x2) # load 0x42950e9eeb6e5f1c from memory into f23
fmadd.h f2, f12, f31, f23 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xc0dec0dec0defbff in f8)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f8, 0(x2) # load 0xc0dec0dec0defbff from memory into f8
la x2, scratch
li x3, 0x5832bb7f80d453e3 # load x3 with value 0x5832bb7f80d453e3
sd x3, 0(x2) # store 0x5832bb7f80d453e3 in memory
fld f31, 0(x2) # load 0x5832bb7f80d453e3 from memory into f31
la x2, scratch
li x3, 0x3d62735df388610f # load x3 with value 0x3d62735df388610f
sd x3, 0(x2) # store 0x3d62735df388610f in memory
fld f19, 0(x2) # load 0x3d62735df388610f from memory into f19
fmadd.h f9, f8, f31, f19 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa83ef1cc4f1a7c00 in f28)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f28, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f28
la x2, scratch
li x3, 0x81df2123591e521a # load x3 with value 0x81df2123591e521a
sd x3, 0(x2) # store 0x81df2123591e521a in memory
fld f8, 0(x2) # load 0x81df2123591e521a from memory into f8
la x2, scratch
li x3, 0x771a69dfd073bc23 # load x3 with value 0x771a69dfd073bc23
sd x3, 0(x2) # store 0x771a69dfd073bc23 in memory
fld f14, 0(x2) # load 0x771a69dfd073bc23 from memory into f14
fmadd.h f10, f28, f8, f14 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffff0ffffc00 in f1)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f1, 0(x2) # load 0xffffffff0ffffc00 from memory into f1
la x2, scratch
li x3, 0x3dc9ee8fe7851674 # load x3 with value 0x3dc9ee8fe7851674
sd x3, 0(x2) # store 0x3dc9ee8fe7851674 in memory
fld f10, 0(x2) # load 0x3dc9ee8fe7851674 from memory into f10
la x2, scratch
li x3, 0x47d6cf019a55c476 # load x3 with value 0x47d6cf019a55c476
sd x3, 0(x2) # store 0x47d6cf019a55c476 in memory
fld f20, 0(x2) # load 0x47d6cf019a55c476 from memory into f20
fmadd.h f31, f1, f10, f20 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffeffffffff7e00 in f7)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f7, 0(x2) # load 0xfffeffffffff7e00 from memory into f7
la x2, scratch
li x3, 0x51bc0a54e4815562 # load x3 with value 0x51bc0a54e4815562
sd x3, 0(x2) # store 0x51bc0a54e4815562 in memory
fld f11, 0(x2) # load 0x51bc0a54e4815562 from memory into f11
la x2, scratch
li x3, 0x3b4621fe0687020d # load x3 with value 0x3b4621fe0687020d
sd x3, 0(x2) # store 0x3b4621fe0687020d in memory
fld f15, 0(x2) # load 0x3b4621fe0687020d from memory into f15
fmadd.h f21, f7, f11, f15 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xffffffefffff7fff in f19)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f19, 0(x2) # load 0xffffffefffff7fff from memory into f19
la x2, scratch
li x3, 0xd90109685e61c493 # load x3 with value 0xd90109685e61c493
sd x3, 0(x2) # store 0xd90109685e61c493 in memory
fld f29, 0(x2) # load 0xd90109685e61c493 from memory into f29
la x2, scratch
li x3, 0x29520aaefb6b6535 # load x3 with value 0x29520aaefb6b6535
sd x3, 0(x2) # store 0x29520aaefb6b6535 in memory
fld f28, 0(x2) # load 0x29520aaefb6b6535 from memory into f28
fmadd.h f26, f19, f29, f28 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xa1b2c3d4e5f67c01 in f26)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f26, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f26
la x2, scratch
li x3, 0x00ff560d285f87a8 # load x3 with value 0x00ff560d285f87a8
sd x3, 0(x2) # store 0x00ff560d285f87a8 in memory
fld f30, 0(x2) # load 0x00ff560d285f87a8 from memory into f30
la x2, scratch
li x3, 0xb8e12bfe22b9d0e2 # load x3 with value 0xb8e12bfe22b9d0e2
sd x3, 0(x2) # store 0xb8e12bfe22b9d0e2 in memory
fld f17, 0(x2) # load 0xb8e12bfe22b9d0e2 from memory into f17
fmadd.h f5, f26, f30, f17 # perform operation

# Testcase Improper NaNBoxed argument test (Value 0xfffffffcffff7dff in f13)
fsflagsi 0b00000 # clear all fflags
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f13, 0(x2) # load 0xfffffffcffff7dff from memory into f13
la x2, scratch
li x3, 0xd1b485350d59a216 # load x3 with value 0xd1b485350d59a216
sd x3, 0(x2) # store 0xd1b485350d59a216 in memory
fld f11, 0(x2) # load 0xd1b485350d59a216 from memory into f11
la x2, scratch
li x3, 0x0e04121b78a461b0 # load x3 with value 0x0e04121b78a461b0
sd x3, 0(x2) # store 0x0e04121b78a461b0 in memory
fld f10, 0(x2) # load 0x0e04121b78a461b0 from memory into f10
fmadd.h f15, f13, f11, f10 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff00000000)
la x2, scratch
li x3, 0xf7a45c6bd94ce5c7 # load x3 with value 0xf7a45c6bd94ce5c7
sd x3, 0(x2) # store 0xf7a45c6bd94ce5c7 in memory
fld f20, 0(x2) # load 0xf7a45c6bd94ce5c7 from memory into f20
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f6, 0(x2) # load 0xffffffff00000000 from memory into f6
la x2, scratch
li x3, 0x9d1d8d51424b83a6 # load x3 with value 0x9d1d8d51424b83a6
sd x3, 0(x2) # store 0x9d1d8d51424b83a6 in memory
fld f18, 0(x2) # load 0x9d1d8d51424b83a6 from memory into f18
fmadd.h f28, f20, f6, f18 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xfbc57100d7263242 # load x3 with value 0xfbc57100d7263242
sd x3, 0(x2) # store 0xfbc57100d7263242 in memory
fld f3, 0(x2) # load 0xfbc57100d7263242 from memory into f3
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f14, 0(x2) # load 0xfffffffffffe8000 from memory into f14
la x2, scratch
li x3, 0xeb66dd7e88883542 # load x3 with value 0xeb66dd7e88883542
sd x3, 0(x2) # store 0xeb66dd7e88883542 in memory
fld f20, 0(x2) # load 0xeb66dd7e88883542 from memory into f20
fmadd.h f22, f3, f14, f20 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0x1608f7048c29f92a # load x3 with value 0x1608f7048c29f92a
sd x3, 0(x2) # store 0x1608f7048c29f92a in memory
fld f6, 0(x2) # load 0x1608f7048c29f92a from memory into f6
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f7, 0(x2) # load 0x7fffffffffff3c00 from memory into f7
la x2, scratch
li x3, 0x0ce047acb1b245c6 # load x3 with value 0x0ce047acb1b245c6
sd x3, 0(x2) # store 0x0ce047acb1b245c6 in memory
fld f19, 0(x2) # load 0x0ce047acb1b245c6 from memory into f19
fmadd.h f28, f6, f7, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xfcff0b6d8f207732 # load x3 with value 0xfcff0b6d8f207732
sd x3, 0(x2) # store 0xfcff0b6d8f207732 in memory
fld f5, 0(x2) # load 0xfcff0b6d8f207732 from memory into f5
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f8, 0(x2) # load 0xfeedbee5beefbc00 from memory into f8
la x2, scratch
li x3, 0xbfb85d7adcde37e1 # load x3 with value 0xbfb85d7adcde37e1
sd x3, 0(x2) # store 0xbfb85d7adcde37e1 in memory
fld f19, 0(x2) # load 0xbfb85d7adcde37e1 from memory into f19
fmadd.h f21, f5, f8, f19 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xed57a0362b728c0b # load x3 with value 0xed57a0362b728c0b
sd x3, 0(x2) # store 0xed57a0362b728c0b in memory
fld f20, 0(x2) # load 0xed57a0362b728c0b from memory into f20
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f24, 0(x2) # load 0xffffffefffff0400 from memory into f24
la x2, scratch
li x3, 0x0517b423a6753d5f # load x3 with value 0x0517b423a6753d5f
sd x3, 0(x2) # store 0x0517b423a6753d5f in memory
fld f9, 0(x2) # load 0x0517b423a6753d5f from memory into f9
fmadd.h f23, f20, f24, f9 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffff8400)
la x2, scratch
li x3, 0xc6e2492e66fdfacf # load x3 with value 0xc6e2492e66fdfacf
sd x3, 0(x2) # store 0xc6e2492e66fdfacf in memory
fld f17, 0(x2) # load 0xc6e2492e66fdfacf from memory into f17
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f19, 0(x2) # load 0x00000000ffff8400 from memory into f19
la x2, scratch
li x3, 0x5272b339750e0599 # load x3 with value 0x5272b339750e0599
sd x3, 0(x2) # store 0x5272b339750e0599 in memory
fld f13, 0(x2) # load 0x5272b339750e0599 from memory into f13
fmadd.h f31, f17, f19, f13 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x76cdd43e0fbb5c9a # load x3 with value 0x76cdd43e0fbb5c9a
sd x3, 0(x2) # store 0x76cdd43e0fbb5c9a in memory
fld f8, 0(x2) # load 0x76cdd43e0fbb5c9a from memory into f8
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f15, 0(x2) # load 0xefffffffffff7bff from memory into f15
la x2, scratch
li x3, 0x10a3cbf4399aca9e # load x3 with value 0x10a3cbf4399aca9e
sd x3, 0(x2) # store 0x10a3cbf4399aca9e in memory
fld f11, 0(x2) # load 0x10a3cbf4399aca9e from memory into f11
fmadd.h f13, f8, f15, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x08369f33198f8c5f # load x3 with value 0x08369f33198f8c5f
sd x3, 0(x2) # store 0x08369f33198f8c5f in memory
fld f10, 0(x2) # load 0x08369f33198f8c5f from memory into f10
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f29, 0(x2) # load 0xc0dec0dec0defbff from memory into f29
la x2, scratch
li x3, 0xd094cbe61ea6ae12 # load x3 with value 0xd094cbe61ea6ae12
sd x3, 0(x2) # store 0xd094cbe61ea6ae12 in memory
fld f11, 0(x2) # load 0xd094cbe61ea6ae12 from memory into f11
fmadd.h f23, f10, f29, f11 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x79c017e3b8841f6c # load x3 with value 0x79c017e3b8841f6c
sd x3, 0(x2) # store 0x79c017e3b8841f6c in memory
fld f11, 0(x2) # load 0x79c017e3b8841f6c from memory into f11
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f5, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f5
la x2, scratch
li x3, 0x24746e40fd2cae20 # load x3 with value 0x24746e40fd2cae20
sd x3, 0(x2) # store 0x24746e40fd2cae20 in memory
fld f8, 0(x2) # load 0x24746e40fd2cae20 from memory into f8
fmadd.h f20, f11, f5, f8 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0x6468238a1a4bf27c # load x3 with value 0x6468238a1a4bf27c
sd x3, 0(x2) # store 0x6468238a1a4bf27c in memory
fld f22, 0(x2) # load 0x6468238a1a4bf27c from memory into f22
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f14, 0(x2) # load 0xffffffff0ffffc00 from memory into f14
la x2, scratch
li x3, 0x33f16af85dd1f470 # load x3 with value 0x33f16af85dd1f470
sd x3, 0(x2) # store 0x33f16af85dd1f470 in memory
fld f17, 0(x2) # load 0x33f16af85dd1f470 from memory into f17
fmadd.h f18, f22, f14, f17 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0xd7595e341dda0cdc # load x3 with value 0xd7595e341dda0cdc
sd x3, 0(x2) # store 0xd7595e341dda0cdc in memory
fld f8, 0(x2) # load 0xd7595e341dda0cdc from memory into f8
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f21, 0(x2) # load 0xfffeffffffff7e00 from memory into f21
la x2, scratch
li x3, 0x210d02afc880b9f0 # load x3 with value 0x210d02afc880b9f0
sd x3, 0(x2) # store 0x210d02afc880b9f0 in memory
fld f7, 0(x2) # load 0x210d02afc880b9f0 from memory into f7
fmadd.h f12, f8, f21, f7 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0xe26e7feae99408c7 # load x3 with value 0xe26e7feae99408c7
sd x3, 0(x2) # store 0xe26e7feae99408c7 in memory
fld f23, 0(x2) # load 0xe26e7feae99408c7 from memory into f23
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f8, 0(x2) # load 0xffffffefffff7fff from memory into f8
la x2, scratch
li x3, 0x005676bce3716cfa # load x3 with value 0x005676bce3716cfa
sd x3, 0(x2) # store 0x005676bce3716cfa in memory
fld f21, 0(x2) # load 0x005676bce3716cfa from memory into f21
fmadd.h f30, f23, f8, f21 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xd896e34c5bf7d696 # load x3 with value 0xd896e34c5bf7d696
sd x3, 0(x2) # store 0xd896e34c5bf7d696 in memory
fld f17, 0(x2) # load 0xd896e34c5bf7d696 from memory into f17
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f21, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f21
la x2, scratch
li x3, 0x186af1133b279128 # load x3 with value 0x186af1133b279128
sd x3, 0(x2) # store 0x186af1133b279128 in memory
fld f3, 0(x2) # load 0x186af1133b279128 from memory into f3
fmadd.h f6, f17, f21, f3 # perform operation

# Testcase cp_fs2_corners (Test source fs2 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xdcad985150e05861 # load x3 with value 0xdcad985150e05861
sd x3, 0(x2) # store 0xdcad985150e05861 in memory
fld f22, 0(x2) # load 0xdcad985150e05861 from memory into f22
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f6, 0(x2) # load 0xfffffffcffff7dff from memory into f6
la x2, scratch
li x3, 0x2df4dd05bd3fdb99 # load x3 with value 0x2df4dd05bd3fdb99
sd x3, 0(x2) # store 0x2df4dd05bd3fdb99 in memory
fld f31, 0(x2) # load 0x2df4dd05bd3fdb99 from memory into f31
fmadd.h f12, f22, f6, f31 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff00000000)
la x2, scratch
li x3, 0x19a239715b1b0d86 # load x3 with value 0x19a239715b1b0d86
sd x3, 0(x2) # store 0x19a239715b1b0d86 in memory
fld f31, 0(x2) # load 0x19a239715b1b0d86 from memory into f31
la x2, scratch
li x3, 0x43f6d3ac3af79c19 # load x3 with value 0x43f6d3ac3af79c19
sd x3, 0(x2) # store 0x43f6d3ac3af79c19 in memory
fld f12, 0(x2) # load 0x43f6d3ac3af79c19 from memory into f12
la x2, scratch
li x3, 0xffffffff00000000 # load x3 with value 0xffffffff00000000
sd x3, 0(x2) # store 0xffffffff00000000 in memory
fld f6, 0(x2) # load 0xffffffff00000000 from memory into f6
fmadd.h f2, f31, f12, f6 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffffffe8000)
la x2, scratch
li x3, 0xb48949ad69dfe0b2 # load x3 with value 0xb48949ad69dfe0b2
sd x3, 0(x2) # store 0xb48949ad69dfe0b2 in memory
fld f1, 0(x2) # load 0xb48949ad69dfe0b2 from memory into f1
la x2, scratch
li x3, 0xe9c3c498d560f773 # load x3 with value 0xe9c3c498d560f773
sd x3, 0(x2) # store 0xe9c3c498d560f773 in memory
fld f26, 0(x2) # load 0xe9c3c498d560f773 from memory into f26
la x2, scratch
li x3, 0xfffffffffffe8000 # load x3 with value 0xfffffffffffe8000
sd x3, 0(x2) # store 0xfffffffffffe8000 in memory
fld f20, 0(x2) # load 0xfffffffffffe8000 from memory into f20
fmadd.h f31, f1, f26, f20 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0x7fffffffffff3c00)
la x2, scratch
li x3, 0xfc4c0cdd1b23080a # load x3 with value 0xfc4c0cdd1b23080a
sd x3, 0(x2) # store 0xfc4c0cdd1b23080a in memory
fld f12, 0(x2) # load 0xfc4c0cdd1b23080a from memory into f12
la x2, scratch
li x3, 0x410971fef17a1494 # load x3 with value 0x410971fef17a1494
sd x3, 0(x2) # store 0x410971fef17a1494 in memory
fld f27, 0(x2) # load 0x410971fef17a1494 from memory into f27
la x2, scratch
li x3, 0x7fffffffffff3c00 # load x3 with value 0x7fffffffffff3c00
sd x3, 0(x2) # store 0x7fffffffffff3c00 in memory
fld f18, 0(x2) # load 0x7fffffffffff3c00 from memory into f18
fmadd.h f28, f12, f27, f18 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfeedbee5beefbc00)
la x2, scratch
li x3, 0xe30a1a88070787c6 # load x3 with value 0xe30a1a88070787c6
sd x3, 0(x2) # store 0xe30a1a88070787c6 in memory
fld f2, 0(x2) # load 0xe30a1a88070787c6 from memory into f2
la x2, scratch
li x3, 0xa2fbf76d8a027569 # load x3 with value 0xa2fbf76d8a027569
sd x3, 0(x2) # store 0xa2fbf76d8a027569 in memory
fld f5, 0(x2) # load 0xa2fbf76d8a027569 from memory into f5
la x2, scratch
li x3, 0xfeedbee5beefbc00 # load x3 with value 0xfeedbee5beefbc00
sd x3, 0(x2) # store 0xfeedbee5beefbc00 in memory
fld f6, 0(x2) # load 0xfeedbee5beefbc00 from memory into f6
fmadd.h f29, f2, f5, f6 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff0400)
la x2, scratch
li x3, 0xa1ef37bac6a7f697 # load x3 with value 0xa1ef37bac6a7f697
sd x3, 0(x2) # store 0xa1ef37bac6a7f697 in memory
fld f8, 0(x2) # load 0xa1ef37bac6a7f697 from memory into f8
la x2, scratch
li x3, 0xc1665fa8581b3553 # load x3 with value 0xc1665fa8581b3553
sd x3, 0(x2) # store 0xc1665fa8581b3553 in memory
fld f7, 0(x2) # load 0xc1665fa8581b3553 from memory into f7
la x2, scratch
li x3, 0xffffffefffff0400 # load x3 with value 0xffffffefffff0400
sd x3, 0(x2) # store 0xffffffefffff0400 in memory
fld f26, 0(x2) # load 0xffffffefffff0400 from memory into f26
fmadd.h f31, f8, f7, f26 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffff8400)
la x2, scratch
li x3, 0xfebb7f605b90d529 # load x3 with value 0xfebb7f605b90d529
sd x3, 0(x2) # store 0xfebb7f605b90d529 in memory
fld f13, 0(x2) # load 0xfebb7f605b90d529 from memory into f13
la x2, scratch
li x3, 0x0489bdeb53b7c15c # load x3 with value 0x0489bdeb53b7c15c
sd x3, 0(x2) # store 0x0489bdeb53b7c15c in memory
fld f21, 0(x2) # load 0x0489bdeb53b7c15c from memory into f21
la x2, scratch
li x3, 0x00000000ffff8400 # load x3 with value 0x00000000ffff8400
sd x3, 0(x2) # store 0x00000000ffff8400 in memory
fld f7, 0(x2) # load 0x00000000ffff8400 from memory into f7
fmadd.h f10, f13, f21, f7 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xefffffffffff7bff)
la x2, scratch
li x3, 0x2099c9e809935f04 # load x3 with value 0x2099c9e809935f04
sd x3, 0(x2) # store 0x2099c9e809935f04 in memory
fld f26, 0(x2) # load 0x2099c9e809935f04 from memory into f26
la x2, scratch
li x3, 0x8e7ffe1248acf89d # load x3 with value 0x8e7ffe1248acf89d
sd x3, 0(x2) # store 0x8e7ffe1248acf89d in memory
fld f15, 0(x2) # load 0x8e7ffe1248acf89d from memory into f15
la x2, scratch
li x3, 0xefffffffffff7bff # load x3 with value 0xefffffffffff7bff
sd x3, 0(x2) # store 0xefffffffffff7bff in memory
fld f12, 0(x2) # load 0xefffffffffff7bff from memory into f12
fmadd.h f3, f26, f15, f12 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xc0dec0dec0defbff)
la x2, scratch
li x3, 0x50e74fc39081a419 # load x3 with value 0x50e74fc39081a419
sd x3, 0(x2) # store 0x50e74fc39081a419 in memory
fld f22, 0(x2) # load 0x50e74fc39081a419 from memory into f22
la x2, scratch
li x3, 0x7d7f7bfe6ec08bce # load x3 with value 0x7d7f7bfe6ec08bce
sd x3, 0(x2) # store 0x7d7f7bfe6ec08bce in memory
fld f15, 0(x2) # load 0x7d7f7bfe6ec08bce from memory into f15
la x2, scratch
li x3, 0xc0dec0dec0defbff # load x3 with value 0xc0dec0dec0defbff
sd x3, 0(x2) # store 0xc0dec0dec0defbff in memory
fld f16, 0(x2) # load 0xc0dec0dec0defbff from memory into f16
fmadd.h f1, f22, f15, f16 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa83ef1cc4f1a7c00)
la x2, scratch
li x3, 0x4c5644e4a2219a2f # load x3 with value 0x4c5644e4a2219a2f
sd x3, 0(x2) # store 0x4c5644e4a2219a2f in memory
fld f12, 0(x2) # load 0x4c5644e4a2219a2f from memory into f12
la x2, scratch
li x3, 0x5dbf058291eea65a # load x3 with value 0x5dbf058291eea65a
sd x3, 0(x2) # store 0x5dbf058291eea65a in memory
fld f5, 0(x2) # load 0x5dbf058291eea65a from memory into f5
la x2, scratch
li x3, 0xa83ef1cc4f1a7c00 # load x3 with value 0xa83ef1cc4f1a7c00
sd x3, 0(x2) # store 0xa83ef1cc4f1a7c00 in memory
fld f24, 0(x2) # load 0xa83ef1cc4f1a7c00 from memory into f24
fmadd.h f1, f12, f5, f24 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffff0ffffc00)
la x2, scratch
li x3, 0xc8c4b0cdb293b61b # load x3 with value 0xc8c4b0cdb293b61b
sd x3, 0(x2) # store 0xc8c4b0cdb293b61b in memory
fld f6, 0(x2) # load 0xc8c4b0cdb293b61b from memory into f6
la x2, scratch
li x3, 0x51b9970d03042b4b # load x3 with value 0x51b9970d03042b4b
sd x3, 0(x2) # store 0x51b9970d03042b4b in memory
fld f22, 0(x2) # load 0x51b9970d03042b4b from memory into f22
la x2, scratch
li x3, 0xffffffff0ffffc00 # load x3 with value 0xffffffff0ffffc00
sd x3, 0(x2) # store 0xffffffff0ffffc00 in memory
fld f2, 0(x2) # load 0xffffffff0ffffc00 from memory into f2
fmadd.h f9, f6, f22, f2 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffeffffffff7e00)
la x2, scratch
li x3, 0x5803beabec4c7059 # load x3 with value 0x5803beabec4c7059
sd x3, 0(x2) # store 0x5803beabec4c7059 in memory
fld f25, 0(x2) # load 0x5803beabec4c7059 from memory into f25
la x2, scratch
li x3, 0xd9a4d12d6e264a23 # load x3 with value 0xd9a4d12d6e264a23
sd x3, 0(x2) # store 0xd9a4d12d6e264a23 in memory
fld f5, 0(x2) # load 0xd9a4d12d6e264a23 from memory into f5
la x2, scratch
li x3, 0xfffeffffffff7e00 # load x3 with value 0xfffeffffffff7e00
sd x3, 0(x2) # store 0xfffeffffffff7e00 in memory
fld f6, 0(x2) # load 0xfffeffffffff7e00 from memory into f6
fmadd.h f1, f25, f5, f6 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xffffffefffff7fff)
la x2, scratch
li x3, 0x2c01caf7c9529143 # load x3 with value 0x2c01caf7c9529143
sd x3, 0(x2) # store 0x2c01caf7c9529143 in memory
fld f15, 0(x2) # load 0x2c01caf7c9529143 from memory into f15
la x2, scratch
li x3, 0xe4aa1e5da80be50e # load x3 with value 0xe4aa1e5da80be50e
sd x3, 0(x2) # store 0xe4aa1e5da80be50e in memory
fld f9, 0(x2) # load 0xe4aa1e5da80be50e from memory into f9
la x2, scratch
li x3, 0xffffffefffff7fff # load x3 with value 0xffffffefffff7fff
sd x3, 0(x2) # store 0xffffffefffff7fff in memory
fld f16, 0(x2) # load 0xffffffefffff7fff from memory into f16
fmadd.h f26, f15, f9, f16 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xa1b2c3d4e5f67c01)
la x2, scratch
li x3, 0xb21005092318bf8a # load x3 with value 0xb21005092318bf8a
sd x3, 0(x2) # store 0xb21005092318bf8a in memory
fld f12, 0(x2) # load 0xb21005092318bf8a from memory into f12
la x2, scratch
li x3, 0xb02c750d05a2ae1b # load x3 with value 0xb02c750d05a2ae1b
sd x3, 0(x2) # store 0xb02c750d05a2ae1b in memory
fld f1, 0(x2) # load 0xb02c750d05a2ae1b from memory into f1
la x2, scratch
li x3, 0xa1b2c3d4e5f67c01 # load x3 with value 0xa1b2c3d4e5f67c01
sd x3, 0(x2) # store 0xa1b2c3d4e5f67c01 in memory
fld f17, 0(x2) # load 0xa1b2c3d4e5f67c01 from memory into f17
fmadd.h f16, f12, f1, f17 # perform operation

# Testcase cp_fs3_corners (Test source fs3 value = 0xfffffffcffff7dff)
la x2, scratch
li x3, 0xde24449b53340864 # load x3 with value 0xde24449b53340864
sd x3, 0(x2) # store 0xde24449b53340864 in memory
fld f13, 0(x2) # load 0xde24449b53340864 from memory into f13
la x2, scratch
li x3, 0x7f20a55785aff125 # load x3 with value 0x7f20a55785aff125
sd x3, 0(x2) # store 0x7f20a55785aff125 in memory
fld f26, 0(x2) # load 0x7f20a55785aff125 from memory into f26
la x2, scratch
li x3, 0xfffffffcffff7dff # load x3 with value 0xfffffffcffff7dff
sd x3, 0(x2) # store 0xfffffffcffff7dff in memory
fld f2, 0(x2) # load 0xfffffffcffff7dff from memory into f2
fmadd.h f31, f13, f26, f2 # perform operation

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
